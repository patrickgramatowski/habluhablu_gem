# frozen_string_literal: true

require "yaml"

# Class comment
class Languages
  def initialize(language)
    @language = language.to_sym
    @languages = {
      ar: {
        "ar" => {
          "welcome" => "مرحبا",
          "registration" => "عنوان البريد الإلكتروني",
          "log_in" => "تسجيل الدخول",
          "log_in_with" => "سجّل الدخول باستخدام حساب", # Example: 'with Facebook'
          "log_out" => "تسجيل الخروج",
          "email_address" => "عنوان البريد الإلكتروني",
          "username" => "اسم االمستخدم",
          "password" => "كلمه المرور",
          "remember_me" => "تذكرنى",
          "forgot_password" => "نسيت كلمة مرورك",
          "do_not_have_account" => "ليس لديك حساب؟"
        }
      },
      en: {
        "en" => {
          "welcome" => "Welcome",
          "registration" => "Registartion",
          "log_in" => "Log in",
          "log_in_with" => "Log in with", # Example: 'with Facebook'
          "log_out" => "Log out",
          "email_address" => "Email address",
          "username" => "Username",
          "password" => "Password",
          "remember_me" => "Remember me",
          "forgot_password" => "Forgot password?",
          "do_not_have_account" => "Don't You have an account?"
        }
      },
      es: {
        "es" => {
          "welcome" => "Bienvenido",
          "registration" => "Regístrate",
          "log_in" => "Iniciar sesión",
          "log_in_with" => "Iniciar sesión con", # Example: 'with Facebook'
          "log_out" => "Cerrar la sesión",
          "email_address" => "Dirección de correo electrónico",
          "username" => "Nombre de usuario",
          "password" => "Contraseña",
          "remember_me" => "Recordarme",
          "forgot_password" => "¿Has olvidado tu contraseña?",
          "do_not_have_account" => "¿No tienes una cuenta?"
        }
      },
      pl: {
        "pl" => {
          "welcome" => "Witaj",
          "registration" => "Zarejestruj się",
          "log_in" => "Zaloguj się",
          "log_in_with" => "Zaloguj się za pomocą", # Example: 'with Facebook'
          "log_out" => "Wyolguj się",
          "email_address" => "Adres email",
          "username" => "Nazwa użytkownika",
          "password" => "Hasło",
          "remember_me" => "Zapamiętaj mnie!",
          "forgot_password" => "Zapomniałeś hasła?",
          "do_not_have_account" => "Nie masz jeszcze konta?"
        }
      },
      iw: {
        "iw" => {
          # I'm not sure about this translation, it has to be checked!!
          "welcome" => "שלום",
          "registration" => "הירשם",
          "log_in" => "להתחבר",
          "log_in_with" => "התחבר ל", # Example: 'with Facebook'
          "log_out" => "להתנתק",
          "email_address" => "אימייל",
          "username" => "שם משתמש",
          "password" => "סיסמה",
          "remember_me" => "זכור אותי",
          "forgot_password" => "שכחת את הסיסמא?",
          "do_not_have_account" => "אין לך חשבון?"
        }
      }
    }
  end

  def include_language?
    @languages.key?(@language) ? true : false
  end

  def render
    @languages.key?(@language) ? @languages[@language].to_yaml : "No language in the lib (YET!)"
  end
end
