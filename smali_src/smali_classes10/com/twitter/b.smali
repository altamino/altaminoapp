.class public Lcom/twitter/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AT_SIGNS:Ljava/util/regex/Pattern;

.field private static AT_SIGNS_CHARS:Ljava/lang/String; = null

.field private static final CASHTAG:Ljava/lang/String; = "[a-z]{1,6}(?:[._][a-z]{1,2})?"

.field private static final DOLLAR_SIGN_CHAR:Ljava/lang/String; = "\\$"

.field private static final HASHTAG_ALPHA:Ljava/lang/String;

.field private static final HASHTAG_ALPHA_CHARS:Ljava/lang/String;

.field private static final HASHTAG_ALPHA_NUMERIC:Ljava/lang/String;

.field private static final HASHTAG_ALPHA_NUMERIC_CHARS:Ljava/lang/String;

.field public static final INVALID_HASHTAG_MATCH_END:Ljava/util/regex/Pattern;

.field public static final INVALID_MENTION_MATCH_END:Ljava/util/regex/Pattern;

.field public static final INVALID_URL_WITHOUT_PROTOCOL_MATCH_BEGIN:Ljava/util/regex/Pattern;

.field private static LATIN_ACCENTS_CHARS:Ljava/lang/String; = "\\u00c0-\\u00d6\\u00d8-\\u00f6\\u00f8-\\u00ff\\u0100-\\u024f\\u0253\\u0254\\u0256\\u0257\\u0259\\u025b\\u0263\\u0268\\u026f\\u0272\\u0289\\u028b\\u02bb\\u0300-\\u036f\\u1e00-\\u1eff"

.field public static final RTL_CHARACTERS:Ljava/util/regex/Pattern;

.field private static final SPECIAL_URL_VALID_CCTLD:Ljava/lang/String; = "(?:(?:co|tv)(?=[^a-zA-Z0-9@]|$))"

.field private static final UNICODE_SPACES:Ljava/lang/String; = "[\\u0009-\\u000d\\u0020\\u0085\\u00a0\\u1680\\u180E\\u2000-\\u200a\\u2028\\u2029\\u202F\\u205F\\u3000]"

.field private static final URL_BALANCED_PARENS:Ljava/lang/String;

.field private static final URL_PUNYCODE:Ljava/lang/String; = "(?:xn--[0-9a-z]+)"

.field private static final URL_VALID_CCTLD:Ljava/lang/String; = "(?:(?:ac|ad|ae|af|ag|ai|al|am|an|ao|aq|ar|as|at|au|aw|ax|az|ba|bb|bd|be|bf|bg|bh|bi|bj|bl|bm|bn|bo|bq|br|bs|bt|bv|bw|by|bz|ca|cc|cd|cf|cg|ch|ci|ck|cl|cm|cn|co|cr|cu|cv|cw|cx|cy|cz|de|dj|dk|dm|do|dz|ec|ee|eg|eh|er|es|et|eu|fi|fj|fk|fm|fo|fr|ga|gb|gd|ge|gf|gg|gh|gi|gl|gm|gn|gp|gq|gr|gs|gt|gu|gw|gy|hk|hm|hn|hr|ht|hu|id|ie|il|im|in|io|iq|ir|is|it|je|jm|jo|jp|ke|kg|kh|ki|km|kn|kp|kr|kw|ky|kz|la|lb|lc|li|lk|lr|ls|lt|lu|lv|ly|ma|mc|md|me|mf|mg|mh|mk|ml|mm|mn|mo|mp|mq|mr|ms|mt|mu|mv|mw|mx|my|mz|na|nc|ne|nf|ng|ni|nl|no|np|nr|nu|nz|om|pa|pe|pf|pg|ph|pk|pl|pm|pn|pr|ps|pt|pw|py|qa|re|ro|rs|ru|rw|sa|sb|sc|sd|se|sg|sh|si|sj|sk|sl|sm|sn|so|sr|ss|st|su|sv|sx|sy|sz|tc|td|tf|tg|th|tj|tk|tl|tm|tn|to|tp|tr|tt|tv|tw|tz|ua|ug|uk|um|us|uy|uz|va|vc|ve|vg|vi|vn|vu|wf|ws|ye|yt|za|zm|zw)(?=[^a-zA-Z0-9@]|$))"

.field private static final URL_VALID_CHARS:Ljava/lang/String;

.field private static final URL_VALID_DOMAIN:Ljava/lang/String;

.field private static final URL_VALID_DOMAIN_NAME:Ljava/lang/String;

.field private static final URL_VALID_GENERAL_PATH_CHARS:Ljava/lang/String;

.field private static final URL_VALID_GTLD:Ljava/lang/String; = "(?:(?:academy|accountants|active|actor|aero|agency|airforce|allfinanz|alsace|archi|army|arpa|asia|associates|attorney|auction|audio|autos|axa|bar|bargains|bayern|beer|berlin|best|bid|bike|bio|biz|black|blackfriday|blue|bmw|bnpparibas|boo|boutique|brussels|budapest|build|builders|business|buzz|bzh|cab|cal|camera|camp|cancerresearch|capetown|capital|caravan|cards|care|career|careers|casa|cash|cat|catering|center|ceo|cern|channel|cheap|christmas|chrome|church|citic|city|claims|cleaning|click|clinic|clothing|club|codes|coffee|college|cologne|com|community|company|computer|condos|construction|consulting|contractors|cooking|cool|coop|country|credit|creditcard|cruises|cuisinella|cymru|dad|dance|dating|day|deals|degree|democrat|dental|dentist|desi|diamonds|diet|digital|direct|directory|discount|dnp|domains|durban|dvag|eat|edu|education|email|engineer|engineering|enterprises|equipment|esq|estate|eus|events|exchange|expert|exposed|fail|farm|feedback|finance|financial|fish|fishing|fitness|flights|florist|fly|foo|forsale|foundation|frl|frogans|fund|furniture|futbol|gal|gallery|gbiz|gent|gift|gifts|gives|glass|gle|global|globo|gmail|gmo|gmx|google|gop|gov|graphics|gratis|green|gripe|guide|guitars|guru|hamburg|haus|healthcare|help|here|hiphop|hiv|holdings|holiday|homes|horse|host|hosting|house|how|ibm|immo|immobilien|industries|info|ing|ink|institute|insure|int|international|investments|jetzt|jobs|joburg|juegos|kaufen|kim|kitchen|kiwi|koeln|krd|kred|lacaixa|land|lawyer|lease|lgbt|life|lighting|limited|limo|link|loans|london|lotto|ltda|luxe|luxury|maison|management|mango|market|marketing|media|meet|melbourne|meme|menu|miami|mil|mini|mobi|moda|moe|monash|mortgage|moscow|motorcycles|mov|museum|nagoya|name|navy|net|network|neustar|new|nexus|ngo|nhk|ninja|nra|nrw|nyc|okinawa|ong|onl|ooo|org|organic|otsuka|ovh|paris|partners|parts|pharmacy|photo|photography|photos|physio|pics|pictures|pink|pizza|place|plumbing|pohl|post|praxi|press|pro|prod|productions|prof|properties|property|pub|qpon|quebec|realtor|recipes|red|rehab|reise|reisen|ren|rentals|repair|report|republican|rest|restaurant|reviews|rich|rio|rocks|rodeo|rsvp|ruhr|ryukyu|saarland|sarl|sca|scb|schmidt|schule|scot|services|sexy|shiksha|shoes|singles|social|software|sohu|solar|solutions|soy|space|spiegel|supplies|supply|support|surf|surgery|suzuki|systems|tatar|tattoo|tax|technology|tel|tienda|tips|tirol|today|tokyo|tools|top|town|toys|trade|training|travel|tui|university|uno|uol|vacations|vegas|ventures|verm\u00f6gensberater|verm\u00f6gensberatung|versicherung|vet|viajes|villas|vision|vlaanderen|vodka|vote|voting|voto|voyage|wales|wang|watch|webcam|website|wed|whoswho|wien|wiki|williamhill|wme|work|works|world|wtc|wtf|xxx|xyz|yachts|yandex|yokohama|youtube|zip|zone)(?=[^a-zA-Z0-9@]|$))"

.field private static final URL_VALID_PATH:Ljava/lang/String;

.field private static final URL_VALID_PATH_ENDING_CHARS:Ljava/lang/String;

.field private static final URL_VALID_PORT_NUMBER:Ljava/lang/String; = "[0-9]++"

.field private static final URL_VALID_PRECEEDING_CHARS:Ljava/lang/String; = "(?:[^A-Z0-9@\uff20$#\uff03\u202a-\u202e]|^)"

.field private static final URL_VALID_SUBDOMAIN:Ljava/lang/String;

.field private static final URL_VALID_UNICODE_CHARS:Ljava/lang/String; = "[.[^\\p{Punct}\\s\\p{Z}\\p{InGeneralPunctuation}]]"

.field private static final URL_VALID_URL_QUERY_CHARS:Ljava/lang/String; = "[a-z0-9!?\\*\'\\(\\);:&=\\+\\$/%#\\-_\\.,~\\|@]"

.field private static final URL_VALID_URL_QUERY_ENDING_CHARS:Ljava/lang/String; = "[a-z0-9_&=#/]"

.field public static final VALID_CASHTAG:Ljava/util/regex/Pattern;

.field public static final VALID_CASHTAG_GROUP_BEFORE:I = 0x1

.field public static final VALID_CASHTAG_GROUP_CASHTAG:I = 0x3

.field public static final VALID_CASHTAG_GROUP_DOLLAR:I = 0x2

.field public static final VALID_HASHTAG:Ljava/util/regex/Pattern;

.field public static final VALID_HASHTAG_GROUP_BEFORE:I = 0x1

.field public static final VALID_HASHTAG_GROUP_HASH:I = 0x2

.field public static final VALID_HASHTAG_GROUP_TAG:I = 0x3

.field public static final VALID_MENTION_OR_LIST:Ljava/util/regex/Pattern;

.field public static final VALID_MENTION_OR_LIST_GROUP_AT:I = 0x2

.field public static final VALID_MENTION_OR_LIST_GROUP_BEFORE:I = 0x1

.field public static final VALID_MENTION_OR_LIST_GROUP_LIST:I = 0x4

.field public static final VALID_MENTION_OR_LIST_GROUP_USERNAME:I = 0x3

.field public static final VALID_NDC_URL:Ljava/util/regex/Pattern;

.field private static final VALID_NDC_URL_PATTERN_STRING:Ljava/lang/String;

.field public static final VALID_REPLY:Ljava/util/regex/Pattern;

.field public static final VALID_REPLY_GROUP_USERNAME:I = 0x1

.field public static final VALID_TCO_URL:Ljava/util/regex/Pattern;

.field public static final VALID_URL:Ljava/util/regex/Pattern;

.field public static final VALID_URL_GROUP_ALL:I = 0x1

.field public static final VALID_URL_GROUP_BEFORE:I = 0x2

.field public static final VALID_URL_GROUP_DOMAIN:I = 0x5

.field public static final VALID_URL_GROUP_PATH:I = 0x7

.field public static final VALID_URL_GROUP_PORT:I = 0x6

.field public static final VALID_URL_GROUP_PROTOCOL:I = 0x4

.field public static final VALID_URL_GROUP_QUERY_STRING:I = 0x8

.field public static final VALID_URL_GROUP_URL:I = 0x3

.field private static final VALID_URL_PATTERN_STRING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a-z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/twitter/b;->LATIN_ACCENTS_CHARS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\u0400-\\u04ff\\u0500-\\u0527\\u2de0-\\u2dff\\ua640-\\ua69f\\u0591-\\u05bf\\u05c1-\\u05c2\\u05c4-\\u05c5\\u05c7\\u05d0-\\u05ea\\u05f0-\\u05f4\\ufb1d-\\ufb28\\ufb2a-\\ufb36\\ufb38-\\ufb3c\\ufb3e\\ufb40-\\ufb41\\ufb43-\\ufb44\\ufb46-\\ufb4f\\u0610-\\u061a\\u0620-\\u065f\\u066e-\\u06d3\\u06d5-\\u06dc\\u06de-\\u06e8\\u06ea-\\u06ef\\u06fa-\\u06fc\\u06ff\\u0750-\\u077f\\u08a0\\u08a2-\\u08ac\\u08e4-\\u08fe\\ufb50-\\ufbb1\\ufbd3-\\ufd3d\\ufd50-\\ufd8f\\ufd92-\\ufdc7\\ufdf0-\\ufdfb\\ufe70-\\ufe74\\ufe76-\\ufefc\\u200c\\u0e01-\\u0e3a\\u0e40-\\u0e4e\\u1100-\\u11ff\\u3130-\\u3185\\uA960-\\uA97F\\uAC00-\\uD7AF\\uD7B0-\\uD7FF\\p{InHiragana}\\p{InKatakana}\\p{InCJKUnifiedIdeographs}\\u3003\\u3005\\u303b\\uff21-\\uff3a\\uff41-\\uff5a\\uff66-\\uff9f\\uffa1-\\uffdc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/b;->HASHTAG_ALPHA_CHARS:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0-9\\uff10-\\uff19_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/twitter/b;->HASHTAG_ALPHA_NUMERIC_CHARS:Ljava/lang/String;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/twitter/b;->HASHTAG_ALPHA:Ljava/lang/String;

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/twitter/b;->HASHTAG_ALPHA_NUMERIC:Ljava/lang/String;

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[a-zA-Z0-9"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/twitter/b;->LATIN_ACCENTS_CHARS:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/twitter/b;->URL_VALID_CHARS:Ljava/lang/String;

    .line 6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(?>(?:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\\-_]*)?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\\.)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/twitter/b;->URL_VALID_SUBDOMAIN:Ljava/lang/String;

    .line 7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(?:(?:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\\-]*)?"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/twitter/b;->URL_VALID_DOMAIN_NAME:Ljava/lang/String;

    .line 8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(?:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "+"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "(?:(?:academy|accountants|active|actor|aero|agency|airforce|allfinanz|alsace|archi|army|arpa|asia|associates|attorney|auction|audio|autos|axa|bar|bargains|bayern|beer|berlin|best|bid|bike|bio|biz|black|blackfriday|blue|bmw|bnpparibas|boo|boutique|brussels|budapest|build|builders|business|buzz|bzh|cab|cal|camera|camp|cancerresearch|capetown|capital|caravan|cards|care|career|careers|casa|cash|cat|catering|center|ceo|cern|channel|cheap|christmas|chrome|church|citic|city|claims|cleaning|click|clinic|clothing|club|codes|coffee|college|cologne|com|community|company|computer|condos|construction|consulting|contractors|cooking|cool|coop|country|credit|creditcard|cruises|cuisinella|cymru|dad|dance|dating|day|deals|degree|democrat|dental|dentist|desi|diamonds|diet|digital|direct|directory|discount|dnp|domains|durban|dvag|eat|edu|education|email|engineer|engineering|enterprises|equipment|esq|estate|eus|events|exchange|expert|exposed|fail|farm|feedback|finance|financial|fish|fishing|fitness|flights|florist|fly|foo|forsale|foundation|frl|frogans|fund|furniture|futbol|gal|gallery|gbiz|gent|gift|gifts|gives|glass|gle|global|globo|gmail|gmo|gmx|google|gop|gov|graphics|gratis|green|gripe|guide|guitars|guru|hamburg|haus|healthcare|help|here|hiphop|hiv|holdings|holiday|homes|horse|host|hosting|house|how|ibm|immo|immobilien|industries|info|ing|ink|institute|insure|int|international|investments|jetzt|jobs|joburg|juegos|kaufen|kim|kitchen|kiwi|koeln|krd|kred|lacaixa|land|lawyer|lease|lgbt|life|lighting|limited|limo|link|loans|london|lotto|ltda|luxe|luxury|maison|management|mango|market|marketing|media|meet|melbourne|meme|menu|miami|mil|mini|mobi|moda|moe|monash|mortgage|moscow|motorcycles|mov|museum|nagoya|name|navy|net|network|neustar|new|nexus|ngo|nhk|ninja|nra|nrw|nyc|okinawa|ong|onl|ooo|org|organic|otsuka|ovh|paris|partners|parts|pharmacy|photo|photography|photos|physio|pics|pictures|pink|pizza|place|plumbing|pohl|post|praxi|press|pro|prod|productions|prof|properties|property|pub|qpon|quebec|realtor|recipes|red|rehab|reise|reisen|ren|rentals|repair|report|republican|rest|restaurant|reviews|rich|rio|rocks|rodeo|rsvp|ruhr|ryukyu|saarland|sarl|sca|scb|schmidt|schule|scot|services|sexy|shiksha|shoes|singles|social|software|sohu|solar|solutions|soy|space|spiegel|supplies|supply|support|surf|surgery|suzuki|systems|tatar|tattoo|tax|technology|tel|tienda|tips|tirol|today|tokyo|tools|top|town|toys|trade|training|travel|tui|university|uno|uol|vacations|vegas|ventures|verm\u00f6gensberater|verm\u00f6gensberatung|versicherung|vet|viajes|villas|vision|vlaanderen|vodka|vote|voting|voto|voyage|wales|wang|watch|webcam|website|wed|whoswho|wien|wiki|williamhill|wme|work|works|world|wtc|wtf|xxx|xyz|yachts|yandex|yokohama|youtube|zip|zone)(?=[^a-zA-Z0-9@]|$))"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "|"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "(?:(?:ac|ad|ae|af|ag|ai|al|am|an|ao|aq|ar|as|at|au|aw|ax|az|ba|bb|bd|be|bf|bg|bh|bi|bj|bl|bm|bn|bo|bq|br|bs|bt|bv|bw|by|bz|ca|cc|cd|cf|cg|ch|ci|ck|cl|cm|cn|co|cr|cu|cv|cw|cx|cy|cz|de|dj|dk|dm|do|dz|ec|ee|eg|eh|er|es|et|eu|fi|fj|fk|fm|fo|fr|ga|gb|gd|ge|gf|gg|gh|gi|gl|gm|gn|gp|gq|gr|gs|gt|gu|gw|gy|hk|hm|hn|hr|ht|hu|id|ie|il|im|in|io|iq|ir|is|it|je|jm|jo|jp|ke|kg|kh|ki|km|kn|kp|kr|kw|ky|kz|la|lb|lc|li|lk|lr|ls|lt|lu|lv|ly|ma|mc|md|me|mf|mg|mh|mk|ml|mm|mn|mo|mp|mq|mr|ms|mt|mu|mv|mw|mx|my|mz|na|nc|ne|nf|ng|ni|nl|no|np|nr|nu|nz|om|pa|pe|pf|pg|ph|pk|pl|pm|pn|pr|ps|pt|pw|py|qa|re|ro|rs|ru|rw|sa|sb|sc|sd|se|sg|sh|si|sj|sk|sl|sm|sn|so|sr|ss|st|su|sv|sx|sy|sz|tc|td|tf|tg|th|tj|tk|tl|tm|tn|to|tp|tr|tt|tv|tw|tz|ua|ug|uk|um|us|uy|uz|va|vc|ve|vg|vi|vn|vu|wf|ws|ye|yt|za|zm|zw)(?=[^a-zA-Z0-9@]|$))"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "(?:xn--[0-9a-z]+)"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "))|(?:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "(?:(?:co|tv)(?=[^a-zA-Z0-9@]|$))"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "))|(?:(?<=https?://)(?:(?:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")|(?:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "[.[^\\p{Punct}\\s\\p{Z}\\p{InGeneralPunctuation}]]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "+\\.(?:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "))))|(?:"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(?=/))"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/twitter/b;->URL_VALID_DOMAIN:Ljava/lang/String;

    .line 9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[a-z0-9!\\*\';:=\\+,.\\$/%#\\-_~\\|&@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/twitter/b;->LATIN_ACCENTS_CHARS:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/twitter/b;->URL_VALID_GENERAL_PATH_CHARS:Ljava/lang/String;

    .line 10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\((?:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "+|(?:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "*\\("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "+\\)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "*))\\)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/twitter/b;->URL_BALANCED_PARENS:Ljava/lang/String;

    .line 11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[a-z0-9=_#/\\-\\+"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/twitter/b;->LATIN_ACCENTS_CHARS:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]|(?:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/twitter/b;->URL_VALID_PATH_ENDING_CHARS:Ljava/lang/String;

    .line 12
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "*(?:"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "*)*"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")|(?:@"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "+/))"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/twitter/b;->URL_VALID_PATH:Ljava/lang/String;

    .line 13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(((?:[^A-Z0-9@\uff20$#\uff03\u202a-\u202e]|^))((https?://)?("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")(?::("

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "[0-9]++"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "))?(/"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "*+)?(\\?"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "[a-z0-9!?\\*\'\\(\\);:&=\\+\\$/%#\\-_\\.,~\\|@]"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "[a-z0-9_&=#/]"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")?))"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/twitter/b;->VALID_URL_PATTERN_STRING:Ljava/lang/String;

    .line 14
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "(((?:[^A-Z0-9@\uff20$#\uff03\u202a-\u202e]|^))(((?:ndc|aminoapp\\d*|pabkitapp\\d*)://)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "*+(\\?"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/twitter/b;->VALID_NDC_URL_PATTERN_STRING:Ljava/lang/String;

    const-string v6, "@\uff20"

    sput-object v6, Lcom/twitter/b;->AT_SIGNS_CHARS:Ljava/lang/String;

    .line 15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(^|[^&"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "])(#|\uff03)("

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "*)"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/twitter/b;->VALID_HASHTAG:Ljava/util/regex/Pattern;

    const-string v1, "^(?:[#\uff03]|://)"

    .line 16
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/twitter/b;->INVALID_HASHTAG_MATCH_END:Ljava/util/regex/Pattern;

    const-string v1, "[\u0600-\u06ff\u0750-\u077f\u0590-\u05ff\ufe70-\ufeff]"

    .line 17
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/twitter/b;->RTL_CHARACTERS:Ljava/util/regex/Pattern;

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/twitter/b;->AT_SIGNS_CHARS:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/twitter/b;->AT_SIGNS:Ljava/util/regex/Pattern;

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "([^a-z0-9_!#$%&*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/twitter/b;->AT_SIGNS_CHARS:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]|^|RT:?)("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "+)([a-z0-9_]{1,20})(/[a-z][a-z0-9_\\-]{0,24})?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/twitter/b;->VALID_MENTION_OR_LIST:Ljava/util/regex/Pattern;

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^(?:[\\u0009-\\u000d\\u0020\\u0085\\u00a0\\u1680\\u180E\\u2000-\\u200a\\u2028\\u2029\\u202F\\u205F\\u3000])*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "([a-z0-9_]{1,20})"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/twitter/b;->VALID_REPLY:Ljava/util/regex/Pattern;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^(?:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/twitter/b;->AT_SIGNS_CHARS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/twitter/b;->LATIN_ACCENTS_CHARS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]|://)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/twitter/b;->INVALID_MENTION_MATCH_END:Ljava/util/regex/Pattern;

    .line 22
    invoke-static {v7, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/twitter/b;->VALID_URL:Ljava/util/regex/Pattern;

    .line 23
    invoke-static {v5, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/twitter/b;->VALID_NDC_URL:Ljava/util/regex/Pattern;

    const-string v0, "^https?:\\/\\/t\\.co\\/[a-z0-9]+"

    .line 24
    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/twitter/b;->VALID_TCO_URL:Ljava/util/regex/Pattern;

    const-string v0, "[-_./]$"

    .line 25
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/twitter/b;->INVALID_URL_WITHOUT_PROTOCOL_MATCH_BEGIN:Ljava/util/regex/Pattern;

    const-string v0, "(^|[\\u0009-\\u000d\\u0020\\u0085\\u00a0\\u1680\\u180E\\u2000-\\u200a\\u2028\\u2029\\u202F\\u205F\\u3000])(\\$)([a-z]{1,6}(?:[._][a-z]{1,2})?)(?=$|\\s|\\p{Punct})"

    .line 26
    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/twitter/b;->VALID_CASHTAG:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method
