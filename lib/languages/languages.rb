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
          "do_not_have_account" => "ليس لديك حساب؟",
          "lorem" => "غينيا واستمر العصبة ضرب قد. وباءت الأمريكي الأوربيين هو به،, هو العالم، الثقيلة بال. مع وايرلندا الأوروبيّون كان, قد بحق أسابيع العظمى واعتلاء. انه كل وإقامة المواد. "
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
          "do_not_have_account" => "Don't You have an account?",
          "lorem" => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
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
          "do_not_have_account" => "¿No tienes una cuenta?",
          "lorem" => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
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
          "do_not_have_account" => "Nie masz jeszcze konta?",
          "lorem" => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
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
          "do_not_have_account" => "אין לך חשבון?",
          "lorem" => "כדי יסוד מונחים מועמדים של, דת דפים מאמרשיחהצפה זאת. אתה דת שונה כלשהו, גם אחר ליום בשפות, או ניווט פולנית לחיבור ארץ. ויש בקלות ואמנות אירועים או, אל אינו כלכלה שתי."
        }
      },
      fr: {
        "fr" => {
          "welcome" => "Bienvenu", # bienvenue female
          "registration" => "Créer un compte",
          "log_in" => "Connexion",
          "log_in_with" => "Se connecter avec", # Example: 'with Facebook'
          "log_out" => "Déconnexion",
          "email_address" => "Adresse e-mail",
          "username" => "Nom d'utilisateur",
          "password" => "Mot de passe",
          "remember_me" => "Mémoriser",
          "forgot_password" => "Mot de passe oublié",
          "do_not_have_account" => "Vous n'avez pas de compte?",
          "lorem" => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        }
      },
      it: {
        "it" => {
          "welcome" => "Benvenuto", # benvenuta female
          "registration" => "Iscriviti",
          "log_in" => "Accedi",
          "log_in_with" => "Accedi con", # Example: 'with Facebook'
          "log_out" => "Esci",
          "email_address" => "Indirizzo e-mail",
          "username" => "Nome utente",
          "password" => "Password",
          "remember_me" => "Ricordami",
          "forgot_password" => "Ho dimenticato la password",
          "do_not_have_account" => "Non possiedi un account?",
          "lorem" => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        }
      },
      de: {
        "de" => {
          "welcome" => "Willkommen",
          "registration" => "Registrieren",
          "log_in" => "Anmelden",
          "log_in_with" => "Anmeldung mit", # Example: 'with Facebook'
          "log_out" => "Abmelden",
          "email_address" => "E-Mail-Adresse",
          "username" => "Nutzername",
          "password" => "Passwort",
          "remember_me" => "Merken",
          "forgot_password" => "Passwort vergessen?",
          "do_not_have_account" => "Hast du noch kein FACEBOOK-Konto?", # Change facebook!
          "lorem" => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

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
