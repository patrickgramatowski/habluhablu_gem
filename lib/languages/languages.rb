# frozen_string_literal: true

require "yaml"

# Class comment
class Languages
  attr_writer :languages

  def initialize(language)
    @language = language.to_sym
    @languages = {
      ar: {
        "ar" => {
          "welcome" => "مرحبا",
          "registration" => "عنوان البريد الإلكتروني",
          "log_in" => "تسجيل الدخول",
          "log_in_with" => "%{replace} سجّل الدخول باستخدام حساب", # Example: 'with Facebook'
          "log_out" => "تسجيل الخروج",
          "email_address" => "عنوان البريد الإلكتروني",
          "username" => "اسم االمستخدم",
          "password" => "كلمه المرور",
          "remember_me" => "تذكرنى",
          "forgot_password" => "نسيت كلمة مرورك",
          "do_not_have_account" => "ليس لديك حساب على {register}%؟",
          "lorem" => "غينيا واستمر العصبة ضرب قد. وباءت الأمريكي الأوربيين هو به،, هو العالم، الثقيلة بال. مع وايرلندا الأوروبيّون كان, قد بحق أسابيع العظمى واعتلاء. انه كل وإقامة المواد. "
        }
      },
      en: {
        "en" => {
          "welcome" => "Welcome",
          "registration" => "Registartion",
          "log_in" => "Log in",
          "log_in_with" => "Log in with %{replace}", # Example: 'with Facebook'
          "log_out" => "Log out",
          "email_address" => "Email address",
          "username" => "Username",
          "password" => "Password",
          "remember_me" => "Remember me",
          "forgot_password" => "Forgot password?",
          "do_not_have_account" => "Don't You have an %{register} account?",
          "lorem" => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        }
      },
      es: {
        "es" => {
          "date" => {
            "months_names" => %w[
              Enero Febrero Marzo Abril Mayo Junio Julio Agosto Septiembre Octubre Noviembre Dieciembre
            ],
            "abbr_month_names" => %w[
              Ene Feb Mar Abr May Jun Jul Ago Set Oct Nov Dic
            ]
          },
          "welcome" => "Bienvenido",
          "registration" => "Regístrate",
          "log_in" => "Iniciar sesión",
          "log_in_with" => "Iniciar sesión con %{replace}", # Example: 'with Facebook'
          "log_out" => "Cerrar la sesión",
          "email_address" => "Dirección de correo electrónico",
          "username" => "Nombre de usuario",
          "password" => "Contraseña",
          "remember_me" => "Recordarme",
          "forgot_password" => "¿Has olvidado tu contraseña?",
          "do_not_have_account" => "¿No tienes una cuenta en %{register}?",
          "lorem" => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        }
      },
      pl: {
        "pl" => {
          "date" => {
            "months_names" => %w[
              Styczeń Luty Marzec Kwiecień Maj Czerwiec Lipiec Sierpień Wrzesień Październik Listopad Grudzień
            ],
            "abbr_month_names" => %w[
              Sty Lut Mar Kwi Maj Cze Lip Sie Wrz Paź Lis Gru
            ]
          },
          "welcome" => "Witaj",
          "registration" => "Zarejestruj się",
          "log_in" => "Zaloguj się",
          "log_in_with" => "Zaloguj się za pomocą %{replace}", # Example: 'with Facebook'
          "log_out" => "Wyolguj się",
          "email_address" => "Adres email",
          "username" => "Nazwa użytkownika",
          "password" => "Hasło",
          "remember_me" => "Zapamiętaj mnie!",
          "forgot_password" => "Zapomniałeś hasła?",
          "do_not_have_account" => "Nie masz jeszcze konta w ${register}?",
          "lorem" => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        }
      },
      iw: {
        "iw" => {
          # I'm not sure about this translation, it has to be checked!!
          "welcome" => "שלום",
          "registration" => "הירשם",
          "log_in" => "להתחבר",
          "log_in_with" => "%{replace}התחבר ל", # Example: 'with Facebook'
          "log_out" => "להתנתק",
          "email_address" => "אימייל",
          "username" => "שם משתמש",
          "password" => "סיסמה",
          "remember_me" => "זכור אותי",
          "forgot_password" => "שכחת את הסיסמא?",
          "do_not_have_account" => "%{register} אין לך חשבון?",
          "lorem" => "כדי יסוד מונחים מועמדים של, דת דפים מאמרשיחהצפה זאת. אתה דת שונה כלשהו, גם אחר ליום בשפות, או ניווט פולנית לחיבור ארץ. ויש בקלות ואמנות אירועים או, אל אינו כלכלה שתי."
        }
      },
      fr: {
        "fr" => {
          "welcome" => "Bienvenu", # bienvenue female
          "registration" => "Créer un compte",
          "log_in" => "Connexion",
          "log_in_with" => "Se connecter avec %{replace}", # Example: 'with Facebook'
          "log_out" => "Déconnexion",
          "email_address" => "Adresse e-mail",
          "username" => "Nom d'utilisateur",
          "password" => "Mot de passe",
          "remember_me" => "Mémoriser",
          "forgot_password" => "Mot de passe oublié",
          "do_not_have_account" => "Vous n'avez pas de compte %{register}?",
          "lorem" => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        }
      },
      it: {
        "it" => {
          "welcome" => "Benvenuto", # benvenuta female
          "registration" => "Iscriviti",
          "log_in" => "Accedi",
          "log_in_with" => "Accedi con %{replace}", # Example: 'with Facebook'
          "log_out" => "Esci",
          "email_address" => "Indirizzo e-mail",
          "username" => "Nome utente",
          "password" => "Password",
          "remember_me" => "Ricordami",
          "forgot_password" => "Ho dimenticato la password",
          "do_not_have_account" => "Non possiedi un account %{register}?",
          "lorem" => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        }
      },
      de: {
        "de" => {
          "welcome" => "Willkommen",
          "registration" => "Registrieren",
          "log_in" => "Anmelden",
          "log_in_with" => "Anmeldung mit %{replace}", # Example: 'with Facebook'
          "log_out" => "Abmelden",
          "email_address" => "E-Mail-Adresse",
          "username" => "Nutzername",
          "password" => "Passwort",
          "remember_me" => "Merken",
          "forgot_password" => "Passwort vergessen?",
          "do_not_have_account" => "Hast du noch kein %{replace}-Konto?", # Change!
          "lorem" => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        }
      },
      ru: {
        "ru" => {
          "welcome" => "Добро пожаловать",
          "registration" => "Зарегистрироваться",
          "log_in" => "Вход",
          "log_in_with" => "Войти с помощью %{replace}", # Example: 'with Facebook'
          "log_out" => "Выйти",
          "email_address" => "Адрес электронной почты",
          "username" => "имя пользователя",
          "password" => "Пароль",
          "remember_me" => "Запомнить меня",
          "forgot_password" => "Забыли пароль",
          "do_not_have_account" => "У вас нет учётной записи %{register}?", # Change facebook!
          "lorem" => "Лорем ипсум долор сит амет, пер цлита поссит ех, ат мунере фабулас петентиум сит. Иус цу цибо саперет сцрипсерит, нец виси муциус лабитур ид. Ет хис нонумес нолуиссе дигниссим."
        }
      },
      ja: {
        "ja" => {
          "welcome" => "ようこそ",
          "registration" => "サインアップ",
          "log_in" => "サインイン",
          "log_in_with" => "%{replace}でサインインする", # Example: 'with Facebook'
          "log_out" => "サインアウト",
          "email_address" => "メールアドレス",
          "username" => "ユーザー名",
          "password" => "パスワード",
          "remember_me" => "パスワードを記憶する",
          "forgot_password" => "パスワードを忘れた場合",
          "do_not_have_account" => "%{register}アカウントをお持ちではありませんか？?", # Change facebook!
          "lorem" => "旅ロ京青利セムレ弱改フヨス波府かばぼ意送でぼ調掲察たス日西重ケアナ住橋ユムミク順待ふかんぼ人奨貯鏡すびそ。"
        }
      },
      pt: {
        "pt" => {
          "date" => {
            "months_names" => %w[
            ],
            "abbr_month_names" => %w[
            ]
          },
          "welcome" => "Bem-vindo",
          "registration" => "Cadastrar",
          "log_in" => "Entrar",
          "log_in_with" => "Entrar com %{replace}", # Example: 'with Facebook'
          "log_out" => "Fazer logoff",
          "email_address" => "Endereço de E-mail",
          "username" => "Nome de usuário",
          "password" => "Senha",
          "remember_me" => "Lembrar de mim",
          "forgot_password" => "Esqueceu Sua Senha",
          "do_not_have_account" => "Não tem uma conta da %{register}?", # Example: da Facebook
          "lorem" => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        }
      },
      tr: {
        "tr" => {
          "date" => {
            "months_names" => %w[
            ],
            "abbr_month_names" => %w[
            ]
          },
          "welcome" => "Hoşgeldiniz",
          "registration" => "Kayıt Ol",
          "log_in" => "Giriş Yap",
          "log_in_with" => "%{replace} ile giriş yap", # Example: 'with Facebook'!
          "log_out" => "Çıkış Yap",
          "email_address" => "E-posta Adresi",
          "username" => "Kullanıcı adı",
          "password" => "Şifre",
          "remember_me" => "Beni hatırla",
          "forgot_password" => "Şifreni Mi Unuttun?",
          "do_not_have_account" => "Bir %{register} hesabın yok mu?", # Example: Facebook
          "lorem" => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        }
      },
      example: {
        "example" => {
          "date" => {
            "months_names" => %w[
            ],
            "abbr_month_names" => %w[
            ]
          },
          "welcome" => "",
          "registration" => "",
          "log_in" => "",
          "log_in_with" => "", # Example: 'with Facebook'
          "log_out" => "",
          "email_address" => "",
          "username" => "",
          "password" => "",
          "remember_me" => "",
          "forgot_password" => "",
          "do_not_have_account" => "",
          "lorem" => ""
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
