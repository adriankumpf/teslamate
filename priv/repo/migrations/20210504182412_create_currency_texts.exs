defmodule TeslaMate.Repo.Migrations.CreateCurrenciesTexts do
  use Ecto.Migration

  alias TeslaMate.Repo

  def up do
    create table(:currencies_t, primary_key: false) do
      add :currency_code, references(:currencies, column: :currency_code, type: :string, size: 3),
        null: false,
        primary_key: true

      add(:language, :string, size: 2, null: false, primary_key: true)
      add(:currency_name, :string, null: false)
    end

    flush()

    Ecto.Adapters.SQL.query!(
      Repo,
      "INSERT INTO CURRENCIES_T (currency_code, language, currency_name)
      VALUES  ($1,$2,$3), ($4,$5,$6), ($7,$8,$9), ($10,$11,$12), ($13,$14,$15), ($16,$17,$18), ($19,$20,$21), ($22,$23,$24), ($25,$26,$27), 
	             ($28,$29,$30), ($31,$32,$33), ($34,$35,$36), ($37,$38,$39), ($40,$41,$42), ($43,$44,$45), ($46,$47,$48), ($49,$50,$51),
	             ($52,$53,$54), ($55,$56,$57), ($58,$59,$60), ($61,$62,$63), ($64,$65,$66), ($67,$68,$69), ($70,$71,$72), ($73,$74,$75), 
	             ($76,$77,$78), ($79,$80,$81), ($82,$83,$84), ($85,$86,$87), ($88,$89,$90), ($91,$92,$93), ($94,$95,$96), ($97,$98,$99), 
	             ($100,$101,$102), ($103,$104,$105), ($106,$107,$108), ($109,$110,$111), ($112,$113,$114), ($115,$116,$117), ($118,$119,$120), 
	             ($121,$122,$123), ($124,$125,$126), ($127,$128,$129), ($130,$131,$132), ($133,$134,$135), ($136,$137,$138), ($139,$140,$141), 
	             ($142,$143,$144), ($145,$146,$147), ($148,$149,$150), ($151,$152,$153), ($154,$155,$156), ($157,$158,$159), ($160,$161,$162), 
	             ($163,$164,$165), ($166,$167,$168), ($169,$170,$171), ($172,$173,$174), ($175,$176,$177), ($178,$179,$180), ($181,$182,$183), 
	             ($184,$185,$186), ($187,$188,$189), ($190,$191,$192), ($193,$194,$195), ($196,$197,$198), ($199,$200,$201), ($202,$203,$204), 
	             ($205,$206,$207), ($208,$209,$210), ($211,$212,$213), ($214,$215,$216), ($217,$218,$219), ($220,$221,$222), ($223,$224,$225), 
	             ($226,$227,$228), ($229,$230,$231), ($232,$233,$234), ($235,$236,$237), ($238,$239,$240), ($241,$242,$243), ($244,$245,$246), 
	             ($247,$248,$249), ($250,$251,$252), ($253,$254,$255), ($256,$257,$258), ($259,$260,$261), ($262,$263,$264), ($265,$266,$267), 
	             ($268,$269,$270), ($271,$272,$273), ($274,$275,$276), ($277,$278,$279), ($280,$281,$282), ($283,$284,$285), ($286,$287,$288), 
	             ($289,$290,$291), ($292,$293,$294), ($295,$296,$297), ($298,$299,$300), ($301,$302,$303), ($304,$305,$306), ($307,$308,$309), 
	             ($310,$311,$312), ($313,$314,$315), ($316,$317,$318), ($319,$320,$321), ($322,$323,$324), ($325,$326,$327), ($328,$329,$330), 
	             ($331,$332,$333), ($334,$335,$336), ($337,$338,$339), ($340,$341,$342), ($343,$344,$345), ($346,$347,$348), ($349,$350,$351), 
	             ($352,$353,$354), ($355,$356,$357), ($358,$359,$360), ($361,$362,$363), ($364,$365,$366), ($367,$368,$369), ($370,$371,$372), 
	             ($373,$374,$375), ($376,$377,$378), ($379,$380,$381), ($382,$383,$384), ($385,$386,$387), ($388,$389,$390), ($391,$392,$393), 
	             ($394,$395,$396), ($397,$398,$399), ($400,$401,$402), ($403,$404,$405), ($406,$407,$408), ($409,$410,$411), ($412,$413,$414), 
	             ($415,$416,$417), ($418,$419,$420), ($421,$422,$423), ($424,$425,$426), ($427,$428,$429), ($430,$431,$432), ($433,$434,$435), 
	             ($436,$437,$438), ($439,$440,$441), ($442,$443,$444), ($445,$446,$447), ($448,$449,$450), ($451,$452,$453), ($454,$455,$456), 
	             ($457,$458,$459), ($460,$461,$462), ($463,$464,$465), ($466,$467,$468), ($469,$470,$471), ($472,$473,$474), ($475,$476,$477), 
	             ($478,$479,$480), ($481,$482,$483), ($484,$485,$486), ($487,$488,$489), ($490,$491,$492), ($493,$494,$495), ($496,$497,$498), 
	             ($499,$500,$501), ($502,$503,$504), ($505,$506,$507)
             ",
      [
        "AED",
        "en",
        "UAE Dirham",
        "AFN",
        "en",
        "Afghani",
        "ALL",
        "en",
        "Lek",
        "AMD",
        "en",
        "Armenian Dram",
        "ANG",
        "en",
        "Netherlands Antillean Guilder",
        "AOA",
        "en",
        "Kwanza",
        "ARS",
        "en",
        "Argentine Peso",
        "AUD",
        "en",
        "Australian Dollar",
        "AWG",
        "en",
        "Aruban Florin",
        "AZN",
        "en",
        "Azerbaijan Manat",
        "BAM",
        "en",
        "Convertible Mark",
        "BBD",
        "en",
        "Barbados Dollar",
        "BDT",
        "en",
        "Taka",
        "BGN",
        "en",
        "Bulgarian Lev",
        "BHD",
        "en",
        "Bahraini Dinar",
        "BIF",
        "en",
        "Burundi Franc",
        "BMD",
        "en",
        "Bermudian Dollar",
        "BND",
        "en",
        "Brunei Dollar",
        "BOB",
        "en",
        "Boliviano",
        "BOV",
        "en",
        "Mvdol",
        "BRL",
        "en",
        "Brazilian Real",
        "BSD",
        "en",
        "Bahamian Dollar",
        "BTN",
        "en",
        "Ngultrum",
        "BWP",
        "en",
        "Pula",
        "BYN",
        "en",
        "Belarusian Ruble",
        "BZD",
        "en",
        "Belize Dollar",
        "CAD",
        "en",
        "Canadian Dollar",
        "CDF",
        "en",
        "Congolese Franc",
        "CHE",
        "en",
        "WIR Euro",
        "CHF",
        "en",
        "Swiss Franc",
        "CHW",
        "en",
        "WIR Franc",
        "CLF",
        "en",
        "Unidad de Fomento",
        "CLP",
        "en",
        "Chilean Peso",
        "CNY",
        "en",
        "Yuan Renminbi",
        "COP",
        "en",
        "Colombian Peso",
        "COU",
        "en",
        "Unidad de Valor Real",
        "CRC",
        "en",
        "Costa Rican Colon",
        "CUC",
        "en",
        "Peso Convertible",
        "CUP",
        "en",
        "Cuban Peso",
        "CVE",
        "en",
        "Cabo Verde Escudo",
        "CZK",
        "en",
        "Czech Koruna",
        "DJF",
        "en",
        "Djibouti Franc",
        "DKK",
        "en",
        "Danish Krone",
        "DOP",
        "en",
        "Dominican Peso",
        "DZD",
        "en",
        "Algerian Dinar",
        "EGP",
        "en",
        "Egyptian Pound",
        "ERN",
        "en",
        "Nakfa",
        "ETB",
        "en",
        "Ethiopian Birr",
        "EUR",
        "en",
        "Euro",
        "FJD",
        "en",
        "Fiji Dollar",
        "FKP",
        "en",
        "Falkland Islands Pound",
        "GBP",
        "en",
        "Pound Sterling",
        "GEL",
        "en",
        "Lari",
        "GHS",
        "en",
        "Ghana Cedi",
        "GIP",
        "en",
        "Gibraltar Pound",
        "GMD",
        "en",
        "Dalasi",
        "GNF",
        "en",
        "Guinean Franc",
        "GTQ",
        "en",
        "Quetzal",
        "GYD",
        "en",
        "Guyana Dollar",
        "HKD",
        "en",
        "Hong Kong Dollar",
        "HNL",
        "en",
        "Lempira",
        "HRK",
        "en",
        "Kuna",
        "HTG",
        "en",
        "Gourde",
        "HUF",
        "en",
        "Forint",
        "IDR",
        "en",
        "Rupiah",
        "ILS",
        "en",
        "New Israeli Sheqel",
        "INR",
        "en",
        "Indian Rupee",
        "IQD",
        "en",
        "Iraqi Dinar",
        "IRR",
        "en",
        "Iranian Rial",
        "ISK",
        "en",
        "Iceland Krona",
        "JMD",
        "en",
        "Jamaican Dollar",
        "JOD",
        "en",
        "Jordanian Dinar",
        "JPY",
        "en",
        "Yen",
        "KES",
        "en",
        "Kenyan Shilling",
        "KGS",
        "en",
        "Som",
        "KHR",
        "en",
        "Riel",
        "KMF",
        "en",
        "Comorian Franc",
        "KPW",
        "en",
        "North Korean Won",
        "KRW",
        "en",
        "Won",
        "KWD",
        "en",
        "Kuwaiti Dinar",
        "KYD",
        "en",
        "Cayman Islands Dollar",
        "KZT",
        "en",
        "Tenge",
        "LAK",
        "en",
        "Lao Kip",
        "LBP",
        "en",
        "Lebanese Pound",
        "LKR",
        "en",
        "Sri Lanka Rupee",
        "LRD",
        "en",
        "Liberian Dollar",
        "LSL",
        "en",
        "Loti",
        "LYD",
        "en",
        "Libyan Dinar",
        "MAD",
        "en",
        "Moroccan Dirham",
        "MDL",
        "en",
        "Moldovan Leu",
        "MGA",
        "en",
        "Malagasy Ariary",
        "MKD",
        "en",
        "Denar",
        "MMK",
        "en",
        "Kyat",
        "MNT",
        "en",
        "Tugrik",
        "MOP",
        "en",
        "Pataca",
        "MRU",
        "en",
        "Ouguiya",
        "MUR",
        "en",
        "Mauritius Rupee",
        "MVR",
        "en",
        "Rufiyaa",
        "MWK",
        "en",
        "Malawi Kwacha",
        "MXN",
        "en",
        "Mexican Peso",
        "MXV",
        "en",
        "Mexican Unidad de Inversion (UDI)",
        "MYR",
        "en",
        "Malaysian Ringgit",
        "MZN",
        "en",
        "Mozambique Metical",
        "NAD",
        "en",
        "Namibia Dollar",
        "NGN",
        "en",
        "Naira",
        "NIO",
        "en",
        "Cordoba Oro",
        "NOK",
        "en",
        "Norwegian Krone",
        "NPR",
        "en",
        "Nepalese Rupee",
        "NZD",
        "en",
        "New Zealand Dollar",
        "OMR",
        "en",
        "Rial Omani",
        "PAB",
        "en",
        "Balboa",
        "PEN",
        "en",
        "Sol",
        "PGK",
        "en",
        "Kina",
        "PHP",
        "en",
        "Philippine Peso",
        "PKR",
        "en",
        "Pakistan Rupee",
        "PLN",
        "en",
        "Zloty",
        "PYG",
        "en",
        "Guarani",
        "QAR",
        "en",
        "Qatari Rial",
        "RON",
        "en",
        "Romanian Leu",
        "RSD",
        "en",
        "Serbian Dinar",
        "RUB",
        "en",
        "Russian Ruble",
        "RWF",
        "en",
        "Rwanda Franc",
        "SAR",
        "en",
        "Saudi Riyal",
        "SBD",
        "en",
        "Solomon Islands Dollar",
        "SCR",
        "en",
        "Seychelles Rupee",
        "SDG",
        "en",
        "Sudanese Pound",
        "SEK",
        "en",
        "Swedish Krona",
        "SGD",
        "en",
        "Singapore Dollar",
        "SHP",
        "en",
        "Saint Helena Pound",
        "SLL",
        "en",
        "Leone",
        "SOS",
        "en",
        "Somali Shilling",
        "SRD",
        "en",
        "Surinam Dollar",
        "SSP",
        "en",
        "South Sudanese Pound",
        "STN",
        "en",
        "Dobra",
        "SVC",
        "en",
        "El Salvador Colon",
        "SYP",
        "en",
        "Syrian Pound",
        "SZL",
        "en",
        "Lilangeni",
        "THB",
        "en",
        "Baht",
        "TJS",
        "en",
        "Somoni",
        "TMT",
        "en",
        "Turkmenistan New Manat",
        "TND",
        "en",
        "Tunisian Dinar",
        "TOP",
        "en",
        "Paanga",
        "TRY",
        "en",
        "Turkish Lira",
        "TTD",
        "en",
        "Trinidad and Tobago Dollar",
        "TWD",
        "en",
        "New Taiwan Dollar",
        "TZS",
        "en",
        "Tanzanian Shilling",
        "UAH",
        "en",
        "Hryvnia",
        "UGX",
        "en",
        "Uganda Shilling",
        "USD",
        "en",
        "US Dollar",
        "USN",
        "en",
        "US Dollar (Next day)",
        "UYI",
        "en",
        "Uruguay Peso en Unidades Indexadas (UI)",
        "UYU",
        "en",
        "Peso Uruguayo",
        "UYW",
        "en",
        "Unidad Previsional",
        "UZS",
        "en",
        "Uzbekistan Sum",
        "VES",
        "en",
        "Bolivar Soberano",
        "VND",
        "en",
        "Dong",
        "VUV",
        "en",
        "Vatu",
        "WST",
        "en",
        "Tala",
        "XAF",
        "en",
        "CFA Franc BEAC",
        "XCD",
        "en",
        "East Caribbean Dollar",
        "XDR",
        "en",
        "SDR (Special Drawing Right)",
        "XOF",
        "en",
        "CFA Franc BCEAO",
        "XPF",
        "en",
        "CFP Franc",
        "XSU",
        "en",
        "Sucre",
        "XUA",
        "en",
        "ADB Unit of Account",
        "YER",
        "en",
        "Yemeni Rial",
        "ZAR",
        "en",
        "Rand",
        "ZMW",
        "en",
        "Zambian Kwacha",
        "ZWL",
        "en",
        "Zimbabwe Dollar"
      ]
    )
  end

  def down do
    drop(table(:currencies_t))
  end
end
