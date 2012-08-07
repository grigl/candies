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
$('.go-top').click(function(e){
	 e.preventDefault();
	 $('html, body').animate({scrollTop:'0px'}, 1200);
	 return false;
});

// go-bottom
$('.go-bottom').click(function(e){
	 e.preventDefault();
	 page_height = $('.page.white').height();
	 $('html, body').animate({scrollTop: page_height + 72}, 1200);
	 return false;
});

//product add_to_cart
$('.shop-item-buy-link').click(function(e){
	e.preventDefault();
	$(this).parent().find('.shop-item-buy-button').click();
})

});

// hide/show delivery address form
function toggleDAF() {
	$('.js-delivery-address-form-block')[ $('.js-hide-delivery-address-form').is(':checked') ? 'slideUp' : 'slideDown' ]();
}
$('.js-hide-delivery-address-form').live('change', toggleDAF);


// Все инициализации, которые могут быть актуальны не только для html который есть на странице сразу,
// но и для того, что загружается аяксом должны быть в этом блоке:
$(document).bind('html-inserted', function() {
	toggleDAF();

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
				.prepend('<div class="errorlist">' + error_text + '</div>');
		}
	}
});
$(document).on('ajax:beforeSend', 'form', function() {
	$('.error[name]', this).removeClass('error');
	$('.errorlist', this).remove();
});






// placeholder
(function(b){function d(a){this.input=a;a.attr("type")=="password"&&this.handlePassword();b(a[0].form).submit(function(){if(a.hasClass("placeholder")&&a[0].value==a.attr("placeholder"))a[0].value=""})}d.prototype={show:function(a){if(this.input[0].value===""||a&&this.valueIsPlaceholder()){if(this.isPassword)try{this.input[0].setAttribute("type","text")}catch(b){this.input.before(this.fakePassword.show()).hide()}this.input.addClass("placeholder");this.input[0].value=this.input.attr("placeholder")}},
hide:function(){if(this.valueIsPlaceholder()&&this.input.hasClass("placeholder")&&(this.input.removeClass("placeholder"),this.input[0].value="",this.isPassword)){try{this.input[0].setAttribute("type","password")}catch(a){}this.input.show();this.input[0].focus()}},valueIsPlaceholder:function(){return this.input[0].value==this.input.attr("placeholder")},handlePassword:function(){var a=this.input;a.attr("realType","password");this.isPassword=!0;if(b.browser.msie&&a[0].outerHTML){var c=b(a[0].outerHTML.replace(/type=(['"])?password\1/gi,
"type=$1text$1"));this.fakePassword=c.val(a.attr("placeholder")).addClass("placeholder").focus(function(){a.trigger("focus");b(this).hide()});b(a[0].form).submit(function(){c.remove();a.show()})}}};var e=!!("placeholder"in document.createElement("input"));b.fn.placeholder=function(){return e?this:this.each(function(){var a=b(this),c=new d(a);c.show(!0);a.focus(function(){c.hide()});a.blur(function(){c.show(!1)});b.browser.msie&&(b(window).load(function(){a.val()&&a.removeClass("placeholder");c.show(!0)}),
a.focus(function(){if(this.value==""){var a=this.createTextRange();a.collapse(!0);a.moveStart("character",0);a.select()}}))})}})(jQuery);