$(document).ready(function(){
	// Генирируем событие 'html-inserted' всегда при вставке html, 
	// если на вставленном html есть какие-то js-виджеты, например красивый селект
	// В частности генерируем и сразу после загрузки страницы:
	$(document).trigger('html-inserted'); 

// header
	var page_height = 0;
	var window_height = 0;
	var delta = 0, basket_limit = 0;
	
	$('header').each(function(){
		$(this).addClass('middle').clone().prependTo('body').removeClass('middle').addClass('fixed');
		$('header.middle').css('top', page_height);
	});
	
	$(window).scroll(function(e){
		var scrollTop = $(window).scrollTop();
		if(scrollTop > delta){
			$('header.fixed').hide();
		} else {
			$('header.fixed').show();
		}

		if (scrollTop > basket_limit) {
			$('.basket').stop().animate({top: -52});
		} else {
			$('.basket').stop().animate({top: 0});
		}
		
		if(scrollTop > page_height){
			$('header ul li:first-child').removeClass('cur');
			$('header ul li.cur').removeClass('none');
		} else {
			$('header ul li.cur').addClass('none');
			$('header ul li:first-child').addClass('cur');
		}

	});
	
	$(window).resize(function(){
		page_height = $('.page.white').height();
	  window_height = $(window).height();
		delta = page_height - window_height + 30;
		basket_limit = page_height - 100;
		$('header.middle').css('top', page_height);
		$(window).scroll();
	});
	
	$(window).resize();

// go-top
$('.go-top').live('click', (function(e){
	 e.preventDefault();
	 $('html, body').animate({scrollTop:'0px'}, 400);
	 return false;
}));

// go-bottom
$('.go-bottom').live('click', (function(e){
	 e.preventDefault();
	 if ($('.current').attr('id') != "cart") {
	 		$.get('/show_personal_page');
		}
	 page_height = $('.page.white').height();
	 $('html, body').animate({scrollTop: page_height + 72}, 400);
	 return false;
}));

//product add_to_cart
$('.shop-item-buy-link').click(function(e){
	e.preventDefault();
	$(this).parent().find('.shop-item-buy-button').click();
})

});

//Выбор Адреса из адресной книги
$('#select-address-book-bill').live('change', function(e){
	var selectedId = $('#select-address-book-bill option:selected').attr('value');
	$.getJSON('/get_address.json?id=' + selectedId, function(data){
		var address = data['address'];

		var targetFields = {}		
		targetFields['address1'] = address['address1'];
		targetFields['zipcode'] = address['zipcode'];
		targetFields['city'] = address['city'];

		var targetSelects = {}
		targetSelects['country_id'] = address['country_id'];
		targetSelects['state_id'] = address['state_id'];

		$.each(targetFields, function(k, v){
			$('#order_bill_address_attributes_' + k).attr('value', v);
		});

		$.each(targetSelects, function(k, v){
			$('#order_bill_address_attributes_' + k).attr('value', v);
			var selectText = $('#order_bill_address_attributes_' + k + ' option:selected').text();
			$('#order_bill_address_attributes_' + k).parent().find('.ik_select_link_text').text(selectText);
		});

	});
});
$('#select-address-book-ship').live('change', function(e){
  var selectedId = $('#select-address-book-ship option:selected').attr('value');
  $.getJSON('/get_address.json?id=' + selectedId, function(data){
    var address = data['address'];

    var targetFields = {}   
    targetFields['address1'] = address['address1'];
    targetFields['zipcode'] = address['zipcode'];
    targetFields['city'] = address['city'];

    var targetSelects = {}
    targetSelects['country_id'] = address['country_id'];
    targetSelects['state_id'] = address['state_id'];

    $.each(targetFields, function(k, v){
      $('#order_ship_address_attributes_' + k).attr('value', v);
    });

    $.each(targetSelects, function(k, v){
      $('#order_ship_address_attributes_' + k).attr('value', v);
      var selectText = $('#order_ship_address_attributes_' + k + ' option:selected').text();
      $('#order_ship_address_attributes_' + k).parent().find('.ik_select_link_text').text(selectText);
    });

  });
});

// Преобразование контролов выбора варианта товара
//
var color_table = {
	"красный": "#f00",
	"черный": "#000"
}
function transformVariantChooser() {
	$('.js-variant-chooser').each(function() {

		var container = $(this);
		if (container.data('ready')) {
			return;
		} else {
			container.data('ready', true);
		}

		var colors = {};
		container.find('.js-source label').each(function(){
			var description = $('.variant-description', this).html().split(',');
			for (var i = 0; i < description.length; i++) {
				var item = description[i].split(':');
				if ($.trim(item[0]).toLowerCase() == 'цвет') {
					var color = $.trim(item[1]);
				}
				if ($.trim(item[0]).toLowerCase() == 'размер') {
					var size = $.trim(item[1]);
				}
			}
			!colors[color] && (colors[color] = {});
			colors[color][size] = $('input', this).attr('value');
		})

		for (color in colors) {
			container.find('.shop-item-colors')
				.append( $('<li class="js-color-option"></li>')
									.css('background-color', color_table[color]).attr('title', color) );
		}

		function update_old_controls() {
			var value = container.find('.js-size-select option:selected').data('value');
			container.find('.js-source input[value="' + value + '"]').prop('checked', true).click();
		}

		function set_color(color) {
			container.find('.js-color-option.cur').removeClass('cur');
			container.find('.js-color-option[title="' + color + '"]').addClass('cur');
			var size_select = container.find('.js-size-select');
			var old_val = size_select.val();
			size_select.empty();
			for (size in colors[color]) {
				size_select.append('<option value="' + size + '" data-value="' + colors[color][size] + '">' + size + '</option>');
			}
			size_select.ikSelect("reset");
			size_select.ikSelect('select', old_val);
			if (old_val != null && size_select.val() != old_val) {
				container.find('.ik_select').animate({top: -20}, 50).animate({top: 0}, 600, 'easeOutBounce');
			}
			update_old_controls();
		}

		container.on('click', '.js-color-option', function() {
			set_color($(this).attr('title'));
		})
		container.on('change', '.js-size-select', function(){
			update_old_controls();
		})

		set_color(container.find('.js-color-option').first().attr('title'));
	});
}





// hide/show delivery address form
function toggleDAF() {
	$('.js-delivery-address-form-block')[ $('.js-hide-delivery-address-form').is(':checked') ? 'slideUp' : 'slideDown' ]();
}
$('.js-hide-delivery-address-form').live('change', toggleDAF);



// Все инициализации, которые могут быть актуальны не только для html который есть на странице сразу,
// но и для того, что загружается аяксом должны быть в этом блоке:
$(document).bind('html-inserted', function() {
	toggleDAF();
	transformVariantChooser();

	// placeholder
	$('input[placeholder], textarea[placeholder]').placeholder();
	
	// select
	$('.select').ikSelect({
		autoWidth: false,
		ddFullWidth: false
	});

});



// Аякс-валидация
// см. также update_errors.js.erb
$(document).on('ajax:error', 'form', function(__1, __2, __3, obj) {
	if (obj && obj.type === "candies-form-validation") {
		var errors = obj.errors;
		for (var name in errors) {
			var error_text = errors[name][0];
			name = name.split('.');
			// нужно добавить _attributes ко всем частям кроме последней
			for (var i = 0; i < name.length - 1; i++) {
				name[i] += '_attributes';
			}
			$('[name$="[' + name.join('][') + ']"]', this)
				.addClass('error')
				.parent()
				.prepend('<div class="errorlist" title="' + error_text + '">' + error_text + '</div>');
		}
	}
});
$(document).on('ajax:beforeSend', 'form', function() {
	$('.error[name]', this).removeClass('error');
	$('.errorlist', this).remove();
});

//disable и enable кнопок "в корзину"
$(function() {
	$('form.order_populate').bind("ajax:beforeSend", function(evt, xhr, settings) {
		if ($(this).find('.add-to-cart').hasClass("disabled")) {
			xhr.abort();
		} else {
			is_populating = true;
			$(this).find('.add-to-cart').addClass("disabled")			
		}
	});
	$('form.order_populate').bind("ajax:complete", function(evt, xhr, status) {
		$(this).find('.add-to-cart').removeClass("disabled")
	});	
});

//восстановление пароля
$(function() {
	$('#remind_pass_init').click(function() {
		$.get(
			$(this).attr('href'),
			function (html) {
				$('#login').html(html);
			}
		);
		return false;
	});
});

//При нажатии на «Информация» и «Личный кабинет»
$('.js-personal-page-link, .js-about-link').live('ajax:before', function() {
	$('#page').hide('slide', {direction: $(this).is('.js-about-link') ? 'right' : 'left'}, 1000, function() {
		$('#page').html('<div class="loading-animation"></div>').show();
		// докручиваем до темной части, если требуется
		var scroll_to = $('.page.white').height() + 72;
		if (Math.max($('html').scrollTop(), $('body').scrollTop()) < scroll_to) {
			$('html, body').animate({scrollTop: scroll_to}, 400);
		}
	});
});

// placeholder
(function(b){function d(a){this.input=a;a.attr("type")=="password"&&this.handlePassword();b(a[0].form).submit(function(){if(a.hasClass("placeholder")&&a[0].value==a.attr("placeholder"))a[0].value=""})}d.prototype={show:function(a){if(this.input[0].value===""||a&&this.valueIsPlaceholder()){if(this.isPassword)try{this.input[0].setAttribute("type","text")}catch(b){this.input.before(this.fakePassword.show()).hide()}this.input.addClass("placeholder");this.input[0].value=this.input.attr("placeholder")}},
hide:function(){if(this.valueIsPlaceholder()&&this.input.hasClass("placeholder")&&(this.input.removeClass("placeholder"),this.input[0].value="",this.isPassword)){try{this.input[0].setAttribute("type","password")}catch(a){}this.input.show();this.input[0].focus()}},valueIsPlaceholder:function(){return this.input[0].value==this.input.attr("placeholder")},handlePassword:function(){var a=this.input;a.attr("realType","password");this.isPassword=!0;if(b.browser.msie&&a[0].outerHTML){var c=b(a[0].outerHTML.replace(/type=(['"])?password\1/gi,
"type=$1text$1"));this.fakePassword=c.val(a.attr("placeholder")).addClass("placeholder").focus(function(){a.trigger("focus");b(this).hide()});b(a[0].form).submit(function(){c.remove();a.show()})}}};var e=!!("placeholder"in document.createElement("input"));b.fn.placeholder=function(){return e?this:this.each(function(){var a=b(this),c=new d(a);c.show(!0);a.focus(function(){c.hide()});a.blur(function(){c.show(!1)});b.browser.msie&&(b(window).load(function(){a.val()&&a.removeClass("placeholder");c.show(!0)}),
a.focus(function(){if(this.value==""){var a=this.createTextRange();a.collapse(!0);a.moveStart("character",0);a.select()}}))})}})(jQuery);