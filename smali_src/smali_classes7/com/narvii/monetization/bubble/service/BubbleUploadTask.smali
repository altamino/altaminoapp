.class public Lcom/narvii/monetization/bubble/service/BubbleUploadTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

.field protected cid:I

.field protected conn:Ljava/net/HttpURLConnection;

.field private context:Lcom/narvii/app/NVContext;

.field protected ins:Ljava/io/InputStream;

.field localResources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected os:Ljava/io/OutputStream;

.field remoteResources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected request:Lcom/narvii/util/http/ApiRequest;

.field protected uploadListener:Lcom/narvii/monetization/bubble/service/BubbleUploadListener;

.field protected uploadingBubble:Lcom/narvii/model/BubbleInfo;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;ILcom/narvii/model/BubbleInfo;Lcom/narvii/monetization/bubble/service/BubbleUploadListener;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->os:Ljava/io/OutputStream;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->ins:Ljava/io/InputStream;

    .line 9
    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->localResources:Ljava/util/HashMap;

    .line 16
    .line 17
    new-instance v0, Ljava/util/HashMap;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->remoteResources:Ljava/util/HashMap;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->context:Lcom/narvii/app/NVContext;

    .line 25
    .line 26
    const-string v0, "bubble"

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    check-cast p1, Lcom/narvii/monetization/bubble/BubbleService;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 35
    .line 36
    iput p2, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->cid:I

    .line 37
    .line 38
    iput-object p3, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadingBubble:Lcom/narvii/model/BubbleInfo;

    .line 39
    .line 40
    iput-object p4, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadListener:Lcom/narvii/monetization/bubble/service/BubbleUploadListener;

    .line 41
    return-void
.end method

.method private checkAndConfigElementsResource(Lcom/narvii/model/BubbleInfo;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    const-string v1, "background"

    .line 7
    .line 8
    iget-object v2, p1, Lcom/narvii/model/BubbleInfo;->backgroundPath:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, v1, v2}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->getBubbleElementDownloadedFile(Lcom/narvii/model/BubbleInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 16
    move-result v2

    .line 17
    .line 18
    if-eqz v2, :cond_4

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 22
    move-result-wide v2

    .line 23
    .line 24
    const-wide/16 v4, 0x0

    .line 25
    .line 26
    cmp-long v2, v2, v4

    .line 27
    .line 28
    if-lez v2, :cond_4

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    iput-object v1, p1, Lcom/narvii/model/BubbleInfo;->backgroundPath:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v1, p1, Lcom/narvii/model/BubbleInfo;->slots:Ljava/util/List;

    .line 37
    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v2

    .line 47
    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    check-cast v2, Lcom/narvii/model/BubbleSlot;

    .line 55
    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    iget-object v3, v2, Lcom/narvii/model/BubbleSlot;->path:Ljava/lang/String;

    .line 59
    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    iget v3, v2, Lcom/narvii/model/BubbleSlot;->align:I

    .line 63
    .line 64
    iget v6, v2, Lcom/narvii/model/BubbleSlot;->x:I

    .line 65
    .line 66
    iget v7, v2, Lcom/narvii/model/BubbleSlot;->y:I

    .line 67
    .line 68
    .line 69
    invoke-static {v3, v6, v7}, Lcom/narvii/model/SlotPoint;->getSlotKey(III)Ljava/lang/String;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    iget-object v6, v2, Lcom/narvii/model/BubbleSlot;->path:Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, p1, v3, v6}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->getBubbleElementDownloadedFile(Lcom/narvii/model/BubbleInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 76
    move-result-object v3

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 80
    move-result v6

    .line 81
    .line 82
    if-eqz v6, :cond_2

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 86
    move-result-wide v6

    .line 87
    .line 88
    cmp-long v6, v6, v4

    .line 89
    .line 90
    if-lez v6, :cond_2

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 94
    move-result-object v3

    .line 95
    .line 96
    iput-object v3, v2, Lcom/narvii/model/BubbleSlot;->path:Ljava/lang/String;

    .line 97
    goto :goto_0

    .line 98
    :cond_2
    return v0

    .line 99
    :cond_3
    const/4 p1, 0x1

    .line 100
    return p1

    .line 101
    :cond_4
    return v0
.end method

.method private getBubbleElementDownloadedFile(Lcom/narvii/model/BubbleInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p3}, Lcom/narvii/util/Utils;->getSuffix(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p3

    .line 5
    .line 6
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->getUploadDir(Lcom/narvii/model/BubbleInfo;)Ljava/io/File;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    return-object v0
.end method

.method private getBubbleElementWritingFile(Lcom/narvii/model/BubbleInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p3}, Lcom/narvii/util/Utils;->getSuffix(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p3

    .line 5
    .line 6
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->getUploadDir(Lcom/narvii/model/BubbleInfo;)Ljava/io/File;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string p2, ".w"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    return-object v0
.end method

.method private getUploadConfigFile(Lcom/narvii/model/BubbleInfo;)Ljava/io/File;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->getUploadDir(Lcom/narvii/model/BubbleInfo;)Ljava/io/File;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v1, "config.json"

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    :cond_0
    :goto_0
    return-object v0
.end method

.method private getUploadDir(Lcom/narvii/model/BubbleInfo;)Ljava/io/File;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    iget-object v2, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/narvii/monetization/bubble/BubbleService;->uploadDir:Ljava/io/File;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "/"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->getWorkPath(Lcom/narvii/model/BubbleInfo;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 41
    move-result p1

    .line 42
    .line 43
    if-nez p1, :cond_0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 47
    :cond_0
    return-object v0
.end method

.method private getWorkPath(Lcom/narvii/model/BubbleInfo;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->isEditingMode(Lcom/narvii/model/BubbleInfo;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    const-string v1, "e_"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/model/BubbleInfo;->id:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    const-string v1, "t_"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/narvii/model/BubbleInfo;->templateId:Ljava/lang/String;

    .line 39
    goto :goto_0

    .line 40
    :goto_1
    return-object p1
.end method

.method private isAssetPath(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    .line 10
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-string v0, "assets://"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method private isEditingMode(Lcom/narvii/model/BubbleInfo;)Z
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/model/BubbleInfo;->id:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method private isLocalPath(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    .line 10
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-string v0, "file://"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method private isRemotePath(Ljava/lang/String;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    const-string v3, "http://"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-nez v2, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    const-string v0, "https://"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    :cond_2
    :goto_0
    return v1
.end method

.method private prepareElementsResources(Lcom/narvii/model/BubbleInfo;)V
    .locals 12

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/model/BubbleInfo;->backgroundPath:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->isRemotePath(Ljava/lang/String;)Z

    .line 6
    move-result v1

    .line 7
    .line 8
    const-string v2, "background"

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->remoteResources:Ljava/util/HashMap;

    .line 13
    .line 14
    iget-object v1, p1, Lcom/narvii/model/BubbleInfo;->backgroundPath:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-direct {p0, v0}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->isAssetPath(Ljava/lang/String;)Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->isLocalPath(Ljava/lang/String;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->localResources:Ljava/util/HashMap;

    .line 33
    .line 34
    iget-object v1, p1, Lcom/narvii/model/BubbleInfo;->backgroundPath:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    :cond_2
    :goto_0
    iget-object v0, p1, Lcom/narvii/model/BubbleInfo;->slots:Ljava/util/List;

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v1

    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    check-cast v1, Lcom/narvii/model/BubbleSlot;

    .line 58
    .line 59
    iget v2, v1, Lcom/narvii/model/BubbleSlot;->align:I

    .line 60
    .line 61
    iget v3, v1, Lcom/narvii/model/BubbleSlot;->x:I

    .line 62
    .line 63
    iget v4, v1, Lcom/narvii/model/BubbleSlot;->y:I

    .line 64
    .line 65
    .line 66
    invoke-static {v2, v3, v4}, Lcom/narvii/model/SlotPoint;->getSlotKey(III)Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    iget-object v3, v1, Lcom/narvii/model/BubbleSlot;->path:Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, v3}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->isRemotePath(Ljava/lang/String;)Z

    .line 73
    move-result v3

    .line 74
    .line 75
    if-eqz v3, :cond_3

    .line 76
    .line 77
    iget-object v3, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->remoteResources:Ljava/util/HashMap;

    .line 78
    .line 79
    iget-object v1, v1, Lcom/narvii/model/BubbleSlot;->path:Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    goto :goto_1

    .line 84
    .line 85
    :cond_3
    iget-object v3, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->localResources:Ljava/util/HashMap;

    .line 86
    .line 87
    iget-object v1, v1, Lcom/narvii/model/BubbleSlot;->path:Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    goto :goto_1

    .line 92
    .line 93
    :cond_4
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->localResources:Ljava/util/HashMap;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    .line 100
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    .line 104
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    move-result v1

    .line 106
    .line 107
    if-eqz v1, :cond_6

    .line 108
    .line 109
    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    check-cast v1, Ljava/util/Map$Entry;

    .line 114
    .line 115
    .line 116
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 117
    move-result-object v2

    .line 118
    .line 119
    check-cast v2, Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 123
    move-result-object v1

    .line 124
    .line 125
    check-cast v1, Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    invoke-direct {p0, p1, v2, v1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->getBubbleElementDownloadedFile(Lcom/narvii/model/BubbleInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 129
    move-result-object v2

    .line 130
    .line 131
    .line 132
    invoke-direct {p0, v1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->isAssetPath(Ljava/lang/String;)Z

    .line 133
    move-result v3

    .line 134
    .line 135
    if-eqz v3, :cond_5

    .line 136
    .line 137
    iget-object v3, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->context:Lcom/narvii/app/NVContext;

    .line 138
    .line 139
    .line 140
    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 141
    move-result-object v3

    .line 142
    .line 143
    .line 144
    invoke-static {v3, v1, v2}, Lcom/narvii/util/FileUtils;->moveFromAssetsToFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    .line 145
    goto :goto_2

    .line 146
    .line 147
    :cond_5
    new-instance v3, Ljava/io/File;

    .line 148
    .line 149
    .line 150
    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 151
    move-result-object v1

    .line 152
    .line 153
    .line 154
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 155
    .line 156
    .line 157
    :try_start_0
    invoke-static {v3, v2}, Lcom/narvii/util/Utils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    goto :goto_2

    .line 159
    :catch_0
    move-exception v1

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 163
    goto :goto_2

    .line 164
    .line 165
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->remoteResources:Ljava/util/HashMap;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 169
    move-result-object v0

    .line 170
    .line 171
    .line 172
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 173
    move-result-object v0

    .line 174
    .line 175
    .line 176
    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    move-result v1

    .line 178
    .line 179
    if-eqz v1, :cond_12

    .line 180
    .line 181
    .line 182
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    move-result-object v1

    .line 184
    .line 185
    check-cast v1, Ljava/util/Map$Entry;

    .line 186
    .line 187
    .line 188
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 189
    move-result-object v2

    .line 190
    .line 191
    check-cast v2, Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 195
    move-result-object v1

    .line 196
    .line 197
    check-cast v1, Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    invoke-direct {p0, p1, v2, v1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->getBubbleElementWritingFile(Lcom/narvii/model/BubbleInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 201
    move-result-object v3

    .line 202
    .line 203
    .line 204
    invoke-direct {p0, p1, v2, v1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->getBubbleElementDownloadedFile(Lcom/narvii/model/BubbleInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 205
    move-result-object v2

    .line 206
    .line 207
    new-instance v4, Ljava/net/URL;

    .line 208
    .line 209
    .line 210
    invoke-direct {v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->getProxyStack()Lcom/narvii/util/http/ProxyStack;

    .line 214
    move-result-object v1

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v4}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 218
    move-result-object v1

    .line 219
    .line 220
    iput-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->conn:Ljava/net/HttpURLConnection;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->check()Z

    .line 224
    move-result v1

    .line 225
    .line 226
    if-nez v1, :cond_9

    .line 227
    .line 228
    iget-object p1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadListener:Lcom/narvii/monetization/bubble/service/BubbleUploadListener;

    .line 229
    .line 230
    if-eqz p1, :cond_8

    .line 231
    .line 232
    const-string v0, "something wrong happened"

    .line 233
    .line 234
    .line 235
    invoke-interface {p1, v0}, Lcom/narvii/monetization/bubble/service/BubbleUploadListener;->onUploadFail(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    goto :goto_4

    .line 237
    :catchall_0
    move-exception p1

    .line 238
    .line 239
    goto/16 :goto_9

    .line 240
    .line 241
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->os:Ljava/io/OutputStream;

    .line 242
    .line 243
    .line 244
    invoke-static {p1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 245
    .line 246
    iget-object p1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->ins:Ljava/io/InputStream;

    .line 247
    .line 248
    .line 249
    invoke-static {p1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 250
    return-void

    .line 251
    .line 252
    .line 253
    :cond_9
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 254
    move-result-wide v5

    .line 255
    .line 256
    const-wide/16 v7, 0x0

    .line 257
    .line 258
    cmp-long v1, v5, v7

    .line 259
    .line 260
    if-lez v1, :cond_c

    .line 261
    .line 262
    iget-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->conn:Ljava/net/HttpURLConnection;

    .line 263
    .line 264
    const-string v9, "Range"

    .line 265
    .line 266
    new-instance v10, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    const-string v11, "bytes="

    .line 272
    .line 273
    .line 274
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    const-string v11, "-"

    .line 280
    .line 281
    .line 282
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    move-result-object v10

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v9, v10}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    iget-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->conn:Ljava/net/HttpURLConnection;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 295
    move-result v1

    .line 296
    .line 297
    const/16 v9, 0x1a0

    .line 298
    .line 299
    if-ne v1, v9, :cond_a

    .line 300
    .line 301
    const-string v1, "gif download range not satisfiable (416)"

    .line 302
    .line 303
    .line 304
    invoke-static {v1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 305
    .line 306
    :try_start_3
    iget-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->conn:Ljava/net/HttpURLConnection;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 310
    .line 311
    .line 312
    :catch_1
    :try_start_4
    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->getProxyStack()Lcom/narvii/util/http/ProxyStack;

    .line 313
    move-result-object v1

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1, v4}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 317
    move-result-object v1

    .line 318
    .line 319
    iput-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->conn:Ljava/net/HttpURLConnection;

    .line 320
    goto :goto_5

    .line 321
    .line 322
    :cond_a
    iget-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->conn:Ljava/net/HttpURLConnection;

    .line 323
    .line 324
    const-string v4, "Content-Range"

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 328
    move-result-object v1

    .line 329
    .line 330
    if-nez v1, :cond_b

    .line 331
    .line 332
    const-string v1, ""

    .line 333
    .line 334
    :cond_b
    const-string v4, "bytes (\\d+)-(\\d+)/(\\d+)"

    .line 335
    const/4 v9, 0x2

    .line 336
    .line 337
    .line 338
    invoke-static {v4, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 339
    move-result-object v4

    .line 340
    .line 341
    .line 342
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 343
    move-result-object v1

    .line 344
    .line 345
    .line 346
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 347
    move-result v4

    .line 348
    .line 349
    if-eqz v4, :cond_c

    .line 350
    const/4 v4, 0x1

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 354
    move-result-object v9

    .line 355
    .line 356
    .line 357
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 358
    move-result v9

    .line 359
    const/4 v10, 0x3

    .line 360
    .line 361
    .line 362
    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 363
    move-result-object v1

    .line 364
    .line 365
    .line 366
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 367
    int-to-long v9, v9

    .line 368
    .line 369
    cmp-long v1, v9, v5

    .line 370
    .line 371
    if-nez v1, :cond_c

    .line 372
    .line 373
    new-instance v1, Ljava/io/FileOutputStream;

    .line 374
    .line 375
    .line 376
    invoke-direct {v1, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 377
    .line 378
    iput-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->os:Ljava/io/OutputStream;

    .line 379
    .line 380
    :cond_c
    :goto_5
    iget-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->conn:Ljava/net/HttpURLConnection;

    .line 381
    .line 382
    .line 383
    invoke-static {v1}, Lcom/narvii/volley/util/HurlConnectionHelper;->getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    .line 384
    move-result-object v1

    .line 385
    .line 386
    iput-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->ins:Ljava/io/InputStream;

    .line 387
    .line 388
    .line 389
    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->check()Z

    .line 390
    move-result v1

    .line 391
    .line 392
    if-nez v1, :cond_d

    .line 393
    .line 394
    goto/16 :goto_4

    .line 395
    .line 396
    :cond_d
    iget-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->os:Ljava/io/OutputStream;

    .line 397
    .line 398
    if-nez v1, :cond_e

    .line 399
    .line 400
    iget-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->conn:Ljava/net/HttpURLConnection;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    .line 404
    .line 405
    new-instance v1, Ljava/io/FileOutputStream;

    .line 406
    .line 407
    .line 408
    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 409
    .line 410
    iput-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->os:Ljava/io/OutputStream;

    .line 411
    .line 412
    :cond_e
    const/16 v1, 0x1000

    .line 413
    .line 414
    new-array v1, v1, [B

    .line 415
    .line 416
    :cond_f
    :goto_6
    iget-object v4, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->ins:Ljava/io/InputStream;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    .line 420
    move-result v4

    .line 421
    const/4 v5, -0x1

    .line 422
    .line 423
    if-eq v4, v5, :cond_11

    .line 424
    .line 425
    iget-object v5, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->conn:Ljava/net/HttpURLConnection;

    .line 426
    .line 427
    if-nez v5, :cond_10

    .line 428
    .line 429
    goto/16 :goto_4

    .line 430
    .line 431
    .line 432
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 433
    move-result-wide v5

    .line 434
    .line 435
    iget-object v9, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->os:Ljava/io/OutputStream;

    .line 436
    const/4 v10, 0x0

    .line 437
    .line 438
    .line 439
    invoke-virtual {v9, v1, v10, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 440
    .line 441
    const-wide/16 v9, 0x14

    .line 442
    add-long/2addr v9, v7

    .line 443
    .line 444
    cmp-long v4, v5, v9

    .line 445
    .line 446
    if-lez v4, :cond_f

    .line 447
    move-wide v7, v5

    .line 448
    goto :goto_6

    .line 449
    .line 450
    :cond_11
    iget-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->os:Ljava/io/OutputStream;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 454
    const/4 v1, 0x0

    .line 455
    .line 456
    iput-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->os:Ljava/io/OutputStream;

    .line 457
    .line 458
    iget-object v4, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->ins:Ljava/io/InputStream;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 462
    .line 463
    iput-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->ins:Ljava/io/InputStream;

    .line 464
    .line 465
    iget-object v4, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->conn:Ljava/net/HttpURLConnection;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 469
    .line 470
    iput-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->conn:Ljava/net/HttpURLConnection;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 474
    move-result v1

    .line 475
    .line 476
    if-nez v1, :cond_7

    .line 477
    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .line 483
    const-string v2, "fail to move downloaded bubble Source "

    .line 484
    .line 485
    .line 486
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    move-result-object v1

    .line 494
    .line 495
    .line 496
    invoke-static {v1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 497
    .line 498
    goto/16 :goto_3

    .line 499
    .line 500
    :cond_12
    :goto_7
    iget-object p1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->os:Ljava/io/OutputStream;

    .line 501
    .line 502
    .line 503
    invoke-static {p1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 504
    .line 505
    iget-object p1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->ins:Ljava/io/InputStream;

    .line 506
    .line 507
    .line 508
    invoke-static {p1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 509
    goto :goto_8

    .line 510
    .line 511
    :catch_2
    :try_start_5
    const-string p1, "fail to to download remote bubble source"

    .line 512
    .line 513
    .line 514
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 515
    goto :goto_7

    .line 516
    :goto_8
    return-void

    .line 517
    .line 518
    :goto_9
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->os:Ljava/io/OutputStream;

    .line 519
    .line 520
    .line 521
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 522
    .line 523
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->ins:Ljava/io/InputStream;

    .line 524
    .line 525
    .line 526
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 527
    throw p1
.end method


# virtual methods
.method public cancelUpload()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->request:Lcom/narvii/util/http/ApiRequest;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->context:Lcom/narvii/app/NVContext;

    .line 12
    .line 13
    const-string v2, "api"

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->request:Lcom/narvii/util/http/ApiRequest;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 25
    .line 26
    iput-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->request:Lcom/narvii/util/http/ApiRequest;

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->conn:Ljava/net/HttpURLConnection;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    :catch_0
    iput-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->conn:Ljava/net/HttpURLConnection;

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->os:Ljava/io/OutputStream;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 43
    .line 44
    iput-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->os:Ljava/io/OutputStream;

    .line 45
    .line 46
    :cond_2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->ins:Ljava/io/InputStream;

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 52
    .line 53
    iput-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->ins:Ljava/io/InputStream;

    .line 54
    :cond_3
    return-void
.end method

.method protected check()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/io/File;
    .locals 3

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadingBubble:Lcom/narvii/model/BubbleInfo;

    .line 2
    invoke-virtual {p0, v0}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->removeUploadDir(Lcom/narvii/model/BubbleInfo;)V

    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadingBubble:Lcom/narvii/model/BubbleInfo;

    .line 3
    invoke-direct {p0, v0}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->prepareElementsResources(Lcom/narvii/model/BubbleInfo;)V

    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadingBubble:Lcom/narvii/model/BubbleInfo;

    .line 4
    invoke-direct {p0, v0}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->checkAndConfigElementsResource(Lcom/narvii/model/BubbleInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadingBubble:Lcom/narvii/model/BubbleInfo;

    .line 5
    invoke-virtual {v0}, Lcom/narvii/model/BubbleInfo;->clone()Lcom/narvii/model/BubbleInfo;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadingBubble:Lcom/narvii/model/BubbleInfo;

    invoke-direct {p0, v2}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->getUploadConfigFile(Lcom/narvii/model/BubbleInfo;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Ljava/io/File;Ljava/lang/Object;)V

    .line 7
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadingBubble:Lcom/narvii/model/BubbleInfo;

    invoke-direct {p0, v1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->getUploadDir(Lcom/narvii/model/BubbleInfo;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const-string v2, "publish.zip"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadingBubble:Lcom/narvii/model/BubbleInfo;

    .line 10
    invoke-direct {p0, v1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->getUploadDir(Lcom/narvii/model/BubbleInfo;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/narvii/util/ZipUtils;->compressedFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_2

    .line 11
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->doInBackground([Ljava/lang/Void;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method protected getProxyStack()Lcom/narvii/util/http/ProxyStack;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/monetization/bubble/BubbleService;->getStack()Lcom/narvii/util/http/ProxyStack;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected onPostExecute(Ljava/io/File;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadListener:Lcom/narvii/monetization/bubble/service/BubbleUploadListener;

    .line 2
    invoke-interface {p1}, Lcom/narvii/monetization/bubble/service/BubbleUploadListener;->onZipFail()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->context:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    .line 3
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    iget-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadingBubble:Lcom/narvii/model/BubbleInfo;

    .line 4
    invoke-direct {p0, v1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->isEditingMode(Lcom/narvii/model/BubbleInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/chat/chat-bubble/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadingBubble:Lcom/narvii/model/BubbleInfo;

    iget-object v2, v2, Lcom/narvii/model/BubbleInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/chat/chat-bubble/templates/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadingBubble:Lcom/narvii/model/BubbleInfo;

    iget-object v2, v2, Lcom/narvii/model/BubbleInfo;->templateId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/generate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    :goto_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    iget v3, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->cid:I

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 8
    invoke-virtual {v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Ljava/io/File;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->request:Lcom/narvii/util/http/ApiRequest;

    .line 9
    new-instance v1, Lcom/narvii/monetization/bubble/service/BubbleUploadTask$1;

    const-class v2, Lcom/narvii/monetization/bubble/BubbleUploadResponse;

    invoke-direct {v1, p0, v2}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask$1;-><init>(Lcom/narvii/monetization/bubble/service/BubbleUploadTask;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->onPostExecute(Ljava/io/File;)V

    return-void
.end method

.method public removeUploadDir(Lcom/narvii/model/BubbleInfo;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->getUploadDir(Lcom/narvii/model/BubbleInfo;)Ljava/io/File;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    .line 8
    return-void
.end method
