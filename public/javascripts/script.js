$(document).ready(function(){

// placeholder
	$('input[placeholder], textarea[placeholder]').placeholder();
	
// select
	$('.select').ikSelect({
		autoWidth: false,
		ddFullWidth: false
	});
	
// header
	var page_height = 0;
	var window_height = 0;
	var delta = 0;
	
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
	});
	
	$(window).resize(function(){
		page_height = $('.page.white').height();
	  window_height = $(window).height();
		delta = page_height - window_height + 30;
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

// hide/show delivery address form
function toggleDAF() {
	$('.js-delivery-address-form-block')[ $('.js-hide-delivery-address-form').is(':checked') ? 'slideUp' : 'slideDown' ]();
}
toggleDAF();
$('.js-hide-delivery-address-form').change(toggleDAF);


});

// placeholder
(function(b){function d(a){this.input=a;a.attr("type")=="password"&&this.handlePassword();b(a[0].form).submit(function(){if(a.hasClass("placeholder")&&a[0].value==a.attr("placeholder"))a[0].value=""})}d.prototype={show:function(a){if(this.input[0].value===""||a&&this.valueIsPlaceholder()){if(this.isPassword)try{this.input[0].setAttribute("type","text")}catch(b){this.input.before(this.fakePassword.show()).hide()}this.input.addClass("placeholder");this.input[0].value=this.input.attr("placeholder")}},
hide:function(){if(this.valueIsPlaceholder()&&this.input.hasClass("placeholder")&&(this.input.removeClass("placeholder"),this.input[0].value="",this.isPassword)){try{this.input[0].setAttribute("type","password")}catch(a){}this.input.show();this.input[0].focus()}},valueIsPlaceholder:function(){return this.input[0].value==this.input.attr("placeholder")},handlePassword:function(){var a=this.input;a.attr("realType","password");this.isPassword=!0;if(b.browser.msie&&a[0].outerHTML){var c=b(a[0].outerHTML.replace(/type=(['"])?password\1/gi,
"type=$1text$1"));this.fakePassword=c.val(a.attr("placeholder")).addClass("placeholder").focus(function(){a.trigger("focus");b(this).hide()});b(a[0].form).submit(function(){c.remove();a.show()})}}};var e=!!("placeholder"in document.createElement("input"));b.fn.placeholder=function(){return e?this:this.each(function(){var a=b(this),c=new d(a);c.show(!0);a.focus(function(){c.hide()});a.blur(function(){c.show(!1)});b.browser.msie&&(b(window).load(function(){a.val()&&a.removeClass("placeholder");c.show(!0)}),
a.focus(function(){if(this.value==""){var a=this.createTextRange();a.collapse(!0);a.moveStart("character",0);a.select()}}))})}})(jQuery);