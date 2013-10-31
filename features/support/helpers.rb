def to_url string
  return new_user_session_path(redirect_url: "http://127.0.0.1/pdp")      if string == "the login page comming from Panela de Pressão"
  return new_user_session_path                                            if string == "the login page"
  return new_user_registration_path(redirect_url: "http://127.0.0.1/pdp") if string == "the register page comming from Panela de Pressão"
  return new_user_registration_path                                       if string == "the register page"
  return edit_user_path(current_user)                                     if string == "the edit page of my profile"
  return edit_user_path(@user)                                            if string == "this user edit page"
  return "/pdp"                                                           if string == "Panela de Pressão"
  return "/users/#{current_user.id}"                                      if string == "my profile page"
  raise "Sorry dude but I don't know what '#{string}' means"
end

def to_element string
  return 'user_email'                                       if string == "the login email"
  return 'user_password'                                    if string == "the login password"
  return 'form#new_user input[type="submit"]'               if string == "the login form"
  return '.flash.alert'                                     if string == "the login form errors"
  return 'user_first_name'                                  if string == "the register first name"
  return 'user_last_name'                                   if string == "the register last name"
  return 'user_email'                                       if string == "the register email"
  return 'user_password'                                    if string == "the register password"
  return 'form#new_user input[type="submit"]'               if string == "the register form"
  return '.field_with_errors label[for="user_first_name"]'  if string == "first name field error"
  return '.field_with_errors label[for="user_last_name"]'   if string == "last name field error"
  return '.field_with_errors label[for="user_email"]'       if string == "email field error"
  return '.field_with_errors label[for="user_password"]'    if string == "password field error"
  return '.flash.alert'                                     if string == "an error message"
  return 'user_profession'                                  if string == "the profession field"
  return 'user_website'                                     if string == "the website field"
  return 'user_bio'                                         if string == "the bio field"
  return 'user_facebook'                                    if string == "the Facebook field"
  return 'user_twitter'                                     if string == "the Twitter field"
  return 'user_birthday'                                    if string == "the birthday field"
  return 'user_gender_male'                                 if string == "male as gender"
  return 'user_postal_code'                                 if string == "the postal code field"
  return 'user_phone'                                       if string == "the phone field"
  return 'user_phone'                                       if string == "the phone field"
  return 'user_email'                                       if string == "the email field"
  return 'user_secondary_email'                             if string == "the secondary email field"
  return 'label[for="user_email"].message'                  if string == "the email error"
  return 'label[for="user_secondary_email"].message'        if string == "the secondary email error"
  return 'label[for="user_postal_code"].message'            if string == "the postal code error"
  return 'label[for="user_phone"].message'                  if string == "the phone error"
  return 'label[for="user_website"].message'                if string == "the website error"
  return 'form.edit_user input[type="submit"]'              if string == "the edit profile form submition button"
  return '.flash.alert'                                     if string == "you have no authorization to access this page"
  raise "Sorry dude but I don't know what '#{string}' means"
end

def to_text string
  return I18n.t("devise.failure.not_found_in_database") if string == "the login form errors"
  return I18n.t("unauthorized.manage.all")              if string == "you have no authorization to access this page"
end

def current_user
  User.find_by_email("trashmail@meurio.org.br")
end
