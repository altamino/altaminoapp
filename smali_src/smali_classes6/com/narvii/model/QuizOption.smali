.class public Lcom/narvii/model/QuizOption;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    const-string v0, "HmacSHA1"

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    new-array v1, v1, [B

    .line 7
    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 13
    .line 14
    .line 15
    invoke-direct {v3, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .line 26
    .line 27
    const-string/jumbo v1, "no hmac algorithm"

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    :goto_0
    sput-object v2, Lcom/narvii/model/QuizOption;->mac:Ljavax/crypto/Mac;

    .line 33
    .line 34
    :try_start_1
    const-string v0, "US-ASCII"

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 38
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 39
    goto :goto_1

    .line 40
    .line 41
    .line 42
    :catch_1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    :goto_1
    sput-object v0, Lcom/narvii/model/QuizOption;->ascii:Ljava/nio/charset/Charset;

    .line 46
    return-void

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ne p1, p0, :cond_1

    .line 8
    return v1

    .line 9
    .line 10
    :cond_1
    instance-of v2, p1, Lcom/narvii/model/QuizOption;

    .line 11
    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/model/QuizOption;

    .line 15
    .line 16
    iget-object v2, p1, Lcom/narvii/model/QuizOption;->optId:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/narvii/model/QuizOption;->optId:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    iget-object v2, p1, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result v2

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    iget-object v2, p0, Lcom/narvii/model/QuizOption;->mediaList:Ljava/util/List;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/narvii/model/QuizOption;->mediaList:Ljava/util/List;

    .line 39
    .line 40
    .line 41
    invoke-static {v2, p1}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    .line 42
    move-result p1

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    move v0, v1

    .line 46
    :cond_2
    return v0
.end method

.method public getFirstMedia()Lcom/narvii/model/Media;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/QuizOption;->mediaList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/QuizOption;->mediaList:Ljava/util/List;

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/model/Media;

    .line 20
    return-object v0
.end method

.method public hashCode()I
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
    iget-object v1, p0, Lcom/narvii/model/QuizOption;->optId:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 23
    move-result v0

    .line 24
    return v0
.end method

.method public isCorrect(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/QuizOption;->isCorrect:Ljava/lang/Boolean;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/QuizOption;->qhash:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    sget-object v0, Lcom/narvii/model/QuizOption;->mac:Ljavax/crypto/Mac;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljavax/crypto/Mac;->reset()V

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 30
    .line 31
    :cond_1
    iget-object p1, p0, Lcom/narvii/model/QuizOption;->optId:Ljava/lang/String;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 41
    .line 42
    :cond_2
    const/16 p1, 0x31

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update(B)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    .line 49
    move-result-object p1

    .line 50
    const/4 v0, 0x3

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/model/QuizOption;->qhash:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result p1

    .line 61
    return p1

    .line 62
    :cond_3
    const/4 p1, 0x0

    .line 63
    return p1
.end method

.method public toString()Ljava/lang/String;
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
    iget-object v1, p0, Lcom/narvii/model/QuizOption;->optId:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, " - "

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/model/QuizOption;->title:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, " ("

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/model/QuizOption;->qhash:Ljava/lang/String;

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/model/QuizOption;->isCorrect:Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, ")"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method
