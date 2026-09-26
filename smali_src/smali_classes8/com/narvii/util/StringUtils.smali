.class public Lcom/narvii/util/StringUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CASE_INSENSITIVE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static EMOJI_PATTERN:Ljava/util/regex/Pattern;

.field private static TODAY_FMT:Ljava/text/SimpleDateFormat;

.field private static UUID_PATTERN:Ljava/util/regex/Pattern;

.field private static final hexDigits:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    .line 2
    const-string v0, "0"

    .line 3
    .line 4
    const-string v1, "1"

    .line 5
    .line 6
    const-string v2, "2"

    .line 7
    .line 8
    const-string v3, "3"

    .line 9
    .line 10
    const-string v4, "4"

    .line 11
    .line 12
    const-string v5, "5"

    .line 13
    .line 14
    const-string v6, "6"

    .line 15
    .line 16
    const-string v7, "7"

    .line 17
    .line 18
    const-string v8, "8"

    .line 19
    .line 20
    const-string v9, "9"

    .line 21
    .line 22
    const-string v10, "a"

    .line 23
    .line 24
    const-string v11, "b"

    .line 25
    .line 26
    const-string v12, "c"

    .line 27
    .line 28
    const-string v13, "d"

    .line 29
    .line 30
    const-string v14, "e"

    .line 31
    .line 32
    const-string v15, "f"

    .line 33
    .line 34
    .line 35
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    sput-object v0, Lcom/narvii/util/StringUtils;->hexDigits:[Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    .line 40
    .line 41
    sput-object v0, Lcom/narvii/util/StringUtils;->UUID_PATTERN:Ljava/util/regex/Pattern;

    .line 42
    .line 43
    sput-object v0, Lcom/narvii/util/StringUtils;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    .line 44
    .line 45
    sput-object v0, Lcom/narvii/util/StringUtils;->TODAY_FMT:Ljava/text/SimpleDateFormat;

    .line 46
    .line 47
    new-instance v0, Lcom/narvii/util/StringUtils$1;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0}, Lcom/narvii/util/StringUtils$1;-><init>()V

    .line 51
    .line 52
    sput-object v0, Lcom/narvii/util/StringUtils;->CASE_INSENSITIVE_COMPARATOR:Ljava/util/Comparator;

    .line 53
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

.method public static byteArrayToHexString([B)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v2, p0

    .line 8
    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    aget-byte v2, p0, v1

    .line 12
    .line 13
    .line 14
    invoke-static {v2}, Lcom/narvii/util/StringUtils;->byteToHexString(B)Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method private static byteToHexString(B)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    if-gez p0, :cond_0

    .line 3
    .line 4
    add-int/lit16 p0, p0, 0x100

    .line 5
    .line 6
    :cond_0
    shr-int/lit8 v0, p0, 0x4

    .line 7
    .line 8
    and-int/lit8 p0, p0, 0xf

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    sget-object v2, Lcom/narvii/util/StringUtils;->hexDigits:[Ljava/lang/String;

    .line 16
    .line 17
    aget-object v0, v2, v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    aget-object p0, v2, p0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 14
    move-result v2

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Ljava/lang/Character;->toTitleCase(C)C

    .line 18
    move-result v3

    .line 19
    .line 20
    if-ne v2, v3, :cond_1

    .line 21
    return-object p0

    .line 22
    .line 23
    :cond_1
    new-array v2, v0, [C

    .line 24
    .line 25
    aput-char v3, v2, v1

    .line 26
    const/4 v1, 0x1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 30
    .line 31
    .line 32
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    :cond_2
    :goto_0
    return-object p0
.end method

.method private static colorAppend(Ljava/lang/StringBuilder;I)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x10

    .line 3
    .line 4
    if-ge p1, v0, :cond_0

    .line 5
    .line 6
    const/16 v0, 0x30

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    and-int/lit16 p1, p1, 0xff

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :goto_0
    return-void
.end method

.method public static decodeJsonString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONTokener;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "\""

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    const/16 v1, 0x22

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lorg/json/JSONTokener;->nextString(C)Ljava/lang/String;

    .line 28
    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :catch_0
    return-object p0
.end method

.method public static formatColor(I)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const-string v1, "#"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/narvii/util/StringUtils;->colorAppend(Ljava/lang/StringBuilder;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/narvii/util/StringUtils;->colorAppend(Ljava/lang/StringBuilder;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 25
    move-result v1

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/narvii/util/StringUtils;->colorAppend(Ljava/lang/StringBuilder;I)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 32
    move-result p0

    .line 33
    .line 34
    const/16 v1, 0xff

    .line 35
    .line 36
    if-eq p0, v1, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-static {v0, p0}, Lcom/narvii/util/StringUtils;->colorAppend(Ljava/lang/StringBuilder;I)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public static getPureEmojiCount(Ljava/lang/String;)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    const-string v2, "[\\ud83c\\udc00-\\ud83c\\udfff]|[\\ud83d\\udc00-\\ud83d\\udfff]|[\\u2600-\\u27ff]"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    return v1

    .line 28
    .line 29
    :cond_1
    sget-object v0, Lcom/narvii/util/StringUtils;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    const/16 v0, 0x42

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    sput-object v0, Lcom/narvii/util/StringUtils;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    .line 40
    .line 41
    :cond_2
    sget-object v0, Lcom/narvii/util/StringUtils;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 45
    move-result-object p0

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 49
    move-result v0

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    return v1
.end method

.method public static varargs getStringForCommunityLocal(Lcom/narvii/app/NVContext;I[Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    const-string v1, "community"

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/narvii/community/CommunityService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 20
    move-result v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 28
    move-result-object p0

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    iget-object v0, v0, Lcom/narvii/model/Community;->primaryLanguage:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-static {p0, v0, p1, p2}, Lcom/narvii/util/StringUtils;->getStringForLang(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public static varargs getStringForLang(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const-string v0, "en"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    new-instance v0, Ljava/util/Locale;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_1
    :goto_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 26
    .line 27
    :goto_1
    new-instance p1, Landroid/content/res/Configuration;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-object p0

    .line 51
    .line 52
    .line 53
    :catch_0
    :cond_2
    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method

.method public static hex2bytes(Ljava/lang/String;)[B
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    div-int/lit8 v1, v0, 0x2

    .line 7
    .line 8
    new-array v1, v1, [B

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    :goto_0
    if-ge v2, v0, :cond_0

    .line 12
    .line 13
    div-int/lit8 v3, v2, 0x2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 17
    move-result v4

    .line 18
    .line 19
    const/16 v5, 0x10

    .line 20
    .line 21
    .line 22
    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    .line 23
    move-result v4

    .line 24
    .line 25
    shl-int/lit8 v4, v4, 0x4

    .line 26
    .line 27
    add-int/lit8 v6, v2, 0x1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 31
    move-result v6

    .line 32
    .line 33
    .line 34
    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    .line 35
    move-result v5

    .line 36
    add-int/2addr v4, v5

    .line 37
    int-to-byte v4, v4

    .line 38
    .line 39
    aput-byte v4, v1, v3

    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x2

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-object v1
.end method

.method public static isStringNotEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_0
    xor-int/2addr v0, v1

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    return v1

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-static {p0, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    move-result p0

    .line 24
    xor-int/2addr p0, v1

    .line 25
    return p0
.end method

.method public static isTrimEmpty(Ljava/lang/String;)Z
    .locals 0

    .line 1
    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    move-result p0

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method

.method public static isUuid(Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    const/16 v1, 0x24

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lcom/narvii/util/StringUtils;->UUID_PATTERN:Ljava/util/regex/Pattern;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, "([0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})"

    .line 18
    const/4 v1, 0x2

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    sput-object v0, Lcom/narvii/util/StringUtils;->UUID_PATTERN:Ljava/util/regex/Pattern;

    .line 25
    .line 26
    :cond_1
    sget-object v0, Lcom/narvii/util/StringUtils;->UUID_PATTERN:Ljava/util/regex/Pattern;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 34
    move-result p0

    .line 35
    return p0

    .line 36
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method public static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    const-string p0, ""

    .line 5
    return-object p0

    .line 6
    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 36
    move-result v2

    .line 37
    .line 38
    if-nez v2, :cond_1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    .line 43
    move-result v2

    .line 44
    .line 45
    if-lez v2, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    goto :goto_0

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-direct {v1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    .line 8
    :try_start_1
    const-string p0, "MD5"

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 20
    move-result-object p0

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lcom/narvii/util/StringUtils;->byteArrayToHexString([B)Ljava/lang/String;

    .line 24
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-object v0, v1

    .line 27
    :catch_1
    move-object p0, v0

    .line 28
    :goto_0
    return-object p0
.end method

.method public static parseColor(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 12
    move-result v0

    .line 13
    .line 14
    const/16 v1, 0x23

    .line 15
    .line 16
    if-ne v0, v1, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 20
    move-result v0

    .line 21
    .line 22
    const/16 v1, 0x9

    .line 23
    const/4 v2, 0x1

    .line 24
    .line 25
    const/16 v3, 0x10

    .line 26
    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 35
    move-result-wide v0

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    const-wide v2, 0xffffffffL

    .line 41
    and-long/2addr v0, v2

    .line 42
    long-to-int p0, v0

    .line 43
    .line 44
    and-int/lit16 v0, p0, 0xff

    .line 45
    .line 46
    ushr-int/lit8 v1, p0, 0x18

    .line 47
    .line 48
    and-int/lit16 v1, v1, 0xff

    .line 49
    .line 50
    ushr-int/lit8 v2, p0, 0x10

    .line 51
    .line 52
    and-int/lit16 v2, v2, 0xff

    .line 53
    .line 54
    ushr-int/lit8 p0, p0, 0x8

    .line 55
    .line 56
    and-int/lit16 p0, p0, 0xff

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    .line 60
    move-result p0

    .line 61
    return p0

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 65
    move-result v0

    .line 66
    const/4 v1, 0x7

    .line 67
    .line 68
    if-ne v0, v1, :cond_2

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    .line 74
    .line 75
    invoke-static {p0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 76
    move-result p0

    .line 77
    .line 78
    ushr-int/lit8 v0, p0, 0x10

    .line 79
    .line 80
    and-int/lit16 v0, v0, 0xff

    .line 81
    .line 82
    ushr-int/lit8 v1, p0, 0x8

    .line 83
    .line 84
    and-int/lit16 v1, v1, 0xff

    .line 85
    .line 86
    and-int/lit16 p0, p0, 0xff

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v1, p0}, Landroid/graphics/Color;->rgb(III)I

    .line 90
    move-result p0

    .line 91
    return p0

    .line 92
    .line 93
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 94
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    const-string v2, "malformed color "

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p0

    .line 111
    .line 112
    .line 113
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 114
    throw v0
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return p1

    .line 8
    .line 9
    .line 10
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 11
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return p0

    .line 13
    :catch_0
    return p1
.end method

.method public static parseLong(Ljava/lang/String;J)J
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-wide p1

    .line 8
    .line 9
    .line 10
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 11
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-wide p0

    .line 13
    :catch_0
    return-wide p1
.end method

.method public static parseUuids(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/StringUtils;->UUID_PATTERN:Ljava/util/regex/Pattern;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "([0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})"

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    sput-object v0, Lcom/narvii/util/StringUtils;->UUID_PATTERN:Ljava/util/regex/Pattern;

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lcom/narvii/util/StringUtils;->UUID_PATTERN:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 19
    move-result-object p0

    .line 20
    const/4 v0, 0x0

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    :cond_1
    const/4 v1, 0x1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_2
    if-nez v0, :cond_3

    .line 45
    .line 46
    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_3
    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/narvii/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    if-nez p2, :cond_1

    if-le v2, v1, :cond_2

    .line 5
    :cond_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v1, p1, :cond_4

    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ne v1, p0, :cond_5

    const-string p0, ""

    .line 12
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    return-object v0

    .line 13
    :cond_6
    :goto_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static todayString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/StringUtils;->TODAY_FMT:Ljava/text/SimpleDateFormat;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "yyyyMMdd"

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    sput-object v0, Lcom/narvii/util/StringUtils;->TODAY_FMT:Ljava/text/SimpleDateFormat;

    .line 15
    .line 16
    :cond_0
    sget-object v0, Lcom/narvii/util/StringUtils;->TODAY_FMT:Ljava/text/SimpleDateFormat;

    .line 17
    .line 18
    new-instance v1, Ljava/util/Date;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public static unescapeHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 10
    .line 11
    const-string v1, "&"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    :goto_0
    if-ltz v2, :cond_8

    .line 19
    .line 20
    add-int/lit8 v4, v2, 0x1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 24
    move-result v5

    .line 25
    .line 26
    const-string v6, ";"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 30
    move-result v7

    .line 31
    const/4 v8, -0x1

    .line 32
    .line 33
    if-eq v7, v8, :cond_7

    .line 34
    .line 35
    if-eq v5, v8, :cond_0

    .line 36
    .line 37
    if-ge v7, v5, :cond_7

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 41
    move-result-object v4

    .line 42
    .line 43
    :try_start_0
    const-string v9, "#"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 47
    move-result v9

    .line 48
    .line 49
    if-eqz v9, :cond_1

    .line 50
    const/4 v9, 0x1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 54
    move-result-object v9

    .line 55
    .line 56
    const/16 v10, 0xa

    .line 57
    .line 58
    .line 59
    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 60
    move-result v8

    .line 61
    goto :goto_1

    .line 62
    .line 63
    :cond_1
    const-string v9, "quot"

    .line 64
    .line 65
    .line 66
    invoke-static {v4, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 67
    move-result v9

    .line 68
    .line 69
    if-eqz v9, :cond_2

    .line 70
    .line 71
    const/16 v8, 0x22

    .line 72
    goto :goto_1

    .line 73
    .line 74
    :cond_2
    const-string v9, "amp"

    .line 75
    .line 76
    .line 77
    invoke-static {v4, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 78
    move-result v9

    .line 79
    .line 80
    if-eqz v9, :cond_3

    .line 81
    .line 82
    const/16 v8, 0x26

    .line 83
    goto :goto_1

    .line 84
    .line 85
    :cond_3
    const-string v9, "lt"

    .line 86
    .line 87
    .line 88
    invoke-static {v4, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 89
    move-result v9

    .line 90
    .line 91
    if-eqz v9, :cond_4

    .line 92
    .line 93
    const/16 v8, 0x3c

    .line 94
    goto :goto_1

    .line 95
    .line 96
    :cond_4
    const-string v9, "gt"

    .line 97
    .line 98
    .line 99
    invoke-static {v4, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 100
    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    if-eqz v9, :cond_5

    .line 103
    .line 104
    const/16 v8, 0x3e

    .line 105
    .line 106
    .line 107
    :catch_0
    :cond_5
    :goto_1
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 108
    move-result-object v2

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    .line 113
    add-int/lit8 v7, v7, 0x1

    .line 114
    .line 115
    if-ltz v8, :cond_6

    .line 116
    .line 117
    .line 118
    const v2, 0xffff

    .line 119
    .line 120
    if-gt v8, v2, :cond_6

    .line 121
    int-to-char v2, v8

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 125
    goto :goto_2

    .line 126
    .line 127
    .line 128
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    :goto_2
    move v3, v7

    .line 136
    :cond_7
    move v2, v5

    .line 137
    goto :goto_0

    .line 138
    .line 139
    .line 140
    :cond_8
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 141
    move-result-object p0

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 148
    move-result-object p0

    .line 149
    return-object p0
.end method
