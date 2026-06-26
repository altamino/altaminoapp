.class public Lcom/linkedin/urls/detection/UrlDetector;
.super Ljava/lang/Object;
.source "UrlDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;,
        Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;
    }
.end annotation


# instance fields
.field private _buffer:Lcom/linkedin/urls/detection/UrlBuffer;

.field private _characterMatch:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _currentUrlMarker:Lcom/linkedin/urls/UrlMarker;

.field private _dontMatchIpv6:Z

.field private final _options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

.field private _quoteStart:Z

.field private final _reader:Lcom/linkedin/urls/detection/InputTextReader;

.field private _schemeType:I

.field private _singleQuoteStart:Z

.field private _urlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/linkedin/urls/Entity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/linkedin/urls/detection/UrlDetectorOptions;)V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_schemeType:I

    .line 66
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_quoteStart:Z

    .line 71
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_singleQuoteStart:Z

    .line 76
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_dontMatchIpv6:Z

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_urlList:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_characterMatch:Ljava/util/HashMap;

    .line 93
    new-instance v0, Lcom/linkedin/urls/UrlMarker;

    invoke-direct {v0}, Lcom/linkedin/urls/UrlMarker;-><init>()V

    iput-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_currentUrlMarker:Lcom/linkedin/urls/UrlMarker;

    .line 115
    new-instance v0, Lcom/linkedin/urls/detection/InputTextReader;

    invoke-direct {v0, p1}, Lcom/linkedin/urls/detection/InputTextReader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    .line 116
    new-instance p1, Lcom/linkedin/urls/detection/UrlBuffer;

    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-direct {p1, v0}, Lcom/linkedin/urls/detection/UrlBuffer;-><init>(Lcom/linkedin/urls/detection/InputTextReader;)V

    iput-object p1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    .line 117
    iput-object p2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    return-void
.end method

.method static synthetic access$000(Lcom/linkedin/urls/detection/UrlDetector;C)Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/UrlDetector;->checkMatchingCharacter(C)Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    move-result-object p0

    return-object p0
.end method

.method private checkMatchingCharacter(C)Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;
    .locals 11

    const/16 v0, 0x22

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 365
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    sget-object v3, Lcom/linkedin/urls/detection/UrlDetectorOptions;->QUOTE_MATCH:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    invoke-virtual {v2, v3}, Lcom/linkedin/urls/detection/UrlDetectorOptions;->hasFlag(Lcom/linkedin/urls/detection/UrlDetectorOptions;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/16 v2, 0x27

    if-ne p1, v2, :cond_5

    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    sget-object v3, Lcom/linkedin/urls/detection/UrlDetectorOptions;->SINGLE_QUOTE_MATCH:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    .line 366
    invoke-virtual {v2, v3}, Lcom/linkedin/urls/detection/UrlDetectorOptions;->hasFlag(Lcom/linkedin/urls/detection/UrlDetectorOptions;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    if-ne p1, v0, :cond_2

    .line 369
    iget-boolean v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_quoteStart:Z

    .line 372
    iput-boolean v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_quoteStart:Z

    goto :goto_0

    .line 374
    :cond_2
    iget-boolean v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_singleQuoteStart:Z

    .line 377
    iput-boolean v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_singleQuoteStart:Z

    .line 381
    :goto_0
    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/UrlDetector;->getCharacterCount(C)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 382
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_characterMatch:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 385
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterMatchStart:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    goto :goto_2

    :cond_4
    :goto_1
    sget-object p1, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterMatchStop:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    :goto_2
    return-object p1

    .line 386
    :cond_5
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    sget-object v2, Lcom/linkedin/urls/detection/UrlDetectorOptions;->BRACKET_MATCH:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    invoke-virtual {v0, v2}, Lcom/linkedin/urls/detection/UrlDetectorOptions;->hasFlag(Lcom/linkedin/urls/detection/UrlDetectorOptions;)Z

    move-result v0

    const/16 v2, 0x28

    const/16 v3, 0x7b

    const/16 v4, 0x5b

    if-eqz v0, :cond_7

    if-eq p1, v4, :cond_6

    if-eq p1, v3, :cond_6

    if-ne p1, v2, :cond_7

    .line 388
    :cond_6
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_characterMatch:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/UrlDetector;->getCharacterCount(C)I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object p1, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterMatchStart:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    return-object p1

    .line 390
    :cond_7
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    sget-object v5, Lcom/linkedin/urls/detection/UrlDetectorOptions;->XML:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    invoke-virtual {v0, v5}, Lcom/linkedin/urls/detection/UrlDetectorOptions;->hasFlag(Lcom/linkedin/urls/detection/UrlDetectorOptions;)Z

    move-result v0

    const/16 v5, 0x3c

    if-eqz v0, :cond_8

    if-ne p1, v5, :cond_8

    .line 392
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_characterMatch:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/UrlDetector;->getCharacterCount(C)I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object p1, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterMatchStart:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    return-object p1

    .line 394
    :cond_8
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    sget-object v6, Lcom/linkedin/urls/detection/UrlDetectorOptions;->BRACKET_MATCH:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    invoke-virtual {v0, v6}, Lcom/linkedin/urls/detection/UrlDetectorOptions;->hasFlag(Lcom/linkedin/urls/detection/UrlDetectorOptions;)Z

    move-result v0

    const/16 v6, 0x7d

    const/16 v7, 0x29

    const/16 v8, 0x3e

    const/16 v9, 0x5d

    if-eqz v0, :cond_9

    if-eq p1, v9, :cond_a

    if-eq p1, v6, :cond_a

    if-eq p1, v7, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    sget-object v10, Lcom/linkedin/urls/detection/UrlDetectorOptions;->XML:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    .line 395
    invoke-virtual {v0, v10}, Lcom/linkedin/urls/detection/UrlDetectorOptions;->hasFlag(Lcom/linkedin/urls/detection/UrlDetectorOptions;)Z

    move-result v0

    if-eqz v0, :cond_10

    if-ne p1, v8, :cond_10

    .line 398
    :cond_a
    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/UrlDetector;->getCharacterCount(C)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_characterMatch:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    if-eq p1, v7, :cond_e

    if-eq p1, v8, :cond_d

    if-eq p1, v9, :cond_c

    if-eq p1, v6, :cond_b

    goto :goto_3

    :cond_b
    const/16 v1, 0x7b

    goto :goto_3

    :cond_c
    const/16 v1, 0x5b

    goto :goto_3

    :cond_d
    const/16 v1, 0x3c

    goto :goto_3

    :cond_e
    const/16 v1, 0x28

    .line 421
    :goto_3
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->getCharacterCount(C)I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le p1, v0, :cond_f

    sget-object p1, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterMatchStop:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    goto :goto_4

    :cond_f
    sget-object p1, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterMatchStart:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    :goto_4
    return-object p1

    .line 426
    :cond_10
    sget-object p1, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterNotMatched:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    return-object p1
.end method

.method private getCharacterCount(C)I
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_characterMatch:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 353
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method private goBackToRemoveInvalidPathEnd(I)Z
    .locals 6

    const/16 v0, 0x29

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    .line 804
    iget-object p1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    const/16 v3, 0x2f

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/linkedin/urls/detection/UrlBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    move v3, p1

    .line 807
    :goto_0
    iget-object v4, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v4}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v4

    if-ge p1, v4, :cond_4

    .line 808
    iget-object v4, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v4, p1}, Lcom/linkedin/urls/detection/UrlBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x28

    if-ne v4, v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    if-ne v4, v0, :cond_2

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    goto :goto_3

    :cond_1
    if-nez v1, :cond_3

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    :goto_1
    move v3, p1

    :cond_3
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 825
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    add-int/2addr v3, v2

    invoke-virtual {p1}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/linkedin/urls/detection/UrlBuffer;->delete(II)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    goto :goto_5

    .line 828
    :cond_5
    iget-object p1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {p1}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_4
    if-ltz p1, :cond_6

    .line 829
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v3, p1}, Lcom/linkedin/urls/detection/UrlBuffer;->charAt(I)C

    move-result v3

    .line 830
    invoke-static {v3}, Lcom/linkedin/urls/detection/CharUtils;->isValidPathEndChar(C)Z

    move-result v4

    if-nez v4, :cond_6

    if-eq v3, v0, :cond_6

    .line 831
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v1, p1}, Lcom/linkedin/urls/detection/UrlBuffer;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 832
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v1}, Lcom/linkedin/urls/detection/InputTextReader;->goBack()V

    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    return v1
.end method

.method private goBackToRemoveInvalidQueryEnd()Z
    .locals 4

    .line 675
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_0

    .line 676
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v3, v0}, Lcom/linkedin/urls/detection/UrlBuffer;->charAt(I)C

    move-result v3

    .line 677
    invoke-static {v3}, Lcom/linkedin/urls/detection/CharUtils;->isValidQueryEndChar(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 678
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v2, v0}, Lcom/linkedin/urls/detection/UrlBuffer;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 679
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v2}, Lcom/linkedin/urls/detection/InputTextReader;->goBack()V

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private processColon(I)I
    .locals 4

    .line 315
    iget v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_schemeType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 317
    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/UrlDetector;->readUserPass(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 319
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->goBack()V

    .line 320
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v2

    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v2}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Lcom/linkedin/urls/detection/UrlBuffer;->delete(II)Ljava/lang/StringBuilder;

    .line 322
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->getPosition()I

    move-result v0

    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v2}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr v0, p1

    .line 323
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v2, p1}, Lcom/linkedin/urls/detection/UrlBuffer;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/UrlDetector;->readDomainName(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 325
    iget-object p1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {p1, v0}, Lcom/linkedin/urls/detection/InputTextReader;->seek(I)V

    .line 326
    sget-object p1, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    goto :goto_0

    .line 330
    :cond_0
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->readScheme()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v3}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 331
    iput v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_schemeType:I

    .line 332
    iget-object p1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {p1}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result p1

    goto :goto_1

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    sget-object v3, Lcom/linkedin/urls/detection/UrlDetectorOptions;->ALLOW_SINGLE_LEVEL_DOMAIN:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    invoke-virtual {v0, v3}, Lcom/linkedin/urls/detection/UrlDetectorOptions;->hasFlag(Lcom/linkedin/urls/detection/UrlDetectorOptions;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    .line 334
    invoke-virtual {v0, v2}, Lcom/linkedin/urls/detection/InputTextReader;->canReadChars(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->goBack()V

    .line 336
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v2}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/linkedin/urls/detection/UrlBuffer;->delete(II)Ljava/lang/StringBuilder;

    .line 337
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/UrlBuffer;->getBufferString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readDomainName(Ljava/lang/String;)Z

    goto :goto_1

    .line 339
    :cond_2
    sget-object p1, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    :cond_3
    :goto_0
    const/4 p1, 0x0

    :cond_4
    :goto_1
    return p1
.end method

.method private readDefault()V
    .locals 7

    const/4 v0, 0x0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 154
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v2}, Lcom/linkedin/urls/detection/InputTextReader;->eof()Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_18

    .line 156
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v2}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v2

    .line 158
    iget-object v4, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v4}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Lcom/linkedin/urls/detection/CharUtils;->isValidDomainStartChar(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 159
    sget-object v1, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    goto :goto_0

    :cond_2
    const/16 v4, 0x20

    if-eq v2, v4, :cond_14

    const/16 v4, 0x23

    const/4 v5, 0x1

    if-eq v2, v4, :cond_11

    const/16 v4, 0x25

    if-eq v2, v4, :cond_f

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_e

    const/16 v4, 0x40

    if-eq v2, v4, :cond_d

    const/16 v4, 0x5b

    if-eq v2, v4, :cond_a

    const v4, 0xff03

    if-eq v2, v4, :cond_11

    const/16 v4, 0x2e

    if-eq v2, v4, :cond_9

    const/16 v4, 0x2f

    if-eq v2, v4, :cond_6

    .line 285
    invoke-direct {p0, v2}, Lcom/linkedin/urls/detection/UrlDetector;->checkMatchingCharacter(C)Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    move-result-object v4

    sget-object v5, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterNotMatched:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    if-ne v4, v5, :cond_4

    .line 286
    invoke-static {v2}, Lcom/linkedin/urls/detection/CharUtils;->isValidDomainChar(C)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    .line 297
    :cond_3
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v3, v2}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    goto :goto_1

    .line 287
    :cond_4
    :goto_2
    iget v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_schemeType:I

    if-ne v2, v3, :cond_5

    .line 289
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v2}, Lcom/linkedin/urls/detection/InputTextReader;->goBack()V

    .line 290
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v2, v1}, Lcom/linkedin/urls/detection/UrlBuffer;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readDomainName(Ljava/lang/String;)Z

    goto :goto_0

    .line 293
    :cond_5
    sget-object v1, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    goto :goto_0

    .line 237
    :cond_6
    iget v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_schemeType:I

    if-gtz v3, :cond_8

    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    sget-object v4, Lcom/linkedin/urls/detection/UrlDetectorOptions;->ALLOW_SINGLE_LEVEL_DOMAIN:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    invoke-virtual {v3, v4}, Lcom/linkedin/urls/detection/UrlDetectorOptions;->hasFlag(Lcom/linkedin/urls/detection/UrlDetectorOptions;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v3}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v3

    if-le v3, v5, :cond_7

    goto :goto_3

    .line 251
    :cond_7
    sget-object v1, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    .line 252
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v1, v2}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    .line 253
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->readHtml5Root()Z

    move-result v1

    iput v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_schemeType:I

    .line 254
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v1}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v1

    goto/16 :goto_1

    .line 244
    :cond_8
    :goto_3
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v2}, Lcom/linkedin/urls/detection/InputTextReader;->goBack()V

    .line 245
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v2, v1}, Lcom/linkedin/urls/detection/UrlBuffer;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readDomainName(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 197
    :cond_9
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v3, v2}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    .line 198
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v2, v1}, Lcom/linkedin/urls/detection/UrlBuffer;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readDomainName(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 210
    :cond_a
    iget-boolean v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_dontMatchIpv6:Z

    if-eqz v3, :cond_b

    .line 213
    invoke-direct {p0, v2}, Lcom/linkedin/urls/detection/UrlDetector;->checkMatchingCharacter(C)Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    move-result-object v3

    sget-object v4, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterNotMatched:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    if-eq v3, v4, :cond_b

    .line 214
    sget-object v1, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    const/4 v1, 0x0

    .line 218
    :cond_b
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v3}, Lcom/linkedin/urls/detection/InputTextReader;->getPosition()I

    move-result v3

    .line 221
    iget v4, p0, Lcom/linkedin/urls/detection/UrlDetector;->_schemeType:I

    if-nez v4, :cond_c

    .line 222
    iget-object v4, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v4}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v6

    invoke-virtual {v4, v0, v6}, Lcom/linkedin/urls/detection/UrlBuffer;->delete(II)Ljava/lang/StringBuilder;

    .line 224
    :cond_c
    iget-object v4, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v4, v2}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    .line 226
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v2, v1}, Lcom/linkedin/urls/detection/UrlBuffer;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readDomainName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v1, v3}, Lcom/linkedin/urls/detection/InputTextReader;->seek(I)V

    .line 229
    iput-boolean v5, p0, Lcom/linkedin/urls/detection/UrlDetector;->_dontMatchIpv6:Z

    goto/16 :goto_0

    .line 202
    :cond_d
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v3}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 203
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_currentUrlMarker:Lcom/linkedin/urls/UrlMarker;

    sget-object v4, Lcom/linkedin/urls/UrlPart;->USERNAME_PASSWORD:Lcom/linkedin/urls/UrlPart;

    invoke-virtual {v3, v4, v1}, Lcom/linkedin/urls/UrlMarker;->setIndex(Lcom/linkedin/urls/UrlPart;I)V

    .line 204
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v1, v2}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    const/4 v1, 0x0

    .line 205
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readDomainName(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 259
    :cond_e
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v3, v2}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    .line 260
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->processColon(I)I

    move-result v1

    goto/16 :goto_1

    .line 177
    :cond_f
    iget-object v4, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v4, v3}, Lcom/linkedin/urls/detection/InputTextReader;->canReadChars(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 178
    iget-object v4, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v4, v3}, Lcom/linkedin/urls/detection/InputTextReader;->peek(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3a"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 179
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v3, v2}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    .line 180
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v3}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    .line 181
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v3}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    .line 182
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->processColon(I)I

    move-result v1

    goto/16 :goto_1

    .line 183
    :cond_10
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v3, v0}, Lcom/linkedin/urls/detection/InputTextReader;->peekChar(I)C

    move-result v3

    invoke-static {v3}, Lcom/linkedin/urls/detection/CharUtils;->isHex(C)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v3, v5}, Lcom/linkedin/urls/detection/InputTextReader;->peekChar(I)C

    move-result v3

    invoke-static {v3}, Lcom/linkedin/urls/detection/CharUtils;->isHex(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v3, v2}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    .line 185
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v3}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    .line 186
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v3}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    .line 188
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v2, v1}, Lcom/linkedin/urls/detection/UrlBuffer;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readDomainName(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 264
    :cond_11
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v2}, Lcom/linkedin/urls/detection/InputTextReader;->getPosition()I

    move-result v2

    .line 265
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v3, v1}, Lcom/linkedin/urls/detection/UrlBuffer;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/linkedin/urls/detection/UrlDetector;->readDomainName(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 266
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v1, v2}, Lcom/linkedin/urls/detection/InputTextReader;->seek(I)V

    .line 267
    sget-object v1, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    .line 269
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v1}, Lcom/linkedin/urls/detection/InputTextReader;->getPosition()I

    move-result v1

    if-gt v1, v5, :cond_12

    .line 270
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->readHashtag()V

    goto/16 :goto_0

    .line 272
    :cond_12
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/linkedin/urls/detection/InputTextReader;->peekChar(I)C

    move-result v1

    const/16 v2, 0x26

    if-eq v1, v2, :cond_13

    .line 273
    invoke-static {v1}, Lcom/linkedin/urls/detection/CharUtils;->isHashtagAlphaChars(C)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-static {v1}, Lcom/linkedin/urls/detection/CharUtils;->isHashtagNumberChar(C)Z

    move-result v1

    if-nez v1, :cond_13

    .line 274
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->readHashtag()V

    goto/16 :goto_0

    .line 276
    :cond_13
    sget-object v1, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    goto/16 :goto_0

    .line 167
    :cond_14
    iget-object v4, p0, Lcom/linkedin/urls/detection/UrlDetector;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    sget-object v5, Lcom/linkedin/urls/detection/UrlDetectorOptions;->ALLOW_SINGLE_LEVEL_DOMAIN:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    invoke-virtual {v4, v5}, Lcom/linkedin/urls/detection/UrlDetectorOptions;->hasFlag(Lcom/linkedin/urls/detection/UrlDetectorOptions;)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v4}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v4

    if-lez v4, :cond_15

    iget v4, p0, Lcom/linkedin/urls/detection/UrlDetector;->_schemeType:I

    if-gtz v4, :cond_16

    :cond_15
    iget v4, p0, Lcom/linkedin/urls/detection/UrlDetector;->_schemeType:I

    if-ne v4, v3, :cond_17

    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    .line 168
    invoke-virtual {v3}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v3

    if-lez v3, :cond_17

    .line 169
    :cond_16
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v3}, Lcom/linkedin/urls/detection/InputTextReader;->goBack()V

    .line 170
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v3, v1}, Lcom/linkedin/urls/detection/UrlBuffer;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readDomainName(Ljava/lang/String;)Z

    .line 172
    :cond_17
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v1, v2}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    .line 173
    sget-object v1, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    goto/16 :goto_0

    .line 302
    :cond_18
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    sget-object v2, Lcom/linkedin/urls/detection/UrlDetectorOptions;->ALLOW_SINGLE_LEVEL_DOMAIN:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    invoke-virtual {v0, v2}, Lcom/linkedin/urls/detection/UrlDetectorOptions;->hasFlag(Lcom/linkedin/urls/detection/UrlDetectorOptions;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v0

    if-lez v0, :cond_19

    iget v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_schemeType:I

    if-gtz v0, :cond_1a

    :cond_19
    iget v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_schemeType:I

    if-ne v0, v3, :cond_1b

    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    .line 303
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1b

    .line 304
    :cond_1a
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0, v1}, Lcom/linkedin/urls/detection/UrlBuffer;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readDomainName(Ljava/lang/String;)Z

    :cond_1b
    return-void
.end method

.method private readDomainName(Ljava/lang/String;)Z
    .locals 10

    .line 583
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 584
    :goto_0
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_currentUrlMarker:Lcom/linkedin/urls/UrlMarker;

    sget-object v2, Lcom/linkedin/urls/UrlPart;->HOST:Lcom/linkedin/urls/UrlPart;

    invoke-virtual {v1, v2, v0}, Lcom/linkedin/urls/UrlMarker;->setIndex(Lcom/linkedin/urls/UrlPart;I)V

    .line 587
    new-instance v0, Lcom/linkedin/urls/detection/DomainNameReader;

    iget-object v4, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    iget-object v5, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    iget v7, p0, Lcom/linkedin/urls/detection/UrlDetector;->_schemeType:I

    const/4 v1, 0x2

    if-ne v7, v1, :cond_1

    sget-object v2, Lcom/linkedin/urls/detection/UrlDetectorOptions;->ALLOW_SINGLE_LEVEL_DOMAIN:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    :goto_1
    move-object v8, v2

    new-instance v9, Lcom/linkedin/urls/detection/UrlDetector$1;

    invoke-direct {v9, p0}, Lcom/linkedin/urls/detection/UrlDetector$1;-><init>(Lcom/linkedin/urls/detection/UrlDetector;)V

    move-object v3, v0

    move-object v6, p1

    invoke-direct/range {v3 .. v9}, Lcom/linkedin/urls/detection/DomainNameReader;-><init>(Lcom/linkedin/urls/detection/InputTextReader;Lcom/linkedin/urls/detection/UrlBuffer;Ljava/lang/String;ILcom/linkedin/urls/detection/UrlDetectorOptions;Lcom/linkedin/urls/detection/DomainNameReader$CharacterHandler;)V

    .line 597
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/DomainNameReader;->readDomainName()Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    move-result-object p1

    .line 598
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$2;->$SwitchMap$com$linkedin$urls$detection$DomainNameReader$ReaderNextState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    if-eq p1, v1, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    .line 610
    sget-object p1, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    move-result p1

    return p1

    .line 608
    :cond_2
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->readQueryString()Z

    move-result p1

    return p1

    .line 606
    :cond_3
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->readPort()Z

    move-result p1

    return p1

    .line 604
    :cond_4
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->readPath()Z

    move-result p1

    return p1

    .line 602
    :cond_5
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->readFragment()Z

    move-result p1

    return p1

    .line 600
    :cond_6
    sget-object p1, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->ValidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    move-result p1

    return p1
.end method

.method private readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z
    .locals 5

    .line 890
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->ValidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 892
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v0

    .line 893
    iget-boolean v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_quoteStart:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/linkedin/urls/detection/UrlBuffer;->charAt(I)C

    move-result v1

    const/16 v3, 0x22

    if-ne v1, v3, :cond_0

    .line 894
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v1, v2, v0}, Lcom/linkedin/urls/detection/UrlBuffer;->delete(II)Ljava/lang/StringBuilder;

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_currentUrlMarker:Lcom/linkedin/urls/UrlMarker;

    sget-object v1, Lcom/linkedin/urls/UrlPart;->USERNAME_PASSWORD:Lcom/linkedin/urls/UrlPart;

    invoke-virtual {v0, v1}, Lcom/linkedin/urls/UrlMarker;->indexOf(Lcom/linkedin/urls/UrlPart;)I

    move-result v0

    if-gez v0, :cond_1

    .line 899
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/UrlBuffer;->getBufferString()Ljava/lang/String;

    move-result-object v0

    .line 900
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v1}, Lcom/linkedin/urls/detection/UrlBuffer;->getStartIndex()I

    move-result v1

    .line 901
    new-instance v2, Lcom/linkedin/urls/Entity;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    sget-object v4, Lcom/linkedin/urls/Entity$Type;->URL:Lcom/linkedin/urls/Entity$Type;

    invoke-direct {v2, v1, v3, v0, v4}, Lcom/linkedin/urls/Entity;-><init>(IILjava/lang/String;Lcom/linkedin/urls/Entity$Type;)V

    .line 902
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_urlList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    :cond_1
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/linkedin/urls/detection/UrlBuffer;->delete(II)Ljava/lang/StringBuilder;

    .line 910
    iput-boolean v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_quoteStart:Z

    .line 911
    iput v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_schemeType:I

    .line 912
    iput-boolean v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_dontMatchIpv6:Z

    .line 913
    new-instance v0, Lcom/linkedin/urls/UrlMarker;

    invoke-direct {v0}, Lcom/linkedin/urls/UrlMarker;-><init>()V

    iput-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_currentUrlMarker:Lcom/linkedin/urls/UrlMarker;

    .line 916
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->ValidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    if-ne p1, v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private readFragment()Z
    .locals 3

    .line 619
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_currentUrlMarker:Lcom/linkedin/urls/UrlMarker;

    sget-object v1, Lcom/linkedin/urls/UrlPart;->FRAGMENT:Lcom/linkedin/urls/UrlPart;

    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v2}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/linkedin/urls/UrlMarker;->setIndex(Lcom/linkedin/urls/UrlPart;I)V

    .line 621
    :goto_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->eof()Z

    move-result v0

    if-nez v0, :cond_2

    .line 622
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 625
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->checkMatchingCharacter(C)Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    move-result-object v1

    sget-object v2, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterNotMatched:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 630
    :cond_0
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v1, v0}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    goto :goto_0

    .line 626
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->goBackToRemoveInvalidQueryEnd()Z

    .line 627
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->ValidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    move-result v0

    return v0

    .line 633
    :cond_2
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->goBackToRemoveInvalidQueryEnd()Z

    .line 635
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->ValidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    move-result v0

    return v0
.end method

.method private readHashtag()V
    .locals 5

    const/4 v0, 0x0

    .line 849
    :goto_0
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v1}, Lcom/linkedin/urls/detection/InputTextReader;->eof()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 850
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v1}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v1

    .line 852
    invoke-static {v1}, Lcom/linkedin/urls/detection/CharUtils;->isHashtagNumberChar(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 853
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v2, v1}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    goto :goto_0

    .line 854
    :cond_0
    invoke-static {v1}, Lcom/linkedin/urls/detection/CharUtils;->isHashtagAlphaChars(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 855
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0, v1}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    const/4 v0, 0x1

    goto :goto_0

    .line 858
    :cond_1
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v3}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 860
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    const v0, 0xff03

    if-eq v1, v0, :cond_3

    const/16 v0, 0x23

    if-eq v1, v0, :cond_3

    .line 863
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/UrlBuffer;->getBufferString()Ljava/lang/String;

    move-result-object v0

    .line 864
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v1}, Lcom/linkedin/urls/detection/InputTextReader;->getPosition()I

    move-result v1

    sub-int/2addr v1, v2

    .line 865
    new-instance v3, Lcom/linkedin/urls/Entity;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, v1, v4

    sub-int/2addr v4, v2

    sget-object v2, Lcom/linkedin/urls/Entity$Type;->HASHTAG:Lcom/linkedin/urls/Entity$Type;

    invoke-direct {v3, v4, v1, v0, v2}, Lcom/linkedin/urls/Entity;-><init>(IILjava/lang/String;Lcom/linkedin/urls/Entity$Type;)V

    .line 866
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_urlList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    :cond_3
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    :goto_1
    return-void

    .line 873
    :cond_4
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v1}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v1

    if-lez v1, :cond_5

    if-eqz v0, :cond_5

    .line 874
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/UrlBuffer;->getBufferString()Ljava/lang/String;

    move-result-object v0

    .line 875
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v1}, Lcom/linkedin/urls/detection/InputTextReader;->getTotalLength()I

    move-result v1

    .line 876
    new-instance v3, Lcom/linkedin/urls/Entity;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, v1, v4

    sub-int/2addr v4, v2

    sget-object v2, Lcom/linkedin/urls/Entity$Type;->HASHTAG:Lcom/linkedin/urls/Entity$Type;

    invoke-direct {v3, v4, v1, v0, v2}, Lcom/linkedin/urls/Entity;-><init>(IILjava/lang/String;Lcom/linkedin/urls/Entity$Type;)V

    .line 877
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_urlList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    :cond_5
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    return-void
.end method

.method private readHtml5Root()Z
    .locals 3

    .line 436
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->eof()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_1

    .line 443
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v1, v0}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    const/4 v0, 0x1

    return v0

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->goBack()V

    .line 448
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    return v1
.end method

.method private readPath()Z
    .locals 4

    .line 739
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_currentUrlMarker:Lcom/linkedin/urls/UrlMarker;

    sget-object v1, Lcom/linkedin/urls/UrlPart;->PATH:Lcom/linkedin/urls/UrlPart;

    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v2}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/linkedin/urls/UrlMarker;->setIndex(Lcom/linkedin/urls/UrlPart;I)V

    const/4 v0, 0x0

    .line 741
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v1}, Lcom/linkedin/urls/detection/InputTextReader;->eof()Z

    move-result v1

    if-nez v1, :cond_c

    .line 743
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v1}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_b

    .line 745
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->checkMatchingCharacter(C)Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    move-result-object v2

    sget-object v3, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterNotMatched:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v2, 0x3f

    if-ne v1, v2, :cond_3

    .line 754
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->goBackToRemoveInvalidPathEnd(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 755
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->ValidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    move-result v0

    return v0

    .line 757
    :cond_2
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0, v1}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    .line 758
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->readQueryString()Z

    move-result v0

    return v0

    :cond_3
    const/16 v2, 0x23

    if-ne v1, v2, :cond_5

    if-eqz v0, :cond_4

    .line 762
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->goBackToRemoveInvalidPathEnd(I)Z

    .line 763
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->ValidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    move-result v0

    return v0

    .line 766
    :cond_4
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0, v1}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    .line 767
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->readFragment()Z

    move-result v0

    return v0

    :cond_5
    const/16 v2, 0x28

    if-ne v1, v2, :cond_6

    add-int/lit8 v0, v0, 0x1

    .line 770
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v2, v1}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    goto :goto_0

    :cond_6
    const/16 v2, 0x29

    if-ne v1, v2, :cond_7

    add-int/lit8 v0, v0, -0x1

    .line 773
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v2, v1}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    if-gez v0, :cond_0

    .line 775
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->goBackToRemoveInvalidPathEnd(I)Z

    .line 776
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->ValidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    move-result v0

    return v0

    :cond_7
    const/16 v2, 0x2f

    if-ne v1, v2, :cond_9

    if-eqz v0, :cond_8

    .line 780
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->goBackToRemoveInvalidPathEnd(I)Z

    .line 781
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->ValidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    move-result v0

    return v0

    .line 783
    :cond_8
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v2, v1}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    goto/16 :goto_0

    .line 784
    :cond_9
    invoke-static {v1}, Lcom/linkedin/urls/detection/CharUtils;->isValidPathChar(C)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 786
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v2, v1}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    goto/16 :goto_0

    .line 789
    :cond_a
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->goBackToRemoveInvalidPathEnd(I)Z

    .line 790
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->ValidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    move-result v0

    return v0

    .line 747
    :cond_b
    :goto_1
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->goBackToRemoveInvalidPathEnd(I)Z

    .line 748
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->ValidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    move-result v0

    return v0

    .line 793
    :cond_c
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->goBackToRemoveInvalidPathEnd(I)Z

    .line 795
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->ValidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    move-result v0

    return v0
.end method

.method private readPort()Z
    .locals 5

    .line 693
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_currentUrlMarker:Lcom/linkedin/urls/UrlMarker;

    sget-object v1, Lcom/linkedin/urls/UrlPart;->PORT:Lcom/linkedin/urls/UrlPart;

    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v2}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/linkedin/urls/UrlMarker;->setIndex(Lcom/linkedin/urls/UrlPart;I)V

    const/4 v0, 0x0

    .line 696
    :goto_0
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v1}, Lcom/linkedin/urls/detection/InputTextReader;->eof()Z

    move-result v1

    if-nez v1, :cond_6

    .line 698
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v1}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    const/16 v3, 0x2f

    if-ne v1, v3, :cond_0

    .line 703
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0, v1}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    .line 704
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->readPath()Z

    move-result v0

    return v0

    :cond_0
    const/16 v3, 0x3f

    if-ne v1, v3, :cond_1

    .line 707
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0, v1}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    .line 708
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->readQueryString()Z

    move-result v0

    return v0

    :cond_1
    const/16 v3, 0x23

    if-ne v1, v3, :cond_2

    .line 711
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0, v1}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    .line 712
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->readFragment()Z

    move-result v0

    return v0

    .line 713
    :cond_2
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->checkMatchingCharacter(C)Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    move-result-object v3

    sget-object v4, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterMatchStop:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    if-eq v3, v4, :cond_4

    invoke-static {v1}, Lcom/linkedin/urls/detection/CharUtils;->isNumeric(C)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 726
    :cond_3
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v2, v1}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    goto :goto_0

    .line 715
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v1}, Lcom/linkedin/urls/detection/InputTextReader;->goBack()V

    if-ne v0, v2, :cond_5

    .line 720
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v2}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/linkedin/urls/detection/UrlBuffer;->delete(II)Ljava/lang/StringBuilder;

    .line 722
    :cond_5
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_currentUrlMarker:Lcom/linkedin/urls/UrlMarker;

    sget-object v1, Lcom/linkedin/urls/UrlPart;->PORT:Lcom/linkedin/urls/UrlPart;

    invoke-virtual {v0, v1}, Lcom/linkedin/urls/UrlMarker;->unsetIndex(Lcom/linkedin/urls/UrlPart;)V

    .line 723
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->ValidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    move-result v0

    return v0

    .line 731
    :cond_6
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->ValidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    move-result v0

    return v0
.end method

.method private readQueryString()Z
    .locals 3

    .line 643
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_currentUrlMarker:Lcom/linkedin/urls/UrlMarker;

    sget-object v1, Lcom/linkedin/urls/UrlPart;->QUERY:Lcom/linkedin/urls/UrlPart;

    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v2}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/linkedin/urls/UrlMarker;->setIndex(Lcom/linkedin/urls/UrlPart;I)V

    .line 645
    :goto_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->eof()Z

    move-result v0

    if-nez v0, :cond_4

    .line 646
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    .line 652
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v1, v0}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    .line 653
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->readFragment()Z

    move-result v0

    return v0

    :cond_0
    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    .line 654
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->checkMatchingCharacter(C)Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    move-result-object v1

    sget-object v2, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterNotMatched:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 659
    :cond_1
    invoke-static {v0}, Lcom/linkedin/urls/detection/CharUtils;->isValidQueryChar(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 660
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v1, v0}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    goto :goto_0

    .line 662
    :cond_2
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->goBackToRemoveInvalidQueryEnd()Z

    .line 663
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->ValidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    move-result v0

    return v0

    .line 656
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->goBackToRemoveInvalidQueryEnd()Z

    .line 657
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->ValidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    move-result v0

    return v0

    .line 667
    :cond_4
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->goBackToRemoveInvalidQueryEnd()Z

    .line 669
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->ValidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    move-result v0

    return v0
.end method

.method private readScheme()I
    .locals 6

    .line 486
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 489
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v3}, Lcom/linkedin/urls/detection/InputTextReader;->eof()Z

    move-result v3

    if-nez v3, :cond_8

    .line 490
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v3}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_3

    .line 494
    iget-object v4, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v4, v3}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 497
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/UrlBuffer;->getBufferString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->validScheme(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 499
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_currentUrlMarker:Lcom/linkedin/urls/UrlMarker;

    sget-object v3, Lcom/linkedin/urls/UrlPart;->SCHEME:Lcom/linkedin/urls/UrlPart;

    invoke-virtual {v2, v3, v1}, Lcom/linkedin/urls/UrlMarker;->setIndex(Lcom/linkedin/urls/UrlPart;I)V

    return v0

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/16 v4, 0x20

    if-eq v3, v4, :cond_7

    .line 505
    invoke-direct {p0, v3}, Lcom/linkedin/urls/detection/UrlDetector;->checkMatchingCharacter(C)Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    move-result-object v4

    sget-object v5, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterNotMatched:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    if-eq v4, v5, :cond_4

    goto :goto_1

    :cond_4
    const/16 v4, 0x5b

    if-ne v3, v4, :cond_5

    .line 510
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->goBack()V

    return v1

    :cond_5
    if-gtz v0, :cond_6

    if-gtz v2, :cond_6

    .line 512
    invoke-static {v3}, Lcom/linkedin/urls/detection/CharUtils;->isAlpha(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 515
    :cond_6
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->goBack()V

    .line 516
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readUserPass(I)Z

    move-result v0

    return v0

    .line 507
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0, v3}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    :cond_8
    return v1
.end method

.method private readUserPass(I)Z
    .locals 8

    .line 533
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-nez v2, :cond_5

    .line 540
    iget-object v4, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v4}, Lcom/linkedin/urls/detection/InputTextReader;->eof()Z

    move-result v4

    if-nez v4, :cond_5

    .line 541
    iget-object v4, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v4}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v4

    const/16 v5, 0x40

    if-ne v4, v5, :cond_0

    .line 545
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v0, v4}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    .line 546
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_currentUrlMarker:Lcom/linkedin/urls/UrlMarker;

    sget-object v1, Lcom/linkedin/urls/UrlPart;->USERNAME_PASSWORD:Lcom/linkedin/urls/UrlPart;

    invoke-virtual {v0, v1, p1}, Lcom/linkedin/urls/UrlMarker;->setIndex(Lcom/linkedin/urls/UrlPart;I)V

    const-string p1, ""

    .line 547
    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/UrlDetector;->readDomainName(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 548
    :cond_0
    invoke-static {v4}, Lcom/linkedin/urls/detection/CharUtils;->isDot(C)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_4

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_1

    goto :goto_2

    :cond_1
    const/16 v5, 0x23

    if-eq v4, v5, :cond_3

    const/16 v5, 0x20

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_3

    .line 553
    invoke-direct {p0, v4}, Lcom/linkedin/urls/detection/UrlDetector;->checkMatchingCharacter(C)Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    move-result-object v5

    sget-object v7, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterNotMatched:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    if-eq v5, v7, :cond_2

    goto :goto_1

    .line 559
    :cond_2
    iget-object v5, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v5, v4}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v2, 0x1

    goto :goto_3

    .line 550
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v3, v4}, Lcom/linkedin/urls/detection/UrlBuffer;->append(C)V

    :goto_3
    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    .line 565
    iget-object p1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {p1}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result p1

    sub-int/2addr p1, v0

    .line 566
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Lcom/linkedin/urls/detection/UrlBuffer;

    invoke-virtual {v3}, Lcom/linkedin/urls/detection/UrlBuffer;->length()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/linkedin/urls/detection/UrlBuffer;->delete(II)Ljava/lang/StringBuilder;

    .line 568
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->getPosition()I

    move-result v0

    sub-int/2addr v0, p1

    sub-int/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 569
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0, p1}, Lcom/linkedin/urls/detection/InputTextReader;->seek(I)V

    return v1

    .line 573
    :cond_6
    sget-object p1, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    move-result p1

    return p1
.end method

.method private validNdcid(Ljava/lang/String;II)Z
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_1

    .line 473
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/linkedin/urls/detection/CharUtils;->isNumeric(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private validScheme(Ljava/lang/String;)I
    .locals 3

    const-string v0, "http://"

    .line 454
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "https://"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ndc://"

    .line 457
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "://"

    .line 460
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "narviiapp"

    .line 461
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x9

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-direct {p0, p1, v2, v0}, Lcom/linkedin/urls/detection/UrlDetector;->validNdcid(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "pebkitapp"

    .line 464
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-direct {p0, p1, v2, v0}, Lcom/linkedin/urls/detection/UrlDetector;->validNdcid(Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public detect()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/linkedin/urls/Entity;",
            ">;"
        }
    .end annotation

    .line 135
    :try_start_0
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->readDefault()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->getPosition()I

    move-result v0

    add-int/lit8 v1, v0, -0x32

    const/4 v2, 0x0

    .line 139
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x32

    .line 140
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v2}, Lcom/linkedin/urls/detection/InputTextReader;->getTotalLength()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed link detected, content = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v3, v1, v0}, Lcom/linkedin/urls/detection/InputTextReader;->getRangeContent(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UrlDetector"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_urlList:Ljava/util/ArrayList;

    return-object v0
.end method
