# frozen_string_literal: true

require "yaml"
require_relative "render_json"

# Class comment
class Languages
  include RenderJson
  attr_writer :languages

  def initialize(language)
    @language = language.to_sym
    @languages = {
      ar: {
        "ar" => {
          "language" => "العربية",
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
          "language" => "English",
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
          "language" => "Español",
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
          "language" => "Polski",
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
          "language" => "עִברִית",
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
          "language" => "Français",
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
          "language" => "Italiano",
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
          "language" => "Deutsch",
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
          "language" => "Русский",
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
          "language" => "日本語",
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
          "language" => "Português",
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
          "language" => "Türkçe",
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
      ko: {
        "ko" => {
          "date" => {
            "months_names" => %w[
            ],
            "abbr_month_names" => %w[
            ]
          },
          "language" => "한국어",
          "welcome" => "안녕하세요",
          "registration" => "가입",
          "log_in" => "로그인",
          "log_in_with" => "%{replace}으로 로그인", # Example: 'with Facebook' carefully!
          "log_out" => "로그아웃",
          "email_address" => "이메일 주소",
          "username" => "사용자 이름",
          "password" => "비밀번호",
          "remember_me" => "사용자 이름 저장",
          "forgot_password" => "비밀번호를 잊으셨나요?",
          "do_not_have_account" => "%{register}계정이 없으신가요?",
          "lorem" => "국민경제의 발전을 위한 중요정책의 수립에 관하여 대통령의 자문에 응하기 위하여 국민경제자문회의를 둘 수 있다."
        }
      },
      th: {
        "th" => {
          "date" => {
            "months_names" => %w[
            ],
            "abbr_month_names" => %w[
            ]
          },
          "language" => "ไทย",
          "welcome" => "ยินดีต้อนรับ",
          "registration" => "ลงทะเบียน",
          "log_in" => "ลงชื่อเข้าใช้",
          "log_in_with" => "ลงชื่อเข้าใช้ด้วย %(replace)", # Example: 'with Facebook'
          "log_out" => "ลงชื่อออก",
          "email_address" => "อีเมล",
          "username" => "ชื่อผู้ใช้",
          "password" => "รหัสผ่าน",
          "remember_me" => "จำฉันไว้",
          "forgot_password" => "ลืมรหัสผ่าน",
          "do_not_have_account" => "ไม่มีบัญชี %(register) ใช่ไหม",
          "lorem" => "เป็นข้อความแทนที่ ใช้เพื่อลดความสนใจต่อข้อความที่นำมาแสดง สำหรับการแสดงลักษณะของ ฟอนต์ การพิมพ์และการจัดหน้า"
        }
      },
      zh: {
        "zh" => {
          "date" => {
            "months_names" => %w[
            ],
            "abbr_month_names" => %w[
            ]
          },
          "language" => "简体中文",
          "welcome" => "欢迎",
          "registration" => "注册",
          "log_in" => "登录",
          "log_in_with" => "登录 %(replace)", # Example: 'with Facebook'
          "log_out" => "登出",
          "email_address" => "电子邮件地址",
          "username" => "用户名",
          "password" => "密码",
          "remember_me" => "记住我",
          "forgot_password" => "忘记密码",
          "do_not_have_account" => "还没有 %(register) 账户？",
          "lorem" => "側経意責家方家閉討店暖育田庁載社転線宇。得君新術治温抗添代話考振投員殴大闘北裁。品間識部案代学凰処済準世一戸刻法分。悼測済諏計飯利安凶断理資沢同岩面文認革。内警格化再薬方久化体教御決数詭芸得筆代。"
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
          "language" => "",
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
