.class public Lcom/linkedin/urls/detection/DomainNameReader;
.super Ljava/lang/Object;
.source "DomainNameReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkedin/urls/detection/DomainNameReader$CharacterHandler;,
        Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;
    }
.end annotation


# static fields
.field private static final DNC_MIN_TOP_LEVEL_DOMAIN:I = 0x1

.field private static final HEX_ENCODED_DOT:Ljava/lang/String; = "2e"

.field private static final INTERNATIONAL_CHAR_START:I = 0xc0

.field private static final MAX_DOMAIN_LENGTH:I = 0xff

.field private static final MAX_IP_PART:I = 0xff

.field private static final MAX_LABEL_LENGTH:I = 0x40

.field private static final MAX_NUMBER_LABELS:I = 0x7f

.field private static final MAX_NUMERIC_DOMAIN_VALUE:J = 0xffffffffL

.field private static final MAX_TOP_LEVEL_DOMAIN:I = 0x16

.field private static final MIN_IP_PART:I = 0x0

.field private static final MIN_NUMERIC_DOMAIN_VALUE:J = 0x1010100L

.field private static final MIN_TOP_LEVEL_DOMAIN:I = 0x2


# instance fields
.field private _buffer:Lcom/linkedin/urls/detection/UrlBuffer;

.field private final _characterHandler:Lcom/linkedin/urls/detection/DomainNameReader$CharacterHandler;

.field private _current:Ljava/lang/String;

.field private _currentLabelLength:I

.field private _dots:I

.field private _numeric:Z

.field private _options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

.field private final _reader:Lcom/linkedin/urls/detection/InputTextReader;

.field private _schemeType:I

.field private _seenBracket:Z

.field private _seenCompleteBracketSet:Z

.field private _startDomainName:I

.field private _topLevelLength:I

.field private _zoneIndex:Z


# direct methods
.method public constructor <init>(Lcom/linkedin/urls/detection/InputTextReader;Lcom/linkedin/urls/detection/UrlBuffer;Ljava/lang/String;ILcom/linkedin/urls/detection/UrlDetectorOptions;Lcom/linkedin/urls/detection/DomainNameReader$CharacterHandler;)V
    .locals 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 136
    iput v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_dots:I

    .line 141
    iput v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    .line 146
    iput v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_topLevelLength:I

    .line 152
    iput v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_startDomainName:I

    .line 157
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_numeric:Z

    .line 162
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_seenBracket:Z

    .line 167
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_seenCompleteBracketSet:Z

    .line 172
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_zoneIndex:Z

    .line 196
    iput-object p2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    .line 197
    iput-object p3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_current:Ljava/lang/String;

    .line 198
    iput p4, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_schemeType:I

    .line 199
    iput-object p1, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    .line 200
    iput-object p5, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    .line 201
    iput-object p6, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_characterHandler:Lcom/linkedin/urls/detection/DomainNameReader$CharacterHandler;

    return-void
.end method

.method private checkDomainNameValid(Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;Ljava/lang/Character;)Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;
    .locals 7

    .line 454
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    .line 455
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v3}, Lcom/linkedin/urls/detection/UrlBuffer;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "%2e"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 457
    :goto_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v0

    iget v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_startDomainName:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    const/4 v4, 0x0

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    .line 458
    iget v1, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_dots:I

    iget v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    if-lez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v1, v3

    const/16 v3, 0xff

    if-ge v0, v3, :cond_13

    const/16 v0, 0x7f

    if-le v1, v0, :cond_3

    goto/16 :goto_6

    .line 461
    :cond_3
    iget-boolean v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_numeric:Z

    if-eqz v0, :cond_4

    goto/16 :goto_6

    .line 465
    :cond_4
    iget-boolean v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_seenBracket:Z

    if-eqz v0, :cond_5

    goto/16 :goto_6

    .line 469
    :cond_5
    iget v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    const/4 v1, 0x2

    if-lez v0, :cond_6

    iget v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_dots:I

    if-ge v0, v2, :cond_8

    :cond_6
    iget v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_dots:I

    if-lt v0, v1, :cond_7

    iget v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    sget-object v3, Lcom/linkedin/urls/detection/UrlDetectorOptions;->ALLOW_SINGLE_LEVEL_DOMAIN:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    .line 470
    invoke-virtual {v0, v3}, Lcom/linkedin/urls/detection/UrlDetectorOptions;->hasFlag(Lcom/linkedin/urls/detection/UrlDetectorOptions;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_dots:I

    if-nez v0, :cond_13

    .line 472
    :cond_8
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v0

    iget v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_topLevelLength:I

    sub-int/2addr v0, v3

    .line 473
    iget v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    if-nez v3, :cond_9

    add-int/lit8 v0, v0, -0x1

    .line 476
    :cond_9
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 479
    iget-object v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    const/4 v5, 0x4

    invoke-virtual {v3}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v3, v0, v5}, Lcom/linkedin/urls/detection/UrlBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "xn--"

    .line 482
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v4, 0x1

    goto/16 :goto_6

    .line 485
    :cond_a
    iget v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_topLevelLength:I

    iget v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_schemeType:I

    if-ne v3, v1, :cond_b

    const/4 v1, 0x1

    :cond_b
    if-lt v0, v1, :cond_c

    iget v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_topLevelLength:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_3

    :cond_c
    const/4 v0, 0x0

    .line 487
    :goto_3
    iget v1, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_dots:I

    if-lt v1, v2, :cond_12

    .line 489
    iget-object v1, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v1}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v1

    if-lez v1, :cond_d

    .line 490
    iget-object v1, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v1}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/linkedin/urls/detection/UrlBuffer;->charAt(I)C

    move-result v1

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_d

    .line 492
    iget-object p1, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {p1}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/linkedin/urls/detection/UrlBuffer;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 493
    sget-object p1, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ValidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    .line 494
    iget v1, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_dots:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_dots:I

    .line 498
    :cond_d
    iget-object v1, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v1}, Lcom/linkedin/urls/detection/UrlBuffer;->getBufferString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/linkedin/urls/detection/CharUtils;->splitByDot(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 499
    array-length v3, v1

    if-lez v3, :cond_13

    .line 501
    array-length v3, v1

    sub-int/2addr v3, v2

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 504
    iget v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_dots:I

    if-ne v3, v2, :cond_e

    sget-object v3, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ReadPath:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    if-eq p1, v3, :cond_e

    iget v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_schemeType:I

    if-nez v3, :cond_e

    const/4 v3, 0x1

    goto :goto_4

    :cond_e
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_f

    .line 506
    sget-object v3, Lcom/linkedin/urls/detection/DomainConstant;->URL_VALID_GTLD:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "co"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string/jumbo v3, "tv"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_5

    .line 508
    :cond_f
    sget-object v3, Lcom/linkedin/urls/detection/DomainConstant;->URL_VALID_GTLD:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    sget-object v3, Lcom/linkedin/urls/detection/DomainConstant;->URl_VALID_CCTLD:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_5

    :cond_10
    const/4 v2, 0x0

    :cond_11
    :goto_5
    and-int/2addr v0, v2

    move v2, v0

    move v4, v2

    goto :goto_6

    :cond_12
    move v4, v0

    :cond_13
    :goto_6
    if-eqz v4, :cond_15

    if-eqz p2, :cond_14

    .line 520
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-virtual {v0, p2}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    :cond_14
    return-object p1

    .line 527
    :cond_15
    iget-object p1, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {p1}, Lcom/linkedin/urls/detection/InputTextReader;->goBack()V

    .line 530
    sget-object p1, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->InvalidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    return-object p1
.end method

.method private readCurrent()Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;
    .locals 12

    .line 211
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_current:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 213
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_current:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/linkedin/urls/detection/CharUtils;->isDot(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    sget-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->InvalidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    return-object v0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_current:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_current:Ljava/lang/String;

    const-string v3, "%2e"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    sget-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->InvalidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    return-object v0

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v0

    iget-object v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_current:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_startDomainName:I

    .line 223
    iput-boolean v1, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_numeric:Z

    .line 228
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_current:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 229
    array-length v3, v0

    const/4 v4, 0x2

    if-le v3, v4, :cond_3

    .line 232
    aget-char v5, v0, v2

    const/16 v6, 0x30

    if-ne v5, v6, :cond_3

    aget-char v5, v0, v1

    const/16 v6, 0x78

    if-eq v5, v6, :cond_2

    aget-char v5, v0, v1

    const/16 v6, 0x58

    if-ne v5, v6, :cond_3

    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    move v7, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v4, v3, :cond_e

    if-nez v5, :cond_e

    .line 239
    aget-char v8, v0, v4

    .line 240
    iget v9, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    add-int/2addr v9, v1

    iput v9, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    .line 241
    iget v9, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    iput v9, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_topLevelLength:I

    const/16 v10, 0x40

    if-le v9, v10, :cond_5

    .line 245
    sget-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->InvalidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    return-object v0

    .line 246
    :cond_5
    invoke-static {v8}, Lcom/linkedin/urls/detection/CharUtils;->isDot(C)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 248
    iget v8, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_dots:I

    add-int/2addr v8, v1

    iput v8, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_dots:I

    .line 249
    iput v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    goto/16 :goto_5

    :cond_6
    const/16 v9, 0x5b

    if-ne v8, v9, :cond_7

    .line 251
    iput-boolean v1, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_seenBracket:Z

    .line 252
    iput-boolean v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_numeric:Z

    goto/16 :goto_5

    :cond_7
    const/16 v9, 0x25

    if-ne v8, v9, :cond_9

    add-int/lit8 v9, v4, 0x2

    if-ge v9, v3, :cond_9

    add-int/lit8 v10, v4, 0x1

    .line 253
    aget-char v11, v0, v10

    invoke-static {v11}, Lcom/linkedin/urls/detection/CharUtils;->isHex(C)Z

    move-result v11

    if-eqz v11, :cond_9

    aget-char v11, v0, v9

    .line 254
    invoke-static {v11}, Lcom/linkedin/urls/detection/CharUtils;->isHex(C)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 256
    aget-char v4, v0, v10

    const/16 v8, 0x32

    if-ne v4, v8, :cond_8

    aget-char v4, v0, v9

    const/16 v8, 0x65

    if-ne v4, v8, :cond_8

    .line 257
    iget v4, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_dots:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_dots:I

    .line 258
    iput v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    goto :goto_3

    .line 260
    :cond_8
    iput-boolean v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_numeric:Z

    :goto_3
    move v4, v9

    goto :goto_5

    :cond_9
    if-eqz v7, :cond_a

    .line 265
    invoke-static {v8}, Lcom/linkedin/urls/detection/CharUtils;->isHex(C)Z

    move-result v8

    if-nez v8, :cond_d

    .line 266
    iput-boolean v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_numeric:Z

    add-int/lit8 v4, v4, -0x1

    const/4 v7, 0x0

    goto :goto_5

    .line 270
    :cond_a
    invoke-static {v8}, Lcom/linkedin/urls/detection/CharUtils;->isAlpha(C)Z

    move-result v9

    if-nez v9, :cond_c

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_c

    const/16 v9, 0xc0

    if-lt v8, v9, :cond_b

    goto :goto_4

    .line 272
    :cond_b
    invoke-static {v8}, Lcom/linkedin/urls/detection/CharUtils;->isNumeric(C)Z

    move-result v8

    if-nez v8, :cond_d

    iget-object v8, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    sget-object v9, Lcom/linkedin/urls/detection/UrlDetectorOptions;->ALLOW_SINGLE_LEVEL_DOMAIN:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    invoke-virtual {v8, v9}, Lcom/linkedin/urls/detection/UrlDetectorOptions;->hasFlag(Lcom/linkedin/urls/detection/UrlDetectorOptions;)Z

    move-result v8

    if-nez v8, :cond_d

    add-int/lit8 v5, v4, 0x1

    .line 275
    iput v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    .line 276
    iput v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_topLevelLength:I

    .line 277
    iput-boolean v1, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_numeric:Z

    .line 278
    iput v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_dots:I

    move v6, v5

    const/4 v5, 0x1

    goto :goto_5

    .line 271
    :cond_c
    :goto_4
    iput-boolean v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_numeric:Z

    :cond_d
    :goto_5
    add-int/2addr v4, v1

    goto/16 :goto_2

    :cond_e
    if-lez v6, :cond_12

    .line 290
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_current:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v6, v0, :cond_f

    .line 291
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v1

    iget-object v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_current:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/linkedin/urls/detection/UrlBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iput v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_startDomainName:I

    .line 298
    :cond_f
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_current:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v6, v0, :cond_10

    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/UrlBuffer;->getBufferString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 299
    :cond_10
    sget-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->InvalidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    return-object v0

    .line 303
    :cond_11
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v0

    iput v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_startDomainName:I

    .line 307
    :cond_12
    sget-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ValidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    return-object v0
.end method


# virtual methods
.method public readDomainName()Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;
    .locals 10

    .line 318
    invoke-direct {p0}, Lcom/linkedin/urls/detection/DomainNameReader;->readCurrent()Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    move-result-object v0

    sget-object v1, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->InvalidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    if-ne v0, v1, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-nez v1, :cond_18

    .line 324
    iget-object v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v2}, Lcom/linkedin/urls/detection/InputTextReader;->eof()Z

    move-result v2

    if-nez v2, :cond_18

    .line 325
    iget-object v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v2}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_2

    .line 329
    sget-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ReadPath:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/linkedin/urls/detection/DomainNameReader;->checkDomainNameValid(Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;Ljava/lang/Character;)Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v3, 0x3a

    if-ne v2, v3, :cond_4

    .line 330
    iget-boolean v4, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_seenBracket:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_seenCompleteBracketSet:Z

    if-eqz v4, :cond_4

    .line 333
    :cond_3
    sget-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ReadPort:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/linkedin/urls/detection/DomainNameReader;->checkDomainNameValid(Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;Ljava/lang/Character;)Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    move-result-object v0

    return-object v0

    :cond_4
    const/16 v4, 0x3f

    if-ne v2, v4, :cond_5

    .line 336
    sget-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ReadQueryString:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/linkedin/urls/detection/DomainNameReader;->checkDomainNameValid(Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;Ljava/lang/Character;)Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    move-result-object v0

    return-object v0

    :cond_5
    const/16 v4, 0x23

    if-ne v2, v4, :cond_6

    .line 339
    sget-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ReadFragment:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/linkedin/urls/detection/DomainNameReader;->checkDomainNameValid(Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;Ljava/lang/Character;)Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    move-result-object v0

    return-object v0

    .line 340
    :cond_6
    invoke-static {v2}, Lcom/linkedin/urls/detection/CharUtils;->isDot(C)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_14

    const/4 v4, 0x2

    const/16 v6, 0x25

    if-ne v2, v6, :cond_7

    iget-object v7, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    .line 341
    invoke-virtual {v7, v4}, Lcom/linkedin/urls/detection/InputTextReader;->canReadChars(I)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v7, v4}, Lcom/linkedin/urls/detection/InputTextReader;->peek(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "2e"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto/16 :goto_2

    .line 369
    :cond_7
    iget-boolean v7, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_seenBracket:Z

    const/16 v8, 0x5b

    if-eqz v7, :cond_d

    invoke-static {v2}, Lcom/linkedin/urls/detection/CharUtils;->isHex(C)Z

    move-result v7

    const/16 v9, 0x5d

    if-nez v7, :cond_8

    if-eq v2, v3, :cond_8

    if-eq v2, v8, :cond_8

    if-eq v2, v9, :cond_8

    if-ne v2, v6, :cond_d

    :cond_8
    iget-boolean v7, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_seenCompleteBracketSet:Z

    if-nez v7, :cond_d

    if-eq v2, v6, :cond_c

    if-eq v2, v3, :cond_b

    if-eq v2, v8, :cond_a

    if-eq v2, v9, :cond_9

    .line 387
    iget v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    goto :goto_1

    .line 380
    :cond_9
    iput-boolean v5, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_seenCompleteBracketSet:Z

    .line 381
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_zoneIndex:Z

    goto :goto_1

    .line 377
    :cond_a
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->goBack()V

    .line 378
    sget-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->InvalidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    return-object v0

    .line 373
    :cond_b
    iput v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    goto :goto_1

    .line 384
    :cond_c
    iput-boolean v5, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_zoneIndex:Z

    .line 390
    :goto_1
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_numeric:Z

    .line 391
    iget-object v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v3, v2}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    goto/16 :goto_0

    .line 392
    :cond_d
    invoke-static {v2}, Lcom/linkedin/urls/detection/CharUtils;->isValidDomainChar(C)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 395
    iget-boolean v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_seenCompleteBracketSet:Z

    if-eqz v3, :cond_e

    .line 397
    iget-object v1, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v1}, Lcom/linkedin/urls/detection/InputTextReader;->goBack()V

    goto/16 :goto_3

    :cond_e
    const/16 v3, 0x78

    if-eq v2, v3, :cond_f

    const/16 v3, 0x58

    if-eq v2, v3, :cond_f

    .line 401
    invoke-static {v2}, Lcom/linkedin/urls/detection/CharUtils;->isNumeric(C)Z

    move-result v3

    if-nez v3, :cond_f

    .line 402
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_numeric:Z

    .line 406
    :cond_f
    iget-object v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v3, v2}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    .line 407
    iget v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    .line 408
    iget v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    iput v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_topLevelLength:I

    goto/16 :goto_0

    :cond_10
    if-ne v2, v8, :cond_11

    .line 410
    iget-boolean v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_seenBracket:Z

    if-nez v3, :cond_11

    .line 411
    iput-boolean v5, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_seenBracket:Z

    .line 412
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_numeric:Z

    .line 413
    iget-object v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v3, v2}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    goto/16 :goto_0

    :cond_11
    if-ne v2, v8, :cond_12

    .line 414
    iget-boolean v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_seenCompleteBracketSet:Z

    if-eqz v3, :cond_12

    .line 415
    iget-object v1, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v1}, Lcom/linkedin/urls/detection/InputTextReader;->goBack()V

    goto :goto_3

    :cond_12
    if-ne v2, v6, :cond_13

    .line 417
    iget-object v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v3, v4}, Lcom/linkedin/urls/detection/InputTextReader;->canReadChars(I)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v3, v0}, Lcom/linkedin/urls/detection/InputTextReader;->peekChar(I)C

    move-result v3

    invoke-static {v3}, Lcom/linkedin/urls/detection/CharUtils;->isHex(C)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    .line 418
    invoke-virtual {v3, v5}, Lcom/linkedin/urls/detection/InputTextReader;->peekChar(I)C

    move-result v3

    invoke-static {v3}, Lcom/linkedin/urls/detection/CharUtils;->isHex(C)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 420
    iget-object v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v3, v2}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    .line 421
    iget-object v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    iget-object v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v3}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    .line 422
    iget-object v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    iget-object v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v3}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    .line 423
    iget v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    .line 424
    iget v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    iput v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_topLevelLength:I

    goto/16 :goto_0

    .line 427
    :cond_13
    iget-object v1, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_characterHandler:Lcom/linkedin/urls/detection/DomainNameReader$CharacterHandler;

    invoke-interface {v1, v2}, Lcom/linkedin/urls/detection/DomainNameReader$CharacterHandler;->addCharacter(C)V

    goto :goto_3

    .line 345
    :cond_14
    :goto_2
    iget v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    if-ge v3, v5, :cond_15

    :goto_3
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 349
    :cond_15
    iget-object v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v3, v2}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    .line 353
    invoke-static {v2}, Lcom/linkedin/urls/detection/CharUtils;->isDot(C)Z

    move-result v2

    if-nez v2, :cond_16

    .line 354
    iget-object v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    iget-object v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v3}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    .line 355
    iget-object v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    iget-object v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v3}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    .line 359
    :cond_16
    iget-boolean v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_zoneIndex:Z

    if-nez v2, :cond_17

    .line 360
    iget v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_dots:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_dots:I

    .line 361
    iput v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    .line 365
    :cond_17
    iget v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    const/16 v3, 0x40

    if-lt v2, v3, :cond_1

    .line 366
    sget-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->InvalidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    return-object v0

    .line 435
    :cond_18
    sget-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ValidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/linkedin/urls/detection/DomainNameReader;->checkDomainNameValid(Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;Ljava/lang/Character;)Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    move-result-object v0

    return-object v0
.end method
