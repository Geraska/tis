
// Input label animation

const inputs = document.querySelectorAll('.form-input');

const labels = document.querySelectorAll('.input-label');

for(let i = 0; i < labels.length; i++){

    const label = labels[i];

    label.onclick = function(){
        this.parentNode.getElementsByClassName('form-input')[0].focus();
    }
}

for (let i = 0; i < inputs.length; i++) {
    const element = inputs[i];    
    
    element.onfocus = function(){        
        this.parentNode.getElementsByClassName('input-label')[0].style = "top: 8px";
                        
    }

    element.onblur = function(){
        this.parentNode.getElementsByClassName('input-label')[0].style = "top: 20px";
        if(this.value.length > 0){
            this.parentNode.getElementsByClassName('input-label')[0].style = "top: 8px";
        }
    }
}

// Input label animation


// select 

$(".custom-select").each(function () {
    var classes = $(this).attr("class"),
      id = $(this).attr("id"),
      name = $(this).attr("name");
    var template = '<div class="' + classes + '">';
    template +=
      '<span class="custom-select-trigger">' +
      $(this).attr("placeholder") +
      "</span>";
    template += '<div class="custom-options">';
    $(this)
      .find("option")
      .each(function () {
        template +=
          '<span class="custom-option ' +
          $(this).attr("class") +
          '" data-value="' +
          $(this).attr("value") +
          '">' +
          $(this).html() +
          "</span>";
      });
    template += "</div></div>";
  
    $(this).wrap('<div class="custom-select-wrapper"></div>');
    $(this).hide();
    $(this).after(template);
  });
  $(".custom-option:first-of-type").hover(
    function () {
      $(this).parents(".custom-options").addClass("option-hover");
    },
    function () {
      $(this).parents(".custom-options").removeClass("option-hover");
    }
  );
  $(".custom-select-trigger").on("click", function () {
    $("html").one("click", function () {
      $(".custom-select").removeClass("opened");
    });
    $(this).parents(".custom-select").toggleClass("opened");
    event.stopPropagation();
  });
  $(".custom-option").on("click", function () {
    $(this)
      .parents(".custom-select-wrapper")
      .find("select")
      .val($(this).data("value"));
    $(this)
      .parents(".custom-options")
      .find(".custom-option")
      .removeClass("selection");
    $(this).addClass("selection");
    $(this).parents(".custom-select").removeClass("opened");
    $(this)
      .parents(".custom-select")
      .find(".custom-select-trigger")
      .text($(this).text());
  });


// select

// password visibility toggle

$('.eye-icon').click(function() {
  if($('.pass-input').val() != '' && $('.pass-input').attr('type') == "password") {
    $('.pass-input').attr('type', 'text');
    $('.eye-icon').addClass('eye-icon-v');
  } else {
    $('.pass-input').attr('type', 'password');
    $('.eye-icon').removeClass('eye-icon-v');
  }
})

// /password visibility toggle
