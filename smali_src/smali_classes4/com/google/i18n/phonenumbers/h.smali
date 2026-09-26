.class public Lcom/google/i18n/phonenumbers/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/i18n/phonenumbers/h$d;,
        Lcom/google/i18n/phonenumbers/h$c;,
        Lcom/google/i18n/phonenumbers/h$b;
    }
.end annotation


# static fields
.field private static final ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALPHA_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALPHA_PHONE_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final CAPTURING_EXTN_DIGITS:Ljava/lang/String; = "(\\p{Nd}{1,7})"

.field private static final CC_STRING:Ljava/lang/String; = "$CC"

.field private static final COLOMBIA_MOBILE_TO_FIXED_LINE_PREFIX:Ljava/lang/String; = "3"

.field private static final DEFAULT_EXTN_PREFIX:Ljava/lang/String; = " ext. "

.field private static final DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final DIGITS:Ljava/lang/String; = "\\p{Nd}"

.field private static final EXTN_PATTERN:Ljava/util/regex/Pattern;

.field static final EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

.field private static final EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

.field private static final FG_STRING:Ljava/lang/String; = "$FG"

.field private static final FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

.field private static final FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

.field private static final GEO_MOBILE_COUNTRIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final GEO_MOBILE_COUNTRIES_WITHOUT_MOBILE_AREA_CODES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_INPUT_STRING_LENGTH:I = 0xfa

.field static final MAX_LENGTH_COUNTRY_CODE:I = 0x3

.field static final MAX_LENGTH_FOR_NSN:I = 0x11

.field private static final MIN_LENGTH_FOR_NSN:I = 0x2

.field private static final MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NANPA_COUNTRY_CODE:I = 0x1

.field static final NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

.field private static final NP_STRING:Ljava/lang/String; = "$NP"

.field static final PLUS_CHARS:Ljava/lang/String; = "+\uff0b"

.field static final PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

.field static final PLUS_SIGN:C = '+'

.field static final REGEX_FLAGS:I = 0x42

.field public static final REGION_CODE_FOR_NON_GEO_ENTITY:Ljava/lang/String; = "001"

.field private static final RFC3966_EXTN_PREFIX:Ljava/lang/String; = ";ext="

.field private static final RFC3966_ISDN_SUBADDRESS:Ljava/lang/String; = ";isub="

.field private static final RFC3966_PHONE_CONTEXT:Ljava/lang/String; = ";phone-context="

.field private static final RFC3966_PREFIX:Ljava/lang/String; = "tel:"

.field private static final SECOND_NUMBER_START:Ljava/lang/String; = "[\\\\/] *x"

.field static final SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

.field private static final SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static final SINGLE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

.field private static final STAR_SIGN:C = '*'

.field private static final UNKNOWN_REGION:Ljava/lang/String; = "ZZ"

.field private static final UNWANTED_END_CHARS:Ljava/lang/String; = "[[\\P{N}&&\\P{L}]&&[^#]]+$"

.field static final UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static final VALID_ALPHA:Ljava/lang/String;

.field private static final VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

.field private static final VALID_PHONE_NUMBER:Ljava/lang/String;

.field private static final VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field static final VALID_PUNCTUATION:Ljava/lang/String; = "-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e"

.field private static final VALID_START_CHAR:Ljava/lang/String; = "[+\uff0b\\p{Nd}]"

.field private static final VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static instance:Lcom/google/i18n/phonenumbers/h;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final countryCallingCodeToRegionCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final countryCodesForNonGeographicalRegion:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final matcherApi:Lcom/google/i18n/phonenumbers/internal/a;

.field private final metadataSource:Lcom/google/i18n/phonenumbers/e;

.field private final nanpaRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final regexCache:Lcom/google/i18n/phonenumbers/internal/c;

.field private final supportedRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    .line 2
    const-class v0, Lcom/google/i18n/phonenumbers/h;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    sput-object v0, Lcom/google/i18n/phonenumbers/h;->logger:Ljava/util/logging/Logger;

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    const/16 v1, 0x34

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    const-string v3, "1"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    const/16 v3, 0x36

    .line 35
    .line 36
    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    .line 41
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    const-string v5, "9"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    sput-object v0, Lcom/google/i18n/phonenumbers/h;->MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;

    .line 54
    .line 55
    new-instance v0, Ljava/util/HashSet;

    .line 56
    .line 57
    .line 58
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 59
    .line 60
    const/16 v5, 0x56

    .line 61
    .line 62
    .line 63
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object v6

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 71
    move-result-object v6

    .line 72
    .line 73
    sput-object v6, Lcom/google/i18n/phonenumbers/h;->GEO_MOBILE_COUNTRIES_WITHOUT_MOBILE_AREA_CODES:Ljava/util/Set;

    .line 74
    .line 75
    new-instance v6, Ljava/util/HashSet;

    .line 76
    .line 77
    .line 78
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    const/16 v2, 0x37

    .line 87
    .line 88
    .line 89
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 90
    move-result-object v4

    .line 91
    .line 92
    .line 93
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object v2

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    const/16 v2, 0x3e

    .line 100
    .line 101
    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object v2

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 110
    .line 111
    .line 112
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    sput-object v0, Lcom/google/i18n/phonenumbers/h;->GEO_MOBILE_COUNTRIES:Ljava/util/Set;

    .line 116
    .line 117
    new-instance v0, Ljava/util/HashMap;

    .line 118
    .line 119
    .line 120
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 121
    .line 122
    const/16 v2, 0x30

    .line 123
    .line 124
    .line 125
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 126
    move-result-object v2

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    const/16 v2, 0x31

    .line 132
    .line 133
    .line 134
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 135
    move-result-object v2

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    const/16 v2, 0x32

    .line 141
    .line 142
    .line 143
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 144
    move-result-object v2

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    const/16 v6, 0x33

    .line 150
    .line 151
    .line 152
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 153
    move-result-object v6

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    const/16 v7, 0x35

    .line 162
    .line 163
    .line 164
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 165
    move-result-object v7

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    const/16 v8, 0x38

    .line 177
    .line 178
    .line 179
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 180
    move-result-object v8

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v8, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    const/16 v9, 0x39

    .line 186
    .line 187
    .line 188
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 189
    move-result-object v9

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v9, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    new-instance v10, Ljava/util/HashMap;

    .line 195
    .line 196
    const/16 v11, 0x28

    .line 197
    .line 198
    .line 199
    invoke-direct {v10, v11}, Ljava/util/HashMap;-><init>(I)V

    .line 200
    .line 201
    const/16 v11, 0x41

    .line 202
    .line 203
    .line 204
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 205
    move-result-object v11

    .line 206
    .line 207
    .line 208
    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    const/16 v11, 0x42

    .line 211
    .line 212
    .line 213
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 214
    move-result-object v12

    .line 215
    .line 216
    .line 217
    invoke-virtual {v10, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    const/16 v12, 0x43

    .line 220
    .line 221
    .line 222
    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 223
    move-result-object v12

    .line 224
    .line 225
    .line 226
    invoke-virtual {v10, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    const/16 v2, 0x44

    .line 229
    .line 230
    .line 231
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 232
    move-result-object v2

    .line 233
    .line 234
    .line 235
    invoke-virtual {v10, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    const/16 v2, 0x45

    .line 238
    .line 239
    .line 240
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 241
    move-result-object v2

    .line 242
    .line 243
    .line 244
    invoke-virtual {v10, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    const/16 v2, 0x46

    .line 247
    .line 248
    .line 249
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 250
    move-result-object v2

    .line 251
    .line 252
    .line 253
    invoke-virtual {v10, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    const/16 v2, 0x47

    .line 256
    .line 257
    .line 258
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 259
    move-result-object v2

    .line 260
    .line 261
    .line 262
    invoke-virtual {v10, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    const/16 v2, 0x48

    .line 265
    .line 266
    .line 267
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 268
    move-result-object v2

    .line 269
    .line 270
    .line 271
    invoke-virtual {v10, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    const/16 v2, 0x49

    .line 274
    .line 275
    .line 276
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 277
    move-result-object v2

    .line 278
    .line 279
    .line 280
    invoke-virtual {v10, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    const/16 v1, 0x4a

    .line 283
    .line 284
    .line 285
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 286
    move-result-object v1

    .line 287
    .line 288
    .line 289
    invoke-virtual {v10, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    const/16 v1, 0x4b

    .line 292
    .line 293
    .line 294
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 295
    move-result-object v1

    .line 296
    .line 297
    .line 298
    invoke-virtual {v10, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    const/16 v1, 0x4c

    .line 301
    .line 302
    .line 303
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 304
    move-result-object v1

    .line 305
    .line 306
    .line 307
    invoke-virtual {v10, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    const/16 v1, 0x4d

    .line 310
    .line 311
    .line 312
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 313
    move-result-object v1

    .line 314
    .line 315
    .line 316
    invoke-virtual {v10, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    const/16 v1, 0x4e

    .line 319
    .line 320
    .line 321
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 322
    move-result-object v1

    .line 323
    .line 324
    .line 325
    invoke-virtual {v10, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    const/16 v1, 0x4f

    .line 328
    .line 329
    .line 330
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 331
    move-result-object v1

    .line 332
    .line 333
    .line 334
    invoke-virtual {v10, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .line 336
    const/16 v1, 0x50

    .line 337
    .line 338
    .line 339
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 340
    move-result-object v1

    .line 341
    .line 342
    .line 343
    invoke-virtual {v10, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    const/16 v1, 0x51

    .line 346
    .line 347
    .line 348
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 349
    move-result-object v1

    .line 350
    .line 351
    .line 352
    invoke-virtual {v10, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    const/16 v1, 0x52

    .line 355
    .line 356
    .line 357
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 358
    move-result-object v1

    .line 359
    .line 360
    .line 361
    invoke-virtual {v10, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    const/16 v1, 0x53

    .line 364
    .line 365
    .line 366
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 367
    move-result-object v1

    .line 368
    .line 369
    .line 370
    invoke-virtual {v10, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    const/16 v1, 0x54

    .line 373
    .line 374
    .line 375
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 376
    move-result-object v1

    .line 377
    .line 378
    .line 379
    invoke-virtual {v10, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .line 381
    const/16 v1, 0x55

    .line 382
    .line 383
    .line 384
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 385
    move-result-object v1

    .line 386
    .line 387
    .line 388
    invoke-virtual {v10, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 392
    move-result-object v1

    .line 393
    .line 394
    .line 395
    invoke-virtual {v10, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    .line 397
    const/16 v1, 0x57

    .line 398
    .line 399
    .line 400
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 401
    move-result-object v1

    .line 402
    .line 403
    .line 404
    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    const/16 v1, 0x58

    .line 407
    .line 408
    .line 409
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 410
    move-result-object v1

    .line 411
    .line 412
    .line 413
    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .line 415
    const/16 v1, 0x59

    .line 416
    .line 417
    .line 418
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 419
    move-result-object v1

    .line 420
    .line 421
    .line 422
    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    const/16 v1, 0x5a

    .line 425
    .line 426
    .line 427
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 428
    move-result-object v1

    .line 429
    .line 430
    .line 431
    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 435
    move-result-object v1

    .line 436
    .line 437
    sput-object v1, Lcom/google/i18n/phonenumbers/h;->ALPHA_MAPPINGS:Ljava/util/Map;

    .line 438
    .line 439
    new-instance v2, Ljava/util/HashMap;

    .line 440
    .line 441
    const/16 v3, 0x64

    .line 442
    .line 443
    .line 444
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 451
    .line 452
    .line 453
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 454
    move-result-object v2

    .line 455
    .line 456
    sput-object v2, Lcom/google/i18n/phonenumbers/h;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    .line 457
    .line 458
    new-instance v2, Ljava/util/HashMap;

    .line 459
    .line 460
    .line 461
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 465
    .line 466
    const/16 v3, 0x2b

    .line 467
    .line 468
    .line 469
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 470
    move-result-object v3

    .line 471
    .line 472
    .line 473
    invoke-virtual {v2, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    .line 475
    const/16 v3, 0x2a

    .line 476
    .line 477
    .line 478
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 479
    move-result-object v3

    .line 480
    .line 481
    .line 482
    invoke-virtual {v2, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    .line 484
    const/16 v3, 0x23

    .line 485
    .line 486
    .line 487
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 488
    move-result-object v3

    .line 489
    .line 490
    .line 491
    invoke-virtual {v2, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 495
    move-result-object v2

    .line 496
    .line 497
    sput-object v2, Lcom/google/i18n/phonenumbers/h;->DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;

    .line 498
    .line 499
    new-instance v2, Ljava/util/HashMap;

    .line 500
    .line 501
    .line 502
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 503
    .line 504
    .line 505
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 506
    move-result-object v1

    .line 507
    .line 508
    .line 509
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 510
    move-result-object v1

    .line 511
    .line 512
    .line 513
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 514
    move-result v3

    .line 515
    .line 516
    if-eqz v3, :cond_0

    .line 517
    .line 518
    .line 519
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 520
    move-result-object v3

    .line 521
    .line 522
    check-cast v3, Ljava/lang/Character;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    .line 526
    move-result v3

    .line 527
    .line 528
    .line 529
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    .line 530
    move-result v4

    .line 531
    .line 532
    .line 533
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 534
    move-result-object v4

    .line 535
    .line 536
    .line 537
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 538
    move-result-object v5

    .line 539
    .line 540
    .line 541
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 545
    move-result-object v4

    .line 546
    .line 547
    .line 548
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 549
    move-result-object v3

    .line 550
    .line 551
    .line 552
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    goto :goto_0

    .line 554
    .line 555
    .line 556
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 557
    .line 558
    const/16 v0, 0x2d

    .line 559
    .line 560
    .line 561
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 562
    move-result-object v1

    .line 563
    .line 564
    .line 565
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 566
    move-result-object v3

    .line 567
    .line 568
    .line 569
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    const v1, 0xff0d

    .line 573
    .line 574
    .line 575
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 576
    move-result-object v1

    .line 577
    .line 578
    .line 579
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 580
    move-result-object v3

    .line 581
    .line 582
    .line 583
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    .line 585
    const/16 v1, 0x2010

    .line 586
    .line 587
    .line 588
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 589
    move-result-object v1

    .line 590
    .line 591
    .line 592
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 593
    move-result-object v3

    .line 594
    .line 595
    .line 596
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    .line 598
    const/16 v1, 0x2011

    .line 599
    .line 600
    .line 601
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 602
    move-result-object v1

    .line 603
    .line 604
    .line 605
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 606
    move-result-object v3

    .line 607
    .line 608
    .line 609
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    .line 611
    const/16 v1, 0x2012

    .line 612
    .line 613
    .line 614
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 615
    move-result-object v1

    .line 616
    .line 617
    .line 618
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 619
    move-result-object v3

    .line 620
    .line 621
    .line 622
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    .line 624
    const/16 v1, 0x2013

    .line 625
    .line 626
    .line 627
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 628
    move-result-object v1

    .line 629
    .line 630
    .line 631
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 632
    move-result-object v3

    .line 633
    .line 634
    .line 635
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    .line 637
    const/16 v1, 0x2014

    .line 638
    .line 639
    .line 640
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 641
    move-result-object v1

    .line 642
    .line 643
    .line 644
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 645
    move-result-object v3

    .line 646
    .line 647
    .line 648
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    .line 650
    const/16 v1, 0x2015

    .line 651
    .line 652
    .line 653
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 654
    move-result-object v1

    .line 655
    .line 656
    .line 657
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 658
    move-result-object v3

    .line 659
    .line 660
    .line 661
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    .line 663
    const/16 v1, 0x2212

    .line 664
    .line 665
    .line 666
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 667
    move-result-object v1

    .line 668
    .line 669
    .line 670
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 671
    move-result-object v0

    .line 672
    .line 673
    .line 674
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    .line 676
    const/16 v0, 0x2f

    .line 677
    .line 678
    .line 679
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 680
    move-result-object v1

    .line 681
    .line 682
    .line 683
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 684
    move-result-object v3

    .line 685
    .line 686
    .line 687
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    const v1, 0xff0f

    .line 691
    .line 692
    .line 693
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 694
    move-result-object v1

    .line 695
    .line 696
    .line 697
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 698
    move-result-object v0

    .line 699
    .line 700
    .line 701
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    .line 703
    const/16 v0, 0x20

    .line 704
    .line 705
    .line 706
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 707
    move-result-object v1

    .line 708
    .line 709
    .line 710
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 711
    move-result-object v3

    .line 712
    .line 713
    .line 714
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    .line 716
    const/16 v1, 0x3000

    .line 717
    .line 718
    .line 719
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 720
    move-result-object v1

    .line 721
    .line 722
    .line 723
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 724
    move-result-object v3

    .line 725
    .line 726
    .line 727
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    .line 729
    const/16 v1, 0x2060

    .line 730
    .line 731
    .line 732
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 733
    move-result-object v1

    .line 734
    .line 735
    .line 736
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 737
    move-result-object v0

    .line 738
    .line 739
    .line 740
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    .line 742
    const/16 v0, 0x2e

    .line 743
    .line 744
    .line 745
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 746
    move-result-object v1

    .line 747
    .line 748
    .line 749
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 750
    move-result-object v3

    .line 751
    .line 752
    .line 753
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    .line 755
    .line 756
    const v1, 0xff0e

    .line 757
    .line 758
    .line 759
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 760
    move-result-object v1

    .line 761
    .line 762
    .line 763
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 764
    move-result-object v0

    .line 765
    .line 766
    .line 767
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 771
    move-result-object v0

    .line 772
    .line 773
    sput-object v0, Lcom/google/i18n/phonenumbers/h;->ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;

    .line 774
    .line 775
    const-string v0, "[\\d]+(?:[~\u2053\u223c\uff5e][\\d]+)?"

    .line 776
    .line 777
    .line 778
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 779
    move-result-object v0

    .line 780
    .line 781
    sput-object v0, Lcom/google/i18n/phonenumbers/h;->SINGLE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    .line 782
    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    .line 784
    .line 785
    .line 786
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 787
    .line 788
    sget-object v1, Lcom/google/i18n/phonenumbers/h;->ALPHA_MAPPINGS:Ljava/util/Map;

    .line 789
    .line 790
    .line 791
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 792
    move-result-object v2

    .line 793
    .line 794
    .line 795
    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    .line 796
    move-result-object v2

    .line 797
    .line 798
    .line 799
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 800
    move-result-object v2

    .line 801
    .line 802
    const-string v3, "[, \\[\\]]"

    .line 803
    .line 804
    const-string v4, ""

    .line 805
    .line 806
    .line 807
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 808
    move-result-object v2

    .line 809
    .line 810
    .line 811
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    .line 813
    .line 814
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 815
    move-result-object v1

    .line 816
    .line 817
    .line 818
    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    .line 819
    move-result-object v1

    .line 820
    .line 821
    .line 822
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 823
    move-result-object v1

    .line 824
    .line 825
    .line 826
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 827
    move-result-object v1

    .line 828
    .line 829
    .line 830
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 831
    move-result-object v1

    .line 832
    .line 833
    .line 834
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    .line 836
    .line 837
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 838
    move-result-object v0

    .line 839
    .line 840
    sput-object v0, Lcom/google/i18n/phonenumbers/h;->VALID_ALPHA:Ljava/lang/String;

    .line 841
    .line 842
    const-string v1, "[+\uff0b]+"

    .line 843
    .line 844
    .line 845
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 846
    move-result-object v1

    .line 847
    .line 848
    sput-object v1, Lcom/google/i18n/phonenumbers/h;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 849
    .line 850
    const-string v1, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]+"

    .line 851
    .line 852
    .line 853
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 854
    move-result-object v1

    .line 855
    .line 856
    sput-object v1, Lcom/google/i18n/phonenumbers/h;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 857
    .line 858
    const-string v1, "(\\p{Nd})"

    .line 859
    .line 860
    .line 861
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 862
    move-result-object v1

    .line 863
    .line 864
    sput-object v1, Lcom/google/i18n/phonenumbers/h;->CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    .line 865
    .line 866
    const-string v1, "[+\uff0b\\p{Nd}]"

    .line 867
    .line 868
    .line 869
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 870
    move-result-object v1

    .line 871
    .line 872
    sput-object v1, Lcom/google/i18n/phonenumbers/h;->VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 873
    .line 874
    const-string v1, "[\\\\/] *x"

    .line 875
    .line 876
    .line 877
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 878
    move-result-object v1

    .line 879
    .line 880
    sput-object v1, Lcom/google/i18n/phonenumbers/h;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    .line 881
    .line 882
    const-string v1, "[[\\P{N}&&\\P{L}]&&[^#]]+$"

    .line 883
    .line 884
    .line 885
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 886
    move-result-object v1

    .line 887
    .line 888
    sput-object v1, Lcom/google/i18n/phonenumbers/h;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 889
    .line 890
    const-string v1, "(?:.*?[A-Za-z]){3}.*"

    .line 891
    .line 892
    .line 893
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 894
    move-result-object v1

    .line 895
    .line 896
    sput-object v1, Lcom/google/i18n/phonenumbers/h;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    .line 897
    .line 898
    new-instance v1, Ljava/lang/StringBuilder;

    .line 899
    .line 900
    .line 901
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 902
    .line 903
    const-string v2, "\\p{Nd}{2}|[+\uff0b]*+(?:[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*]*\\p{Nd}){3,}[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*"

    .line 904
    .line 905
    .line 906
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    .line 908
    .line 909
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    .line 911
    const-string v0, "\\p{Nd}"

    .line 912
    .line 913
    .line 914
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    .line 916
    const-string v0, "]*"

    .line 917
    .line 918
    .line 919
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    .line 921
    .line 922
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 923
    move-result-object v0

    .line 924
    .line 925
    sput-object v0, Lcom/google/i18n/phonenumbers/h;->VALID_PHONE_NUMBER:Ljava/lang/String;

    .line 926
    .line 927
    new-instance v1, Ljava/lang/StringBuilder;

    .line 928
    .line 929
    .line 930
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 931
    .line 932
    const-string v2, ",;"

    .line 933
    .line 934
    .line 935
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    .line 937
    const-string v2, "x\uff58#\uff03~\uff5e"

    .line 938
    .line 939
    .line 940
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    .line 942
    .line 943
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 944
    move-result-object v1

    .line 945
    .line 946
    .line 947
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/h;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 948
    move-result-object v1

    .line 949
    .line 950
    sput-object v1, Lcom/google/i18n/phonenumbers/h;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    .line 951
    .line 952
    .line 953
    invoke-static {v2}, Lcom/google/i18n/phonenumbers/h;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 954
    move-result-object v2

    .line 955
    .line 956
    sput-object v2, Lcom/google/i18n/phonenumbers/h;->EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

    .line 957
    .line 958
    new-instance v2, Ljava/lang/StringBuilder;

    .line 959
    .line 960
    .line 961
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 962
    .line 963
    const-string v3, "(?:"

    .line 964
    .line 965
    .line 966
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    .line 968
    .line 969
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    .line 971
    const-string v4, ")$"

    .line 972
    .line 973
    .line 974
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    .line 976
    .line 977
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 978
    move-result-object v2

    .line 979
    .line 980
    .line 981
    invoke-static {v2, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 982
    move-result-object v2

    .line 983
    .line 984
    sput-object v2, Lcom/google/i18n/phonenumbers/h;->EXTN_PATTERN:Ljava/util/regex/Pattern;

    .line 985
    .line 986
    new-instance v2, Ljava/lang/StringBuilder;

    .line 987
    .line 988
    .line 989
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 990
    .line 991
    .line 992
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    .line 994
    .line 995
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    .line 997
    .line 998
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    .line 1000
    const-string v0, ")?"

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1007
    move-result-object v0

    .line 1008
    .line 1009
    .line 1010
    invoke-static {v0, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 1011
    move-result-object v0

    .line 1012
    .line 1013
    sput-object v0, Lcom/google/i18n/phonenumbers/h;->VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 1014
    .line 1015
    const-string v0, "(\\D+)"

    .line 1016
    .line 1017
    .line 1018
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 1019
    move-result-object v0

    .line 1020
    .line 1021
    sput-object v0, Lcom/google/i18n/phonenumbers/h;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    .line 1022
    .line 1023
    const-string v0, "(\\$\\d)"

    .line 1024
    .line 1025
    .line 1026
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 1027
    move-result-object v0

    .line 1028
    .line 1029
    sput-object v0, Lcom/google/i18n/phonenumbers/h;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    .line 1030
    .line 1031
    const-string v0, "\\(?\\$1\\)?"

    .line 1032
    .line 1033
    .line 1034
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 1035
    move-result-object v0

    .line 1036
    .line 1037
    sput-object v0, Lcom/google/i18n/phonenumbers/h;->FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    .line 1038
    const/4 v0, 0x0

    .line 1039
    .line 1040
    sput-object v0, Lcom/google/i18n/phonenumbers/h;->instance:Lcom/google/i18n/phonenumbers/h;

    .line 1041
    return-void
.end method

.method constructor <init>(Lcom/google/i18n/phonenumbers/e;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/i18n/phonenumbers/e;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/i18n/phonenumbers/internal/b;->b()Lcom/google/i18n/phonenumbers/internal/a;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/h;->matcherApi:Lcom/google/i18n/phonenumbers/internal/a;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    const/16 v1, 0x23

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/h;->nanpaRegions:Ljava/util/Set;

    .line 19
    .line 20
    new-instance v0, Lcom/google/i18n/phonenumbers/internal/c;

    .line 21
    .line 22
    const/16 v1, 0x64

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/google/i18n/phonenumbers/internal/c;-><init>(I)V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/h;->regexCache:Lcom/google/i18n/phonenumbers/internal/c;

    .line 28
    .line 29
    new-instance v0, Ljava/util/HashSet;

    .line 30
    .line 31
    const/16 v1, 0x140

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 35
    .line 36
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/h;->supportedRegions:Ljava/util/Set;

    .line 37
    .line 38
    new-instance v0, Ljava/util/HashSet;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 42
    .line 43
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/h;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/h;->metadataSource:Lcom/google/i18n/phonenumbers/e;

    .line 46
    .line 47
    iput-object p2, p0, Lcom/google/i18n/phonenumbers/h;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v0

    .line 60
    const/4 v1, 0x1

    .line 61
    .line 62
    const-string v2, "001"

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    .line 67
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    check-cast v0, Ljava/util/Map$Entry;

    .line 71
    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 74
    move-result-object v3

    .line 75
    .line 76
    check-cast v3, Ljava/util/List;

    .line 77
    .line 78
    .line 79
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 80
    move-result v4

    .line 81
    .line 82
    if-ne v4, v1, :cond_0

    .line 83
    const/4 v1, 0x0

    .line 84
    .line 85
    .line 86
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    move-result v1

    .line 92
    .line 93
    if-eqz v1, :cond_0

    .line 94
    .line 95
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/h;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    .line 96
    .line 97
    .line 98
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    .line 102
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    goto :goto_0

    .line 104
    .line 105
    :cond_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h;->supportedRegions:Ljava/util/Set;

    .line 106
    .line 107
    .line 108
    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 109
    goto :goto_0

    .line 110
    .line 111
    :cond_1
    iget-object p1, p0, Lcom/google/i18n/phonenumbers/h;->supportedRegions:Ljava/util/Set;

    .line 112
    .line 113
    .line 114
    invoke-interface {p1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 115
    move-result p1

    .line 116
    .line 117
    if-eqz p1, :cond_2

    .line 118
    .line 119
    sget-object p1, Lcom/google/i18n/phonenumbers/h;->logger:Ljava/util/logging/Logger;

    .line 120
    .line 121
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 122
    .line 123
    const-string v2, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))"

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 127
    .line 128
    :cond_2
    iget-object p1, p0, Lcom/google/i18n/phonenumbers/h;->nanpaRegions:Ljava/util/Set;

    .line 129
    .line 130
    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    .line 135
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    move-result-object p2

    .line 137
    .line 138
    check-cast p2, Ljava/util/Collection;

    .line 139
    .line 140
    .line 141
    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 142
    return-void
.end method

.method private A(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/google/i18n/phonenumbers/m;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/i18n/phonenumbers/g;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_10

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    const/16 v1, 0xfa

    .line 9
    .line 10
    if-gt v0, v1, :cond_f

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1, v0}, Lcom/google/i18n/phonenumbers/h;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/google/i18n/phonenumbers/h;->p(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_e

    .line 29
    .line 30
    if-eqz p4, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v0, p2}, Lcom/google/i18n/phonenumbers/h;->b(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 34
    move-result p4

    .line 35
    .line 36
    if-eqz p4, :cond_0

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    new-instance p1, Lcom/google/i18n/phonenumbers/g;

    .line 40
    .line 41
    sget-object p2, Lcom/google/i18n/phonenumbers/g$a;->INVALID_COUNTRY_CODE:Lcom/google/i18n/phonenumbers/g$a;

    .line 42
    .line 43
    const-string p3, "Missing or invalid default region."

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, p2, p3}, Lcom/google/i18n/phonenumbers/g;-><init>(Lcom/google/i18n/phonenumbers/g$a;Ljava/lang/String;)V

    .line 47
    throw p1

    .line 48
    .line 49
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p5, p1}, Lcom/google/i18n/phonenumbers/m;->x(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/m;

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/h;->r(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 60
    move-result p4

    .line 61
    .line 62
    if-lez p4, :cond_3

    .line 63
    .line 64
    .line 65
    invoke-virtual {p5, p1}, Lcom/google/i18n/phonenumbers/m;->s(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/m;

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-virtual {p0, p2}, Lcom/google/i18n/phonenumbers/h;->k(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    new-instance p4, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    move-object v2, p0

    .line 76
    move-object v3, v0

    .line 77
    move-object v4, p1

    .line 78
    move-object v5, p4

    .line 79
    move v6, p3

    .line 80
    move-object v7, p5

    .line 81
    .line 82
    .line 83
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Lcom/google/i18n/phonenumbers/h;->q(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/j;Ljava/lang/StringBuilder;ZLcom/google/i18n/phonenumbers/m;)I

    .line 84
    move-result v1
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/g; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_1

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .line 88
    sget-object v2, Lcom/google/i18n/phonenumbers/h;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 92
    move-result-object v2

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/g;->a()Lcom/google/i18n/phonenumbers/g$a;

    .line 96
    move-result-object v3

    .line 97
    .line 98
    sget-object v4, Lcom/google/i18n/phonenumbers/g$a;->INVALID_COUNTRY_CODE:Lcom/google/i18n/phonenumbers/g$a;

    .line 99
    .line 100
    if-ne v3, v4, :cond_d

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    .line 104
    move-result v3

    .line 105
    .line 106
    if-eqz v3, :cond_d

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    .line 110
    move-result v1

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    .line 114
    move-result-object v2

    .line 115
    move-object v1, p0

    .line 116
    move-object v3, p1

    .line 117
    move-object v4, p4

    .line 118
    move v5, p3

    .line 119
    move-object v6, p5

    .line 120
    .line 121
    .line 122
    invoke-virtual/range {v1 .. v6}, Lcom/google/i18n/phonenumbers/h;->q(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/j;Ljava/lang/StringBuilder;ZLcom/google/i18n/phonenumbers/m;)I

    .line 123
    move-result v1

    .line 124
    .line 125
    if-eqz v1, :cond_c

    .line 126
    .line 127
    :goto_1
    if-eqz v1, :cond_4

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v1}, Lcom/google/i18n/phonenumbers/h;->n(I)Ljava/lang/String;

    .line 131
    move-result-object v0

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    move-result p2

    .line 136
    .line 137
    if-nez p2, :cond_6

    .line 138
    .line 139
    .line 140
    invoke-direct {p0, v1, v0}, Lcom/google/i18n/phonenumbers/h;->l(ILjava/lang/String;)Lcom/google/i18n/phonenumbers/j;

    .line 141
    move-result-object p1

    .line 142
    goto :goto_2

    .line 143
    .line 144
    .line 145
    :cond_4
    invoke-static {v0}, Lcom/google/i18n/phonenumbers/h;->u(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 146
    move-result-object v0

    .line 147
    .line 148
    .line 149
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    if-eqz p2, :cond_5

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j;->a()I

    .line 155
    move-result p2

    .line 156
    .line 157
    .line 158
    invoke-virtual {p5, p2}, Lcom/google/i18n/phonenumbers/m;->q(I)Lcom/google/i18n/phonenumbers/m;

    .line 159
    goto :goto_2

    .line 160
    .line 161
    :cond_5
    if-eqz p3, :cond_6

    .line 162
    .line 163
    .line 164
    invoke-virtual {p5}, Lcom/google/i18n/phonenumbers/m;->a()Lcom/google/i18n/phonenumbers/m;

    .line 165
    .line 166
    .line 167
    :cond_6
    :goto_2
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    .line 168
    move-result p2

    .line 169
    .line 170
    const-string v0, "The string supplied is too short to be a phone number."

    .line 171
    const/4 v1, 0x2

    .line 172
    .line 173
    if-lt p2, v1, :cond_b

    .line 174
    .line 175
    if-eqz p1, :cond_8

    .line 176
    .line 177
    new-instance p2, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-direct {v2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0, v2, p1, p2}, Lcom/google/i18n/phonenumbers/h;->t(Ljava/lang/StringBuilder;Lcom/google/i18n/phonenumbers/j;Ljava/lang/StringBuilder;)Z

    .line 189
    .line 190
    .line 191
    invoke-direct {p0, v2, p1}, Lcom/google/i18n/phonenumbers/h;->E(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/j;)Lcom/google/i18n/phonenumbers/h$d;

    .line 192
    move-result-object p1

    .line 193
    .line 194
    sget-object v3, Lcom/google/i18n/phonenumbers/h$d;->TOO_SHORT:Lcom/google/i18n/phonenumbers/h$d;

    .line 195
    .line 196
    if-eq p1, v3, :cond_8

    .line 197
    .line 198
    sget-object v3, Lcom/google/i18n/phonenumbers/h$d;->IS_POSSIBLE_LOCAL_ONLY:Lcom/google/i18n/phonenumbers/h$d;

    .line 199
    .line 200
    if-eq p1, v3, :cond_8

    .line 201
    .line 202
    sget-object v3, Lcom/google/i18n/phonenumbers/h$d;->INVALID_LENGTH:Lcom/google/i18n/phonenumbers/h$d;

    .line 203
    .line 204
    if-eq p1, v3, :cond_8

    .line 205
    .line 206
    if-eqz p3, :cond_7

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    .line 210
    move-result p1

    .line 211
    .line 212
    if-lez p1, :cond_7

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    move-result-object p1

    .line 217
    .line 218
    .line 219
    invoke-virtual {p5, p1}, Lcom/google/i18n/phonenumbers/m;->w(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/m;

    .line 220
    :cond_7
    move-object p4, v2

    .line 221
    .line 222
    .line 223
    :cond_8
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    .line 224
    move-result p1

    .line 225
    .line 226
    if-lt p1, v1, :cond_a

    .line 227
    .line 228
    const/16 p2, 0x11

    .line 229
    .line 230
    if-gt p1, p2, :cond_9

    .line 231
    .line 232
    .line 233
    invoke-static {p4, p5}, Lcom/google/i18n/phonenumbers/h;->D(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/m;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    move-result-object p1

    .line 238
    .line 239
    .line 240
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 241
    move-result-wide p1

    .line 242
    .line 243
    .line 244
    invoke-virtual {p5, p1, p2}, Lcom/google/i18n/phonenumbers/m;->u(J)Lcom/google/i18n/phonenumbers/m;

    .line 245
    return-void

    .line 246
    .line 247
    :cond_9
    new-instance p1, Lcom/google/i18n/phonenumbers/g;

    .line 248
    .line 249
    sget-object p2, Lcom/google/i18n/phonenumbers/g$a;->TOO_LONG:Lcom/google/i18n/phonenumbers/g$a;

    .line 250
    .line 251
    const-string p3, "The string supplied is too long to be a phone number."

    .line 252
    .line 253
    .line 254
    invoke-direct {p1, p2, p3}, Lcom/google/i18n/phonenumbers/g;-><init>(Lcom/google/i18n/phonenumbers/g$a;Ljava/lang/String;)V

    .line 255
    throw p1

    .line 256
    .line 257
    :cond_a
    new-instance p1, Lcom/google/i18n/phonenumbers/g;

    .line 258
    .line 259
    sget-object p2, Lcom/google/i18n/phonenumbers/g$a;->TOO_SHORT_NSN:Lcom/google/i18n/phonenumbers/g$a;

    .line 260
    .line 261
    .line 262
    invoke-direct {p1, p2, v0}, Lcom/google/i18n/phonenumbers/g;-><init>(Lcom/google/i18n/phonenumbers/g$a;Ljava/lang/String;)V

    .line 263
    throw p1

    .line 264
    .line 265
    :cond_b
    new-instance p1, Lcom/google/i18n/phonenumbers/g;

    .line 266
    .line 267
    sget-object p2, Lcom/google/i18n/phonenumbers/g$a;->TOO_SHORT_NSN:Lcom/google/i18n/phonenumbers/g$a;

    .line 268
    .line 269
    .line 270
    invoke-direct {p1, p2, v0}, Lcom/google/i18n/phonenumbers/g;-><init>(Lcom/google/i18n/phonenumbers/g$a;Ljava/lang/String;)V

    .line 271
    throw p1

    .line 272
    .line 273
    :cond_c
    new-instance p1, Lcom/google/i18n/phonenumbers/g;

    .line 274
    .line 275
    sget-object p2, Lcom/google/i18n/phonenumbers/g$a;->INVALID_COUNTRY_CODE:Lcom/google/i18n/phonenumbers/g$a;

    .line 276
    .line 277
    const-string p3, "Could not interpret numbers after plus-sign."

    .line 278
    .line 279
    .line 280
    invoke-direct {p1, p2, p3}, Lcom/google/i18n/phonenumbers/g;-><init>(Lcom/google/i18n/phonenumbers/g$a;Ljava/lang/String;)V

    .line 281
    throw p1

    .line 282
    .line 283
    :cond_d
    new-instance p1, Lcom/google/i18n/phonenumbers/g;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/g;->a()Lcom/google/i18n/phonenumbers/g$a;

    .line 287
    move-result-object p2

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 291
    move-result-object p3

    .line 292
    .line 293
    .line 294
    invoke-direct {p1, p2, p3}, Lcom/google/i18n/phonenumbers/g;-><init>(Lcom/google/i18n/phonenumbers/g$a;Ljava/lang/String;)V

    .line 295
    throw p1

    .line 296
    .line 297
    :cond_e
    new-instance p1, Lcom/google/i18n/phonenumbers/g;

    .line 298
    .line 299
    sget-object p2, Lcom/google/i18n/phonenumbers/g$a;->NOT_A_NUMBER:Lcom/google/i18n/phonenumbers/g$a;

    .line 300
    .line 301
    const-string p3, "The string supplied did not seem to be a phone number."

    .line 302
    .line 303
    .line 304
    invoke-direct {p1, p2, p3}, Lcom/google/i18n/phonenumbers/g;-><init>(Lcom/google/i18n/phonenumbers/g$a;Ljava/lang/String;)V

    .line 305
    throw p1

    .line 306
    .line 307
    :cond_f
    new-instance p1, Lcom/google/i18n/phonenumbers/g;

    .line 308
    .line 309
    sget-object p2, Lcom/google/i18n/phonenumbers/g$a;->TOO_LONG:Lcom/google/i18n/phonenumbers/g$a;

    .line 310
    .line 311
    const-string p3, "The string supplied was too long to parse."

    .line 312
    .line 313
    .line 314
    invoke-direct {p1, p2, p3}, Lcom/google/i18n/phonenumbers/g;-><init>(Lcom/google/i18n/phonenumbers/g$a;Ljava/lang/String;)V

    .line 315
    throw p1

    .line 316
    .line 317
    :cond_10
    new-instance p1, Lcom/google/i18n/phonenumbers/g;

    .line 318
    .line 319
    sget-object p2, Lcom/google/i18n/phonenumbers/g$a;->NOT_A_NUMBER:Lcom/google/i18n/phonenumbers/g$a;

    .line 320
    .line 321
    const-string p3, "The phone number supplied was null."

    .line 322
    .line 323
    .line 324
    invoke-direct {p1, p2, p3}, Lcom/google/i18n/phonenumbers/g;-><init>(Lcom/google/i18n/phonenumbers/g$a;Ljava/lang/String;)V

    .line 325
    throw p1
.end method

.method private B(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->lookingAt()Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    .line 15
    move-result p1

    .line 16
    .line 17
    sget-object v0, Lcom/google/i18n/phonenumbers/h;->CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x1

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/google/i18n/phonenumbers/h;->w(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    const-string v2, "0"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v0

    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    return v1

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-virtual {p2, v1, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 53
    return v3

    .line 54
    :cond_1
    return v1
.end method

.method static declared-synchronized C(Lcom/google/i18n/phonenumbers/h;)V
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/google/i18n/phonenumbers/h;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sput-object p0, Lcom/google/i18n/phonenumbers/h;->instance:Lcom/google/i18n/phonenumbers/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0

    .line 10
    throw p0
.end method

.method static D(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/m;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-le v0, v1, :cond_1

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 12
    move-result v0

    .line 13
    .line 14
    const/16 v2, 0x30

    .line 15
    .line 16
    if-ne v0, v2, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lcom/google/i18n/phonenumbers/m;->t(Z)Lcom/google/i18n/phonenumbers/m;

    .line 20
    move v0, v1

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 24
    move-result v3

    .line 25
    sub-int/2addr v3, v1

    .line 26
    .line 27
    if-ge v0, v3, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 31
    move-result v3

    .line 32
    .line 33
    if-ne v3, v2, :cond_0

    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    if-eq v0, v1, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/m;->v(I)Lcom/google/i18n/phonenumbers/m;

    .line 42
    :cond_1
    return-void
.end method

.method private E(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/j;)Lcom/google/i18n/phonenumbers/h$d;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/i18n/phonenumbers/h$c;->UNKNOWN:Lcom/google/i18n/phonenumbers/h$c;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/h;->F(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/j;Lcom/google/i18n/phonenumbers/h$c;)Lcom/google/i18n/phonenumbers/h$d;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method private F(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/j;Lcom/google/i18n/phonenumbers/h$c;)Lcom/google/i18n/phonenumbers/h$d;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/google/i18n/phonenumbers/h;->m(Lcom/google/i18n/phonenumbers/j;Lcom/google/i18n/phonenumbers/h$c;)Lcom/google/i18n/phonenumbers/l;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/l;->d()Ljava/util/List;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/j;->c()Lcom/google/i18n/phonenumbers/l;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/l;->d()Ljava/util/List;

    .line 22
    move-result-object v1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/l;->d()Ljava/util/List;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/l;->f()Ljava/util/List;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    sget-object v2, Lcom/google/i18n/phonenumbers/h$c;->FIXED_LINE_OR_MOBILE:Lcom/google/i18n/phonenumbers/h$c;

    .line 34
    .line 35
    if-ne p3, v2, :cond_4

    .line 36
    .line 37
    sget-object p3, Lcom/google/i18n/phonenumbers/h$c;->FIXED_LINE:Lcom/google/i18n/phonenumbers/h$c;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p2, p3}, Lcom/google/i18n/phonenumbers/h;->m(Lcom/google/i18n/phonenumbers/j;Lcom/google/i18n/phonenumbers/h$c;)Lcom/google/i18n/phonenumbers/l;

    .line 41
    move-result-object p3

    .line 42
    .line 43
    .line 44
    invoke-static {p3}, Lcom/google/i18n/phonenumbers/h;->f(Lcom/google/i18n/phonenumbers/l;)Z

    .line 45
    move-result p3

    .line 46
    .line 47
    if-nez p3, :cond_1

    .line 48
    .line 49
    sget-object p3, Lcom/google/i18n/phonenumbers/h$c;->MOBILE:Lcom/google/i18n/phonenumbers/h$c;

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/google/i18n/phonenumbers/h;->F(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/j;Lcom/google/i18n/phonenumbers/h$c;)Lcom/google/i18n/phonenumbers/h$d;

    .line 53
    move-result-object p1

    .line 54
    return-object p1

    .line 55
    .line 56
    :cond_1
    sget-object p3, Lcom/google/i18n/phonenumbers/h$c;->MOBILE:Lcom/google/i18n/phonenumbers/h$c;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p2, p3}, Lcom/google/i18n/phonenumbers/h;->m(Lcom/google/i18n/phonenumbers/j;Lcom/google/i18n/phonenumbers/h$c;)Lcom/google/i18n/phonenumbers/l;

    .line 60
    move-result-object p3

    .line 61
    .line 62
    .line 63
    invoke-static {p3}, Lcom/google/i18n/phonenumbers/h;->f(Lcom/google/i18n/phonenumbers/l;)Z

    .line 64
    move-result v2

    .line 65
    .line 66
    if-eqz v2, :cond_4

    .line 67
    .line 68
    new-instance v2, Ljava/util/ArrayList;

    .line 69
    .line 70
    .line 71
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3}, Lcom/google/i18n/phonenumbers/l;->d()Ljava/util/List;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 79
    move-result v1

    .line 80
    .line 81
    if-nez v1, :cond_2

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/j;->c()Lcom/google/i18n/phonenumbers/l;

    .line 85
    move-result-object p2

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/l;->d()Ljava/util/List;

    .line 89
    move-result-object p2

    .line 90
    goto :goto_1

    .line 91
    .line 92
    .line 93
    :cond_2
    invoke-virtual {p3}, Lcom/google/i18n/phonenumbers/l;->d()Ljava/util/List;

    .line 94
    move-result-object p2

    .line 95
    .line 96
    .line 97
    :goto_1
    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    .line 99
    .line 100
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 104
    move-result p2

    .line 105
    .line 106
    if-eqz p2, :cond_3

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3}, Lcom/google/i18n/phonenumbers/l;->f()Ljava/util/List;

    .line 110
    move-result-object v0

    .line 111
    :goto_2
    move-object v1, v2

    .line 112
    goto :goto_3

    .line 113
    .line 114
    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    .line 115
    .line 116
    .line 117
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3}, Lcom/google/i18n/phonenumbers/l;->f()Ljava/util/List;

    .line 121
    move-result-object p3

    .line 122
    .line 123
    .line 124
    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    .line 126
    .line 127
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 128
    move-object v0, p2

    .line 129
    goto :goto_2

    .line 130
    :cond_4
    :goto_3
    const/4 p2, 0x0

    .line 131
    .line 132
    .line 133
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    move-result-object p3

    .line 135
    .line 136
    check-cast p3, Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 140
    move-result p3

    .line 141
    const/4 v2, -0x1

    .line 142
    .line 143
    if-ne p3, v2, :cond_5

    .line 144
    .line 145
    sget-object p1, Lcom/google/i18n/phonenumbers/h$d;->INVALID_LENGTH:Lcom/google/i18n/phonenumbers/h$d;

    .line 146
    return-object p1

    .line 147
    .line 148
    .line 149
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 150
    move-result p1

    .line 151
    .line 152
    .line 153
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    move-result-object p3

    .line 155
    .line 156
    .line 157
    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 158
    move-result p3

    .line 159
    .line 160
    if-eqz p3, :cond_6

    .line 161
    .line 162
    sget-object p1, Lcom/google/i18n/phonenumbers/h$d;->IS_POSSIBLE_LOCAL_ONLY:Lcom/google/i18n/phonenumbers/h$d;

    .line 163
    return-object p1

    .line 164
    .line 165
    .line 166
    :cond_6
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 167
    move-result-object p2

    .line 168
    .line 169
    check-cast p2, Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 173
    move-result p2

    .line 174
    .line 175
    if-ne p2, p1, :cond_7

    .line 176
    .line 177
    sget-object p1, Lcom/google/i18n/phonenumbers/h$d;->IS_POSSIBLE:Lcom/google/i18n/phonenumbers/h$d;

    .line 178
    return-object p1

    .line 179
    .line 180
    :cond_7
    if-le p2, p1, :cond_8

    .line 181
    .line 182
    sget-object p1, Lcom/google/i18n/phonenumbers/h$d;->TOO_SHORT:Lcom/google/i18n/phonenumbers/h$d;

    .line 183
    return-object p1

    .line 184
    .line 185
    .line 186
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 187
    move-result p2

    .line 188
    const/4 p3, 0x1

    .line 189
    sub-int/2addr p2, p3

    .line 190
    .line 191
    .line 192
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 193
    move-result-object p2

    .line 194
    .line 195
    check-cast p2, Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 199
    move-result p2

    .line 200
    .line 201
    if-ge p2, p1, :cond_9

    .line 202
    .line 203
    sget-object p1, Lcom/google/i18n/phonenumbers/h$d;->TOO_LONG:Lcom/google/i18n/phonenumbers/h$d;

    .line 204
    return-object p1

    .line 205
    .line 206
    .line 207
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 208
    move-result p2

    .line 209
    .line 210
    .line 211
    invoke-interface {v1, p3, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 212
    move-result-object p2

    .line 213
    .line 214
    .line 215
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    move-result-object p1

    .line 217
    .line 218
    .line 219
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 220
    move-result p1

    .line 221
    .line 222
    if-eqz p1, :cond_a

    .line 223
    .line 224
    sget-object p1, Lcom/google/i18n/phonenumbers/h$d;->IS_POSSIBLE:Lcom/google/i18n/phonenumbers/h$d;

    .line 225
    goto :goto_4

    .line 226
    .line 227
    :cond_a
    sget-object p1, Lcom/google/i18n/phonenumbers/h$d;->INVALID_LENGTH:Lcom/google/i18n/phonenumbers/h$d;

    .line 228
    :goto_4
    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    .line 2
    const-string v0, ";phone-context="

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-ltz v0, :cond_3

    .line 9
    .line 10
    add-int/lit8 v1, v0, 0xf

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    move-result v2

    .line 15
    .line 16
    add-int/lit8 v2, v2, -0x1

    .line 17
    .line 18
    if-ge v1, v2, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 22
    move-result v2

    .line 23
    .line 24
    const/16 v3, 0x2b

    .line 25
    .line 26
    if-ne v2, v3, :cond_1

    .line 27
    .line 28
    const/16 v2, 0x3b

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    .line 32
    move-result v2

    .line 33
    .line 34
    if-lez v2, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    goto :goto_0

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    :cond_1
    :goto_0
    const-string v1, "tel:"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 55
    move-result v1

    .line 56
    .line 57
    if-ltz v1, :cond_2

    .line 58
    .line 59
    add-int/lit8 v1, v1, 0x4

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 v1, 0x0

    .line 62
    .line 63
    .line 64
    :goto_1
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    goto :goto_2

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/h;->h(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    :goto_2
    const-string p1, ";isub="

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    .line 82
    move-result p1

    .line 83
    .line 84
    if-lez p1, :cond_4

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    .line 88
    move-result v0

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, p1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 92
    :cond_4
    return-void
.end method

.method private b(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/i18n/phonenumbers/h;->o(Ljava/lang/String;)Z

    .line 4
    move-result p2

    .line 5
    .line 6
    if-nez p2, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 12
    move-result p2

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    sget-object p2, Lcom/google/i18n/phonenumbers/h;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->lookingAt()Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    return p1

    .line 29
    :cond_1
    const/4 p1, 0x1

    .line 30
    return p1
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, ";ext=(\\p{Nd}{1,7})|[ \u00a0\\t,]*(?:e?xt(?:ensi(?:o\u0301?|\u00f3))?n?|\uff45?\uff58\uff54\uff4e?|\u0434\u043e\u0431|["

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p0, "]|int|anexo|\uff49\uff4e\uff54)[:\\.\uff0e]?[ \u00a0\\t,-]*"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string p0, "(\\p{Nd}{1,7})"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string p0, "#?|[- ]+("

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string p0, "\\p{Nd}"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string/jumbo p0, "{1,5})#"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static d(Lcom/google/i18n/phonenumbers/c;)Lcom/google/i18n/phonenumbers/h;
    .locals 1

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    new-instance v0, Lcom/google/i18n/phonenumbers/f;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/google/i18n/phonenumbers/f;-><init>(Lcom/google/i18n/phonenumbers/c;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/i18n/phonenumbers/h;->e(Lcom/google/i18n/phonenumbers/e;)Lcom/google/i18n/phonenumbers/h;

    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string v0, "metadataLoader could not be null."

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p0
.end method

.method private static e(Lcom/google/i18n/phonenumbers/e;)Lcom/google/i18n/phonenumbers/h;
    .locals 2

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    new-instance v0, Lcom/google/i18n/phonenumbers/h;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/google/i18n/phonenumbers/b;->a()Ljava/util/Map;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Lcom/google/i18n/phonenumbers/h;-><init>(Lcom/google/i18n/phonenumbers/e;Ljava/util/Map;)V

    .line 12
    return-object v0

    .line 13
    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string v0, "metadataSource could not be null."

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p0
.end method

.method private static f(Lcom/google/i18n/phonenumbers/l;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/l;->c()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/l;->b(I)I

    .line 12
    move-result p0

    .line 13
    const/4 v2, -0x1

    .line 14
    .line 15
    if-eq p0, v2, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v1, v0

    .line 18
    :cond_1
    :goto_0
    return v1
.end method

.method static h(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/google/i18n/phonenumbers/h;->VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    .line 16
    move-result v0

    .line 17
    .line 18
    .line 19
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 20
    move-result v1

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    sget-object v0, Lcom/google/i18n/phonenumbers/h;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x0

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    .line 41
    move-result v0

    .line 42
    .line 43
    .line 44
    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 45
    move-result-object p0

    .line 46
    .line 47
    :cond_0
    sget-object v0, Lcom/google/i18n/phonenumbers/h;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 55
    move-result v1

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    .line 61
    move-result v0

    .line 62
    .line 63
    .line 64
    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 65
    move-result-object p0

    .line 66
    :cond_1
    return-object p0

    .line 67
    .line 68
    :cond_2
    const-string p0, ""

    .line 69
    return-object p0
.end method

.method public static declared-synchronized i()Lcom/google/i18n/phonenumbers/h;
    .locals 2

    .line 1
    .line 2
    const-class v0, Lcom/google/i18n/phonenumbers/h;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Lcom/google/i18n/phonenumbers/h;->instance:Lcom/google/i18n/phonenumbers/h;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    sget-object v1, Lcom/google/i18n/phonenumbers/d;->DEFAULT_METADATA_LOADER:Lcom/google/i18n/phonenumbers/c;

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/h;->d(Lcom/google/i18n/phonenumbers/c;)Lcom/google/i18n/phonenumbers/h;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/h;->C(Lcom/google/i18n/phonenumbers/h;)V

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_1

    .line 20
    .line 21
    :cond_0
    :goto_0
    sget-object v1, Lcom/google/i18n/phonenumbers/h;->instance:Lcom/google/i18n/phonenumbers/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit v0

    .line 23
    return-object v1

    .line 24
    :goto_1
    monitor-exit v0

    .line 25
    throw v1
.end method

.method private l(ILjava/lang/String;)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    .line 2
    const-string v0, "001"

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/h;->j(I)Lcom/google/i18n/phonenumbers/j;

    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/i18n/phonenumbers/h;->k(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j;

    .line 17
    move-result-object p1

    .line 18
    :goto_0
    return-object p1
.end method

.method private o(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h;->supportedRegions:Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method static p(Ljava/lang/CharSequence;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/google/i18n/phonenumbers/h;->VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method static u(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lcom/google/i18n/phonenumbers/h;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 17
    move-result v0

    .line 18
    .line 19
    sget-object v2, Lcom/google/i18n/phonenumbers/h;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    .line 20
    const/4 v3, 0x1

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v2, v3}, Lcom/google/i18n/phonenumbers/h;->x(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1, v0, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 32
    move-result v0

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Lcom/google/i18n/phonenumbers/h;->w(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1, v0, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    :goto_0
    return-object p0
.end method

.method static v(Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 14
    move-result v2

    .line 15
    .line 16
    if-ge v1, v2, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 20
    move-result v2

    .line 21
    .line 22
    const/16 v3, 0xa

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    .line 26
    move-result v3

    .line 27
    const/4 v4, -0x1

    .line 28
    .line 29
    if-eq v3, v4, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :cond_0
    if-eqz p1, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return-object v0
.end method

.method public static w(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lcom/google/i18n/phonenumbers/h;->v(Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    .line 5
    move-result-object p0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static x(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 14
    move-result v2

    .line 15
    .line 16
    if-ge v1, v2, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 20
    move-result v2

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    .line 24
    move-result v3

    .line 25
    .line 26
    .line 27
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    check-cast v3, Ljava/lang/Character;

    .line 35
    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_0
    if-nez p2, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method


# virtual methods
.method g(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 11
    move-result v0

    .line 12
    .line 13
    const/16 v2, 0x30

    .line 14
    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    goto :goto_1

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x1

    .line 22
    :goto_0
    const/4 v3, 0x3

    .line 23
    .line 24
    if-gt v2, v3, :cond_2

    .line 25
    .line 26
    if-gt v2, v0, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 34
    move-result v3

    .line 35
    .line 36
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/h;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v5

    .line 41
    .line 42
    .line 43
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 44
    move-result v4

    .line 45
    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    return v3

    .line 55
    .line 56
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    :goto_1
    return v1
.end method

.method j(I)Lcom/google/i18n/phonenumbers/j;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    const/4 p1, 0x0

    .line 14
    return-object p1

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h;->metadataSource:Lcom/google/i18n/phonenumbers/e;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/google/i18n/phonenumbers/e;->b(I)Lcom/google/i18n/phonenumbers/j;

    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method k(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/h;->o(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h;->metadataSource:Lcom/google/i18n/phonenumbers/e;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/google/i18n/phonenumbers/e;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method m(Lcom/google/i18n/phonenumbers/j;Lcom/google/i18n/phonenumbers/h$c;)Lcom/google/i18n/phonenumbers/l;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/i18n/phonenumbers/h$a;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p2

    .line 7
    .line 8
    aget p2, v0, p2

    .line 9
    .line 10
    .line 11
    packed-switch p2, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j;->c()Lcom/google/i18n/phonenumbers/l;

    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    .line 18
    .line 19
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j;->n()Lcom/google/i18n/phonenumbers/l;

    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    .line 23
    .line 24
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j;->m()Lcom/google/i18n/phonenumbers/l;

    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    .line 28
    .line 29
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j;->h()Lcom/google/i18n/phonenumbers/l;

    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    .line 33
    .line 34
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j;->i()Lcom/google/i18n/phonenumbers/l;

    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    .line 38
    .line 39
    :pswitch_4
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j;->o()Lcom/google/i18n/phonenumbers/l;

    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    .line 43
    .line 44
    :pswitch_5
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j;->k()Lcom/google/i18n/phonenumbers/l;

    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    .line 48
    .line 49
    :pswitch_6
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j;->b()Lcom/google/i18n/phonenumbers/l;

    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    .line 53
    .line 54
    :pswitch_7
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j;->e()Lcom/google/i18n/phonenumbers/l;

    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    .line 58
    .line 59
    :pswitch_8
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j;->l()Lcom/google/i18n/phonenumbers/l;

    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    .line 63
    .line 64
    :pswitch_9
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/j;->j()Lcom/google/i18n/phonenumbers/l;

    .line 65
    move-result-object p1

    .line 66
    return-object p1

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public n(I)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Ljava/util/List;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-string p1, "ZZ"

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    check-cast p1, Ljava/lang/String;

    .line 25
    :goto_0
    return-object p1
.end method

.method q(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/j;Ljava/lang/StringBuilder;ZLcom/google/i18n/phonenumbers/m;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/i18n/phonenumbers/g;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/j;->d()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_1
    const-string p1, "NonMatch"

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/google/i18n/phonenumbers/h;->s(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/m$a;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    if-eqz p4, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p5, p1}, Lcom/google/i18n/phonenumbers/m;->r(Lcom/google/i18n/phonenumbers/m$a;)Lcom/google/i18n/phonenumbers/m;

    .line 32
    .line 33
    :cond_2
    sget-object v2, Lcom/google/i18n/phonenumbers/m$a;->FROM_DEFAULT_COUNTRY:Lcom/google/i18n/phonenumbers/m$a;

    .line 34
    .line 35
    if-eq p1, v2, :cond_5

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 39
    move-result p1

    .line 40
    const/4 p2, 0x2

    .line 41
    .line 42
    if-le p1, p2, :cond_4

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0, p3}, Lcom/google/i18n/phonenumbers/h;->g(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    .line 46
    move-result p1

    .line 47
    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-virtual {p5, p1}, Lcom/google/i18n/phonenumbers/m;->q(I)Lcom/google/i18n/phonenumbers/m;

    .line 52
    return p1

    .line 53
    .line 54
    :cond_3
    new-instance p1, Lcom/google/i18n/phonenumbers/g;

    .line 55
    .line 56
    sget-object p2, Lcom/google/i18n/phonenumbers/g$a;->INVALID_COUNTRY_CODE:Lcom/google/i18n/phonenumbers/g$a;

    .line 57
    .line 58
    const-string p3, "Country calling code supplied was not recognised."

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, p2, p3}, Lcom/google/i18n/phonenumbers/g;-><init>(Lcom/google/i18n/phonenumbers/g$a;Ljava/lang/String;)V

    .line 62
    throw p1

    .line 63
    .line 64
    :cond_4
    new-instance p1, Lcom/google/i18n/phonenumbers/g;

    .line 65
    .line 66
    sget-object p2, Lcom/google/i18n/phonenumbers/g$a;->TOO_SHORT_AFTER_IDD:Lcom/google/i18n/phonenumbers/g$a;

    .line 67
    .line 68
    const-string p3, "Phone number had an IDD, but after this was not long enough to be a viable phone number."

    .line 69
    .line 70
    .line 71
    invoke-direct {p1, p2, p3}, Lcom/google/i18n/phonenumbers/g;-><init>(Lcom/google/i18n/phonenumbers/g$a;Ljava/lang/String;)V

    .line 72
    throw p1

    .line 73
    .line 74
    :cond_5
    if-eqz p2, :cond_9

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/j;->a()I

    .line 78
    move-result p1

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 82
    move-result-object v2

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v3

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 90
    move-result v4

    .line 91
    .line 92
    if-eqz v4, :cond_9

    .line 93
    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 98
    move-result v2

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 102
    move-result-object v2

    .line 103
    .line 104
    .line 105
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/j;->c()Lcom/google/i18n/phonenumbers/l;

    .line 109
    move-result-object v2

    .line 110
    const/4 v3, 0x0

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v4, p2, v3}, Lcom/google/i18n/phonenumbers/h;->t(Ljava/lang/StringBuilder;Lcom/google/i18n/phonenumbers/j;Ljava/lang/StringBuilder;)Z

    .line 114
    .line 115
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/h;->matcherApi:Lcom/google/i18n/phonenumbers/internal/a;

    .line 116
    .line 117
    .line 118
    invoke-interface {v3, v0, v2, v1}, Lcom/google/i18n/phonenumbers/internal/a;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/l;Z)Z

    .line 119
    move-result v3

    .line 120
    .line 121
    if-nez v3, :cond_6

    .line 122
    .line 123
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/h;->matcherApi:Lcom/google/i18n/phonenumbers/internal/a;

    .line 124
    .line 125
    .line 126
    invoke-interface {v3, v4, v2, v1}, Lcom/google/i18n/phonenumbers/internal/a;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/l;Z)Z

    .line 127
    move-result v2

    .line 128
    .line 129
    if-nez v2, :cond_7

    .line 130
    .line 131
    .line 132
    :cond_6
    invoke-direct {p0, v0, p2}, Lcom/google/i18n/phonenumbers/h;->E(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/j;)Lcom/google/i18n/phonenumbers/h$d;

    .line 133
    move-result-object p2

    .line 134
    .line 135
    sget-object v0, Lcom/google/i18n/phonenumbers/h$d;->TOO_LONG:Lcom/google/i18n/phonenumbers/h$d;

    .line 136
    .line 137
    if-ne p2, v0, :cond_9

    .line 138
    .line 139
    .line 140
    :cond_7
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    if-eqz p4, :cond_8

    .line 143
    .line 144
    sget-object p2, Lcom/google/i18n/phonenumbers/m$a;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/google/i18n/phonenumbers/m$a;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p5, p2}, Lcom/google/i18n/phonenumbers/m;->r(Lcom/google/i18n/phonenumbers/m$a;)Lcom/google/i18n/phonenumbers/m;

    .line 148
    .line 149
    .line 150
    :cond_8
    invoke-virtual {p5, p1}, Lcom/google/i18n/phonenumbers/m;->q(I)Lcom/google/i18n/phonenumbers/m;

    .line 151
    return p1

    .line 152
    .line 153
    .line 154
    :cond_9
    invoke-virtual {p5, v1}, Lcom/google/i18n/phonenumbers/m;->q(I)Lcom/google/i18n/phonenumbers/m;

    .line 155
    return v1
.end method

.method r(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lcom/google/i18n/phonenumbers/h;->EXTN_PATTERN:Ljava/util/regex/Pattern;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    .line 17
    move-result v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/h;->p(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x1

    .line 33
    .line 34
    :goto_0
    if-gt v2, v1, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    .line 48
    move-result v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 52
    move-result v2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 56
    return-object v1

    .line 57
    .line 58
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_1
    const-string p1, ""

    .line 62
    return-object p1
.end method

.method s(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/m$a;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object p1, Lcom/google/i18n/phonenumbers/m$a;->FROM_DEFAULT_COUNTRY:Lcom/google/i18n/phonenumbers/m$a;

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/google/i18n/phonenumbers/h;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    const/4 p2, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    .line 26
    move-result v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/h;->u(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    sget-object p1, Lcom/google/i18n/phonenumbers/m$a;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/google/i18n/phonenumbers/m$a;

    .line 35
    return-object p1

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h;->regexCache:Lcom/google/i18n/phonenumbers/internal/c;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p2}, Lcom/google/i18n/phonenumbers/internal/c;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/h;->u(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, p2, p1}, Lcom/google/i18n/phonenumbers/h;->B(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    sget-object p1, Lcom/google/i18n/phonenumbers/m$a;->FROM_NUMBER_WITH_IDD:Lcom/google/i18n/phonenumbers/m$a;

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_2
    sget-object p1, Lcom/google/i18n/phonenumbers/m$a;->FROM_DEFAULT_COUNTRY:Lcom/google/i18n/phonenumbers/m$a;

    .line 56
    :goto_0
    return-object p1
.end method

.method t(Ljava/lang/StringBuilder;Lcom/google/i18n/phonenumbers/j;Ljava/lang/StringBuilder;)Z
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/j;->f()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_7

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 15
    move-result v3

    .line 16
    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_0
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/h;->regexCache:Lcom/google/i18n/phonenumbers/internal/c;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v1}, Lcom/google/i18n/phonenumbers/internal/c;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    .line 33
    move-result v3

    .line 34
    .line 35
    if-eqz v3, :cond_7

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/j;->c()Lcom/google/i18n/phonenumbers/l;

    .line 39
    move-result-object v3

    .line 40
    .line 41
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/h;->matcherApi:Lcom/google/i18n/phonenumbers/internal/a;

    .line 42
    .line 43
    .line 44
    invoke-interface {v4, p1, v3, v2}, Lcom/google/i18n/phonenumbers/internal/a;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/l;Z)Z

    .line 45
    move-result v4

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    .line 49
    move-result v5

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/j;->g()Ljava/lang/String;

    .line 53
    move-result-object p2

    .line 54
    const/4 v6, 0x1

    .line 55
    .line 56
    if-eqz p2, :cond_4

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 60
    move-result v7

    .line 61
    .line 62
    if-eqz v7, :cond_4

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 66
    move-result-object v7

    .line 67
    .line 68
    if-nez v7, :cond_1

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-direct {v7, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object p2

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7, v2, v0, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    if-eqz v4, :cond_2

    .line 84
    .line 85
    iget-object p2, p0, Lcom/google/i18n/phonenumbers/h;->matcherApi:Lcom/google/i18n/phonenumbers/internal/a;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    .line 92
    invoke-interface {p2, v0, v3, v2}, Lcom/google/i18n/phonenumbers/internal/a;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/l;Z)Z

    .line 93
    move-result p2

    .line 94
    .line 95
    if-nez p2, :cond_2

    .line 96
    return v2

    .line 97
    .line 98
    :cond_2
    if-eqz p3, :cond_3

    .line 99
    .line 100
    if-le v5, v6, :cond_3

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 104
    move-result-object p2

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 111
    move-result p2

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object p3

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v2, p2, p3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    return v6

    .line 120
    .line 121
    :cond_4
    :goto_0
    if-eqz v4, :cond_5

    .line 122
    .line 123
    iget-object p2, p0, Lcom/google/i18n/phonenumbers/h;->matcherApi:Lcom/google/i18n/phonenumbers/internal/a;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    .line 127
    move-result v0

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    .line 131
    move-result-object v0

    .line 132
    .line 133
    .line 134
    invoke-interface {p2, v0, v3, v2}, Lcom/google/i18n/phonenumbers/internal/a;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/l;Z)Z

    .line 135
    move-result p2

    .line 136
    .line 137
    if-nez p2, :cond_5

    .line 138
    return v2

    .line 139
    .line 140
    :cond_5
    if-eqz p3, :cond_6

    .line 141
    .line 142
    if-lez v5, :cond_6

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 146
    move-result-object p2

    .line 147
    .line 148
    if-eqz p2, :cond_6

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 152
    move-result-object p2

    .line 153
    .line 154
    .line 155
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    :cond_6
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    .line 159
    move-result p2

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v2, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 163
    return v6

    .line 164
    :cond_7
    :goto_1
    return v2
.end method

.method public y(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/m;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/i18n/phonenumbers/g;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/i18n/phonenumbers/m;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/m;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/h;->z(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/i18n/phonenumbers/m;)V

    .line 9
    return-object v0
.end method

.method public z(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/i18n/phonenumbers/m;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/i18n/phonenumbers/g;
        }
    .end annotation

    .line 1
    const/4 v3, 0x0

    .line 2
    const/4 v4, 0x1

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v5, p3

    .line 7
    .line 8
    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/google/i18n/phonenumbers/h;->A(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/google/i18n/phonenumbers/m;)V

    .line 10
    return-void
.end method
