// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum Strings {
  /// Заявка на обмен
  internal static let applicationForExchange = Strings.tr("Localizable", "applicationForExchange")
  /// Заявка на покупку
  internal static let applicationForPurchase = Strings.tr("Localizable", "applicationForPurchase")
  /// Заявка на покупку "Высокие технологии"
  internal static let applicationForPurchaseAM = Strings.tr("Localizable", "applicationForPurchaseAM")
  /// Заявка на покупку "Биотехнологии"
  internal static let applicationForPurchaseBT = Strings.tr("Localizable", "applicationForPurchaseBT")
  /// Заявка на покупку "Российские акции"
  internal static let applicationForPurchaseFA = Strings.tr("Localizable", "applicationForPurchaseFA")
  /// Заявка на покупку "Валютные накопления"
  internal static let applicationForPurchaseMV = Strings.tr("Localizable", "applicationForPurchaseMV")
  /// Заявка на покупку "Сберегательный"
  internal static let applicationForPurchaseSM = Strings.tr("Localizable", "applicationForPurchaseSM")
  /// Заявка на продажу
  internal static let applicationForRepayment = Strings.tr("Localizable", "applicationForRepayment")
  /// Применить
  internal static let apply = Strings.tr("Localizable", "Apply")
  /// Назад
  internal static let back = Strings.tr("Localizable", "Back")
  /// Сколько облигаций покупаем?
  internal static let bondsTradeAmountCellTitle = Strings.tr("Localizable", "BondsTradeAmountCellTitle")
  /// Значение не должно быть больше %@
  internal static func bondsTradeAmountMaxErrorTitle(_ p1: Any) -> String {
    return Strings.tr("Localizable", "BondsTradeAmountMaxErrorTitle", String(describing: p1))
  }
  /// Значение не должно быть меньше %@
  internal static func bondsTradeAmountMinErrorTitle(_ p1: Any) -> String {
    return Strings.tr("Localizable", "BondsTradeAmountMinErrorTitle", String(describing: p1))
  }
  /// Значение должно быть кратно %@
  internal static func bondsTradeAmountNotLotSizeTitle(_ p1: Any) -> String {
    return Strings.tr("Localizable", "BondsTradeAmountNotLotSizeTitle", String(describing: p1))
  }
  /// Сумма с учетом комиссии %@ 
  internal static func bondsTradeSumCellCommission(_ p1: Any) -> String {
    return Strings.tr("Localizable", "bondsTradeSumCellCommission", String(describing: p1))
  }
  /// Недостаточно средств на брокерском счёте
  internal static let bondsTradeSumCellLackFundsAlert = Strings.tr("Localizable", "BondsTradeSumCellLackFundsAlert")
  /// Пополнить счёт
  internal static let bondsTradeSumCellLackFundsButtonTitle = Strings.tr("Localizable", "BondsTradeSumCellLackFundsButtonTitle")
  /// Введите количество или укажите его с помощью ползунка
  internal static let bondTradeAmountCellDescription = Strings.tr("Localizable", "BondTradeAmountCellDescription")
  /// Ставка купона: %@%%
  internal static func bondTradeCouponFixCellCouponValue(_ p1: Any) -> String {
    return Strings.tr("Localizable", "BondTradeCouponFixCellCouponValue", String(describing: p1))
  }
  /// Купить по любой ставке купона
  internal static let bondTradeCouponRateCellAnyRateTitle = Strings.tr("Localizable", "BondTradeCouponRateCellAnyRateTitle")
  /// Значение не должно быть больше %@
  internal static func bondTradeCouponRateCellMaxAlert(_ p1: Any) -> String {
    return Strings.tr("Localizable", "BondTradeCouponRateCellMaxAlert", String(describing: p1))
  }
  /// Значение не должно быть меньше %@
  internal static func bondTradeCouponRateCellMinAlert(_ p1: Any) -> String {
    return Strings.tr("Localizable", "BondTradeCouponRateCellMinAlert", String(describing: p1))
  }
  /// Значение должно быть кратно %@
  internal static func bondTradeCouponRateCellMultiplyAlert(_ p1: Any) -> String {
    return Strings.tr("Localizable", "BondTradeCouponRateCellMultiplyAlert", String(describing: p1))
  }
  /// Диапазон %@ - %@
  internal static func bondTradeCouponRateCellRange(_ p1: Any, _ p2: Any) -> String {
    return Strings.tr("Localizable", "BondTradeCouponRateCellRange", String(describing: p1), String(describing: p2))
  }
  /// Укажите ставку купона (шаг %@ %@)
  internal static func bondTradeCouponRateCellRate(_ p1: Any, _ p2: Any) -> String {
    return Strings.tr("Localizable", "BondTradeCouponRateCellRate", String(describing: p1), String(describing: p2))
  }
  /// Назад
  internal static let bondTradeFailureButtonTitle = Strings.tr("Localizable", "BondTradeFailureButtonTitle")
  /// Произошла ошибка на сервере, данные не были переданы. Попробуйте ещё раз немного позже. Мы уже работаем над исправлением этой проблемы.
  internal static let bondTradeFailureDescription = Strings.tr("Localizable", "BondTradeFailureDescription")
  /// Ошибка
  internal static let bondTradeFailureTitle = Strings.tr("Localizable", "BondTradeFailureTitle")
  /// %@ облиг.
  internal static func bondTradeFundsCellBond(_ p1: Any) -> String {
    return Strings.tr("Localizable", "BondTradeFundsCellBond", String(describing: p1))
  }
  /// %@ лот
  internal static func bondTradeFundsCellLot(_ p1: Any) -> String {
    return Strings.tr("Localizable", "BondTradeFundsCellLot", String(describing: p1))
  }
  /// Мои средства
  internal static let bondTradeFundsCellTitle = Strings.tr("Localizable", "BondTradeFundsCellTitle")
  /// за %@ облиг.
  internal static func bondTradeInstrumentCellAmount(_ p1: Any) -> String {
    return Strings.tr("Localizable", "BondTradeInstrumentCellAmount", String(describing: p1))
  }
  /// %@ ₽
  internal static func bondTradeInstrumentCellPrice(_ p1: Any) -> String {
    return Strings.tr("Localizable", "BondTradeInstrumentCellPrice", String(describing: p1))
  }
  /// Вернуться к размещениям
  internal static let bondTradeSuccessBackButtonTitle = Strings.tr("Localizable", "BondTradeSuccessBackButtonTitle")
  /// Ваша заявка на участие в размещении облигаций принята. Информацию об итогах участия вы сможете увидеть в разделе «Мои активы» по окончании размещения.
  internal static let bondTradeSuccessDescription = Strings.tr("Localizable", "BondTradeSuccessDescription")
  /// Заявка зарегистрирована
  internal static let bondTradeSuccessTitle = Strings.tr("Localizable", "BondTradeSuccessTitle")
  /// Перейти в мои активы
  internal static let bondTradeSuccessToActivesButtonTitle = Strings.tr("Localizable", "BondTradeSuccessToActivesButtonTitle")
  /// Отмена
  internal static let cancel = Strings.tr("Localizable", "Cancel")
  /// Закрыть
  internal static let close = Strings.tr("Localizable", "Close")
  /// Продолжить
  internal static let `continue` = Strings.tr("Localizable", "Continue")
  /// Произошла ошибка
  internal static let errorOccured = Strings.tr("Localizable", "ErrorOccured")
  /// Ошибка
  internal static let errorTitle = Strings.tr("Localizable", "ErrorTitle")
  /// Заявка на обмен
  internal static let exchangeOrderName = Strings.tr("Localizable", "ExchangeOrderName")
  /// Анкета FATCA
  internal static let formOfFATCA = Strings.tr("Localizable", "formOfFATCA")
  /// Анкета клиента
  internal static let formOfShareholders = Strings.tr("Localizable", "formOfShareholders")
  /// Анкета клиента "Высокие технологии"
  internal static let formOfShareholdersAM = Strings.tr("Localizable", "formOfShareholdersAM")
  /// Анкета клиента "Биотехнологии"
  internal static let formOfShareholdersBT = Strings.tr("Localizable", "formOfShareholdersBT")
  /// Анкета клиента "Российские акции"
  internal static let formOfShareholdersFA = Strings.tr("Localizable", "formOfShareholdersFA")
  /// Анкета клиента "Валютные накопления"
  internal static let formOfShareholdersMV = Strings.tr("Localizable", "formOfShareholdersMV")
  /// Анкета клиента "Сберегательный"
  internal static let formOfShareholdersSM = Strings.tr("Localizable", "formOfShareholdersSM")
  /// за
  internal static let forPeriod = Strings.tr("Localizable", "ForPeriod")
  /// с
  internal static let from = Strings.tr("Localizable", "From")
  /// Высокие технологии
  internal static let fundNameAM = Strings.tr("Localizable", "fundNameAM")
  /// Биотехнологии
  internal static let fundNameBT = Strings.tr("Localizable", "fundNameBT")
  /// Доверительное управление
  internal static let fundNameDU = Strings.tr("Localizable", "fundNameDU")
  /// Российские акции
  internal static let fundNameFA = Strings.tr("Localizable", "fundNameFA")
  /// Валютные накопления
  internal static let fundNameMV = Strings.tr("Localizable", "fundNameMV")
  /// Сберегательный
  internal static let fundNameSM = Strings.tr("Localizable", "fundNameSM")
  /// Пол
  internal static let gender = Strings.tr("Localizable", "Gender")
  /// Подробнее
  internal static let more = Strings.tr("Localizable", "More")
  /// Мои активы
  internal static let myActives = Strings.tr("Localizable", "MyActives")
  /// Соединение с интернетом восстановлено
  internal static let networkReachable = Strings.tr("Localizable", "NetworkReachable")
  /// Отсутствует подключение к интернету
  internal static let networkUnreachable = Strings.tr("Localizable", "NetworkUnreachable")
  /// Далее
  internal static let next = Strings.tr("Localizable", "Next")
  /// Нет
  internal static let no = Strings.tr("Localizable", "No")
  /// Нет данных
  internal static let noData = Strings.tr("Localizable", "NoData")
  /// OK
  internal static let ok = Strings.tr("Localizable", "OK")
  /// %
  internal static let percent = Strings.tr("Localizable", "Percent")
  /// Заявка на выдачу
  internal static let purchaseOrderName = Strings.tr("Localizable", "PurchaseOrderName")
  /// Заявка на погашение
  internal static let repaymentOrderName = Strings.tr("Localizable", "RepaymentOrderName")
  /// Повторить
  internal static let retry = Strings.tr("Localizable", "Retry")
  /// Российская Федерация
  internal static let russianFederation = Strings.tr("Localizable", "RussianFederation")
  /// Извините
  internal static let sorry = Strings.tr("Localizable", "Sorry")
  /// Сегодня
  internal static let today = Strings.tr("Localizable", "Today")
  /// v. 
  internal static let version = Strings.tr("Localizable", "Version")
  /// Версия
  internal static let versionFull = Strings.tr("Localizable", "VersionFull")
  /// С возвращением!
  internal static let welcomeBack = Strings.tr("Localizable", "WelcomeBack")
  /// С возвращением, 
  internal static let welcomeBackWithName = Strings.tr("Localizable", "WelcomeBackWithName")
  /// Да
  internal static let yes = Strings.tr("Localizable", "Yes")
  /// Вчера
  internal static let yesterday = Strings.tr("Localizable", "Yesterday")

  internal enum Account {
    internal enum Mtsb {
      internal enum Popup {
        /// Пожалуйста, подтвердите вашу личность, это поможет предзаполнить данные анкеты и не заполнять её целиком вручную
        internal static let description = Strings.tr("Localizable", "Account.MTSB.Popup.Description")
        /// %@, это вы?
        internal static func title(_ p1: Any) -> String {
          return Strings.tr("Localizable", "Account.MTSB.Popup.Title", String(describing: p1))
        }
      }
    }
    internal enum Option {
      /// О счёте
      internal static let aboutAccount = Strings.tr("Localizable", "Account.Option.AboutAccount")
      /// Информация о тарифе
      internal static let aboutTariff = Strings.tr("Localizable", "Account.Option.AboutTariff")
      /// Документы
      internal static let documents = Strings.tr("Localizable", "Account.Option.Documents")
      /// Последние операции
      internal static let latestOperations = Strings.tr("Localizable", "Account.Option.LatestOperations")
      /// Реквизиты
      internal static let requisites = Strings.tr("Localizable", "Account.Option.Requisites")
    }
  }

  internal enum Address {
    /// Адрес
    internal static let title = Strings.tr("Localizable", "Address.Title")
  }

  internal enum Analytics {
    /// Аналитика
    internal static let title = Strings.tr("Localizable", "Analytics.title")
    internal enum AboutCompanyViewController {
      /// О компании
      internal static let screenName = Strings.tr("Localizable", "Analytics.AboutCompanyViewController.ScreenName")
    }
    internal enum BBuyingViewController {
      /// Покупка пая
      internal static let screenName = Strings.tr("Localizable", "Analytics.BBuyingViewController.ScreenName")
    }
    internal enum BrokerageAccountViewController {
      /// Портфолио брокерсий счёт
      internal static let screenName = Strings.tr("Localizable", "Analytics.BrokerageAccountViewController.ScreenName")
    }
    internal enum BuyingDetailsViewController {
      internal enum Buy {
        /// Покупка инструмента
        internal static let screenName = Strings.tr("Localizable", "Analytics.BuyingDetailsViewController.Buy.ScreenName")
      }
      internal enum Sell {
        /// Продажа инструмента
        internal static let screenName = Strings.tr("Localizable", "Analytics.BuyingDetailsViewController.Sell.ScreenName")
      }
    }
    internal enum CompareFundsController {
      /// Сравнение фондов ПИФ
      internal static let screenName = Strings.tr("Localizable", "Analytics.CompareFundsController.ScreenName")
    }
    internal enum ContactsViewController {
      /// Контакты
      internal static let screenName = Strings.tr("Localizable", "Analytics.ContactsViewController.ScreenName")
    }
    internal enum DUDetailsMainController {
      /// Детальное стратегии ДУ
      internal static let screenName = Strings.tr("Localizable", "Analytics.DUDetailsMainController.ScreenName")
    }
    internal enum DUDocumentsListController {
      /// Документы
      internal static let screenName = Strings.tr("Localizable", "Analytics.DUDocumentsListController.ScreenName")
    }
    internal enum DUProfilingViewController {
      /// Профилирование ДУ
      internal static let screenName = Strings.tr("Localizable", "Analytics.DUProfilingViewController.ScreenName")
    }
    internal enum DURequisitesViewController {
      /// Ревизиты возврата ДУ
      internal static let screenName = Strings.tr("Localizable", "Analytics.DURequisitesViewController.ScreenName")
    }
    internal enum DUStrategiesViewController {
      /// Все стратегии ДУ
      internal static let screenName = Strings.tr("Localizable", "Analytics.DUStrategiesViewController.ScreenName")
    }
    internal enum DUStrategyDetailsViewController {
      /// Информация о стратегии ДУ
      internal static let screenName = Strings.tr("Localizable", "Analytics.DUStrategyDetailsViewController.ScreenName")
    }
    internal enum DUViewController {
      /// Портфолио ДУ
      internal static let screenName = Strings.tr("Localizable", "Analytics.DUViewController.ScreenName")
    }
    internal enum DUWithdrawalController {
      /// Вывод средств ДУ
      internal static let screenName = Strings.tr("Localizable", "Analytics.DUWithdrawalController.ScreenName")
    }
    internal enum ExchangeFundsViewController {
      /// Выбор фонда
      internal static let screenName = Strings.tr("Localizable", "Analytics.ExchangeFundsViewController.ScreenName")
    }
    internal enum ExchangeMainViewController {
      /// Обмен пая
      internal static let screenName = Strings.tr("Localizable", "Analytics.ExchangeMainViewController.ScreenName")
    }
    internal enum FeedMainViewController {
      /// Витрина
      internal static let screenName = Strings.tr("Localizable", "Analytics.FeedMainViewController.ScreenName")
    }
    internal enum FeedbackFormViewController {
      /// Обратная связь
      internal static let screenName = Strings.tr("Localizable", "Analytics.FeedbackFormViewController.ScreenName")
    }
    internal enum FundCostOfSharesController {
      /// СЧА
      internal static let screenName = Strings.tr("Localizable", "Analytics.FundCostOfSharesController.ScreenName")
    }
    internal enum FundDetailsViewController {
      /// Мои активы
      internal static let screenName = Strings.tr("Localizable", "Analytics.FundDetailsViewController.ScreenName")
    }
    internal enum FundDynamicController {
      /// Динамика пая
      internal static let screenName = Strings.tr("Localizable", "Analytics.FundDynamicController.ScreenName")
    }
    internal enum FundInfoController {
      /// О фонде
      internal static let screenName = Strings.tr("Localizable", "Analytics.FundInfoController.ScreenName")
    }
    internal enum FundStructureController {
      /// Структура пая
      internal static let screenName = Strings.tr("Localizable", "Analytics.FundStructureController.ScreenName")
    }
    internal enum FundsTableController {
      /// Список фондов ПИФ
      internal static let screenName = Strings.tr("Localizable", "Analytics.FundsTableController.ScreenName")
    }
    internal enum HelpSectionViewController {
      /// Помощь
      internal static let screenName = Strings.tr("Localizable", "Analytics.HelpSectionViewController.ScreenName")
    }
    internal enum IdentityPageController {
      /// Оформление заявки
      internal static let screenName = Strings.tr("Localizable", "Analytics.IdentityPageController.ScreenName")
    }
    internal enum MarkdownViewViewController {
      /// Статья
      internal static let screenName = Strings.tr("Localizable", "Analytics.MarkdownViewViewController.ScreenName")
    }
    internal enum MoreMenuViewController {
      /// Ещё
      internal static let screenName = Strings.tr("Localizable", "Analytics.MoreMenuViewController.ScreenName")
    }
    internal enum MyActivesController {
      /// Портфолио ПИФы
      internal static let screenName = Strings.tr("Localizable", "Analytics.MyActivesController.ScreenName")
    }
    internal enum MyProfileViewController {
      /// Профиль
      internal static let screenName = Strings.tr("Localizable", "Analytics.MyProfileViewController.ScreenName")
    }
    internal enum NewEnterCodeViewController {
      /// Подписание
      internal static let screenName = Strings.tr("Localizable", "Analytics.NewEnterCodeViewController.ScreenName")
    }
    internal enum NewsDetailsViewController {
      /// Новость
      internal static let screenName = Strings.tr("Localizable", "Analytics.NewsDetailsViewController.ScreenName")
    }
    internal enum NewsViewController {
      /// Все новости
      internal static let screenName = Strings.tr("Localizable", "Analytics.NewsViewController.ScreenName")
    }
    internal enum OperationsTableViewController {
      /// Операции
      internal static let screenName = Strings.tr("Localizable", "Analytics.OperationsTableViewController.ScreenName")
    }
    internal enum PayCardViewController {
      /// Оплата картой
      internal static let screenName = Strings.tr("Localizable", "Analytics.PayCardViewController.ScreenName")
    }
    internal enum PaymentPurposeViewController {
      /// Платежные реквизиты стратегии ДУ
      internal static let screenName = Strings.tr("Localizable", "Analytics.PaymentPurposeViewController.ScreenName")
    }
    internal enum SavingAccountDocumentReaderViewController {
      /// Просмотр документа
      internal static let screenName = Strings.tr("Localizable", "Analytics.SavingAccountDocumentReaderViewController.ScreenName")
    }
    internal enum SellPaiController {
      /// Продажа пая
      internal static let screenName = Strings.tr("Localizable", "Analytics.SellPaiController.ScreenName")
    }
    internal enum ShareDetailViewController {
      /// Список инструментов
      internal static let screenName = Strings.tr("Localizable", "Analytics.ShareDetailViewController.ScreenName")
    }
    internal enum StocksViewController {
      /// Список инструментов
      internal static let screenName = Strings.tr("Localizable", "Analytics.StocksViewController.ScreenName")
    }
  }

  internal enum AppInfo {
    /// — объект авторского права ПАО «Мобильные ТелеСистемы», используемый ООО УК «Система Капитал», ПАО «МТС Банк» на основе лицензионного договора.
    internal static let docDescription = Strings.tr("Localizable", "AppInfo.DocDescription")
  }

  internal enum AuthBiometry {
    /// Приложите палец для входа
    internal static let putFinger = Strings.tr("Localizable", "AuthBiometry.PutFinger")
    /// Использовать код
    internal static let useCode = Strings.tr("Localizable", "AuthBiometry.UseCode")
    /// Распознавание лица для входа
    internal static let useFaceRecognition = Strings.tr("Localizable", "AuthBiometry.UseFaceRecognition")
  }

  internal enum AuthController {
    /// Нажимая «Далее», вы соглашаетесь на\nобработку и хранение персональных данных
    internal static let privacyPolicy = Strings.tr("Localizable", "AuthController.PrivacyPolicy")
  }

  internal enum AuthEmail {
    /// На ваш адрес электронной почты было отправлено письмо. Пожалуйста, следуйте инструкциям указанным в письме
    internal static let emailWasSent = Strings.tr("Localizable", "AuthEmail.EmailWasSent")
  }

  internal enum AuthName {
    /// Имя
    internal static let firstNameField = Strings.tr("Localizable", "AuthName.FirstNameField")
    /// Войти
    internal static let loginBtn = Strings.tr("Localizable", "AuthName.LoginBtn")
    /// ФИО
    internal static let nameField = Strings.tr("Localizable", "AuthName.NameField")
    /// Стать клиентом
    internal static let newClientBtn = Strings.tr("Localizable", "AuthName.NewClientBtn")
    /// Клиент %@, тел. %@ не найден.
    internal static func notFoundError(_ p1: Any, _ p2: Any) -> String {
      return Strings.tr("Localizable", "AuthName.NotFoundError", String(describing: p1), String(describing: p2))
    }
    /// Номер телефона
    internal static let phoneField = Strings.tr("Localizable", "AuthName.PhoneField")
    /// Отчество
    internal static let secondNameField = Strings.tr("Localizable", "AuthName.SecondNameField")
    /// Стать клиентом
    internal static let skip = Strings.tr("Localizable", "AuthName.Skip")
    /// Фамилия
    internal static let surnameField = Strings.tr("Localizable", "AuthName.SurnameField")
    /// Личный кабинет
    internal static let title = Strings.tr("Localizable", "AuthName.Title")
  }

  internal enum AuthNewPin {
    /// Создайте 4-х значный код доступа
    internal static let createPinCode = Strings.tr("Localizable", "AuthNewPin.CreatePinCode")
    /// повторите ещё раз
    internal static let repeatPinCode = Strings.tr("Localizable", "AuthNewPin.RepeatPinCode")
  }

  internal enum AuthPin {
    /// Пожалуйста, авторизуйтесь используя ваш ПИН-код
    internal static let biometryChangedDesc = Strings.tr("Localizable", "AuthPin.BiometryChangedDesc")
    /// Биометрические данные были изменены
    internal static let biometryChangedTitle = Strings.tr("Localizable", "AuthPin.BiometryChangedTitle")
    /// Войти под другим пользователем?
    internal static let changeUser = Strings.tr("Localizable", "AuthPin.ChangeUser")
    /// Ввести логин и пароль
    internal static let enterLoginPass = Strings.tr("Localizable", "AuthPin.EnterLoginPass")
    /// Введите код доступа
    internal static let enterPin = Strings.tr("Localizable", "AuthPin.EnterPin")
    /// Распознование лица для входа в приложение
    internal static let faceIdReason = Strings.tr("Localizable", "AuthPin.FaceIdReason")
    /// Ничего страшного. Авторизуйтесь заново и придумайте новый.
    internal static let forgotPinPrompt = Strings.tr("Localizable", "AuthPin.ForgotPinPrompt")
    /// Забыли\nкод?
    internal static let restorePin = Strings.tr("Localizable", "AuthPin.RestorePin")
    /// Забыли код?
    internal static let restorePinFull = Strings.tr("Localizable", "AuthPin.RestorePinFull")
    /// Для восстановления кода потребуется заново авторизоваться в системе
    internal static let restorePrompt = Strings.tr("Localizable", "AuthPin.RestorePrompt")
    /// Осталось 
    internal static let retriesLeft = Strings.tr("Localizable", "AuthPin.RetriesLeft")
    /// Приложите палец для входа в приложение
    internal static let touchIdReason = Strings.tr("Localizable", "AuthPin.TouchIdReason")
  }

  internal enum AuthSMS {
    /// Код из SMS
    internal static let codeField = Strings.tr("Localizable", "AuthSMS.CodeField")
    /// Подтвердить
    internal static let confirm = Strings.tr("Localizable", "AuthSMS.Confirm")
    /// Отправить SMS ещё раз
    internal static let resend = Strings.tr("Localizable", "AuthSMS.Resend")
    /// На ваш номер отправлено SMS сообщение с кодом подтверждения
    internal static let smsPrompt = Strings.tr("Localizable", "AuthSMS.SMSPrompt")
  }

  internal enum BaseOrder {
    /// Выберите инструмент
    internal static let pickProduct = Strings.tr("Localizable", "BaseOrder.PickProduct")
  }

  internal enum BaseSign {
    /// Для уточнения причины отказа, пожалуйста, напишите нам по адресу: info@sistema-capital.com
    internal static let orderRejected = Strings.tr("Localizable", "BaseSign.OrderRejected")
    /// Ошибка отправки документов
    internal static let orderRejectedTitle = Strings.tr("Localizable", "BaseSign.OrderRejectedTitle")
    /// Подписать
    internal static let sign = Strings.tr("Localizable", "BaseSign.Sign")
    /// На ваш номер отправлено SMS с кодом подтверждения для подписи следующих документов:
    internal static let smsPrompt = Strings.tr("Localizable", "BaseSign.SMSPrompt")
  }

  internal enum BondPlacement {
    /// Ставка купона была изменена эмитентом, вы можете переразместить заявку
    internal static let alertTitle = Strings.tr("Localizable", "BondPlacement.AlertTitle")
    /// Купить
    internal static let buyButtonTitle = Strings.tr("Localizable", "BondPlacement.BuyButtonTitle")
    /// Дата погашения
    internal static let headerDateTitle = Strings.tr("Localizable", "BondPlacement.HeaderDateTitle")
    /// Доходность
    internal static let headerPercentTitle = Strings.tr("Localizable", "BondPlacement.HeaderPercentTitle")
    /// в год
    internal static let headerYear = Strings.tr("Localizable", "BondPlacement.HeaderYear")
    /// %@%%
    internal static func headerYeldPerAnnumFix(_ p1: Any) -> String {
      return Strings.tr("Localizable", "BondPlacement.HeaderYeldPerAnnumFix", String(describing: p1))
    }
    /// %@%%-%@%%
    internal static func headerYeldPerAnnumRange(_ p1: Any, _ p2: Any) -> String {
      return Strings.tr("Localizable", "BondPlacement.HeaderYeldPerAnnumRange", String(describing: p1), String(describing: p2))
    }
    /// на купон
    internal static let infoAuctionDescription = Strings.tr("Localizable", "BondPlacement.InfoAuctionDescription")
    /// Аукцион
    internal static let infoAuctionTitle = Strings.tr("Localizable", "BondPlacement.InfoAuctionTitle")
    /// Ставка купона
    internal static let infoCouponFixTitle = Strings.tr("Localizable", "BondPlacement.InfoCouponFixTitle")
    /// Диапазон купона
    internal static let infoCouponRangeTitle = Strings.tr("Localizable", "BondPlacement.InfoCouponRangeTitle")
    /// Валюта расчётов
    internal static let infoCurrencyTitle = Strings.tr("Localizable", "BondPlacement.InfoCurrencyTitle")
    /// Окончание приёма
    internal static let infoEndRequestsTitle = Strings.tr("Localizable", "BondPlacement.InfoEndRequestsTitle")
    /// Идентификатор
    internal static let infoIdentificatorTitle = Strings.tr("Localizable", "BondPlacement.InfoIdentificatorTitle")
    /// Дата погашения
    internal static let infoMaturityDateTitle = Strings.tr("Localizable", "BondPlacement.InfoMaturityDateTitle")
    /// Номинал
    internal static let infoParTitle = Strings.tr("Localizable", "BondPlacement.InfoParTitle")
    /// %@ дня
    internal static func infoPaymentPeriodDescription(_ p1: Any) -> String {
      return Strings.tr("Localizable", "BondPlacement.InfoPaymentPeriodDescription", String(describing: p1))
    }
    /// Периодичность выплат
    internal static let infoPaymentPeriodTitle = Strings.tr("Localizable", "BondPlacement.InfoPaymentPeriodTitle")
    /// Старт приёма заявок
    internal static let infoStartRequestsTitle = Strings.tr("Localizable", "BondPlacement.InfoStartRequestsTitle")
    /// Букбилдинг ('взрослая книга') — один из способов размещения облигаций, при котором происходит формирование книги заявок инвесторов для максимально эффективного определения цены. Сегодня это самый популярный в мире формат размещения ценных бумаг. Организатор выпуска открывает книгу заявок на приобретение облигаций на определенный срок (как правило, несколько часов, если речь идет про хорошо знакомого рынку заемщика).\n\nБывает, что объем заявок на участие в выпуске от инвесторов в несколько раз превышает планируемый объем заимствований. В таких случаях организатор может снизить первоначально объявленный диапазон доходности, в результате эмитент получает возможность занять деньги дешевле, чем предполагалось ранее. Иначе говоря, если спрос на долг эмитента большой, то эмитент снижает предлагаемую ставку до тех пор, пока не выровняется объём размещения с желающими купить, под УЖЕ сниженную ставку. Похоже на аукцион.
    internal static let infoText = Strings.tr("Localizable", "BondPlacement.InfoText")
    /// Размещение
    internal static let infoTitle = Strings.tr("Localizable", "BondPlacement.InfoTitle")
    /// Снять заявку
    internal static let requestCancelButtonTitle = Strings.tr("Localizable", "BondPlacement.RequestCancelButtonTitle")
    /// %@ шт
    internal static func requestItemCellAmount(_ p1: Any) -> String {
      return Strings.tr("Localizable", "BondPlacement.RequestItemCellAmount", String(describing: p1))
    }
    /// любой купон
    internal static let requestItemCellCouponeFix = Strings.tr("Localizable", "BondPlacement.RequestItemCellCouponeFix")
    /// | купон %@ %%
    internal static func requestItemCellCouponeRange(_ p1: Any) -> String {
      return Strings.tr("Localizable", "BondPlacement.RequestItemCellCouponeRange", String(describing: p1))
    }
    /// %@ из %@ шт
    internal static func requestItemPartiallyDoneCellAmount(_ p1: Any, _ p2: Any) -> String {
      return Strings.tr("Localizable", "BondPlacement.RequestItemPartiallyDoneCellAmount", String(describing: p1), String(describing: p2))
    }
    /// В процессе снятия
    internal static let requestStatusCancelInProgress = Strings.tr("Localizable", "BondPlacement.RequestStatusCancelInProgress")
    /// Отменена
    internal static let requestStatusCancelled = Strings.tr("Localizable", "BondPlacement.RequestStatusCancelled")
    /// Снята
    internal static let requestStatusDismissed = Strings.tr("Localizable", "BondPlacement.RequestStatusDismissed")
    /// Исполнена
    internal static let requestStatusDone = Strings.tr("Localizable", "BondPlacement.RequestStatusDone")
    /// Ошибка
    internal static let requestStatusError = Strings.tr("Localizable", "BondPlacement.RequestStatusError")
    /// В исполнении
    internal static let requestStatusInProgress = Strings.tr("Localizable", "BondPlacement.RequestStatusInProgress")
    /// Частично исполнена
    internal static let requestStatusPartiallyDone = Strings.tr("Localizable", "BondPlacement.RequestStatusPartiallyDone")
    /// Мои заявки
    internal static let requestTitle = Strings.tr("Localizable", "BondPlacement.RequestTitle")
    /// Снять заявку
    internal static let selectActionModalActionButtonTitle = Strings.tr("Localizable", "BondPlacement.SelectActionModalActionButtonTitle")
    /// Выполнить
    internal static let selectActionModalDefaultActionButtonTitle = Strings.tr("Localizable", "BondPlacement.SelectActionModalDefaultActionButtonTitle")
    /// Отмена
    internal static let selectActionModalDefaultCloseButtonTitle = Strings.tr("Localizable", "BondPlacement.SelectActionModalDefaultCloseButtonTitle")
    /// Заявка будет снята. Средства вернутся обратно на ваш брокерский счёт
    internal static let selectActionModalDescription = Strings.tr("Localizable", "BondPlacement.SelectActionModalDescription")
    /// Вы действительно хотите снять заявку?
    internal static let selectActionModalTitle = Strings.tr("Localizable", "BondPlacement.SelectActionModalTitle")
    /// Приём заявок завершён
    internal static let statusFinishedTitle = Strings.tr("Localizable", "BondPlacement.StatusFinishedTitle")
    /// Приём заявок завершится
    internal static let statusWillFinishTitle = Strings.tr("Localizable", "BondPlacement.StatusWillFinishTitle")
    /// Приём заявок начнётся
    internal static let statusWillStartTitle = Strings.tr("Localizable", "BondPlacement.StatusWillStartTitle")
    /// Размещение
    internal static let title = Strings.tr("Localizable", "BondPlacement.Title")
    /// %d %@ %d
    internal static func truncatedMaturityDate(_ p1: Int, _ p2: Any, _ p3: Int) -> String {
      return Strings.tr("Localizable", "BondPlacement.TruncatedMaturityDate", p1, String(describing: p2), p3)
    }
    internal enum UserInProgress {
      /// Пополнить по реквизитам
      internal static let actionButtonTitle = Strings.tr("Localizable", "BondPlacement.UserInProgress.ActionButtonTitle")
      /// Пополнить картой позже
      internal static let cancelButtonTitle = Strings.tr("Localizable", "BondPlacement.UserInProgress.CancelButtonTitle")
      /// Чтобы торговать инструментами, или размещать заявки, у вас должны быть свободные средства на брокерском счёте. Вы уже можете зачислить деньги по реквизитам, пополнение с карты будет доступно после открытия счёта.\n\nПеревод по реквизитам может производиться в течение нескольких банковских дней.
      internal static let description = Strings.tr("Localizable", "BondPlacement.UserInProgress.Description")
      /// Ваш брокерский счёт в процессе открытия
      internal static let title = Strings.tr("Localizable", "BondPlacement.UserInProgress.Title")
    }
  }

  internal enum BondPlacementInfo {
    /// Понятно
    internal static let actionButtonTitle = Strings.tr("Localizable", "BondPlacementInfo.ActionButtonTitle")
    /// Размещения
    internal static let headerTitle = Strings.tr("Localizable", "BondPlacementInfo.HeaderTitle")
    internal enum Fixed {
      /// Размещение проводится по фиксированному размеру купона. Это хорошая возможность приобрести облигации на первичном рынке с гарантированными условиями.\n\nПри покупке с фиксированной ставкой купона, просто выберите нужное количество облигаций. Если ваша заявка будет исполнена эмитентом, облигации появятся в разделе «Мои активы».
      internal static let description = Strings.tr("Localizable", "BondPlacementInfo.Fixed.Description")
      /// Размещение с фиксированным размером купона
      internal static let title = Strings.tr("Localizable", "BondPlacementInfo.Fixed.Title")
    }
    internal enum Range {
      /// Данное размещение облигаций проводится с аукционом по размеру купона. Вы можете сами определить минимальный размер купона, с которым вы готовы участвовать в размещении.\n\nКомпания-эмитент оценивает спрос на облигации и определяет размер купона, который она готова выплачивать инвесторам. Например, если компания установит купон 7,1%, то заявки на облигации с указанием минимального купона 7,5% не исполнятся.\n\nЧтобы избежать такой ситуации, укажите не слишком большой уровень купона, ближе к нижней границе указанного диапазона или выберите опцию «Купить по любой ставке купона», чтобы участвовать в любом случае.
      internal static let description = Strings.tr("Localizable", "BondPlacementInfo.Range.Description")
      /// Размещение с аукционом на размер купона
      internal static let title = Strings.tr("Localizable", "BondPlacementInfo.Range.Title")
    }
  }

  internal enum BondTrade {
    /// Купить
    internal static let buyButtonTitle = Strings.tr("Localizable", "BondTrade.BuyButtonTitle")
    /// Покупка
    internal static let title = Strings.tr("Localizable", "BondTrade.Title")
    internal enum InfoCell {
      /// Остаток средств, доступный для участия в размещении
      internal static let title = Strings.tr("Localizable", "BondTrade.InfoCell.Title")
    }
    internal enum SettlementModalView {
      /// Средства для участия в размещении облигаций резервируются из остатка средств на сегодняшний день (T0). Часть отображаемого свободного остатка может быть недоступна в данном режиме, так как по проданным бумагам ещё не прошли расчёты.
      internal static let description = Strings.tr("Localizable", "BondTrade.SettlementModalView.Description")
      /// Расчёты на бирже
      internal static let headerTitle = Strings.tr("Localizable", "BondTrade.SettlementModalView.HeaderTitle")
    }
  }

  internal enum Bonds {
    /// Облигации
    internal static let title = Strings.tr("Localizable", "Bonds.title")
  }

  internal enum Brokerage {
    /// за всё время
    internal static let allTimeProfitPrefix = Strings.tr("Localizable", "Brokerage.AllTimeProfitPrefix")
    /// Брокерский счёт
    internal static let brokerAccount = Strings.tr("Localizable", "Brokerage.BrokerAccount")
    /// %@ без НКД
    internal static func cleanPriceLabel(_ p1: Any) -> String {
      return Strings.tr("Localizable", "Brokerage.CleanPriceLabel", String(describing: p1))
    }
    /// за день
    internal static let dayProfitPrefix = Strings.tr("Localizable", "Brokerage.DayProfitPrefix")
    /// за 5 лет
    internal static let fiveYearProfitPrefix = Strings.tr("Localizable", "Brokerage.FiveYearProfitPrefix")
    /// 1 лот = %d %@, %@ ₽
    internal static func lotPrice(_ p1: Int, _ p2: Any, _ p3: Any) -> String {
      return Strings.tr("Localizable", "Brokerage.LotPrice", p1, String(describing: p2), String(describing: p3))
    }
    /// %@ - %@ шт
    internal static func lotsAmount(_ p1: Any, _ p2: Any) -> String {
      return Strings.tr("Localizable", "Brokerage.LotsAmount", String(describing: p1), String(describing: p2))
    }
    /// %@ - %@ %@
    internal static func lotsAmountTyped(_ p1: Any, _ p2: Any, _ p3: Any) -> String {
      return Strings.tr("Localizable", "Brokerage.LotsAmountTyped", String(describing: p1), String(describing: p2), String(describing: p3))
    }
    /// за 1 месяц
    internal static let monthProfitPrefix = Strings.tr("Localizable", "Brokerage.MonthProfitPrefix")
    /// Выбрать актив
    internal static let selectAsset = Strings.tr("Localizable", "Brokerage.SelectAsset")
    /// за 6 месяцев
    internal static let sixMonthProfitPrefix = Strings.tr("Localizable", "Brokerage.SixMonthProfitPrefix")
    /// за 3 месяца
    internal static let threeMonthProfitPrefix = Strings.tr("Localizable", "Brokerage.ThreeMonthProfitPrefix")
    /// за 3 года
    internal static let threeYearProfitPrefix = Strings.tr("Localizable", "Brokerage.ThreeYearProfitPrefix")
    /// за неделю
    internal static let weekProfitPrefix = Strings.tr("Localizable", "Brokerage.WeekProfitPrefix")
    /// за год
    internal static let yearProfitPrefix = Strings.tr("Localizable", "Brokerage.YearProfitPrefix")
    internal enum AccountBlockedBanner {
      internal enum Message {
        /// Для выяснения причин обратитесь в ITI Capital по телефону: %@ или по почте: %@
        internal static func format(_ p1: Any, _ p2: Any) -> String {
          return Strings.tr("Localizable", "Brokerage.AccountBlockedBanner.Message.Format", String(describing: p1), String(describing: p2))
        }
      }
    }
    internal enum AccountInfo {
      /// Услуга Брокерский счёт реализуется путем открытия счёта в АО «ИК «Ай Ти Инвест». АО «ИК «Ай Ти Инвест» является партнером ПАО МТС по предоставлению брокерских услуг.
      internal static let description = Strings.tr("Localizable", "Brokerage.AccountInfo.Description")
      /// Чтобы покупать или продавать акции, облигации, у вас должен быть открыт брокерский счёт.
      internal static let text = Strings.tr("Localizable", "Brokerage.AccountInfo.Text")
      /// Здесь будут ваши активы
      internal static let title = Strings.tr("Localizable", "Brokerage.AccountInfo.Title")
    }
    internal enum Action {
      /// Продолжить
      internal static let `continue` = Strings.tr("Localizable", "Brokerage.Action.Continue")
      /// Открыть счёт
      internal static let `open` = Strings.tr("Localizable", "Brokerage.Action.Open")
      /// Начать заново
      internal static let restart = Strings.tr("Localizable", "Brokerage.Action.Restart")
      /// Обновить сейчас
      internal static let update = Strings.tr("Localizable", "Brokerage.Action.Update")
    }
    internal enum AvailableFunds {
      /// Пополнить
      internal static let refill = Strings.tr("Localizable", "Brokerage.AvailableFunds.Refill")
      /// Свободные средства
      internal static let title = Strings.tr("Localizable", "Brokerage.AvailableFunds.Title")
    }
    internal enum Bpif {
      /// Биржевые фонды
      internal static let title = Strings.tr("Localizable", "Brokerage.BPIF.Title")
    }
    internal enum Instrument {
      /// НКД
      internal static let accruedInterest = Strings.tr("Localizable", "Brokerage.Instrument.AccruedInterest")
      /// Накопленный купонный доход (НКД) — это часть купонного процентного дохода по облигации, рассчитываемая пропорционально количеству дней, прошедших от даты выпуска купонной облигации или даты выплаты предшествующего купонного дохода.
      internal static let accruedInterestDefinition = Strings.tr("Localizable", "Brokerage.Instrument.AccruedInterestDefinition")
      internal enum Position {
        /// с 
        internal static let dateFromPrefix = Strings.tr("Localizable", "Brokerage.Instrument.Position.DateFromPrefix")
      }
    }
    internal enum Instruments {
      /// облигаций
      internal static let bondType = Strings.tr("Localizable", "Brokerage.Instruments.bondType")
      /// Паев
      internal static let bpifType = Strings.tr("Localizable", "Brokerage.Instruments.bpifType")
      /// акций
      internal static let stockType = Strings.tr("Localizable", "Brokerage.Instruments.stockType")
    }
    internal enum Instuments {
      /// Активы
      internal static let title = Strings.tr("Localizable", "Brokerage.Instuments.title")
    }
    internal enum Notification {
      internal enum Title {
        /// Деньги в пути
        internal static let moneyOnTheWay = Strings.tr("Localizable", "Brokerage.Notification.Title.MoneyOnTheWay")
        /// Деньги отправлены
        internal static let moneySent = Strings.tr("Localizable", "Brokerage.Notification.Title.MoneySent")
        /// Поручение отменено
        internal static let orderCanceled = Strings.tr("Localizable", "Brokerage.Notification.Title.OrderCanceled")
        /// Поручение исполнено
        internal static let orderCompleted = Strings.tr("Localizable", "Brokerage.Notification.Title.OrderCompleted")
        /// Поручение в исполнении
        internal static let orderInProcess = Strings.tr("Localizable", "Brokerage.Notification.Title.OrderInProcess")
      }
    }
    internal enum Operation {
      internal enum AdditionalInfo {
        /// %@ шт.
        internal static func amount(_ p1: Any) -> String {
          return Strings.tr("Localizable", "Brokerage.Operation.AdditionalInfo.Amount", String(describing: p1))
        }
        /// %@ шт. по %@
        internal static func amountWithPrice(_ p1: Any, _ p2: Any) -> String {
          return Strings.tr("Localizable", "Brokerage.Operation.AdditionalInfo.AmountWithPrice", String(describing: p1), String(describing: p2))
        }
      }
      internal enum Title {
        /// Покупка
        internal static let buying = Strings.tr("Localizable", "Brokerage.Operation.Title.Buying")
        /// Купон
        internal static let coupon = Strings.tr("Localizable", "Brokerage.Operation.Title.Coupon")
        /// Дивиденды
        internal static let dividends = Strings.tr("Localizable", "Brokerage.Operation.Title.Dividends")
        /// Комиссия
        internal static let fee = Strings.tr("Localizable", "Brokerage.Operation.Title.Fee")
        /// Прочее
        internal static let other = Strings.tr("Localizable", "Brokerage.Operation.Title.Other")
        /// Пополнение счёта
        internal static let refill = Strings.tr("Localizable", "Brokerage.Operation.Title.Refill")
        /// Продажа
        internal static let selling = Strings.tr("Localizable", "Brokerage.Operation.Title.Selling")
        /// Вывод средств
        internal static let withdrawal = Strings.tr("Localizable", "Brokerage.Operation.Title.Withdrawal")
      }
    }
    internal enum Operations {
      internal enum EmptyView {
        /// Начните инвестировать:\nвыберите акцию или облигацию\nи оставьте свою первую заявку на покупку
        internal static let subtitle = Strings.tr("Localizable", "Brokerage.Operations.EmptyView.Subtitle")
        /// Нет данных
        internal static let title = Strings.tr("Localizable", "Brokerage.Operations.EmptyView.Title")
      }
      internal enum ErrorView {
        /// Ошибка загрузки
        internal static let title = Strings.tr("Localizable", "Brokerage.Operations.ErrorView.Title")
      }
      internal enum Filter {
        internal enum Button {
          /// фильтр: %@
          internal static func title(_ p1: Any) -> String {
            return Strings.tr("Localizable", "Brokerage.Operations.Filter.Button.Title", String(describing: p1))
          }
        }
        internal enum Title {
          /// Все
          internal static let all = Strings.tr("Localizable", "Brokerage.Operations.Filter.Title.All")
          /// Облигации
          internal static let bonds = Strings.tr("Localizable", "Brokerage.Operations.Filter.Title.Bonds")
          /// Комиссия
          internal static let fee = Strings.tr("Localizable", "Brokerage.Operations.Filter.Title.Fee")
          /// Пополнение/Вывод
          internal static let refillAndWithdrawal = Strings.tr("Localizable", "Brokerage.Operations.Filter.Title.RefillAndWithdrawal")
          /// Акции
          internal static let stocks = Strings.tr("Localizable", "Brokerage.Operations.Filter.Title.Stocks")
        }
      }
      internal enum FiltersSelection {
        /// Фильтрация
        internal static let title = Strings.tr("Localizable", "Brokerage.Operations.FiltersSelection.Title")
      }
    }
    internal enum Refill {
      /// В процессе зачисления
      internal static let transitMoney = Strings.tr("Localizable", "Brokerage.Refill.TransitMoney")
      internal enum Attention {
        /// При переводе по реквизитам сроки перевода зависят от банка отправителя средств
        internal static let message = Strings.tr("Localizable", "Brokerage.Refill.Attention.Message")
        /// Средства будут зачислены на\nследующий рабочий день
        internal static let title = Strings.tr("Localizable", "Brokerage.Refill.Attention.Title")
      }
    }
    internal enum RequestRejected {
      /// Проверить
      internal static let buttonTitle = Strings.tr("Localizable", "Brokerage.RequestRejected.ButtonTitle")
      /// Ваша заявка была отклонена. Проверьте правильность указанных данных.
      internal static let info = Strings.tr("Localizable", "Brokerage.RequestRejected.Info")
      /// В заявке допущена ошибка
      internal static let title = Strings.tr("Localizable", "Brokerage.RequestRejected.Title")
    }
    internal enum Requisites {
      /// Наименование банка
      internal static let bankName = Strings.tr("Localizable", "Brokerage.Requisites.BankName")
      /// Скопировано
      internal static let copiedMessage = Strings.tr("Localizable", "Brokerage.Requisites.CopiedMessage")
      /// КПП
      internal static let kpp = Strings.tr("Localizable", "Brokerage.Requisites.KPP")
      /// Лицевой счёт
      internal static let personalAccount = Strings.tr("Localizable", "Brokerage.Requisites.PersonalAccount")
      /// Назначение платежа
      internal static let purpose = Strings.tr("Localizable", "Brokerage.Requisites.Purpose")
      /// Получатель
      internal static let recipient = Strings.tr("Localizable", "Brokerage.Requisites.Recipient")
      /// Переслать реквизиты
      internal static let resend = Strings.tr("Localizable", "Brokerage.Requisites.Resend")
      /// SWIFT код
      internal static let swiftCode = Strings.tr("Localizable", "Brokerage.Requisites.SwiftCode")
      internal enum Eur {
        /// Для пополнения брокерского счёта в евро
        internal static let title = Strings.tr("Localizable", "Brokerage.Requisites.EUR.Title")
      }
      internal enum FullBankRecepient {
        /// Банк получатель
        internal static let title = Strings.tr("Localizable", "Brokerage.Requisites.FullBankRecepient.Title")
      }
      internal enum IntermediaryBank {
        /// Банк посредник
        internal static let title = Strings.tr("Localizable", "Brokerage.Requisites.IntermediaryBank.Title")
      }
      internal enum Rub {
        /// Для пополнения брокерского счёта в рублях
        internal static let title = Strings.tr("Localizable", "Brokerage.Requisites.RUB.Title")
      }
      internal enum RefillCurrency {
        /// Реквизиты для пополнения в других валютах
        internal static let title = Strings.tr("Localizable", "Brokerage.Requisites.RefillCurrency.Title")
      }
      internal enum Section {
        /// Для пополнения\nброкерского счёта\nв рублях
        internal static let info = Strings.tr("Localizable", "Brokerage.Requisites.Section.Info")
        /// Реквизиты для пополнения\nв других валютах
        internal static let selector = Strings.tr("Localizable", "Brokerage.Requisites.Section.Selector")
      }
      internal enum Selector {
        /// В евро
        internal static let eur = Strings.tr("Localizable", "Brokerage.Requisites.Selector.eur")
        /// В рублях
        internal static let rub = Strings.tr("Localizable", "Brokerage.Requisites.Selector.rub")
        /// В долларах
        internal static let usd = Strings.tr("Localizable", "Brokerage.Requisites.Selector.usd")
      }
      internal enum Usd {
        /// Для пополнения брокерского счёта в долларах США
        internal static let title = Strings.tr("Localizable", "Brokerage.Requisites.USD.Title")
      }
    }
    internal enum State {
      /// Вы уже начали процесс открытия\nсчёта, но прервали его.
      internal static let interruptedOpening = Strings.tr("Localizable", "Brokerage.State.InterruptedOpening")
      /// Ваши данные\nнаходятся на проверке
      internal static let processingInfo = Strings.tr("Localizable", "Brokerage.State.ProcessingInfo")
      /// Ваша заявка отклонена
      internal static let requestRejected = Strings.tr("Localizable", "Brokerage.State.RequestRejected")
    }
    internal enum Stocks {
      /// Акции
      internal static let title = Strings.tr("Localizable", "Brokerage.Stocks.Title")
    }
    internal enum Tariffs {
      /// Комиссия
      internal static let comission = Strings.tr("Localizable", "Brokerage.Tariffs.Comission")
      /// Депозитарное обслуживание
      internal static let custodyService = Strings.tr("Localizable", "Brokerage.Tariffs.CustodyService")
      /// Если торгуете в течение месяца
      internal static let ifTrade = Strings.tr("Localizable", "Brokerage.Tariffs.IfTrade")
      /// Если не торгуете
      internal static let notTrade = Strings.tr("Localizable", "Brokerage.Tariffs.NotTrade")
      /// За сделку
      internal static let perDeal = Strings.tr("Localizable", "Brokerage.Tariffs.PerDeal")
      /// Тариф брокерского\nсчёта
      internal static let title = Strings.tr("Localizable", "Brokerage.Tariffs.Title")
      internal enum NoComission {
        /// Тарифные условия установлены в документах на открытие вашего брокерского счёта.
        internal static let info = Strings.tr("Localizable", "Brokerage.Tariffs.NoComission.Info")
        /// ДРУГИХ КОМИССИЙ НЕ БУДЕТ
        internal static let title = Strings.tr("Localizable", "Brokerage.Tariffs.NoComission.Title")
      }
    }
    internal enum TradingOrderRequest {
      /// Произошла ошибка при получении цены инструмента
      internal static let wrongPrice = Strings.tr("Localizable", "Brokerage.TradingOrderRequest.WrongPrice")
      internal enum Buy {
        /// Указана максимальная цена покупки, сделка совершится по лучшей для вас цене, разница будет возвращена вам на брокерский счёт
        internal static let hint = Strings.tr("Localizable", "Brokerage.TradingOrderRequest.Buy.Hint")
      }
      internal enum Sell {
        /// Указана минимальная цена продажи, сделка совершится по лучшей для вас цене, разница будет возвращена вам на брокерский счёт
        internal static let hint = Strings.tr("Localizable", "Brokerage.TradingOrderRequest.Sell.Hint")
      }
    }
    internal enum TradingOrderResult {
      /// Подробную информацию по приобретению вы всегда можете найти в разделе «Операции»
      internal static let success = Strings.tr("Localizable", "Brokerage.TradingOrderResult.Success")
      /// Подробную информацию по продаже вы всегда можете найти в разделе «Операции⁠»
      internal static let warning = Strings.tr("Localizable", "Brokerage.TradingOrderResult.Warning")
      internal enum Buy {
        /// Покупка выполнена
        internal static let made = Strings.tr("Localizable", "Brokerage.TradingOrderResult.Buy.Made")
      }
      internal enum CancelButtonTitle {
        /// Отменить покупку
        internal static let buy = Strings.tr("Localizable", "Brokerage.TradingOrderResult.CancelButtonTitle.Buy")
        /// Отменить продажу
        internal static let sell = Strings.tr("Localizable", "Brokerage.TradingOrderResult.CancelButtonTitle.Sell")
      }
      internal enum Error {
        /// Поручение не может быть исполнено
        internal static let cannotPerformOperation = Strings.tr("Localizable", "Brokerage.TradingOrderResult.Error.cannotPerformOperation")
      }
      internal enum Sell {
        /// Продажа выполнена
        internal static let made = Strings.tr("Localizable", "Brokerage.TradingOrderResult.Sell.Made")
      }
    }
    internal enum WithdrawFunds {
      /// Вывести средства
      internal static let title = Strings.tr("Localizable", "Brokerage.WithdrawFunds.Title")
    }
    internal enum Withdrawal {
      internal enum AmountInput {
        internal enum Hint {
          /// При балансе менее %@ возможно вывести только весь остаток средств
          internal static func withdrawAllAvailableOnly(_ p1: Any) -> String {
            return Strings.tr("Localizable", "Brokerage.Withdrawal.AmountInput.Hint.WithdrawAllAvailableOnly", String(describing: p1))
          }
        }
        internal enum Warning {
          /// Минимальная сумма для вывода %@
          internal static func minimumAmount(_ p1: Any) -> String {
            return Strings.tr("Localizable", "Brokerage.Withdrawal.AmountInput.Warning.MinimumAmount", String(describing: p1))
          }
        }
      }
      internal enum Title {
        /// Останется после вывода
        internal static let balanceAfterWithdrawal = Strings.tr("Localizable", "Brokerage.Withdrawal.Title.BalanceAfterWithdrawal")
        /// Комиссия
        internal static let fee = Strings.tr("Localizable", "Brokerage.Withdrawal.Title.Fee")
        /// Сумма к зачислению
        internal static let receivedAmount = Strings.tr("Localizable", "Brokerage.Withdrawal.Title.ReceivedAmount")
        /// Налог
        internal static let tax = Strings.tr("Localizable", "Brokerage.Withdrawal.Title.Tax")
        internal enum AvailableBalance {
          /// Средств на счёте
          internal static let iti = Strings.tr("Localizable", "Brokerage.Withdrawal.Title.AvailableBalance.Iti")
          /// Всего свободных средств
          internal static let mtsb = Strings.tr("Localizable", "Brokerage.Withdrawal.Title.AvailableBalance.Mtsb")
        }
      }
      internal enum Warning {
        /// При выводе средств будет также удержан налог согласно законодательству РФ.
        internal static let feeForWithdrawAll = Strings.tr("Localizable", "Brokerage.Withdrawal.Warning.FeeForWithdrawAll")
      }
    }
    internal enum YieldPeriod {
      /// доходность: за всё время
      internal static let allTime = Strings.tr("Localizable", "Brokerage.YieldPeriod.AllTime")
      /// доходность: за день
      internal static let oneDay = Strings.tr("Localizable", "Brokerage.YieldPeriod.OneDay")
      /// доходность: за 1 месяц
      internal static let oneMonth = Strings.tr("Localizable", "Brokerage.YieldPeriod.OneMonth")
      /// доходность: за неделю
      internal static let oneWeek = Strings.tr("Localizable", "Brokerage.YieldPeriod.OneWeek")
      /// доходность: за год
      internal static let oneYear = Strings.tr("Localizable", "Brokerage.YieldPeriod.OneYear")
      /// доходность: за 3 месяца
      internal static let threeMonths = Strings.tr("Localizable", "Brokerage.YieldPeriod.ThreeMonths")
      /// доходность: за 3 года
      internal static let threeYears = Strings.tr("Localizable", "Brokerage.YieldPeriod.ThreeYears")
    }
  }

  internal enum BuyPai {
    /// Комиссия – 1%
    internal static let comission = Strings.tr("Localizable", "BuyPai.Comission")
    /// Произошла ошибка. Попробуйте произвести оплату позже или обратитесь в нашу поддержку
    internal static let comissionDescriptionError = Strings.tr("Localizable", "BuyPai.ComissionDescriptionError")
    /// Комиссия не может быть рассчитана
    internal static let comissionError = Strings.tr("Localizable", "BuyPai.ComissionError")
    /// Написать нам
    internal static let comissionFeedbackError = Strings.tr("Localizable", "BuyPai.ComissionFeedbackError")
    /// Комиссия
    internal static let comissionWithoutPercentage = Strings.tr("Localizable", "BuyPai.ComissionWithoutPercentage")
    /// Конечная сумма, которая вам будет\nперечислена, будет рассчитана по\nстоимости пая на дату исполнения заявки
    internal static let hint = Strings.tr("Localizable", "BuyPai.Hint")
    /// Инвестировать
    internal static let pay = Strings.tr("Localizable", "BuyPai.Pay")
    /// Данные карты защищены
    internal static let protection = Strings.tr("Localizable", "BuyPai.Protection")
    /// Сохранить данные карты
    internal static let saveCard = Strings.tr("Localizable", "BuyPai.SaveCard")
    /// Оплата
    internal static let title = Strings.tr("Localizable", "BuyPai.Title")
    /// Итого
    internal static let total = Strings.tr("Localizable", "BuyPai.Total")
    internal enum Amount {
      /// Введите сумму пополнения или укажите ее с\nпомощью ползунка. Чтобы перевести более\n%@ рублей, оплатите несколькими платежами\nили воспользуйтесь переводом по реквизитам.
      internal static func hint(_ p1: Any) -> String {
        return Strings.tr("Localizable", "BuyPai.Amount.Hint", String(describing: p1))
      }
      /// Чтобы перевести более %@ рублей, оплатите несколькими платежами\nили воспользуйтесь переводом по реквизитам.
      internal static func lockedInputHint(_ p1: Any) -> String {
        return Strings.tr("Localizable", "BuyPai.Amount.LockedInputHint", String(describing: p1))
      }
      /// Сумма пополнения
      internal static let title = Strings.tr("Localizable", "BuyPai.Amount.Title")
      internal enum Hint {
        /// реквизитам
        internal static let link = Strings.tr("Localizable", "BuyPai.Amount.Hint.Link")
      }
    }
    internal enum Card {
      /// CVV/CVC код
      internal static let cvv = Strings.tr("Localizable", "BuyPai.Card.CVV")
      /// Код
      internal static let cvvNumber = Strings.tr("Localizable", "BuyPai.Card.CVVNumber")
      /// Срок действия
      internal static let issueDate = Strings.tr("Localizable", "BuyPai.Card.IssueDate")
      /// Номер карты
      internal static let number = Strings.tr("Localizable", "BuyPai.Card.Number")
      /// Банковская карта
      internal static let title = Strings.tr("Localizable", "BuyPai.Card.Title")
    }
    internal enum ComissionDisclaimer {
      /// не взимается при оплате картой МТС Банка
      internal static let mtsbank = Strings.tr("Localizable", "BuyPai.ComissionDisclaimer.Mtsbank")
      /// при оплате картой МТС Банка комиссия не будет взиматься
      internal static let otherbank = Strings.tr("Localizable", "BuyPai.ComissionDisclaimer.Otherbank")
      /// будет рассчитана после ввода номера карты
      internal static let unknown = Strings.tr("Localizable", "BuyPai.ComissionDisclaimer.Unknown")
    }
    internal enum DeleteCard {
      /// Оставить
      internal static let close = Strings.tr("Localizable", "BuyPai.DeleteCard.Close")
      /// Удалить
      internal static let delete = Strings.tr("Localizable", "BuyPai.DeleteCard.Delete")
      /// Удалить банковскую карту?
      internal static let title = Strings.tr("Localizable", "BuyPai.DeleteCard.Title")
    }
    internal enum Info {
      /// Создайте заявку на приобретение\nпаев фонда. Затем переведите\nсредства по указанным в заявке\nреквизитам.\n\nПаи будут выданы в течение\nнескольких рабочих дней.\n\nВы можете отследить ход исполнения\nзаявок в разделе Операции.
      internal static let message = Strings.tr("Localizable", "BuyPai.Info.Message")
    }
    internal enum Success {
      /// Паи будут выданы в течение нескольких рабочих дней
      internal static let text = Strings.tr("Localizable", "BuyPai.Success.Text")
      /// Оплата прошла успешно
      internal static let title = Strings.tr("Localizable", "BuyPai.Success.Title")
    }
  }

  internal enum Buying {
    /// Информация о пополнении
    internal static let buyingDUInfo = Strings.tr("Localizable", "Buying.BuyingDUInfo")
    /// Информация о покупке
    internal static let buyingInfo = Strings.tr("Localizable", "Buying.BuyingInfo")
    /// \nСоздайте заявку на приобретение паев фонда. Затем переведите средства по указанным в заявке реквизитам.\n\nПаи будут выданы в течение нескольких рабочих дней.\n
    internal static let buyingInfoDescription = Strings.tr("Localizable", "Buying.BuyingInfoDescription")
    /// Сумма не может быть меньше %@
    internal static func sumLessMin(_ p1: Any) -> String {
      return Strings.tr("Localizable", "Buying.SumLessMin", String(describing: p1))
    }
    /// Сумма не может быть больше %@
    internal static func sumMoreMax(_ p1: Any) -> String {
      return Strings.tr("Localizable", "Buying.SumMoreMax", String(describing: p1))
    }
  }

  internal enum CashDetails {
    /// р/c
    internal static let account = Strings.tr("Localizable", "CashDetails.Account")
    /// БИК
    internal static let bik = Strings.tr("Localizable", "CashDetails.Bik")
    /// ИНН
    internal static let inn = Strings.tr("Localizable", "CashDetails.Inn")
    /// к/c
    internal static let korrAccount = Strings.tr("Localizable", "CashDetails.KorrAccount")
    /// Не являюсь должностным лицом, указанным в ст.7.3 Федерального закона №115-Ф3 от 07.09.2001 г., и/или супругом(-ой), и/или близким родственником должностного лица, указанного в ст.7.3 Федерального закона №115-Ф3 от 07.09.2001 г.
    internal static let notALowOfficial = Strings.tr("Localizable", "CashDetails.NotALowOfficial")
    /// л/с
    internal static let personalAccount = Strings.tr("Localizable", "CashDetails.PersonalAccount")
    /// Являюсь налоговым и валютным резидентом Российской Федерации
    internal static let rusTaxResident = Strings.tr("Localizable", "CashDetails.RusTaxResident")
    /// СНИЛС (Необязательно)
    internal static let snils = Strings.tr("Localizable", "CashDetails.Snils")
  }

  internal enum Chart {
    /// 1 мес
    internal static let p1m = Strings.tr("Localizable", "Chart.P1m")
    /// 1 год
    internal static let p1y = Strings.tr("Localizable", "Chart.P1y")
    /// 3 мес
    internal static let p3m = Strings.tr("Localizable", "Chart.P3m")
    /// 6 мес
    internal static let p6m = Strings.tr("Localizable", "Chart.P6m")
    /// все
    internal static let pAll = Strings.tr("Localizable", "Chart.PAll")
  }

  internal enum CheckEmail {
    /// Проверьте папку “Спам” или отправьте ссылку еще раз
    internal static let infoText = Strings.tr("Localizable", "CheckEmail.InfoText")
    /// Не получили письмо?
    internal static let initialResendEmail = Strings.tr("Localizable", "CheckEmail.InitialResendEmail")
    /// Мы отправили ссылку для смены пароля вам на адрес:
    internal static let initialSubTitle = Strings.tr("Localizable", "CheckEmail.InitialSubTitle")
    /// Проверьте почту
    internal static let initialTitle = Strings.tr("Localizable", "CheckEmail.InitialTitle")
    /// Отправить ссылку еще раз
    internal static let resendEmail = Strings.tr("Localizable", "CheckEmail.ResendEmail")
    /// Отправить ссылку еще раз можно через %@
    internal static func resendEmailTimerText(_ p1: Any) -> String {
      return Strings.tr("Localizable", "CheckEmail.ResendEmailTimerText", String(describing: p1))
    }
    /// Ссылка отправлена повторно
    internal static let resendTitle = Strings.tr("Localizable", "CheckEmail.ResendTitle")
    /// Смена пароля
    internal static let title = Strings.tr("Localizable", "CheckEmail.Title")
  }

  internal enum CheckVersion {
    /// Обновите приложение, чтобы пользоваться актуальной версией.
    internal static let mainMessageText = Strings.tr("Localizable", "CheckVersion.MainMessageText")
    /// Пропустить
    internal static let skipText = Strings.tr("Localizable", "CheckVersion.SkipText")
    /// Данная версия не поддерживается
    internal static let unsupportedVersionTitle = Strings.tr("Localizable", "CheckVersion.UnsupportedVersionTitle")
    /// Доступно обновление
    internal static let updateAvailableTitle = Strings.tr("Localizable", "CheckVersion.UpdateAvailableTitle")
    /// Обновить
    internal static let updateText = Strings.tr("Localizable", "CheckVersion.UpdateText")
  }

  internal enum CompanyInfo {
    /// Информация о компании
    internal static let about = Strings.tr("Localizable", "CompanyInfo.About")
    /// Политика конфиденциальности
    internal static let privacy = Strings.tr("Localizable", "CompanyInfo.Privacy")
    /// Информация
    internal static let title = Strings.tr("Localizable", "CompanyInfo.Title")
  }

  internal enum Currency {
    internal enum Eur {
      /// Евро
      internal static let fullName = Strings.tr("Localizable", "Currency.EUR.FullName")
      /// Евро
      internal static let name = Strings.tr("Localizable", "Currency.EUR.Name")
      /// Евро
      internal static let nameCount = Strings.tr("Localizable", "Currency.EUR.NameCount")
      /// €
      internal static let sign = Strings.tr("Localizable", "Currency.EUR.Sign")
    }
    internal enum Rub {
      /// Российский рубль
      internal static let fullName = Strings.tr("Localizable", "Currency.RUB.FullName")
      /// Рубли
      internal static let name = Strings.tr("Localizable", "Currency.RUB.Name")
      /// Рублей
      internal static let nameCount = Strings.tr("Localizable", "Currency.RUB.NameCount")
      /// ₽
      internal static let sign = Strings.tr("Localizable", "Currency.RUB.Sign")
    }
    internal enum Rur {
      /// Российский рубль
      internal static let fullName = Strings.tr("Localizable", "Currency.RUR.FullName")
      /// Рубли
      internal static let name = Strings.tr("Localizable", "Currency.RUR.Name")
      /// Рублей
      internal static let nameCount = Strings.tr("Localizable", "Currency.RUR.NameCount")
      /// ₽
      internal static let sign = Strings.tr("Localizable", "Currency.RUR.Sign")
    }
    internal enum Usd {
      /// Доллар США
      internal static let fullName = Strings.tr("Localizable", "Currency.USD.FullName")
      /// Доллары
      internal static let name = Strings.tr("Localizable", "Currency.USD.Name")
      /// Долларов
      internal static let nameCount = Strings.tr("Localizable", "Currency.USD.NameCount")
      /// $
      internal static let sign = Strings.tr("Localizable", "Currency.USD.Sign")
    }
  }

  internal enum Du {
    /// Все стратегии
    internal static let allStrategies = Strings.tr("Localizable", "DU.AllStrategies")
    /// Выбрать стратегию
    internal static let chooseStrategy = Strings.tr("Localizable", "DU.ChooseStrategy")
    /// Договор будет закрыт.
    internal static let closingStrategy = Strings.tr("Localizable", "DU.ClosingStrategy")
    /// реквизиты.
    internal static let closingStrategyPostfix = Strings.tr("Localizable", "DU.ClosingStrategyPostfix")
    /// Договор будет закрыт. Вся сумма из текущей стратегии будет переведена вам на указанные 
    internal static let closingStrategyPrefix = Strings.tr("Localizable", "DU.ClosingStrategyPrefix")
    /// Пополните стратегию и начните \nполучать доход.
    internal static let emptyDesciption = Strings.tr("Localizable", "DU.EmptyDesciption")
    /// ДУ Российские облигации
    internal static let fundName = Strings.tr("Localizable", "DU.FundName")
    /// Пополнение стратегии
    internal static let fundType = Strings.tr("Localizable", "DU.FundType")
    /// Посмотреть стратегии
    internal static let gotoStrategies = Strings.tr("Localizable", "DU.GotoStrategies")
    /// Чтобы стратегия начала работать, пополните на %@ %@ до %@
    internal static func incuficientFunds(_ p1: Any, _ p2: Any, _ p3: Any) -> String {
      return Strings.tr("Localizable", "DU.IncuficientFunds", String(describing: p1), String(describing: p2), String(describing: p3))
    }
    /// Индивидуальное ДУ
    internal static let individualStrategy = Strings.tr("Localizable", "DU.IndividualStrategy")
    /// Скоро здесь появятся стандартные стратегии ИИС для инвестирования.
    internal static let nonstandartStrategiesDisabled = Strings.tr("Localizable", "DU.NonstandartStrategiesDisabled")
    /// Условия и ограничения
    internal static let optionsAndConditions = Strings.tr("Localizable", "DU.OptionsAndConditions")
    /// Риск-профиль определён на основании профилирования из %@, на которые вы отвечали.
    internal static func profileTypeDescription(_ p1: Any) -> String {
      return Strings.tr("Localizable", "DU.ProfileTypeDescription", String(describing: p1))
    }
    /// Не удалось исправить данные, обратитесь в службу поддержки
    internal static let requestCorrectionError = Strings.tr("Localizable", "DU.requestCorrectionError")
    /// Риск-профиль
    internal static let riskProfile = Strings.tr("Localizable", "DU.RiskProfile")
    /// Стандартные стратегии
    internal static let standartStrategies = Strings.tr("Localizable", "DU.StandartStrategies")
    /// Стратегии
    internal static let strategiesTitle = Strings.tr("Localizable", "DU.StrategiesTitle")
    /// Здесь будут ваши средства
    internal static let yourActivesWillBeHere = Strings.tr("Localizable", "DU.YourActivesWillBeHere")
    internal enum Checkout {
      /// Оформить
      internal static let actionTitle = Strings.tr("Localizable", "DU.Checkout.ActionTitle")
    }
    internal enum CloseSuccess {
      /// Заявка на закрытие\nуспешно подана
      internal static let title = Strings.tr("Localizable", "DU.CloseSuccess.Title")
    }
    internal enum Composition {
      /// Нет дохода
      internal static let noIncome = Strings.tr("Localizable", "DU.Composition.NoIncome")
      /// рублёвые
      internal static let rubPart = Strings.tr("Localizable", "DU.Composition.RUBPart")
      /// Бумага продана
      internal static let sold = Strings.tr("Localizable", "DU.Composition.Sold")
      /// валютные
      internal static let usdPart = Strings.tr("Localizable", "DU.Composition.USDPart")
    }
    internal enum Compositional {
      /// Все средства
      internal static let descriptionTextAll = Strings.tr("Localizable", "DU.Compositional.DescriptionTextAll")
      /// Валютная часть
      internal static let descriptionTextForeign = Strings.tr("Localizable", "DU.Compositional.DescriptionTextForeign")
      /// Рублевая часть
      internal static let descriptionTextRubles = Strings.tr("Localizable", "DU.Compositional.DescriptionTextRubles")
      /// Проданные бумаги
      internal static let headerSoldTitle = Strings.tr("Localizable", "DU.Compositional.HeaderSoldTitle")
    }
    internal enum Details {
      /// Все
      internal static let allPart = Strings.tr("Localizable", "DU.Details.AllPart")
      /// Рублёвые
      internal static let rubPart = Strings.tr("Localizable", "DU.Details.RUBPart")
      /// Валютные
      internal static let usdPart = Strings.tr("Localizable", "DU.Details.USDPart")
      internal enum DisclosureCell {
        /// Описание стратегии
        internal static let title = Strings.tr("Localizable", "DU.Details.DisclosureCell.Title")
      }
    }
    internal enum Empty {
      /// Чтобы начать инвестировать, выберите стратегию доверительного управления.
      internal static let subtitle = Strings.tr("Localizable", "DU.Empty.Subtitle")
      internal enum NoData {
        /// Скоро появится динамика доходности стратегии
        internal static let text = Strings.tr("Localizable", "DU.Empty.NoData.Text")
      }
    }
    internal enum EmptyPortfolio {
      /// Чтобы продолжить инвестировать, выберите стратегию доверительного управления.
      internal static let text = Strings.tr("Localizable", "DU.EmptyPortfolio.Text")
      /// Здесь будут ваши стратегии
      internal static let title = Strings.tr("Localizable", "DU.EmptyPortfolio.Title")
    }
    internal enum Iis {
      internal enum Withdrawal {
        /// Отменить возврат
        internal static let cancel = Strings.tr("Localizable", "DU.IIS.Withdrawal.Cancel")
        /// Вы лишитесь налогового вычета при\nвозврате денег с ИИС раньше, чем\nчерез 3 года, а договор будет закрыт.
        internal static let message = Strings.tr("Localizable", "DU.IIS.Withdrawal.Message")
        /// Возврат с ИИС
        internal static let title = Strings.tr("Localizable", "DU.IIS.Withdrawal.Title")
      }
    }
    internal enum Information {
      /// Ответьте на %@, и они будут сформированы.
      internal static func bottomText(_ p1: Any) -> String {
        return Strings.tr("Localizable", "DU.Information.BottomText", String(describing: p1))
      }
      /// Мы подберем инвестиционные стратегии для вас
      internal static let bottomTitle = Strings.tr("Localizable", "DU.Information.BottomTitle")
      /// ДУ
      internal static let topCompactTitle = Strings.tr("Localizable", "DU.Information.TopCompactTitle")
      /// Доверительное\nуправление
      internal static let topSeparatedTitle = Strings.tr("Localizable", "DU.Information.TopSeparatedTitle")
      /// Воспользуйтесь персональным портфельным предложением.
      internal static let topText1 = Strings.tr("Localizable", "DU.Information.TopText1")
      /// Теперь стратегии профессиональных управляющих доступны для инвестирования
      internal static let topText2 = Strings.tr("Localizable", "DU.Information.TopText2")
      /// Доверительное управление
      internal static let topTitle = Strings.tr("Localizable", "DU.Information.TopTitle")
      internal enum Action {
        /// Узнать больше
        internal static let more = Strings.tr("Localizable", "DU.Information.Action.More")
        /// Начать
        internal static let start = Strings.tr("Localizable", "DU.Information.Action.Start")
      }
    }
    internal enum MoneyFlow {
      /// В обработке
      internal static let pending = Strings.tr("Localizable", "DU.MoneyFlow.Pending")
      /// Возврат средств
      internal static let refund = Strings.tr("Localizable", "DU.MoneyFlow.Refund")
      internal enum Confirmed {
        /// Приобретённые активы вы сможете отслеживать в вашей стратегии
        internal static let subtitle = Strings.tr("Localizable", "DU.MoneyFlow.Confirmed.Subtitle")
        /// Средства поступили на счёт
        internal static let title = Strings.tr("Localizable", "DU.MoneyFlow.Confirmed.Title")
      }
      internal enum Refund {
        /// Ваши личные данные не прошли проверку, возможно в них допущена ошибка. Поэтому средства отправлены вам обратно.
        internal static let info = Strings.tr("Localizable", "DU.MoneyFlow.Refund.Info")
      }
    }
    internal enum NonStandartStrategies {
      internal enum Profiling {
        /// Мы подберем для вас индивидуальные инвестиционные стратегии. Для этого ответьте на 9 вопросов.
        internal static let title = Strings.tr("Localizable", "DU.NonStandartStrategies.Profiling.Title")
      }
    }
    internal enum Opened {
      /// Заявление о присоединении к договору ДУ отправлено, но перевести деньги можно уже сейчас.
      internal static let text = Strings.tr("Localizable", "DU.Opened.Text")
      /// Заявление успешно\nподано!
      internal static let title = Strings.tr("Localizable", "DU.Opened.Title")
    }
    internal enum Order {
      internal enum Reject {
        /// Заявка на открытие ДУ отклонена.
        internal static let subtitle = Strings.tr("Localizable", "DU.Order.Reject.subtitle")
        /// Заявка отклонена
        internal static let title = Strings.tr("Localizable", "DU.Order.Reject.title")
      }
    }
    internal enum PaymentPurpose {
      /// Чтобы ДУ стало активным, необходимо пополнить счёт на %d рублей в течение %d дней с момента подписания договора.
      internal static func warn(_ p1: Int, _ p2: Int) -> String {
        return Strings.tr("Localizable", "DU.PaymentPurpose.Warn", p1, p2)
      }
    }
    internal enum Profiling {
      /// Пройти профилирование
      internal static let goToProfiling = Strings.tr("Localizable", "DU.Profiling.GoToProfiling")
      /// Выберите вариант ответа!
      internal static let hintMessage = Strings.tr("Localizable", "DU.Profiling.HintMessage")
      /// Профилирование
      internal static let title = Strings.tr("Localizable", "DU.Profiling.Title")
      internal enum Action {
        /// Подобрать стратегии
        internal static let showStrategies = Strings.tr("Localizable", "DU.Profiling.Action.ShowStrategies")
      }
    }
    internal enum Progress {
      /// Подбираем вам оптимальные стратегии для инвестирования
      internal static let info = Strings.tr("Localizable", "DU.Progress.Info")
    }
    internal enum Refill {
      /// Оформите договор доверительного управления.\nЗатем переведите средства банковской картой или по указанным реквизитам.\n\nАктивы будут приобретены в течение нескольких рабочих дней.
      internal static let info = Strings.tr("Localizable", "DU.Refill.Info")
      /// Пополнение
      internal static let title = Strings.tr("Localizable", "DU.Refill.Title")
      internal enum Hint {
        /// Чтобы ДУ стало активным, необходимо пополнить счёт на\n%@ до %@.
        internal static func withDate(_ p1: Any, _ p2: Any) -> String {
          return Strings.tr("Localizable", "DU.Refill.Hint.WithDate", String(describing: p1), String(describing: p2))
        }
        /// Чтобы ДУ стало активным, необходимо пополнить счёт на\n%@ в течение %@ дней с момента подписания договора.
        internal static func withDays(_ p1: Any, _ p2: Any) -> String {
          return Strings.tr("Localizable", "DU.Refill.Hint.WithDays", String(describing: p1), String(describing: p2))
        }
      }
      internal enum Success {
        /// Активы будут приобретены в течение нескольких рабочих дней
        internal static let text = Strings.tr("Localizable", "DU.Refill.Success.Text")
      }
    }
    internal enum RequestNotApproved {
      /// Заявка ещё не подтверждена, но вы уже можете пополнить стратегию. Если данные не будут подтверждены, мы вернем вам деньги.
      internal static let info = Strings.tr("Localizable", "DU.RequestNotApproved.Info")
    }
    internal enum Smev {
      internal enum Warning {
        /// Исправить данные
        internal static let button = Strings.tr("Localizable", "DU.SMEV.Warning.button")
        /// К сожалению, ваши персональные данные не прошли проверку. Возможно, вы где-то ошиблись при заполнении. Внимательно проверьте ФИО, паспорт, ИНН, а потом отправьте заявку ещё раз.
        internal static let subtitle = Strings.tr("Localizable", "DU.SMEV.Warning.subtitle")
        /// Заявка отклонена из-за некорректных данных
        internal static let title = Strings.tr("Localizable", "DU.SMEV.Warning.title")
      }
    }
    internal enum StandartStrategies {
      internal enum Profiling {
        /// Дополнительные стратегии будут доступны после прохождения инвестиционного профилирования
        internal static let title = Strings.tr("Localizable", "DU.StandartStrategies.Profiling.Title")
      }
    }
    internal enum Strategies {
      /// ИИС позволяет получить вычет 13% от суммы инвестирования за год. Максимальная сумма к возврату составляет 52 000 рублей в год. Для этого необходимо продержать вложенные деньги хотя бы три года. У вас может быть открыт только один ИИС
      internal static let iisDescription = Strings.tr("Localizable", "DU.Strategies.IISDescription")
      /// Стратегия с ипользованием ИИС
      internal static let iisTitle = Strings.tr("Localizable", "DU.Strategies.IISTitle")
      internal enum Details {
        /// Описание
        internal static let description = Strings.tr("Localizable", "DU.Strategies.Details.Description")
        internal enum Container {
          /// Показатели
          internal static let title = Strings.tr("Localizable", "DU.Strategies.Details.Container.Title")
        }
        internal enum Dynamics {
          /// Динамика
          internal static let title = Strings.tr("Localizable", "DU.Strategies.Details.Dynamics.Title")
        }
      }
      internal enum Info {
        /// Понятно
        internal static let buttonTitle = Strings.tr("Localizable", "DU.Strategies.Info.ButtonTitle")
        /// Ожидаемая доходность, не является гарантированой.
        internal static let subtitle = Strings.tr("Localizable", "DU.Strategies.Info.Subtitle")
        /// Размер доходности
        internal static let title = Strings.tr("Localizable", "DU.Strategies.Info.Title")
      }
      internal enum Rest {
        /// Подобранные по результатам профилирования
        internal static let subtitle = Strings.tr("Localizable", "DU.Strategies.Rest.Subtitle")
        /// Другие стратегии
        internal static let title = Strings.tr("Localizable", "DU.Strategies.Rest.Title")
      }
      internal enum RiskProfile {
        /// Риск-профиль
        internal static let title = Strings.tr("Localizable", "DU.Strategies.RiskProfile.Title")
      }
    }
    internal enum TaxAttention {
      /// Согласно законодательству РФ с вас\nбудут автоматически удержаны налоги\n на доход
      internal static let text = Strings.tr("Localizable", "DU.TaxAttention.Text")
    }
    internal enum Withdrawal {
      /// Вернуть средства
      internal static let action = Strings.tr("Localizable", "DU.Withdrawal.Action")
      /// Вернуть
      internal static let actionShort = Strings.tr("Localizable", "DU.Withdrawal.ActionShort")
      /// Будут выведены все средства со счёта
      internal static let allFunds = Strings.tr("Localizable", "DU.Withdrawal.AllFunds")
      /// Останется после возврата
      internal static let amountLeft = Strings.tr("Localizable", "DU.Withdrawal.AmountLeft")
      /// Сумма к возврату
      internal static let amountTitle = Strings.tr("Localizable", "DU.Withdrawal.AmountTitle")
      /// Для вашей безопасности возврат денежных средств на счета других лиц ограничен
      internal static let attention = Strings.tr("Localizable", "DU.Withdrawal.Attention")
      /// Закрыть договор
      internal static let closeAction = Strings.tr("Localizable", "DU.Withdrawal.CloseAction")
      /// Закрыть договор ДУ
      internal static let closeDU = Strings.tr("Localizable", "DU.Withdrawal.CloseDU")
      /// Куда возвращаем?
      internal static let destination = Strings.tr("Localizable", "DU.Withdrawal.Destination")
      /// Получить налоговый вычет
      internal static let ndfl = Strings.tr("Localizable", "DU.Withdrawal.NDFL")
      /// Будут выведены все средства,\nкоторые вы вносили по договору.
      internal static let notFormedStrategy = Strings.tr("Localizable", "DU.Withdrawal.NotFormedStrategy")
      /// Отказаться от налогового вычета
      internal static let refuseNDFL = Strings.tr("Localizable", "DU.Withdrawal.RefuseNDFL")
      /// Конечная сумма может немного\nизмениться из-за удержания налога на\nдоход и комиссии управляющего.
      internal static let taxAttention = Strings.tr("Localizable", "DU.Withdrawal.TaxAttention")
      internal enum Error {
        /// Закрытие договора сейчас не доступно. Попробуйте позднее или обратитесь в поддержку.
        internal static let closeUnavailable = Strings.tr("Localizable", "DU.Withdrawal.Error.CloseUnavailable")
      }
      internal enum Failed {
        /// Заявка на возврат\nотклонена
        internal static let title = Strings.tr("Localizable", "DU.Withdrawal.Failed.Title")
        internal enum Message {
          /// Пожалуйста, обратитесь в УК\n«Система Капитал» по телефону:\n
          internal static let partOne = Strings.tr("Localizable", "DU.Withdrawal.Failed.Message.PartOne")
          ///  или по почте:\n
          internal static let partTwo = Strings.tr("Localizable", "DU.Withdrawal.Failed.Message.PartTwo")
        }
      }
      internal enum Ndfl {
        internal enum Info {
          /// При продаже ценных бумаг, находившихся в собственности свыше трёх лет, возможно применение налогового вычета на полученный доход
          internal static let text = Strings.tr("Localizable", "DU.Withdrawal.NDFL.Info.text")
          /// Hалоговый вычет
          internal static let title = Strings.tr("Localizable", "DU.Withdrawal.NDFL.Info.title")
        }
      }
    }
  }

  internal enum DatePeriod {
    internal enum AllTime {
      /// всё время
      internal static let formattedText = Strings.tr("Localizable", "DatePeriod.AllTime.formattedText")
      /// все
      internal static let title = Strings.tr("Localizable", "DatePeriod.AllTime.title")
    }
    internal enum FiveYears {
      /// 5 лет
      internal static let formattedText = Strings.tr("Localizable", "DatePeriod.FiveYears.formattedText")
      /// 5л
      internal static let title = Strings.tr("Localizable", "DatePeriod.FiveYears.title")
    }
    internal enum OneMonth {
      /// 1 месяц
      internal static let formattedText = Strings.tr("Localizable", "DatePeriod.OneMonth.formattedText")
      /// 1м
      internal static let title = Strings.tr("Localizable", "DatePeriod.OneMonth.title")
    }
    internal enum OneYear {
      /// 1 год
      internal static let formatterText = Strings.tr("Localizable", "DatePeriod.OneYear.formatterText")
      /// 1г
      internal static let title = Strings.tr("Localizable", "DatePeriod.OneYear.title")
    }
    internal enum SixMonth {
      /// 6 месяцев
      internal static let formattedText = Strings.tr("Localizable", "DatePeriod.SixMonth.formattedText")
      /// 6м
      internal static let title = Strings.tr("Localizable", "DatePeriod.SixMonth.title")
    }
    internal enum ThreeMonth {
      /// 3 месяца
      internal static let formattedText = Strings.tr("Localizable", "DatePeriod.ThreeMonth.formattedText")
      /// 3м
      internal static let title = Strings.tr("Localizable", "DatePeriod.ThreeMonth.title")
    }
    internal enum ThreeYear {
      /// 3 года
      internal static let formattedText = Strings.tr("Localizable", "DatePeriod.ThreeYear.formattedText")
      /// 3г
      internal static let title = Strings.tr("Localizable", "DatePeriod.ThreeYear.title")
    }
  }

  internal enum Debug {
    /// Отключить анимации
    internal static let animationsOptionTitle = Strings.tr("Localizable", "Debug.animationsOptionTitle")
    /// Использовать localHost
    internal static let hostOptionTitle = Strings.tr("Localizable", "Debug.hostOptionTitle")
  }

  internal enum Deprecated {
    /// в службу поддержки.
    internal static let descriptionActionText = Strings.tr("Localizable", "Deprecated.DescriptionActionText")
  }

  internal enum DocFile {
    /// Документ
    internal static let title = Strings.tr("Localizable", "DocFile.Title")
  }

  internal enum Document {
    /// Обычно он становится доступен на следующий день
    internal static let fileNotReadyDescription = Strings.tr("Localizable", "Document.FileNotReadyDescription")
    /// Документ еще не сформирован
    internal static let fileNotReadyTitle = Strings.tr("Localizable", "Document.FileNotReadyTitle")
    internal enum FileDownload {
      /// Не удалось загрузить файл
      internal static let error = Strings.tr("Localizable", "Document.FileDownload.Error")
    }
  }

  internal enum DocumentStatus {
    /// В обработке
    internal static let вобработке = Strings.tr("Localizable", "DocumentStatus.ВОбработке")
    /// Исполнено
    internal static let исполнено = Strings.tr("Localizable", "DocumentStatus.Исполнено")
    /// Отказ
    internal static let отказ = Strings.tr("Localizable", "DocumentStatus.Отказ")
  }

  internal enum Documents {
    /// У вас пока нет документов
    internal static let noData = Strings.tr("Localizable", "Documents.NoData")
    /// Другие документы
    internal static let others = Strings.tr("Localizable", "Documents.Others")
    /// Документы
    internal static let title = Strings.tr("Localizable", "Documents.Title")
  }

  internal enum Esia {
    /// Регистрация через Госуслуги в данный момент не доступна
    internal static let notAvailable = Strings.tr("Localizable", "ESIA.NotAvailable")
    /// Не найден российский паспорт
    internal static let notRFPassport = Strings.tr("Localizable", "ESIA.NotRFPassport")
    /// Ваш аккаунт на Госуслугах не подтверждён
    internal static let notVerifyedError = Strings.tr("Localizable", "ESIA.NotVerifyedError")
    /// Госуслуги
    internal static let title = Strings.tr("Localizable", "ESIA.Title")
  }

  internal enum Empty {
    internal enum NoData {
      /// Они скоро появятся, мы уже работаем над этим
      internal static let text = Strings.tr("Localizable", "Empty.NoData.Text")
      /// Данных пока нет
      internal static let title = Strings.tr("Localizable", "Empty.NoData.Title")
    }
  }

  internal enum EnterCode {
    /// Срок жизни кода истек
    internal static let smsExpireError = Strings.tr("Localizable", "EnterCode.SmsExpireError")
    /// Ошибка отправки повторного СМС
    internal static let smsResendError = Strings.tr("Localizable", "EnterCode.SmsResendError")
    /// Превышен лимит попыток ввода СМС кода
    internal static let smsRetriesExpire = Strings.tr("Localizable", "EnterCode.SmsRetriesExpire")
    /// Неизвестная ошибка
    internal static let smsUnknownError = Strings.tr("Localizable", "EnterCode.SmsUnknownError")
    /// Неверный код
    internal static let smsWrongCodeError = Strings.tr("Localizable", "EnterCode.SmsWrongCodeError")
  }

  internal enum EnterPassword {
    /// Срок жизни кода истек.
    internal static let expireError = Strings.tr("Localizable", "EnterPassword.ExpireError")
    /// Срок жизни кода истек.\nНеобходимо заново пройти авторизацию
    internal static let expireErrorDescription = Strings.tr("Localizable", "EnterPassword.ExpireErrorDescription")
    /// Осталось %@
    internal static func retriesLeft(_ p1: Any) -> String {
      return Strings.tr("Localizable", "EnterPassword.RetriesLeft", String(describing: p1))
    }
    /// Вы превысили количество попыток.\nНеобходимо заново пройти авторизацию
    internal static let retriesOutError = Strings.tr("Localizable", "EnterPassword.RetriesOutError")
    /// Слишком много неправильных попыток ввода. Попробуйте снова через %d минут.
    internal static func retryPopupMessage(_ p1: Int) -> String {
      return Strings.tr("Localizable", "EnterPassword.RetryPopupMessage", p1)
    }
    /// Неверный пароль
    internal static let wrongPasword = Strings.tr("Localizable", "EnterPassword.WrongPasword")
  }

  internal enum Error {
    /// Сервис доступен только для налоговых и валютных резидентов РФ
    internal static let allowedOnlyRussianResidents = Strings.tr("Localizable", "Error.AllowedOnlyRussianResidents")
    /// Ошибка авторизации в приложении
    internal static let apiAuthError = Strings.tr("Localizable", "Error.APIAuthError")
    /// При выполнении запроса произошла ошибка.\nПопробуйте повторить позже.
    internal static let apiException = Strings.tr("Localizable", "Error.APIException")
    /// Не удалось отправить обращение. \nПопробуйте повторить позже.
    internal static let feedbackNotSent = Strings.tr("Localizable", "Error.FeedbackNotSent")
    /// Поле обязательно для заполнения
    internal static let fieldIsEmpty = Strings.tr("Localizable", "Error.FieldIsEmpty")
    /// Выберите значение из списка
    internal static let fieldIsNotFromList = Strings.tr("Localizable", "Error.FieldIsNotFromList")
    /// Некорректный номер телефона
    internal static let incorrectPhoneNumber = Strings.tr("Localizable", "Error.IncorrectPhoneNumber")
    /// Неправильный код
    internal static let invalidSMSCode = Strings.tr("Localizable", "Error.InvalidSMSCode")
    /// Слишком много неправильных попыток ввода. Попробуйте снова через %@
    internal static func loginLocked(_ p1: Any) -> String {
      return Strings.tr("Localizable", "Error.LoginLocked", String(describing: p1))
    }
    /// Данные не получены.\nПопробуйте повторить позже.
    internal static let noData = Strings.tr("Localizable", "Error.NoData")
    /// Вероятно, соединение с интернетом прервано.
    internal static let noNetwork = Strings.tr("Localizable", "Error.NoNetwork")
    /// Некорректные данные
    internal static let notFilledCorrect = Strings.tr("Localizable", "Error.NotFilledCorrect")
    /// Сервис не доступен для публичных должностных лиц
    internal static let officialNotAllowed = Strings.tr("Localizable", "Error.OfficialNotAllowed")
    /// Срок жизни кода из СМС истек. Получите новый.
    internal static let signHasExpired = Strings.tr("Localizable", "Error.SignHasExpired")
    /// Что-то пошло не так. Попробуйте позднее.
    internal static let somethingWentWrong = Strings.tr("Localizable", "Error.SomethingWentWrong")
    /// Попробуйте обновить экран. Если ошибка повторяется, напишите нам на 
    internal static let tryReloadDataText = Strings.tr("Localizable", "Error.TryReloadDataText")
    /// Wrong data passed
    internal static let wrongDataPassed = Strings.tr("Localizable", "Error.WrongDataPassed")
    internal enum Screen {
      /// напишите нам.
      internal static let messageUs = Strings.tr("Localizable", "Error.Screen.messageUs")
      /// Поправим, а пока попробуйте повторить операцию ещё раз. Если ошибка повторяется, напишите нам.
      internal static let messageUsFull = Strings.tr("Localizable", "Error.Screen.messageUsFull")
      /// Что-то здесь не так
      internal static let title = Strings.tr("Localizable", "Error.Screen.title")
    }
  }

  internal enum Exchange {
    /// Средства будут переведены в выбранный вами фонд в течение  нескольких рабочих дней.\n\nВсе расчёты будут осуществлены по стоимостям пая на дату исполнения заявки.\n\n
    internal static let approveText = Strings.tr("Localizable", "Exchange.ApproveText")
    /// Заявка на обмен успешно подана
    internal static let approveTitle = Strings.tr("Localizable", "Exchange.ApproveTitle")
    /// Выберите фонд
    internal static let chooseFond = Strings.tr("Localizable", "Exchange.ChooseFond")
    /// КОД ИЗ SMS
    internal static let codeField = Strings.tr("Localizable", "Exchange.CodeField")
    /// Облигации. Валютный
    internal static let currencyBonds = Strings.tr("Localizable", "Exchange.CurrencyBonds")
    /// На что меняем
    internal static let exchangeTarget = Strings.tr("Localizable", "Exchange.ExchangeTarget")
    /// На ваш номер отправлено SMS с кодом подтверждения для подписи следующих документов
    internal static let signDescription = Strings.tr("Localizable", "Exchange.SignDescription")
    /// Сумма в портфеле
    internal static let sumInPortfolio = Strings.tr("Localizable", "Exchange.SumInPortfolio")
    /// Сумма обмена не может быть равна 0
    internal static let sumIsZero = Strings.tr("Localizable", "Exchange.SumIsZero")
    /// Сумма обмена не может быть меньше или больше %@
    internal static func sumLessOrMoreThan(_ p1: Any) -> String {
      return Strings.tr("Localizable", "Exchange.SumLessOrMoreThan", String(describing: p1))
    }
    /// Сумма обмена не может быть меньше %@
    internal static func sumLessThanMin(_ p1: Any) -> String {
      return Strings.tr("Localizable", "Exchange.SumLessThanMin", String(describing: p1))
    }
    /// Сумма обмена не может быть больше %@
    internal static func sumMoreThanMax(_ p1: Any) -> String {
      return Strings.tr("Localizable", "Exchange.SumMoreThanMax", String(describing: p1))
    }
    /// Запросить еще раз можно через %@
    internal static func timerText(_ p1: Any) -> String {
      return Strings.tr("Localizable", "Exchange.TimerText", String(describing: p1))
    }
    /// Обмен
    internal static let title = Strings.tr("Localizable", "Exchange.Title")
    internal enum Info {
      /// Средства будут переведены в выбранный вами фонд в течение нескольких рабочих дней.\n\nВсе расчёты будут осуществлены по стоимостям пая на дату исполнения заявки.\n\n
      internal static let description = Strings.tr("Localizable", "Exchange.Info.Description")
      /// Информация об обмене
      internal static let title = Strings.tr("Localizable", "Exchange.Info.Title")
    }
  }

  internal enum ExchangeOrder {
    /// Паёв на обмен
    internal static let amountTitle = Strings.tr("Localizable", "ExchangeOrder.AmountTitle")
    /// Обменять на инструмент
    internal static let pickProduct2 = Strings.tr("Localizable", "ExchangeOrder.PickProduct2")
    /// Обмен инструментов
    internal static let title = Strings.tr("Localizable", "ExchangeOrder.Title")
    /// Обмен
    internal static let titleShort = Strings.tr("Localizable", "ExchangeOrder.TitleShort")
  }

  internal enum ExchangeSign {
    /// Обменять на
    internal static let productTitle = Strings.tr("Localizable", "ExchangeSign.ProductTitle")
    /// Подтверждение обмена
    internal static let title = Strings.tr("Localizable", "ExchangeSign.Title")
  }

  internal enum Feed {
    /// %@ в год
    internal static func bondPromoCellIncomeDescription(_ p1: Any) -> String {
      return Strings.tr("Localizable", "Feed.BondPromoCellIncomeDescription", String(describing: p1))
    }
    /// Доходность
    internal static let bondPromoCellIncomeTitle = Strings.tr("Localizable", "Feed.BondPromoCellIncomeTitle")
    /// Срок размещения
    internal static let bondPromoCellPeriodTitle = Strings.tr("Localizable", "Feed.BondPromoCellPeriodTitle")
    /// Иностранные облигации
    internal static let foreignBondsTitle = Strings.tr("Localizable", "Feed.ForeignBondsTitle")
    /// Иностранные акции
    internal static let foreignStocksTitle = Strings.tr("Localizable", "Feed.ForeignStocksTitle")
    /// доходность: за 
    internal static let periodPrefix = Strings.tr("Localizable", "Feed.periodPrefix")
    /// Витрина
    internal static let title = Strings.tr("Localizable", "Feed.Title")
    /// Не удалось загрузить данные
    internal static let unableLoadDataText = Strings.tr("Localizable", "Feed.unableLoadDataText")
  }

  internal enum Feedback {
    /// Введите...
    internal static let placeholder = Strings.tr("Localizable", "Feedback.Placeholder")
    /// Получатель
    internal static let recipent = Strings.tr("Localizable", "Feedback.Recipent")
    /// Хорошо
    internal static let resultOk = Strings.tr("Localizable", "Feedback.ResultOk")
    /// Тема обращения
    internal static let subject = Strings.tr("Localizable", "Feedback.Subject")
    /// Не выбрано
    internal static let subjectNotChosen = Strings.tr("Localizable", "Feedback.SubjectNotChosen")
    /// Другое
    internal static let subjectOther = Strings.tr("Localizable", "Feedback.SubjectOther")
    /// Выплаты диведендов/купонов
    internal static let subjectPayouts = Strings.tr("Localizable", "Feedback.SubjectPayouts")
    /// Налогообложение
    internal static let subjectTaxation = Strings.tr("Localizable", "Feedback.SubjectTaxation")
    /// Техническая проблема
    internal static let subjectTechnical = Strings.tr("Localizable", "Feedback.SubjectTechnical")
    /// Перевод средств
    internal static let subjectTransaction = Strings.tr("Localizable", "Feedback.SubjectTransaction")
  }

  internal enum Fund {
    /// Правила фонда
    internal static let rules = Strings.tr("Localizable", "Fund.Rules")
    internal enum Requisite {
      /// Скачать 1,2 Мб
      internal static let docSize = Strings.tr("Localizable", "Fund.Requisite.DocSize")
      /// Реквизиты для перечисления денежных средств в оплату инвестиционных паев ОПИФ рыночных финансовых инструментов "Система Капитал - Мобильный. Облигации"
      internal static let docTitle = Strings.tr("Localizable", "Fund.Requisite.DocTitle")
    }
  }

  internal enum Funds {
    /// О фонде
    internal static let about = Strings.tr("Localizable", "Funds.about")
    /// ПИФы
    internal static let description = Strings.tr("Localizable", "Funds.description")
    /// Динамика пая
    internal static let dynamics = Strings.tr("Localizable", "Funds.dynamics")
    /// Фонды
    internal static let fundsTitle = Strings.tr("Localizable", "Funds.fundsTitle")
    /// Из какого фонда выводим?
    internal static let fundWithdrawSelection = Strings.tr("Localizable", "Funds.fundWithdrawSelection")
    /// Мои фонды
    internal static let myFundsTitle = Strings.tr("Localizable", "Funds.MyFundsTitle")
    /// Структура
    internal static let structure = Strings.tr("Localizable", "Funds.structure")
  }

  internal enum Gender {
    /// Женский
    internal static let female = Strings.tr("Localizable", "Gender.Female")
    /// Мужской
    internal static let male = Strings.tr("Localizable", "Gender.Male")
  }

  internal enum InfoNotification {
    internal enum Error {
      /// Произошла ошибка. Попробуйте ещё раз
      internal static let description = Strings.tr("Localizable", "InfoNotification.Error.description")
      /// 
      internal static let title = Strings.tr("Localizable", "InfoNotification.Error.title")
    }
    internal enum Success {
      /// Заявка будет снята
      internal static let description = Strings.tr("Localizable", "InfoNotification.Success.description")
      /// 
      internal static let title = Strings.tr("Localizable", "InfoNotification.Success.title")
    }
  }

  internal enum Instrument {
    /// Число %@ не должно превышать доступные активы
    internal static func availableFundsAmountError(_ p1: Any) -> String {
      return Strings.tr("Localizable", "Instrument.availableFundsAmountError", String(describing: p1))
    }
    /// Покупка
    internal static let buying = Strings.tr("Localizable", "Instrument.Buying")
    /// Количество %@ для покупки
    internal static func buyingAmount(_ p1: Any) -> String {
      return Strings.tr("Localizable", "Instrument.BuyingAmount", String(describing: p1))
    }
    /// Чистая цена %@
    internal static func cleanPrice(_ p1: Any) -> String {
      return Strings.tr("Localizable", "Instrument.cleanPrice", String(describing: p1))
    }
    /// Не удалось загрузить информацию по инструменту
    internal static let errorLoadingData = Strings.tr("Localizable", "Instrument.ErrorLoadingData")
    /// облиг.
    internal static let obligations = Strings.tr("Localizable", "Instrument.Obligations")
    /// В цену покупки включается накопленный купонный доход.
    internal static let popupCleanPriceDescription = Strings.tr("Localizable", "Instrument.PopupCleanPriceDescription")
    /// Почему цена выше?
    internal static let popupCleanPriceTitle = Strings.tr("Localizable", "Instrument.PopupCleanPriceTitle")
    /// Продажа
    internal static let selling = Strings.tr("Localizable", "Instrument.Selling")
    /// Количество %@ для продажи
    internal static func sellingAmount(_ p1: Any) -> String {
      return Strings.tr("Localizable", "Instrument.SellingAmount", String(describing: p1))
    }
    /// Число %@ должно быть кратно %@
    internal static func stockAmountError(_ p1: Any, _ p2: Any) -> String {
      return Strings.tr("Localizable", "Instrument.StockAmountError", String(describing: p1), String(describing: p2))
    }
    /// акц.
    internal static let stocks = Strings.tr("Localizable", "Instrument.Stocks")
    internal enum Maturity {
      /// до
      internal static let before = Strings.tr("Localizable", "Instrument.Maturity.Before")
    }
    internal enum PriceTitle {
      /// за 1 пай
      internal static let bpif = Strings.tr("Localizable", "Instrument.PriceTitle.Bpif")
      /// за 1 акцию
      internal static let stocks = Strings.tr("Localizable", "Instrument.PriceTitle.Stocks")
    }
  }

  internal enum Instruments {
    /// Биржа закроется через 
    internal static let biddingClose = Strings.tr("Localizable", "Instruments.BiddingClose")
    /// Торги возобновятся через 
    internal static let biddingResume = Strings.tr("Localizable", "Instruments.BiddingResume")
    /// Для покупки пополните счёт на %@
    internal static func replenishmentAmount(_ p1: Any) -> String {
      return Strings.tr("Localizable", "Instruments.ReplenishmentAmount", String(describing: p1))
    }
    internal enum BookBuilding {
      internal enum Day {
        /// %@ с %@ мск.
        internal static func `default`(_ p1: Any, _ p2: Any) -> String {
          return Strings.tr("Localizable", "Instruments.BookBuilding.Day.Default", String(describing: p1), String(describing: p2))
        }
      }
    }
    internal enum Period {
      /// Годовые
      internal static let annual = Strings.tr("Localizable", "Instruments.Period.Annual")
      /// Ежемесячные
      internal static let monthly = Strings.tr("Localizable", "Instruments.Period.Monthly")
      /// Ежеквартальные
      internal static let quarterly = Strings.tr("Localizable", "Instruments.Period.Quarterly")
      /// Полугодовые
      internal static let semiAnnual = Strings.tr("Localizable", "Instruments.Period.SemiAnnual")
      internal enum Default {
        /// Каждые %@
        internal static func days(_ p1: Any) -> String {
          return Strings.tr("Localizable", "Instruments.Period.Default.Days", String(describing: p1))
        }
      }
    }
    internal enum PreBookBuilding {
      internal enum Day {
        /// с %@ мск.
        internal static func current(_ p1: Any) -> String {
          return Strings.tr("Localizable", "Instruments.PreBookBuilding.Day.Current", String(describing: p1))
        }
        /// %@ c %@ мск.
        internal static func `default`(_ p1: Any, _ p2: Any) -> String {
          return Strings.tr("Localizable", "Instruments.PreBookBuilding.Day.Default", String(describing: p1), String(describing: p2))
        }
      }
    }
  }

  internal enum Instument {
    /// Бумага погашена
    internal static let maturity = Strings.tr("Localizable", "Instument.Maturity")
  }

  internal enum Intro {
    /// Мобильное приложение МТС Инвестиции
    internal static let about = Strings.tr("Localizable", "Intro.About")
    /// Вход в личный кабинет
    internal static let buttonLogin = Strings.tr("Localizable", "Intro.ButtonLogin")
    /// Продолжить без входа
    internal static let buttonSkip = Strings.tr("Localizable", "Intro.ButtonSkip")
    /// в МТС Инвестиции!
    internal static let subTitle = Strings.tr("Localizable", "Intro.SubTitle")
    /// Войдите в личный кабинет,\nесли вы уже являетесь клиентом
    internal static let textClient = Strings.tr("Localizable", "Intro.TextClient")
    /// Выберите подходящий\nинвестиционный инструмент.\nДля приобритения нажмите кнопку
    internal static let textNonClient = Strings.tr("Localizable", "Intro.TextNonClient")
    /// Добро пожаловать!
    internal static let title = Strings.tr("Localizable", "Intro.Title")
  }

  internal enum Login {
    /// Вход в ЛК
    internal static let title = Strings.tr("Localizable", "Login.Title")
    /// Вход
    internal static let titleShort = Strings.tr("Localizable", "Login.TitleShort")
  }

  internal enum Logoff {
    /// Выход
    internal static let title = Strings.tr("Localizable", "Logoff.Title")
  }

  internal enum MTSBroker {
    /// Брокерский счёт МТС Банк
    internal static let brokerAccountTitle = Strings.tr("Localizable", "MTSBroker.BrokerAccountTitle")
    /// Распоряжение на вывод ДС
    internal static let signingFileWithdrawalTitle = Strings.tr("Localizable", "MTSBroker.SigningFileWithdrawalTitle")
    /// МТС Банк
    internal static let title = Strings.tr("Localizable", "MTSBroker.Title")
    internal enum InterruptedOpening {
      /// Вы уже начали процесс открытия, но\nпрервали его.
      internal static let message = Strings.tr("Localizable", "MTSBroker.InterruptedOpening.Message")
      /// Продолжить\nоткрытие счёта?
      internal static let title = Strings.tr("Localizable", "MTSBroker.InterruptedOpening.Title")
    }
    internal enum OpeningInProgress {
      /// Вы уже можете зачислить денежные средства по реквизитам, пополнение с карты будет доступно после открытия счёта.
      internal static let details = Strings.tr("Localizable", "MTSBroker.OpeningInProgress.Details")
      /// Счёт в процессе открытия
      internal static let title = Strings.tr("Localizable", "MTSBroker.OpeningInProgress.Title")
    }
    internal enum Portfolio {
      /// Услуга Брокерский счёт реализуется путем открытия счёта в ПАО «МТС Банк», который является партнером ПАО МТС по предоставлению брокерских услуг.
      internal static let hint = Strings.tr("Localizable", "MTSBroker.Portfolio.Hint")
    }
  }

  internal enum MTSOperationDetails {
    internal enum Info {
      /// Услуги предоставляет ПАО «МТС-Банк». Лицензия профессионального участника рынка ценных бумаг № 177-04613-100000 от 24.01.2001г. на осуществление брокерской деятельности, лицензия профессионального участника рынка ценных бумаг на осуществление депозитарной деятельности № 177-04660-000100 от 24.01.2001г.
      internal static let infoText = Strings.tr("Localizable", "MTSOperationDetails.Info.InfoText")
      internal enum Description {
        /// При нажатии кнопки «Купить» на биржу будет выставлено поручение на покупку выбранного количества ценных бумаг по цене не выше указанной на экране. Покупка будет произведена по наилучшей цене, но не выше указанной в поручении. Если на бирже недостаточное предложение выбранных ценных бумаг, поручение может быть исполнено частично или не исполнено совсем. Бумаги будут зачислены на ваш депозитарный счёт ПАО «МТС Банк» в сроки в соответствии с режимом торгов ММВБ.
        internal static let buying = Strings.tr("Localizable", "MTSOperationDetails.Info.Description.Buying")
        /// При нажатии кнопки «Продать» на биржу будет выставлено поручение на продажу выбранного количества ценных бумаг по цене не ниже указанной на экране. Продажа будет произведена по наилучшей цене, но не ниже указанной в поручении. Если на бирже недостаточный спрос на выбранные ценные бумаги, поручение может быть исполнено частично или не исполнено совсем. Средства от продажи бумаг будут зачислены на ваш брокерский счёт ПАО «МТС Банк» в сроки в соответствии с режимом торгов ММВБ.
        internal static let selling = Strings.tr("Localizable", "MTSOperationDetails.Info.Description.Selling")
      }
    }
  }

  internal enum Menu {
    /// Ещё
    internal static let listTitle = Strings.tr("Localizable", "Menu.listTitle")
    /// Выйти из текущего аккаунта?
    internal static let logoff = Strings.tr("Localizable", "Menu.Logoff")
    /// МТС Инвестиции
    internal static let title = Strings.tr("Localizable", "Menu.Title")
  }

  internal enum Money {
    /// %@ %@
    internal static func value(_ p1: Any, _ p2: Any) -> String {
      return Strings.tr("Localizable", "Money.Value", String(describing: p1), String(describing: p2))
    }
  }

  internal enum MoreMenu {
    /// О компании
    internal static let about = Strings.tr("Localizable", "MoreMenu.About")
    /// О приложении
    internal static let aboutApp = Strings.tr("Localizable", "MoreMenu.aboutApp")
    /// Контакты
    internal static let contacts = Strings.tr("Localizable", "MoreMenu.Contacts")
    /// Написать разработчикам
    internal static let feedback = Strings.tr("Localizable", "MoreMenu.Feedback")
    /// Помощь
    internal static let help = Strings.tr("Localizable", "MoreMenu.Help")
    /// Мой профиль
    internal static let myProfile = Strings.tr("Localizable", "MoreMenu.MyProfile")
  }

  internal enum MyProfile {
    /// Адрес
    internal static let address = Strings.tr("Localizable", "MyProfile.Address")
    /// Наименование банка
    internal static let bankName = Strings.tr("Localizable", "MyProfile.BankName")
    /// БИК
    internal static let bik = Strings.tr("Localizable", "MyProfile.BIK")
    /// Расчётный счёт
    internal static let chackingAccount = Strings.tr("Localizable", "MyProfile.ChackingAccount")
    /// Корр. счёт
    internal static let corrAccount = Strings.tr("Localizable", "MyProfile.CorrAccount")
    /// Изменить
    internal static let edit = Strings.tr("Localizable", "MyProfile.Edit")
    /// Выйти из приложения
    internal static let exit = Strings.tr("Localizable", "MyProfile.Exit")
    /// ИНН
    internal static let inn = Strings.tr("Localizable", "MyProfile.INN")
    /// Кем выдан
    internal static let issuedBy = Strings.tr("Localizable", "MyProfile.IssuedBy")
    /// Дата выдачи
    internal static let issuedDate = Strings.tr("Localizable", "MyProfile.IssuedDate")
    /// Паспорт
    internal static let passport = Strings.tr("Localizable", "MyProfile.Passport")
    /// Реквизиты
    internal static let properties = Strings.tr("Localizable", "MyProfile.Properties")
    /// По указанным реквизитам будут перечислены денежные средства при погашении инвестиционных паев
    internal static let propertiesDescription = Strings.tr("Localizable", "MyProfile.PropertiesDescription")
    /// Серия и номер
    internal static let serialNumber = Strings.tr("Localizable", "MyProfile.SerialNumber")
    /// Профиль
    internal static let title = Strings.tr("Localizable", "MyProfile.Title")
    /// Ваш номер
    internal static let yourNumber = Strings.tr("Localizable", "MyProfile.YourNumber")
    internal enum ActionSheet {
      /// Выйти
      internal static let exit = Strings.tr("Localizable", "MyProfile.ActionSheet.Exit")
    }
    internal enum Alert {
      /// Вы действительно хотите выйти из учетной записи?
      internal static let exitPromt = Strings.tr("Localizable", "MyProfile.Alert.ExitPromt")
    }
  }

  internal enum NewClient {
    /// Подтверждаю, что ознакомлен\nс соглашением об ЭДО
    internal static let confirm1 = Strings.tr("Localizable", "NewClient.Confirm1")
    /// Даю свое согласие на передачу и\nобработку персональных данных\nв ООО УК "Система-Капитал"
    internal static let confirm2 = Strings.tr("Localizable", "NewClient.Confirm2")
    /// Все несохраненные данные будут потеряны
    internal static let discardChangeTitle = Strings.tr("Localizable", "NewClient.DiscardChangeTitle")
    internal enum Account {
      /// Счёт получателя
      internal static let field = Strings.tr("Localizable", "NewClient.Account.Field")
      /// Введите счёт получателя
      internal static let placeholder = Strings.tr("Localizable", "NewClient.Account.Placeholder")
    }
    internal enum AddAddress {
      /// Квартира
      internal static let appartment = Strings.tr("Localizable", "NewClient.AddAddress.Appartment")
      /// Регион
      internal static let area = Strings.tr("Localizable", "NewClient.AddAddress.Area")
      /// Дом, корпус
      internal static let building = Strings.tr("Localizable", "NewClient.AddAddress.Building")
      /// Очистить
      internal static let clearAllTextFields = Strings.tr("Localizable", "NewClient.AddAddress.ClearAllTextFields")
      /// Город или населенный пункт
      internal static let locality = Strings.tr("Localizable", "NewClient.AddAddress.Locality")
      /// нет номера квартиры
      internal static let noAppartmentNumber = Strings.tr("Localizable", "NewClient.AddAddress.NoAppartmentNumber")
      /// Улица
      internal static let street = Strings.tr("Localizable", "NewClient.AddAddress.Street")
    }
    internal enum Address {
      /// Фактический адрес
      internal static let fact = Strings.tr("Localizable", "NewClient.Address.Fact")
      /// Фактический адрес совпадает с регистрационным
      internal static let factSameWithRegistration = Strings.tr("Localizable", "NewClient.Address.FactSameWithRegistration")
      /// Почтовый адрес
      internal static let post = Strings.tr("Localizable", "NewClient.Address.Post")
      /// Почтовый адрес совпадает с регистрационным
      internal static let postSameWithRegistration = Strings.tr("Localizable", "NewClient.Address.PostSameWithRegistration")
      /// Адрес регистрации
      internal static let registration = Strings.tr("Localizable", "NewClient.Address.Registration")
    }
    internal enum Bank {
      /// Наименование банка
      internal static let field = Strings.tr("Localizable", "NewClient.Bank.Field")
      /// 
      internal static let placeholder = Strings.tr("Localizable", "NewClient.Bank.Placeholder")
      internal enum CashBack {
        /// Указать реквизиты для возврата средств
        internal static let title = Strings.tr("Localizable", "NewClient.Bank.CashBack.Title")
      }
    }
    internal enum Bik {
      /// БИК
      internal static let field = Strings.tr("Localizable", "NewClient.Bik.Field")
      /// Введите БИК банка
      internal static let placeholder = Strings.tr("Localizable", "NewClient.Bik.Placeholder")
    }
    internal enum Birthday {
      /// Дата рождения
      internal static let field = Strings.tr("Localizable", "NewClient.Birthday.Field")
      /// Укажите дату
      internal static let placeholder = Strings.tr("Localizable", "NewClient.Birthday.Placeholder")
    }
    internal enum Buying {
      /// Я и (или) мои родственники занимают должности в законодательном, исполнительном, административном или судебном органе в Российской Федерации или других странах
      internal static let q0 = Strings.tr("Localizable", "NewClient.Buying.Q0")
      /// Вы имеете гражданство, отличное от гражданства Российской Федерации?
      internal static let q1 = Strings.tr("Localizable", "NewClient.Buying.Q1")
      /// Имеете ли вы одновременно с гражданством Российской Федерации гражданство иностранного государства (за исключением гражданства государства - члена Таможенного Союза)?
      internal static let q2 = Strings.tr("Localizable", "NewClient.Buying.Q2")
      /// Имеете ли Вы вид на жительство в иностранном государстве?
      internal static let q3 = Strings.tr("Localizable", "NewClient.Buying.Q3")
      /// Вы находитесь на территории иностранного государства не менее 31 дня в течение текущего календарного года и не менее 183 дней в течение 3 лет, включая текущий год и два непосредственно предшествующих года, при этом сумма дней , в течение которых Вы присутствовали на территории иностранного государства в текущем году, а также двух предшествующих годах, умножается на установленных коэффициент:\n\n• коэффициент для текущего года равен 1 (т.е. учитываются все дни, проведенные в иностранном государстве в текущем году);\n• коэффициент предшествующего года равен 1/3 и\n• коэффициент позапрошлого года - 1/6.
      internal static let q4 = Strings.tr("Localizable", "NewClient.Buying.Q4")
      internal enum HasOfficialRelatives {
        /// Для оформления документов, пожалуйста, обратитесь в офис Управляющей компании
        internal static let error = Strings.tr("Localizable", "NewClient.Buying.HasOfficialRelatives.Error")
      }
      internal enum Q1 {
        /// Родственники - родственники по прямой восходящей и нисходящей линии (родители и дети, дедушки, бабушки и внуки), полнородные и неполнородные братья и сестра, усыновители и усыновленные, супруг или супруг.\n\nДолжностное лицо - иностранное публичное должностное, лицо, должностное лицо публичной международной организации, лицо, замещающее (занимающее) государственную должность РФ, должность членов Совета директоров ЦБ РФ, должность федеральной государственной службы, назначение на которую и освобождение от которой осуществляются Президентом РФ или Правительством РФ, должность в ЦБ РФ, государственных корпорациях и иных организациях, созданных РФ на основании федеральных законов, включенную в перечни должностей, определяемых Президентом РФ.
        internal static let info = Strings.tr("Localizable", "NewClient.Buying.Q1.Info")
      }
    }
    internal enum Confirm1 {
      /// с соглашением об ЭДО
      internal static let linkText = Strings.tr("Localizable", "NewClient.Confirm1.LinkText")
    }
    internal enum Confirm2 {
      /// передачу и\nобработку персональных данных
      internal static let linkText = Strings.tr("Localizable", "NewClient.Confirm2.LinkText")
    }
    internal enum DocDate {
      /// Дата выдачи
      internal static let field = Strings.tr("Localizable", "NewClient.DocDate.Field")
      /// Укажите дату
      internal static let placeholder = Strings.tr("Localizable", "NewClient.DocDate.Placeholder")
    }
    internal enum DocNum {
      /// Серия номер
      internal static let field = Strings.tr("Localizable", "NewClient.DocNum.Field")
      /// 0000 000000
      internal static let placeholder = Strings.tr("Localizable", "NewClient.DocNum.Placeholder")
    }
    internal enum DocOrgan {
      /// Кем выдан
      internal static let field = Strings.tr("Localizable", "NewClient.DocOrgan.Field")
      /// Название организации
      internal static let placeholder = Strings.tr("Localizable", "NewClient.DocOrgan.Placeholder")
    }
    internal enum Email {
      /// Электронная почта
      internal static let field = Strings.tr("Localizable", "NewClient.Email.Field")
      /// Введите ваш e-mail
      internal static let placeholder = Strings.tr("Localizable", "NewClient.Email.Placeholder")
    }
    internal enum FactAddress {
      /// Фактический адрес
      internal static let field = Strings.tr("Localizable", "NewClient.FactAddress.Field")
      /// Укажите фактический адрес
      internal static let placeholder = Strings.tr("Localizable", "NewClient.FactAddress.Placeholder")
    }
    internal enum Fatca {
      /// Страна резиденства
      internal static let country = Strings.tr("Localizable", "NewClient.Fatca.country")
      /// Для оформления документов, пожалуйста, обратитесь в офис Управляющей компании
      internal static let errorNeedToGoOffice = Strings.tr("Localizable", "NewClient.Fatca.errorNeedToGoOffice")
      /// Адрес места жительства за пределами Российской Федерации
      internal static let foreignAddress = Strings.tr("Localizable", "NewClient.Fatca.foreignAddress")
      /// Укажите страну(ы) налогового резидентства, отличную(ые) от Российской Федерации, (т.е. страну(ы), резидентом которой(ых) Вы считаетесь для целей обложения подоходным налогом) и ИНН для каждой указанной страны (если имеется).
      internal static let foreignDescription = Strings.tr("Localizable", "NewClient.Fatca.foreignDescription")
      /// Я являюсь гражданином и/или налогоплательщиком иного государства, кроме РФ
      internal static let hasForeignResidence = Strings.tr("Localizable", "NewClient.Fatca.hasForeignResidence")
      /// Я имею «вид на жительство» и/или адрес в ином государстве, кроме РФ
      internal static let hasForeignRVP = Strings.tr("Localizable", "NewClient.Fatca.hasForeignRVP")
      /// Выберите причину:
      internal static let noIdentifierDescription = Strings.tr("Localizable", "NewClient.Fatca.noIdentifierDescription")
      /// Вы имеете гражданство, отличное от гражданства Российской Федерации?
      internal static let q1 = Strings.tr("Localizable", "NewClient.Fatca.Q1")
      /// Являетесь ли Вы налогоплательщиком США?
      internal static let q11 = Strings.tr("Localizable", "NewClient.Fatca.Q11")
      /// Являетесь ли Вы гражданином США?
      internal static let q12 = Strings.tr("Localizable", "NewClient.Fatca.Q12")
      /// Являются ли США местом Вашего рождения?
      internal static let q13 = Strings.tr("Localizable", "NewClient.Fatca.Q13")
      /// Являются ли США Вашим местом жительства/регистрации?
      internal static let q14 = Strings.tr("Localizable", "NewClient.Fatca.Q14")
      /// Имеется ли у Вас вид на жительство (green card) в США?
      internal static let q15 = Strings.tr("Localizable", "NewClient.Fatca.Q15")
      /// Имеется ли у Вас почтовый адрес, в том числе адрес арендованного почтового ящика, в США?
      internal static let q16 = Strings.tr("Localizable", "NewClient.Fatca.Q16")
      /// Имеется ли у Вас номер телефона, зарегистрированного в США?
      internal static let q17 = Strings.tr("Localizable", "NewClient.Fatca.Q17")
      /// Имеется ли у Вас номер телефона, зарегистрированный в ином иностранном государстве, отличном от США?
      internal static let q18 = Strings.tr("Localizable", "NewClient.Fatca.Q18")
      /// Выдавались ли доверенности и/или предоставлялось ли право подписи лицу, имеющему адрес в США?
      internal static let q19 = Strings.tr("Localizable", "NewClient.Fatca.Q19")
      /// Имеете ли Вы одновременно с гражданством Российской Федерации гражданство гражданства иностранного государства (за исключением гражданства государства - члена Таможенного союза)?
      internal static let q2 = Strings.tr("Localizable", "NewClient.Fatca.Q2")
      /// Вы находитесь на территории США не менее 31 дня в течение текущего календарного года и не менее 183 дней в течение 3 лет, включая текущий год и два непосредственно предшествующих года, при этом сумма дней, в течение которых Вы присутствовали на территории США в текущем году, а также двух предшествующих годах, умножается на установленный коэффициент:\n• коэффициент для текущего года равен 1 (т.е. учитываются все дни, проведенные в США в текущем году);\n• коэффициент предшествующего года равен – 1/3 и\n• коэффициент позапрошлого года – 1/6.
      internal static let q20 = Strings.tr("Localizable", "NewClient.Fatca.Q20")
      /// Имеете ли Вы адрес места фактического проживания и (или) почтовый адрес, и (или) адрес до востребования в иностранном государстве?
      internal static let q21 = Strings.tr("Localizable", "NewClient.Fatca.Q21")
      /// Являетесь ли Вы налоговым резидентом иностранного государства?\n\n(“ДА”- если на дату заполнения настоящей вы находитесь на территории Российской Федерации меньше 183 календарных дней в течение 12 месяцев подряд, предшествующих дате заполнения настоящей анкеты) 
      internal static let q22 = Strings.tr("Localizable", "NewClient.Fatca.Q22")
      /// Отсутствует ли у Вас номер телефона, зарегистрированный в Российской Федерации?
      internal static let q23 = Strings.tr("Localizable", "NewClient.Fatca.Q23")
      /// ИНН, если есть
      internal static let q24 = Strings.tr("Localizable", "NewClient.Fatca.Q24")
      /// ИНН отсутствует
      internal static let q25 = Strings.tr("Localizable", "NewClient.Fatca.Q25")
      /// В стране, в которой Вы подлежите обложению подоходным налогом как резидент, ИНН не присваивается.
      internal static let q26 = Strings.tr("Localizable", "NewClient.Fatca.Q26")
      /// Вы не можете получить ИНН или эквивалентный ему номер по иным основаниям.
      internal static let q27 = Strings.tr("Localizable", "NewClient.Fatca.Q27")
      /// ИНН не требуется, поскольку страна, налоговым резидентом которой Вы являетесь и в которой Вам был присвоен ИНН, не требует от финансовых учреждений сбора и передачи сведений об ИНН.
      internal static let q28 = Strings.tr("Localizable", "NewClient.Fatca.Q28")
      /// Имеете ли Вы вид на жительство в иностранном государстве?
      internal static let q3 = Strings.tr("Localizable", "NewClient.Fatca.Q3")
      /// Вы находитесь на территории иностранного государства не менее 31 дня в течение текущего календарного года и не менее 183 дней в течение 3 лет, включая текущий год и два непосредственно предшествующих года, при этом сумма дней, в течение которых Вы присутствовали на территории иностранного государства в текущем году, а также двух предшествующих годах, умножается на установленный коэффициент:\n• коэффициент для текущего года равен 1 (т.е. учитываются все дни, проведенные в иностранном государстве в текущем году);\n• коэффициент предшествующего года равен – 1/3 и\n• коэффициент позапрошлого года – 1/6.
      internal static let q4 = Strings.tr("Localizable", "NewClient.Fatca.Q4")
      /// Страна налогового резиденства
      internal static let taxCountry = Strings.tr("Localizable", "NewClient.Fatca.taxCountry")
    }
    internal enum Footer {
      /// Нажимая далее вы даете свое согласие на передачу и обработку персональных данных в ООО УК «Система Капитал»
      internal static let buying = Strings.tr("Localizable", "NewClient.Footer.Buying")
      /// Нажимая Оформить, вы даете свое согласие на передачу и обработку персональных данных в ПАО «МТС-БАНК»
      internal static let mtsBroker = Strings.tr("Localizable", "NewClient.Footer.MTSBroker")
      /// Нажимая Оформить, вы даете свое согласие на передачу и обработку персональных данных в АО «Инвестиционная компания «Ай Ти Инвест»
      internal static let savingAccount = Strings.tr("Localizable", "NewClient.Footer.SavingAccount")
      internal enum MTSBroker {
        /// передачу и обработку персональных данных
        internal static let linkText = Strings.tr("Localizable", "NewClient.Footer.MTSBroker.LinkText")
      }
      internal enum SavingAccount {
        /// передачу и обработку персональных данных
        internal static let linkText = Strings.tr("Localizable", "NewClient.Footer.SavingAccount.LinkText")
      }
    }
    internal enum Inn {
      /// ИНН
      internal static let flield = Strings.tr("Localizable", "NewClient.Inn.Flield")
      /// Узнать свой ИНН
      internal static let linkText = Strings.tr("Localizable", "NewClient.Inn.LinkText")
      /// Введите ИНН
      internal static let placeholder = Strings.tr("Localizable", "NewClient.Inn.Placeholder")
      /// Для получения сведений об ИНН заполните ФИО, дату рождения, паспортные данные и дату выдачи документа
      internal static let request = Strings.tr("Localizable", "NewClient.Inn.Request")
      /// Ошибка получения ИНН
      internal static let requestError = Strings.tr("Localizable", "NewClient.Inn.RequestError")
    }
    internal enum KorrAccount {
      /// Корреспондентский счёт
      internal static let field = Strings.tr("Localizable", "NewClient.KorrAccount.Field")
      /// 
      internal static let placeholder = Strings.tr("Localizable", "NewClient.KorrAccount.Placeholder")
    }
    internal enum LegalAddress {
      /// Место регистрации
      internal static let field = Strings.tr("Localizable", "NewClient.LegalAddress.Field")
      /// Укажите адрес регистрации
      internal static let placeholder = Strings.tr("Localizable", "NewClient.LegalAddress.Placeholder")
    }
    internal enum Name {
      /// Имя
      internal static let field = Strings.tr("Localizable", "NewClient.Name.Field")
      /// Введите имя
      internal static let placeholder = Strings.tr("Localizable", "NewClient.Name.Placeholder")
    }
    internal enum Nationality {
      /// Гражданство
      internal static let field = Strings.tr("Localizable", "NewClient.Nationality.Field")
      /// Страна
      internal static let placeholder = Strings.tr("Localizable", "NewClient.Nationality.Placeholder")
    }
    internal enum Phone {
      /// Телефон
      internal static let field = Strings.tr("Localizable", "NewClient.Phone.Field")
      /// Введите номер телефона
      internal static let placeholder = Strings.tr("Localizable", "NewClient.Phone.Placeholder")
    }
    internal enum Placeborn {
      /// Место рождения (как в паспорте)
      internal static let field = Strings.tr("Localizable", "NewClient.Placeborn.Field")
      /// Населённый пункт
      internal static let placeholder = Strings.tr("Localizable", "NewClient.Placeborn.Placeholder")
    }
    internal enum PostAddress {
      /// Почтовый адрес
      internal static let field = Strings.tr("Localizable", "NewClient.PostAddress.Field")
      /// Укажите почтовый адрес
      internal static let placeholder = Strings.tr("Localizable", "NewClient.PostAddress.Placeholder")
    }
    internal enum SecondName {
      /// Отчество
      internal static let field = Strings.tr("Localizable", "NewClient.SecondName.Field")
      /// Введите отчество
      internal static let placeholder = Strings.tr("Localizable", "NewClient.SecondName.Placeholder")
      internal enum Error {
        /// Заполните поле. При отсутствии отчества поставьте:  –
        internal static let description = Strings.tr("Localizable", "NewClient.SecondName.Error.Description")
      }
    }
    internal enum Section {
      /// Адреса
      internal static let adresses = Strings.tr("Localizable", "NewClient.Section.Adresses")
      /// Платёжные реквизиты
      internal static let bank = Strings.tr("Localizable", "NewClient.Section.Bank")
      /// Введите дату в формате ДД.ММ.ГГГГ
      internal static let birthdayBrokeDate = Strings.tr("Localizable", "NewClient.Section.BirthdayBrokeDate")
      /// Некорректная дата
      internal static let birthdayPastOrFutureDate = Strings.tr("Localizable", "NewClient.Section.BirthdayPastOrFutureDate")
      /// Ваш возраст должен быть больше 18 лет
      internal static let birthdayUnderageDate = Strings.tr("Localizable", "NewClient.Section.BirthdayUnderageDate")
      /// Подтверждение
      internal static let confirm = Strings.tr("Localizable", "NewClient.Section.Confirm")
      /// Контактная информация
      internal static let contacts = Strings.tr("Localizable", "NewClient.Section.Contacts")
      /// Анкета FATCA
      internal static let fatca = Strings.tr("Localizable", "NewClient.Section.Fatca")
      /// ИНН
      internal static let inn = Strings.tr("Localizable", "NewClient.Section.Inn")
      /// Паспорт
      internal static let passport = Strings.tr("Localizable", "NewClient.Section.Passport")
      /// Паспорт недействителен
      internal static let passportError = Strings.tr("Localizable", "NewClient.Section.PassportError")
      /// Личные данные
      internal static let person = Strings.tr("Localizable", "NewClient.Section.Person")
      /// Сайт ФСН
      internal static let site = Strings.tr("Localizable", "NewClient.Section.Site")
      internal enum Bank {
        /// По указанным реквизитам будут перечислены денежные средства при погашении инвестиционных паев
        internal static let hint = Strings.tr("Localizable", "NewClient.Section.Bank.Hint")
      }
      internal enum Inn {
        /// Не удается найти ИНН. Проверьте корректность введенных данных
        internal static let error = Strings.tr("Localizable", "NewClient.Section.Inn.Error")
      }
    }
    internal enum Snils {
      /// Поле СНИЛС заполнено неверно
      internal static let error = Strings.tr("Localizable", "NewClient.Snils.Error")
    }
    internal enum SubdivisionCode {
      /// Код подразделения
      internal static let field = Strings.tr("Localizable", "NewClient.SubdivisionCode.Field")
    }
    internal enum Surname {
      /// Фамилия
      internal static let field = Strings.tr("Localizable", "NewClient.Surname.Field")
      /// Введите фамилию
      internal static let placeholder = Strings.tr("Localizable", "NewClient.Surname.Placeholder")
    }
  }

  internal enum NewClientForm {
    /// Оформление заявки
    internal static let title = Strings.tr("Localizable", "NewClientForm.Title")
  }

  internal enum News {
    /// Информация предоставлена Агенством экономической информации «ПРАЙМ»
    internal static let sourceInfo = Strings.tr("Localizable", "News.sourceInfo")
    /// Новости
    internal static let title = Strings.tr("Localizable", "News.title")
  }

  internal enum Obligations {
    /// Облигации
    internal static let title = Strings.tr("Localizable", "Obligations.title")
  }

  internal enum OperationDetails {
    internal enum Info {
      /// Услуги предоставляет АО «ИК «Ай Ти Инвест». Лицензия профессионального участника рынка ценных бумаг № 045-07514-100000 от 17.03.2004 на осуществление брокерской деятельности, лицензия профессионального участника рынка ценных бумаг на осуществление депозитарной деятельности № 045-08543-000100 от 14.07.2005.
      internal static let infoText = Strings.tr("Localizable", "OperationDetails.Info.InfoText")
      internal enum Description {
        /// При нажатии кнопки «Купить» на биржу будет выставлено поручение на покупку выбранного количества ценных бумаг по цене не выше указанной на экране. Покупка будет произведена по наилучшей цене, но не выше указанной в поручении. Если на бирже недостаточное предложение выбранных ценных бумаг, поручение может быть исполнено частично или не исполнено совсем. Бумаги будут зачислены на ваш депозитарный счёт АО «ИК «Ай Ти Инвест» в сроки в соответствии с режимом торгов ММВБ.
        internal static let buying = Strings.tr("Localizable", "OperationDetails.Info.Description.Buying")
        /// режимом торгов ММВБ
        internal static let linkText = Strings.tr("Localizable", "OperationDetails.Info.Description.LinkText")
        /// При нажатии кнопки «Продать» на биржу будет выставлено поручение на продажу выбранного количества ценных бумаг по цене не ниже указанной на экране. Продажа будет произведена по наилучшей цене, но не ниже указанной в поручении. Если на бирже недостаточный спрос на выбранные ценные бумаги, поручение может быть исполнено частично или не исполнено совсем. Средства от продажи бумаг будут зачислены на ваш брокерский счёт АО «ИК «Ай Ти Инвест» в сроки в соответствии с режимом торгов ММВБ.
        internal static let selling = Strings.tr("Localizable", "OperationDetails.Info.Description.Selling")
      }
      internal enum Title {
        /// Информация\nо покупке
        internal static let buying = Strings.tr("Localizable", "OperationDetails.Info.Title.Buying")
        /// Информация\nо продаже
        internal static let selling = Strings.tr("Localizable", "OperationDetails.Info.Title.Selling")
      }
    }
  }

  internal enum Operations {
    /// Все операции
    internal static let allOperations = Strings.tr("Localizable", "Operations.AllOperations")
    /// Выдача паев
    internal static let buyPifOperationType = Strings.tr("Localizable", "Operations.BuyPifOperationType")
    /// Перевод с карты
    internal static let cardOperationType = Strings.tr("Localizable", "Operations.CardOperationType")
    /// Погашение паев
    internal static let sellPifOperationType = Strings.tr("Localizable", "Operations.SellPifOperationType")
    /// Сегодня
    internal static let today = Strings.tr("Localizable", "Operations.Today")
    /// Неизвестная операция
    internal static let undefinedPifOperationType = Strings.tr("Localizable", "Operations.UndefinedPifOperationType")
    internal enum LoadingError {
      /// Не удалось загрузить данные
      internal static let description = Strings.tr("Localizable", "Operations.LoadingError.Description")
      /// Ошибка загрузки
      internal static let title = Strings.tr("Localizable", "Operations.LoadingError.Title")
    }
    internal enum NoDataDUError {
      /// Операции появятся здесь, как только стратегия начнет работать
      internal static let description = Strings.tr("Localizable", "Operations.NoDataDUError.Description")
    }
    internal enum NoDataError {
      /// Начните инвестировать: выберите фонд и оставьте свою первую заявку на покупку
      internal static let description = Strings.tr("Localizable", "Operations.NoDataError.Description")
      /// Нет данных
      internal static let title = Strings.tr("Localizable", "Operations.NoDataError.Title")
    }
    internal enum Page {
      internal enum Title {
        /// Брокерский счёт
        internal static let brokerage = Strings.tr("Localizable", "Operations.Page.Title.Brokerage")
        /// ДУ
        internal static let du = Strings.tr("Localizable", "Operations.Page.Title.DU")
        /// ПИФЫ
        internal static let funds = Strings.tr("Localizable", "Operations.Page.Title.Funds")
        /// Брокерский счёт \nМТС Банк
        internal static let mtsBrokerage = Strings.tr("Localizable", "Operations.Page.Title.MTSBrokerage")
      }
    }
  }

  internal enum OrderDone {
    /// Личный кабинет
    internal static let lkButton = Strings.tr("Localizable", "OrderDone.LKButton")
    /// В раздел заявки
    internal static let ordersButton = Strings.tr("Localizable", "OrderDone.OrdersButton")
    /// Мой портфель
    internal static let portfolioButton = Strings.tr("Localizable", "OrderDone.PortfolioButton")
    /// Статус
    internal static let statusTitle = Strings.tr("Localizable", "OrderDone.StatusTitle")
    /// Статус заявки вы можете отслеживать в разделе Заявки.
    internal static let text = Strings.tr("Localizable", "OrderDone.Text")
    /// Поздравляем с покупкой. Теперь вы стали клиентом УК и можете перейти в личный кабинет.
    internal static let textEsia = Strings.tr("Localizable", "OrderDone.TextEsia")
    /// Процесс идентификации и обработка заявки будут выполнены в течение нескольких часов. О результате вам будет сообщено по электронной почте.
    internal static let textSmev = Strings.tr("Localizable", "OrderDone.TextSmev")
    /// %@\nуспешно подана
    internal static func title(_ p1: Any) -> String {
      return Strings.tr("Localizable", "OrderDone.Title", String(describing: p1))
    }
  }

  internal enum Orders {
    /// Обменять
    internal static let btnExchange = Strings.tr("Localizable", "Orders.btnExchange")
    /// Купить
    internal static let btnPurchase = Strings.tr("Localizable", "Orders.btnPurchase")
    /// Продать
    internal static let btnRepayment = Strings.tr("Localizable", "Orders.btnRepayment")
    /// Снятие заявки невозможно.
    internal static let cancelForOrderIsNotAllowed = Strings.tr("Localizable", "Orders.CancelForOrderIsNotAllowed")
    /// У вас пока нет заявок
    internal static let noData = Strings.tr("Localizable", "Orders.NoData")
    /// Заявка для снятия не найдена
    internal static let orderForCancelNotFound = Strings.tr("Localizable", "Orders.OrderForCancelNotFound")
    /// Неверный биржевой код клиента
    internal static let purchaseError = Strings.tr("Localizable", "Orders.PurchaseError")
    /// Заявки
    internal static let title = Strings.tr("Localizable", "Orders.Title")
  }

  internal enum Others {
    /// Другое
    internal static let title = Strings.tr("Localizable", "Others.title")
  }

  internal enum PDFViewer {
    /// Не удалось загрузить данный файл
    internal static let error = Strings.tr("Localizable", "PDFViewer.Error")
    /// Загрузка PDF-файла...
    internal static let loading = Strings.tr("Localizable", "PDFViewer.Loading")
  }

  internal enum PaymentCard {
    /// Произошла ошибка. Проверьте данные карты и попробуйте еще раз
    internal static let cardError = Strings.tr("Localizable", "PaymentCard.CardError")
    /// Ошибка 3DS аутентификации.
    internal static let dsAuthenticationFailure = Strings.tr("Localizable", "PaymentCard.DSAuthenticationFailure")
    /// Минимальная первоначальная сумма инвестиций %@ ₽. Вы можете внести сумму частями в течение 90 дней.
    internal static func minimumValueInfo(_ p1: Any) -> String {
      return Strings.tr("Localizable", "PaymentCard.MinimumValueInfo", String(describing: p1))
    }
    /// Платёж отклонён. Пожалуйста, обратитесь в Банк, выпустивший Вашу карту.
    internal static let paymentRejectedDeclineByBankError = Strings.tr("Localizable", "PaymentCard.paymentRejectedDeclineByBankError")
    /// Платёж отклонён. Возможные причины: недостаточно средств на счёте, были указаны неверные реквизиты карты, по Вашей карте запрещены расчёты через Интернет. Пожалуйста, попробуйте выполнить платёж повторно или обратитесь в Банк, выпустивший Вашу карту.
    internal static let paymentRejectedError = Strings.tr("Localizable", "PaymentCard.paymentRejectedError")
    /// Платёж отклонён. Пожалуйста, попробуйте выполнить платёж позднее или обратитесь в поддержку.
    internal static let paymentRejectedSystemError = Strings.tr("Localizable", "PaymentCard.paymentRejectedSystemError")
    /// Шаг %d из %d
    internal static func step(_ p1: Int, _ p2: Int) -> String {
      return Strings.tr("Localizable", "PaymentCard.Step", p1, p2)
    }
    /// Оплата прошла успешно
    internal static let success = Strings.tr("Localizable", "PaymentCard.Success")
    /// Ваш платёж проведён успешно.
    internal static let successfulFinancialTransaction = Strings.tr("Localizable", "PaymentCard.successfulFinancialTransaction")
  }

  internal enum PaymentPurpose {
    /// Оплатить по реквизитам
    internal static let action = Strings.tr("Localizable", "PaymentPurpose.Action")
    /// Оплата со счёта третьего лица влечёт обязанность по уплате НДФЛ с полной стоимости продаваемых бумаг.
    internal static let attentionDuDescriptionText = Strings.tr("Localizable", "PaymentPurpose.AttentionDuDescriptionText")
    /// Пополняйте ДУ только со своего счёта
    internal static let attentionDuTitleText = Strings.tr("Localizable", "PaymentPurpose.AttentionDuTitleText")
    /// Оплата со счёта третьего лица влечёт обязанность по уплате НДФЛ с полной стоимости продаваемых паёв.
    internal static let attentionPifDescriptionText = Strings.tr("Localizable", "PaymentPurpose.AttentionPifDescriptionText")
    /// Оплачивайте паи только со своего счёта
    internal static let attentionPifTitleText = Strings.tr("Localizable", "PaymentPurpose.AttentionPifTitleText")
    /// В ближайшее время мы сформируем реквизиты для перечисления средств. Обычно это занимает несколько минут.
    internal static let requestProcessingDescription = Strings.tr("Localizable", "PaymentPurpose.RequestProcessingDescription")
    /// Заявка в обработке
    internal static let requestProcessingTitle = Strings.tr("Localizable", "PaymentPurpose.RequestProcessingTitle")
    /// Платёжные реквизиты
    internal static let title = Strings.tr("Localizable", "PaymentPurpose.Title")
  }

  internal enum Pieces {
    /// шт
    internal static let short = Strings.tr("Localizable", "Pieces.Short")
  }

  internal enum Popup {
    internal enum AccountStatus {
      /// Проверить статус заявки
      internal static let checkButtonTitle = Strings.tr("Localizable", "Popup.AccountStatus.CheckButtonTitle")
      /// Вы можете проверить статус заявки во вкладке мои активы
      internal static let message = Strings.tr("Localizable", "Popup.AccountStatus.Message")
      /// Ваша заявка не подтверждена
      internal static let title = Strings.tr("Localizable", "Popup.AccountStatus.Title")
    }
  }

  internal enum Portfolio {
    /// Состав портфеля
    internal static let items = Strings.tr("Localizable", "Portfolio.Items")
    /// Статистика портфеля
    internal static let stats = Strings.tr("Localizable", "Portfolio.Stats")
    /// Стоимость рублёвых активов
    internal static let sumTitleRUB = Strings.tr("Localizable", "Portfolio.SumTitleRUB")
    /// Стоимость рублёвых активов
    internal static let sumTitleRUR = Strings.tr("Localizable", "Portfolio.SumTitleRUR")
    /// Стоимость валютных активов
    internal static let sumTitleUSD = Strings.tr("Localizable", "Portfolio.SumTitleUSD")
    /// Мой портфель
    internal static let title = Strings.tr("Localizable", "Portfolio.Title")
    internal enum Blocked {
      /// Открытие счёта невозможно, обратитесь за консультацией по телефону : 8 (800) 250-05-20
      internal static let message = Strings.tr("Localizable", "Portfolio.Blocked.Message")
      /// Счёт не открыт
      internal static let title = Strings.tr("Localizable", "Portfolio.Blocked.Title")
    }
    internal enum Notification {
      /// Паи выданы
      internal static let completed = Strings.tr("Localizable", "Portfolio.Notification.completed")
      /// Выдача паев обычно занимает несколько рабочих дней от момента поступления средств.
      internal static let infoMessage = Strings.tr("Localizable", "Portfolio.Notification.InfoMessage")
      /// Выдача паев
      internal static let infoTitle = Strings.tr("Localizable", "Portfolio.Notification.InfoTitle")
      /// Выдача паев...
      internal static let pending = Strings.tr("Localizable", "Portfolio.Notification.pending")
      /// Деньги отправлены
      internal static let sent = Strings.tr("Localizable", "Portfolio.Notification.sent")
    }
  }

  internal enum PortfolioItem {
    /// Доля в портфеле: %@ %%
    internal static func ratio1(_ p1: Any) -> String {
      return Strings.tr("Localizable", "PortfolioItem.Ratio1", String(describing: p1))
    }
    /// Доля %@: %@ %%
    internal static func ratio2(_ p1: Any, _ p2: Any) -> String {
      return Strings.tr("Localizable", "PortfolioItem.Ratio2", String(describing: p1), String(describing: p2))
    }
    /// СЧА инвестора
    internal static let stats = Strings.tr("Localizable", "PortfolioItem.Stats")
    /// Стоимость: %@ %@
    internal static func sum(_ p1: Any, _ p2: Any) -> String {
      return Strings.tr("Localizable", "PortfolioItem.Sum", String(describing: p1), String(describing: p2))
    }
    /// Инструмент из портфеля
    internal static let title = Strings.tr("Localizable", "PortfolioItem.Title")
    /// Данные актуальны на %@.
    internal static func yeldActualDateText(_ p1: Any) -> String {
      return Strings.tr("Localizable", "PortfolioItem.yeldActualDateText", String(describing: p1))
    }
    /// Сумма активов включает пополнение на %@ в обработке.
    internal static func yeldPendingText(_ p1: Any) -> String {
      return Strings.tr("Localizable", "PortfolioItem.yeldPendingText", String(describing: p1))
    }
    /// Доходность:
    internal static let yield2Title = Strings.tr("Localizable", "PortfolioItem.Yield2Title")
    /// Доход:
    internal static let yieldTitle = Strings.tr("Localizable", "PortfolioItem.YieldTitle")
  }

  internal enum Product {
    /// Стоимость пая
    internal static let cost = Strings.tr("Localizable", "Product.Cost")
    /// Узнать больше
    internal static let details = Strings.tr("Localizable", "Product.Details")
    /// Скидки/надбавки
    internal static let discount = Strings.tr("Localizable", "Product.Discount")
    /// Дюрация
    internal static let duration = Strings.tr("Localizable", "Product.Duration")
    /// Основные активы
    internal static let instruments = Strings.tr("Localizable", "Product.Instruments")
    /// Комиссия за управление
    internal static let mfee = Strings.tr("Localizable", "Product.Mfee")
    /// На данный момент купить, продать или обменять паи %@ можно обратившись в офис управляющей компании
    internal static func orderOfflineMessage(_ p1: Any) -> String {
      return Strings.tr("Localizable", "Product.OrderOfflineMessage", String(describing: p1))
    }
    /// На данный момент осуществлять операции по договору доверительного управления можно обратившись в офис управляющей компании
    internal static let orderTrustMessage = Strings.tr("Localizable", "Product.OrderTrustMessage")
    /// Условия
    internal static let params = Strings.tr("Localizable", "Product.Params")
    /// Ориентировочный срок возврата*
    internal static let `return` = Strings.tr("Localizable", "Product.Return")
    /// Ориентировочный срок\nвозврата*
    internal static let return2 = Strings.tr("Localizable", "Product.Return2")
    /// *Выплата денежной компенсации осуществляется в течение 10 рабочих дней со дня погашения инвестиционных паев, за исключением случаев погашения инвестиционных паев при прекращении паевого инвестиционного фонда.
    internal static let returnComment = Strings.tr("Localizable", "Product.ReturnComment")
    /// Комиссия за успех
    internal static let sfee = Strings.tr("Localizable", "Product.Sfee")
    /// Статистика инструмента
    internal static let stats = Strings.tr("Localizable", "Product.Stats")
    /// Структура активов
    internal static let structure = Strings.tr("Localizable", "Product.Structure")
    /// По типу
    internal static let structureA = Strings.tr("Localizable", "Product.Structure_A")
    /// По отрослям
    internal static let structureI = Strings.tr("Localizable", "Product.Structure_I")
    /// По рейтингу
    internal static let structureR = Strings.tr("Localizable", "Product.Structure_R")
    /// СЧА
    internal static let sum = Strings.tr("Localizable", "Product.Sum")
    /// Доходность
    internal static let yield = Strings.tr("Localizable", "Product.Yield")
    /// за 1 месяц
    internal static let yieldField1 = Strings.tr("Localizable", "Product.YieldField1")
    /// за 3 месяца
    internal static let yieldField2 = Strings.tr("Localizable", "Product.YieldField2")
    /// за 6 месяцев
    internal static let yieldField3 = Strings.tr("Localizable", "Product.YieldField3")
    /// за 1 год
    internal static let yieldField4 = Strings.tr("Localizable", "Product.YieldField4")
    /// за 3 года
    internal static let yieldField5 = Strings.tr("Localizable", "Product.YieldField5")
    /// с момента формирования
    internal static let yieldField6 = Strings.tr("Localizable", "Product.YieldField6")
    internal enum Sell {
      /// Паев на продажу
      internal static let title = Strings.tr("Localizable", "Product.Sell.Title")
    }
  }

  internal enum ProductDetails {
    /// Инструмент
    internal static let title = Strings.tr("Localizable", "ProductDetails.Title")
  }

  internal enum Products {
    /// Все инструменты
    internal static let title = Strings.tr("Localizable", "Products.Title")
  }

  internal enum Profile {
    /// Адрес
    internal static let address = Strings.tr("Localizable", "Profile.Address")
    /// Реквизиты
    internal static let cashDetails = Strings.tr("Localizable", "Profile.CashDetails")
    /// Паспорт
    internal static let doc = Strings.tr("Localizable", "Profile.Doc")
    /// Выдан
    internal static let docIssue = Strings.tr("Localizable", "Profile.DocIssue")
    /// Электронная почта
    internal static let email = Strings.tr("Localizable", "Profile.Email")
    /// Ваша заявка была отклонена. Проверьте правильность указанных данных.
    internal static let failedSMEVAlertDescription = Strings.tr("Localizable", "Profile.FailedSMEVAlertDescription")
    /// В заявке допущена ошибка
    internal static let failedSMEVAlertTitle = Strings.tr("Localizable", "Profile.FailedSMEVAlertTitle")
    /// Как только изменения пройдут обработку, данные обновятся.
    internal static let inProgressSMEVAlertDescription = Strings.tr("Localizable", "Profile.InProgressSMEVAlertDescription")
    /// Ваши данные находятся на подтверждении
    internal static let inProgressSMEVAlertTitle = Strings.tr("Localizable", "Profile.InProgressSMEVAlertTitle")
    /// Имя
    internal static let name = Strings.tr("Localizable", "Profile.Name")
    /// Отчество
    internal static let patronim = Strings.tr("Localizable", "Profile.Patronim")
    /// Телефон
    internal static let phone = Strings.tr("Localizable", "Profile.Phone")
    /// Фамилия
    internal static let surname = Strings.tr("Localizable", "Profile.Surname")
    /// Мой профиль
    internal static let title = Strings.tr("Localizable", "Profile.Title")
  }

  internal enum ProgressLabel {
    /// Авторизация...
    internal static let auth = Strings.tr("Localizable", "ProgressLabel.Auth")
    /// Загрузка...
    internal static let loading = Strings.tr("Localizable", "ProgressLabel.Loading")
    /// Выход...
    internal static let logoff = Strings.tr("Localizable", "ProgressLabel.Logoff")
    /// Отправка SMS...
    internal static let sendSMS = Strings.tr("Localizable", "ProgressLabel.SendSMS")
  }

  internal enum Purchase {
    /// Выполняем покупку
    internal static let buying = Strings.tr("Localizable", "Purchase.buying")
    /// 1 лот = %@ шт.
    internal static func lotDescription(_ p1: Any) -> String {
      return Strings.tr("Localizable", "Purchase.lotDescription", String(describing: p1))
    }
    /// Выполням продажу
    internal static let selling = Strings.tr("Localizable", "Purchase.selling")
    internal enum Btn {
      internal enum Buying {
        /// Отменить покупку
        internal static let cancel = Strings.tr("Localizable", "Purchase.btn.buying.cancel")
      }
      internal enum Selling {
        /// Отменить продажу
        internal static let cancel = Strings.tr("Localizable", "Purchase.btn.selling.cancel")
      }
    }
    internal enum Buying {
      /// Отменяем покупку
      internal static let cancel = Strings.tr("Localizable", "Purchase.buying.cancel")
    }
    internal enum Selling {
      /// Отменяем продажу
      internal static let cancel = Strings.tr("Localizable", "Purchase.selling.cancel")
    }
  }

  internal enum PurchaseOrder {
    /// Введите сумму покупки
    internal static let enterSumTitle = Strings.tr("Localizable", "PurchaseOrder.EnterSumTitle")
    /// Для продолжения покупки вам необходимо пройти процедуру упрощёной идентификации.\nВыберите способ идентификации
    internal static let identify = Strings.tr("Localizable", "PurchaseOrder.Identify")
    /// Минимальная сумма покупки
    internal static let minSumTitle = Strings.tr("Localizable", "PurchaseOrder.MinSumTitle")
    /// У вас уже есть заявка на покупку паёв по данному инструменту. Вы можете довнести средства по платёжным реквизитам.
    internal static let orderExists = Strings.tr("Localizable", "PurchaseOrder.OrderExists")
    /// Cумма покупки
    internal static let sumTitle = Strings.tr("Localizable", "PurchaseOrder.SumTitle")
    /// Покупка инструмента
    internal static let title = Strings.tr("Localizable", "PurchaseOrder.Title")
    /// Покупка
    internal static let titleShort = Strings.tr("Localizable", "PurchaseOrder.TitleShort")
    internal enum Identify {
      /// Через Госуслуги
      internal static let esia = Strings.tr("Localizable", "PurchaseOrder.Identify.Esia")
      /// Через СМЭВ
      internal static let smev = Strings.tr("Localizable", "PurchaseOrder.Identify.Smev")
      /// Идентификация
      internal static let title = Strings.tr("Localizable", "PurchaseOrder.Identify.Title")
    }
  }

  internal enum PurchaseSign {
    /// Подтверждение покупки
    internal static let title = Strings.tr("Localizable", "PurchaseSign.Title")
  }

  internal enum Registration {
    /// Некорректный адрес
    internal static let incorrectAddress = Strings.tr("Localizable", "Registration.IncorrectAddress")
    /// Пароль должен содержать не менее 6 символов и цифры или заглавные буквы
    internal static let passwordRules = Strings.tr("Localizable", "Registration.PasswordRules")
    /// Пароли не совпадают
    internal static let passwordsMismatch = Strings.tr("Localizable", "Registration.PasswordsMismatch")
    /// Произошла ошибка получения токена
    internal static let tokenRecieveError = Strings.tr("Localizable", "Registration.TokenRecieveError")
    /// Слишком простой пароль
    internal static let tooEasyPass = Strings.tr("Localizable", "Registration.TooEasyPass")
  }

  internal enum RepaymentOrder {
    /// Паёв на продажу
    internal static let amountTitle = Strings.tr("Localizable", "RepaymentOrder.AmountTitle")
    /// Ориентировочно: 
    internal static let estimatedSum = Strings.tr("Localizable", "RepaymentOrder.EstimatedSum")
    /// Включать остаток
    internal static let reminderTitle = Strings.tr("Localizable", "RepaymentOrder.ReminderTitle")
    /// Продажа инструмента
    internal static let title = Strings.tr("Localizable", "RepaymentOrder.Title")
    /// Продажа
    internal static let titleShort = Strings.tr("Localizable", "RepaymentOrder.TitleShort")
    /// Доступно паёв: %@
    internal static func total(_ p1: Any) -> String {
      return Strings.tr("Localizable", "RepaymentOrder.Total", String(describing: p1))
    }
  }

  internal enum RepaymentSign {
    /// Подтверждение продажи
    internal static let title = Strings.tr("Localizable", "RepaymentSign.Title")
  }

  internal enum Requisites {
    /// Счёт получателя
    internal static let account = Strings.tr("Localizable", "Requisites.Account")
    /// Счёт получателя введен не верно
    internal static let accountMistake = Strings.tr("Localizable", "Requisites.AccountMistake")
    /// БИК
    internal static let bankBik = Strings.tr("Localizable", "Requisites.BankBik")
    /// БИК должен содержать 9 цифр
    internal static let bankBikMistake = Strings.tr("Localizable", "Requisites.BankBikMistake")
    /// ИНН
    internal static let bankInn = Strings.tr("Localizable", "Requisites.BankInn")
    /// Наименование банка
    internal static let bankName = Strings.tr("Localizable", "Requisites.BankName")
    /// Корр. счёт
    internal static let korrAccount = Strings.tr("Localizable", "Requisites.KorrAccount")
    /// Корр. счёт должен содержать 20 цифр
    internal static let korrAccountMistake = Strings.tr("Localizable", "Requisites.KorrAccountMistake")
    /// Вы уже вводили эти реквизиты
    internal static let requisitesAlreadyExist = Strings.tr("Localizable", "Requisites.RequisitesAlreadyExist")
    /// Адрес резиденства
    internal static let residence = Strings.tr("Localizable", "Requisites.Residence")
    /// Куда выводим?
    internal static let whereTo = Strings.tr("Localizable", "Requisites.WhereTo")
  }

  internal enum Smev {
    /// Заявка отклонена из-за некорректных данных. \n Проверьте статус заявки во вкладке "Мои активы".
    internal static let error = Strings.tr("Localizable", "SMEV.Error")
  }

  internal enum SMSSend {
    /// Неверный код подтверждения.\n%@
    internal static func error(_ p1: Any) -> String {
      return Strings.tr("Localizable", "SMSSend.Error", String(describing: p1))
    }
    /// Отправить СМС ещё раз через 
    internal static let `repeat` = Strings.tr("Localizable", "SMSSend.Repeat")
  }

  internal enum SavingAccount {
    /// Накопительный счёт
    internal static let title = Strings.tr("Localizable", "SavingAccount.Title")
    internal enum Action {
      /// Продолжить
      internal static let `continue` = Strings.tr("Localizable", "SavingAccount.Action.Continue")
      /// Нет, перейти к регистрации
      internal static let noRefill = Strings.tr("Localizable", "SavingAccount.Action.NoRefill")
      /// Открыть счёт
      internal static let `open` = Strings.tr("Localizable", "SavingAccount.Action.Open")
      /// Начать заново
      internal static let restart = Strings.tr("Localizable", "SavingAccount.Action.Restart")
      /// Обновить
      internal static let update = Strings.tr("Localizable", "SavingAccount.Action.Update")
    }
    internal enum Opened {
      /// Пополнить счёт
      internal static let buttonTitle = Strings.tr("Localizable", "SavingAccount.Opened.ButtonTitle")
      /// Ваши данные отправлены на подтверждение, но пополнить счёт вы можете уже сейчас
      internal static let text = Strings.tr("Localizable", "SavingAccount.Opened.Text")
      /// Заявление успешно\nподано!
      internal static let title = Strings.tr("Localizable", "SavingAccount.Opened.Title")
    }
    internal enum Operations {
      /// Пополнение счёта
      internal static let refill = Strings.tr("Localizable", "SavingAccount.Operations.Refill")
      /// Деньги в пути
      internal static let title = Strings.tr("Localizable", "SavingAccount.Operations.Title")
    }
    internal enum Pincode {
      /// Ошибка
      internal static let errorText = Strings.tr("Localizable", "SavingAccount.Pincode.ErrorText")
      /// На ваш номер отправлено SMS с кодом подтверждения для подписи следующих документов
      internal static let smsDocumentText = Strings.tr("Localizable", "SavingAccount.Pincode.SmsDocumentText")
      /// На ваш номер отправлено SMS с кодом подтверждения
      internal static let smsText = Strings.tr("Localizable", "SavingAccount.Pincode.SmsText")
    }
    internal enum Refill {
      /// Пополнение
      internal static let action = Strings.tr("Localizable", "SavingAccount.Refill.Action")
      /// Количество приобретаемых бумаг
      internal static let amountSecurites = Strings.tr("Localizable", "SavingAccount.Refill.AmountSecurites")
      /// до %@
      internal static func before(_ p1: Any) -> String {
        return Strings.tr("Localizable", "SavingAccount.Refill.Before", String(describing: p1))
      }
      /// Комиссия брокера
      internal static let brokerComission = Strings.tr("Localizable", "SavingAccount.Refill.BrokerComission")
      /// Комиссия за перевод с карты
      internal static let cardComission = Strings.tr("Localizable", "SavingAccount.Refill.CardComission")
      /// Стоимость бумаги
      internal static let cost = Strings.tr("Localizable", "SavingAccount.Refill.Cost")
      /// Ошибка оплаты
      internal static let paymentError = Strings.tr("Localizable", "SavingAccount.Refill.PaymentError")
      /// Будет зачислено
      internal static let willBeCredited = Strings.tr("Localizable", "SavingAccount.Refill.WillBeCredited")
      internal enum AmountRefill {
        /// Введите число или укажите его с помощью ползунка
        internal static let description = Strings.tr("Localizable", "SavingAccount.Refill.AmountRefill.Description")
        /// Сумма пополнения
        internal static let title = Strings.tr("Localizable", "SavingAccount.Refill.AmountRefill.Title")
      }
      internal enum AmountSecurities {
        /// шт
        internal static let count = Strings.tr("Localizable", "SavingAccount.Refill.AmountSecurities.Count")
      }
      internal enum CardCommission {
        /// С карты МТС Банка — 1%. С карт других банков — 2%.
        internal static let details = Strings.tr("Localizable", "SavingAccount.Refill.CardCommission.Details")
        /// Комиссия за перевод
        internal static let title = Strings.tr("Localizable", "SavingAccount.Refill.CardCommission.Title")
      }
      internal enum InfoPopup {
        /// С карты МТС Банка – 1%.\nС карт других банков – 2%.
        internal static let message = Strings.tr("Localizable", "SavingAccount.Refill.InfoPopup.Message")
        /// Комиссия за сделку
        internal static let title = Strings.tr("Localizable", "SavingAccount.Refill.InfoPopup.Title")
      }
    }
    internal enum RequestApproved {
      /// Как только ваши данные пройдут обработку вы сможете пользоваться счётом. Обычно это занимает несколько минут.
      internal static let info = Strings.tr("Localizable", "SavingAccount.RequestApproved.Info")
      /// Заявка\nуспешно подана!
      internal static let title = Strings.tr("Localizable", "SavingAccount.RequestApproved.Title")
    }
    internal enum RequestNotApproved {
      /// Заявка ещё не подтверждена, но вы уже можете сделать пополнение счёта. Если данные не будут подтверждены, мы вернем вам деньги.
      internal static let info = Strings.tr("Localizable", "SavingAccount.RequestNotApproved.Info")
    }
    internal enum Signature {
      internal enum Documents {
        /// Нажимая Подписать, вы подтверждаете, что ознакомлены с соглашением об ЭДО
        internal static let edoText = Strings.tr("Localizable", "SavingAccount.Signature.Documents.EdoText")
        /// Подписание документов
        internal static let title = Strings.tr("Localizable", "SavingAccount.Signature.Documents.Title")
        internal enum EdoText {
          /// соглашением об ЭДО
          internal static let linkText = Strings.tr("Localizable", "SavingAccount.Signature.Documents.EdoText.LinkText")
        }
      }
      internal enum PersonalData {
        /// Подтверждение данных
        internal static let title = Strings.tr("Localizable", "SavingAccount.Signature.PersonalData.Title")
      }
      internal enum Success {
        /// Перейти к документам
        internal static let action = Strings.tr("Localizable", "SavingAccount.Signature.Success.Action")
        /// Осталось подписать документы, и всё готово. Это не займет много времени.
        internal static let messsage = Strings.tr("Localizable", "SavingAccount.Signature.Success.Messsage")
        /// Отлично!
        internal static let title = Strings.tr("Localizable", "SavingAccount.Signature.Success.Title")
      }
    }
    internal enum State {
      /// Вы уже начали процесс открытия  счёта, но прервали его.
      internal static let interruptedOpening = Strings.tr("Localizable", "SavingAccount.State.InterruptedOpening")
      /// Ваши данные находятся\nв обработке
      internal static let processingInfo = Strings.tr("Localizable", "SavingAccount.State.ProcessingInfo")
    }
    internal enum Withdrawal {
      /// Вывести средства
      internal static let action = Strings.tr("Localizable", "SavingAccount.Withdrawal.Action")
      /// Останется после вывода
      internal static let balance = Strings.tr("Localizable", "SavingAccount.Withdrawal.Balance")
      /// Счёт удалён
      internal static let deleteBanner = Strings.tr("Localizable", "SavingAccount.Withdrawal.DeleteBanner")
      /// Доступно к выводу на текущий момент
      internal static let funds = Strings.tr("Localizable", "SavingAccount.Withdrawal.Funds")
      /// Биржа проводит расчёты по некоторым сделкам с задержкой в 1-2 рабочих дня.\n\nСредства по вашим недавно проданным бумагам станут доступны к выводу %@, и вы сможете вывести всю сумму целиком.
      internal static func infoDescription(_ p1: Any) -> String {
        return Strings.tr("Localizable", "SavingAccount.Withdrawal.InfoDescription", String(describing: p1))
      }
      /// Расчёты на бирже
      internal static let infoTitle = Strings.tr("Localizable", "SavingAccount.Withdrawal.InfoTitle")
      /// Введите число или укажите его с помощью\nползунка
      internal static let input = Strings.tr("Localizable", "SavingAccount.Withdrawal.Input")
      ///  после завершения расчётов по недавно проданным бумагам будет доступно ещё:
      internal static let reservedFunds = Strings.tr("Localizable", "SavingAccount.Withdrawal.ReservedFunds")
      /// Сохранить реквизиты
      internal static let saveRequisites = Strings.tr("Localizable", "SavingAccount.Withdrawal.SaveRequisites")
      /// Сумма к выводу
      internal static let sum = Strings.tr("Localizable", "SavingAccount.Withdrawal.Sum")
      /// Вывод средств
      internal static let title = Strings.tr("Localizable", "SavingAccount.Withdrawal.Title")
      /// Средств на счету
      internal static let totalAmount = Strings.tr("Localizable", "SavingAccount.Withdrawal.TotalAmount")
      /// Выводить средства на виртуальные карты запрещено законодательством РФ. Пожалуйста, введите данные обычной банковской карты или счёта.
      internal static let virtualCardAttentionDescription = Strings.tr("Localizable", "SavingAccount.Withdrawal.VirtualCardAttentionDescription")
      /// Куда выводим?
      internal static let withdrawTo = Strings.tr("Localizable", "SavingAccount.Withdrawal.WithdrawTo")
      internal enum Attention {
        /// Для вашей безопасности выводы денег на чужие счета ограничены.
        internal static let subtitle = Strings.tr("Localizable", "SavingAccount.Withdrawal.Attention.Subtitle")
        /// Убедитесь, что выводите средства на свой счёт
        internal static let title = Strings.tr("Localizable", "SavingAccount.Withdrawal.Attention.Title")
      }
      internal enum Error {
        /// Счёт получателя заполнен неверно
        internal static let bankAccount = Strings.tr("Localizable", "SavingAccount.Withdrawal.Error.BankAccount")
        /// Поле обязательно к заполнению
        internal static let bankName = Strings.tr("Localizable", "SavingAccount.Withdrawal.Error.BankName")
        /// Бик заполнен неверно
        internal static let bik = Strings.tr("Localizable", "SavingAccount.Withdrawal.Error.Bik")
        /// Корр. счёт заполнен неверно
        internal static let korrAccount = Strings.tr("Localizable", "SavingAccount.Withdrawal.Error.KorrAccount")
      }
      internal enum Success {
        /// Мои активы
        internal static let action = Strings.tr("Localizable", "SavingAccount.Withdrawal.Success.Action")
        /// Средства будут переведены на указанный вами счёт в течение нескольких рабочих дней.\n\nВыполнение заявки вы можете отследить в разделе Операции
        internal static let subTitle = Strings.tr("Localizable", "SavingAccount.Withdrawal.Success.subTitle")
        /// Заявка на вывод\nуспешно подана
        internal static let title = Strings.tr("Localizable", "SavingAccount.Withdrawal.Success.Title")
      }
    }
  }

  internal enum Sell {
    /// Средства будут переведены на указанный вами счёт в течение нескольких рабочих дней.\n\nКонечная сумма, которая вам будет перечислена, будет рассчитана по стоимости пая на дату исполнения заявки.\n\nВыполнение заявки вы можете отследить в разделе Операции
    internal static let approveText = Strings.tr("Localizable", "Sell.ApproveText")
    /// Заявка на продажу\nуспешно подана
    internal static let approveTitle = Strings.tr("Localizable", "Sell.ApproveTitle")
    /// Продать
    internal static let title = Strings.tr("Localizable", "Sell.Title")
    internal enum Info {
      /// Средства будут переведены на указанный вами счёт в течение нескольких рабочих дней.\n\nКонечная сумма, которая вам будет перечислена, будет рассчитана по стоимости пая на дату исполнения заявки.\n\n
      internal static let description = Strings.tr("Localizable", "Sell.Info.Description")
      /// Информация о продаже
      internal static let title = Strings.tr("Localizable", "Sell.Info.Title")
    }
    internal enum NotRF {
      /// Вы не являетесь налоговым резидентом РФ, если на дату подписания настоящей заявки фактически находились в РФ менее 183 календарных дней в течение 12 следующих подряд месяцев
      internal static let text = Strings.tr("Localizable", "Sell.NotRF.Text")
      /// Не являюсь налоговым резидентом РФ
      internal static let title = Strings.tr("Localizable", "Sell.NotRF.Title")
    }
  }

  internal enum SellPai {
    internal enum AddRequisite {
      /// Добавить счёт
      internal static let title = Strings.tr("Localizable", "SellPai.AddRequisite.Title")
    }
    internal enum Attention {
      /// Укажите свой счёт
      internal static let title = Strings.tr("Localizable", "SellPai.Attention.Title")
    }
    internal enum Confirm {
      /// Средства будут переведены на указанный вами счёт в течение нескольких рабочих дней.\n\nКонечная сумма, которая вам будет перечислена, будет рассчитана по стоимости пая на дату исполнения заявки.\n\n
      internal static let description = Strings.tr("Localizable", "SellPai.Confirm.Description")
      /// Заявка на продажу\nуспешно подана
      internal static let title = Strings.tr("Localizable", "SellPai.Confirm.Title")
    }
    internal enum SellerGet {
      /// Конечная сумма, которая вам будет перечислена,\nбудет рассчитана по стоимости пая на дату\nисполнения заявки
      internal static let hint = Strings.tr("Localizable", "SellPai.SellerGet.Hint")
      /// Вы получите
      internal static let title = Strings.tr("Localizable", "SellPai.SellerGet.Title")
    }
  }

  internal enum Shared {
    /// Средства поступят вам на брокерский счёт в течение 7 дней с даты погашения бумаг
    internal static let bondPaidOff = Strings.tr("Localizable", "Shared.BondPaidOff")
    /// Готово
    internal static let done = Strings.tr("Localizable", "Shared.Done")
    /// Возврат средств
    internal static let duAndPifWithdrawalTitle = Strings.tr("Localizable", "Shared.DUAndPifWithdrawalTitle")
    /// Сохранить
    internal static let save = Strings.tr("Localizable", "Shared.Save")
    /// годовых
    internal static let yearlyProfit = Strings.tr("Localizable", "Shared.YearlyProfit")
  }

  internal enum SignDocuments {
    /// Нажимая подписать, я подтверждаю, что ознакомлен с соглашением об ЭДО. Подтверждаю и гарантирую, что мной был указан номер мобильного телефона, который принадлежит мне.
    internal static let restriction = Strings.tr("Localizable", "SignDocuments.Restriction")
    internal enum Restriction {
      /// соглашением об ЭДО
      internal static let link = Strings.tr("Localizable", "SignDocuments.Restriction.Link")
    }
  }

  internal enum StandartStrategy {
    /// В моих активах
    internal static let userPortfolio = Strings.tr("Localizable", "StandartStrategy.UserPortfolio")
    internal enum Dynamic {
      /// Расчет доходности включает данные по стратегии до момента ее признания стандартной
      internal static let hint = Strings.tr("Localizable", "StandartStrategy.Dynamic.Hint")
    }
    internal enum Iis {
      /// ИИС позволяет получить вычет 13% от суммы инвестирования за год. Максимальная сумма к возврату составялет 52 000 рублей в год. Для этого необходимо продержать вложенные деньги хотя бы три года. У вас может быть отрыт только один ИИС.
      internal static let description = Strings.tr("Localizable", "StandartStrategy.IIS.Description")
      /// Получите налоговый вычет 13%, оформив ИИС
      internal static let title = Strings.tr("Localizable", "StandartStrategy.IIS.Title")
    }
    internal enum Terms {
      /// Условия
      internal static let title = Strings.tr("Localizable", "StandartStrategy.Terms.Title")
    }
  }

  internal enum Stocks {
    /// Акции
    internal static let title = Strings.tr("Localizable", "Stocks.title")
    internal enum OperationStatus {
      /// Покупка отменена
      internal static let buyingCancel = Strings.tr("Localizable", "Stocks.OperationStatus.BuyingCancel")
      /// Покупка выполнена
      internal static let buyingDone = Strings.tr("Localizable", "Stocks.OperationStatus.BuyingDone")
      /// Покупка не удалась
      internal static let buyingError = Strings.tr("Localizable", "Stocks.OperationStatus.BuyingError")
      /// Продажа не удалась
      internal static let sellError = Strings.tr("Localizable", "Stocks.OperationStatus.SellError")
      /// Продажа отменена
      internal static let sellingCancel = Strings.tr("Localizable", "Stocks.OperationStatus.SellingCancel")
      /// Продажа выполнена
      internal static let sellingDone = Strings.tr("Localizable", "Stocks.OperationStatus.SellingDone")
    }
    internal enum Sort {
      /// Алфавиту
      internal static let alphabet = Strings.tr("Localizable", "Stocks.Sort.Alphabet")
      /// Возрастанию
      internal static let ascending = Strings.tr("Localizable", "Stocks.Sort.Ascending")
      /// Убыванию
      internal static let descending = Strings.tr("Localizable", "Stocks.Sort.Descending")
      /// Цене
      internal static let price = Strings.tr("Localizable", "Stocks.Sort.Price")
      /// Доходности
      internal static let yield = Strings.tr("Localizable", "Stocks.Sort.Yield")
    }
  }

  internal enum UnknownError {
    /// Попробуйте ещё раз.\nЕсли ошибка повторяется, напишите нам.
    internal static let message = Strings.tr("Localizable", "UnknownError.Message")
    /// Что-то здесь не так
    internal static let title = Strings.tr("Localizable", "UnknownError.Title")
  }

  internal enum YieldPeriod {
    /// доходность: за 
    internal static let title = Strings.tr("Localizable", "YieldPeriod.Title")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension Strings {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: nil, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
