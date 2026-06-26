.class public Lcom/narvii/model/QuizOption;
.super Ljava/lang/Object;
.source "QuizOption.java"


# static fields
.field private static final ascii:Ljava/nio/charset/Charset;

.field private static final mac:Ljavax/crypto/Mac;


# instance fields
.field public isCorrect:Ljava/lang/Boolean;

.field public mediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field public optId:Ljava/lang/String;

.field public qhash:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "HmacSHA1"

    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 24
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    .line 36
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v3, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 37
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 38
    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "no hmac algorithm"

    .line 40
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    :goto_0
    sput-object v2, Lcom/narvii/model/QuizOption;->mac:Ljavax/crypto/Mac;

    :try_start_1
    const-string v0, "US-ASCII"

    .line 46
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 48
    :catch_1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 50
    :goto_1
    sput-object v0, Lcom/narvii/model/QuizOption;->ascii:Ljava/nio/charset/Charset;

    return-void

    nop

    :array_0
    .array-data 1
        -0x7t
        0xct
        -0x78t
        0x5at
        0x6dt
        -0x5ct
        0x1dt
        0x57t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 90
    :cond_1
    instance-of v2, p1, Lcom/narvii/model/QuizOption;

    if-eqz v2, :cond_2

    .line 91
    check-cast p1, Lcom/narvii/model/QuizOption;

    .line 92
    iget-object v2, p1, Lcom/narvii/model/QuizOption;->optId:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/model/QuizOption;->optId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/narvii/model/QuizOption;->mediaList:Ljava/util/List;

    iget-object p1, p1, Lcom/narvii/model/QuizOption;->mediaList:Ljava/util/List;

    invoke-static {v2, p1}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getFirstMedia()Lcom/narvii/model/Media;
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/narvii/model/QuizOption;->mediaList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/QuizOption;->mediaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/narvii/model/QuizOption;->optId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCorrect(Ljava/lang/String;)Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/narvii/model/QuizOption;->isCorrect:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/QuizOption;->qhash:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/narvii/model/QuizOption;->mac:Ljavax/crypto/Mac;

    if-eqz v0, :cond_3

    .line 63
    invoke-virtual {v0}, Ljavax/crypto/Mac;->reset()V

    if-eqz p1, :cond_1

    .line 65
    sget-object v0, Lcom/narvii/model/QuizOption;->mac:Ljavax/crypto/Mac;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 67
    :cond_1
    iget-object p1, p0, Lcom/narvii/model/QuizOption;->optId:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 68
    sget-object v0, Lcom/narvii/model/QuizOption;->mac:Ljavax/crypto/Mac;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 70
    :cond_2
    sget-object p1, Lcom/narvii/model/QuizOption;->mac:Ljavax/crypto/Mac;

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Ljavax/crypto/Mac;->update(B)V

    .line 71
    sget-object p1, Lcom/narvii/model/QuizOption;->mac:Ljavax/crypto/Mac;

    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    const/4 v0, 0x3

    .line 72
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 73
    iget-object v0, p0, Lcom/narvii/model/QuizOption;->qhash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/narvii/model/QuizOption;->optId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/model/QuizOption;->qhash:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/narvii/model/QuizOption;->isCorrect:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
