.class public Lcom/narvii/monetization/bubble/service/BubbleUploadTask;
.super Landroid/os/AsyncTask;
.source "BubbleUploadTask.java"


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

    .line 57
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->os:Ljava/io/OutputStream;

    .line 49
    iput-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->ins:Ljava/io/InputStream;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->localResources:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->remoteResources:Ljava/util/HashMap;

    .line 58
    iput-object p1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->context:Lcom/narvii/app/NVContext;

    const-string v0, "bubble"

    .line 59
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/bubble/BubbleService;

    iput-object p1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 60
    iput p2, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->cid:I

    .line 61
    iput-object p3, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadingBubble:Lcom/narvii/model/BubbleInfo;

    .line 62
    iput-object p4, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadListener:Lcom/narvii/monetization/bubble/service/BubbleUploadListener;

    return-void
.end method

.method private checkAndConfigElementsResource(Lcom/narvii/model/BubbleInfo;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 290
    :cond_0
    iget-object v1, p1, Lcom/narvii/model/BubbleInfo;->backgroundPath:Ljava/lang/String;

    const-string v2, "background"

    invoke-direct {p0, p1, v2, v1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->getBubbleElementDownloadedFile(Lcom/narvii/model/BubbleInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 291
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_4

    .line 292
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/narvii/model/BubbleInfo;->backgroundPath:Ljava/lang/String;

    .line 296
    iget-object v1, p1, Lcom/narvii/model/BubbleInfo;->slots:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 297
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/BubbleSlot;

    if-eqz v2, :cond_1

    .line 298
    iget-object v3, v2, Lcom/narvii/model/BubbleSlot;->path:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 299
    iget v3, v2, Lcom/narvii/model/BubbleSlot;->align:I

    iget v6, v2, Lcom/narvii/model/BubbleSlot;->x:I

    iget v7, v2, Lcom/narvii/model/BubbleSlot;->y:I

    invoke-static {v3, v6, v7}, Lcom/narvii/model/SlotPoint;->getSlotKey(III)Ljava/lang/String;

    move-result-object v3

    .line 300
    iget-object v6, v2, Lcom/narvii/model/BubbleSlot;->path:Ljava/lang/String;

    invoke-direct {p0, p1, v3, v6}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->getBubbleElementDownloadedFile(Lcom/narvii/model/BubbleInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 302
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-lez v8, :cond_2

    .line 303
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/narvii/model/BubbleSlot;->path:Ljava/lang/String;

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    return v0
.end method

.method private getBubbleElementDownloadedFile(Lcom/narvii/model/BubbleInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 335
    invoke-static {p3}, Lcom/narvii/util/Utils;->getSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 336
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->getUploadDir(Lcom/narvii/model/BubbleInfo;)Ljava/io/File;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getBubbleElementWritingFile(Lcom/narvii/model/BubbleInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 330
    invoke-static {p3}, Lcom/narvii/util/Utils;->getSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 331
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->getUploadDir(Lcom/narvii/model/BubbleInfo;)Ljava/io/File;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".w"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUploadConfigFile(Lcom/narvii/model/BubbleInfo;)Ljava/io/File;
    .locals 2

    .line 318
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->getUploadDir(Lcom/narvii/model/BubbleInfo;)Ljava/io/File;

    move-result-object p1

    const-string v1, "config.json"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 321
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 323
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private getUploadDir(Lcom/narvii/model/BubbleInfo;)Ljava/io/File;
    .locals 3

    .line 340
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    iget-object v2, v2, Lcom/narvii/monetization/bubble/BubbleService;->uploadDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->getWorkPath(Lcom/narvii/model/BubbleInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 343
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method private getWorkPath(Lcom/narvii/model/BubbleInfo;)Ljava/lang/String;
    .locals 2

    .line 353
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->isEditingMode(Lcom/narvii/model/BubbleInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/narvii/model/BubbleInfo;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "t_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/narvii/model/BubbleInfo;->templateId:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isAssetPath(Ljava/lang/String;)Z
    .locals 1

    .line 361
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 364
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "assets://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isEditingMode(Lcom/narvii/model/BubbleInfo;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 357
    iget-object p1, p1, Lcom/narvii/model/BubbleInfo;->id:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isLocalPath(Ljava/lang/String;)Z
    .locals 1

    .line 368
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 371
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isRemotePath(Ljava/lang/String;)Z
    .locals 3

    .line 375
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 378
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private prepareElementsResources(Lcom/narvii/model/BubbleInfo;)V
    .locals 12

    .line 154
    iget-object v0, p1, Lcom/narvii/model/BubbleInfo;->backgroundPath:Ljava/lang/String;

    .line 155
    invoke-direct {p0, v0}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->isRemotePath(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "background"

    if-eqz v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->remoteResources:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/narvii/model/BubbleInfo;->backgroundPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 157
    :cond_0
    invoke-direct {p0, v0}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->isAssetPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->isLocalPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->localResources:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/narvii/model/BubbleInfo;->backgroundPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_2
    :goto_0
    iget-object v0, p1, Lcom/narvii/model/BubbleInfo;->slots:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 162
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/BubbleSlot;

    .line 163
    iget v2, v1, Lcom/narvii/model/BubbleSlot;->align:I

    iget v3, v1, Lcom/narvii/model/BubbleSlot;->x:I

    iget v4, v1, Lcom/narvii/model/BubbleSlot;->y:I

    invoke-static {v2, v3, v4}, Lcom/narvii/model/SlotPoint;->getSlotKey(III)Ljava/lang/String;

    move-result-object v2

    .line 164
    iget-object v3, v1, Lcom/narvii/model/BubbleSlot;->path:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->isRemotePath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 165
    iget-object v3, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->remoteResources:Ljava/util/HashMap;

    iget-object v1, v1, Lcom/narvii/model/BubbleSlot;->path:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 167
    :cond_3
    iget-object v3, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->localResources:Ljava/util/HashMap;

    iget-object v1, v1, Lcom/narvii/model/BubbleSlot;->path:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 173
    :cond_4
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->localResources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 174
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 175
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 176
    invoke-direct {p0, p1, v2, v1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->getBubbleElementDownloadedFile(Lcom/narvii/model/BubbleInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 177
    invoke-direct {p0, v1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->isAssetPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 178
    iget-object v3, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/narvii/util/FileUtils;->moveFromAssetsToFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    goto :goto_2

    .line 180
    :cond_5
    new-instance v3, Ljava/io/File;

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 182
    :try_start_0
    invoke-static {v3, v2}, Lcom/narvii/util/Utils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 184
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 192
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->remoteResources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 193
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 194
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 197
    invoke-direct {p0, p1, v2, v1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->getBubbleElementWritingFile(Lcom/narvii/model/BubbleInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 198
    invoke-direct {p0, p1, v2, v1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->getBubbleElementDownloadedFile(Lcom/narvii/model/BubbleInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 199
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->getProxyStack()Lcom/narvii/util/http/ProxyStack;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->conn:Ljava/net/HttpURLConnection;

    .line 201
    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->check()Z

    move-result v1

    if-nez v1, :cond_9

    .line 202
    iget-object p1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadListener:Lcom/narvii/monetization/bubble/service/BubbleUploadListener;

    if-eqz p1, :cond_8

    .line 203
    iget-object p1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadListener:Lcom/narvii/monetization/bubble/service/BubbleUploadListener;

    const-string v0, "something wrong happened"

    invoke-interface {p1, v0}, Lcom/narvii/monetization/bubble/service/BubbleUploadListener;->onUploadFail(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->os:Ljava/io/OutputStream;

    invoke-static {p1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 277
    iget-object p1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->ins:Ljava/io/InputStream;

    invoke-static {p1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    return-void

    .line 209
    :cond_9
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-lez v1, :cond_c

    .line 211
    iget-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->conn:Ljava/net/HttpURLConnection;

    const-string v9, "Range"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bytes="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v9, 0x1a0

    if-ne v1, v9, :cond_a

    const-string v1, "gif download range not satisfiable (416)"

    .line 215
    invoke-static {v1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    :try_start_3
    iget-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 220
    :catch_1
    :try_start_4
    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->getProxyStack()Lcom/narvii/util/http/ProxyStack;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->conn:Ljava/net/HttpURLConnection;

    goto :goto_5

    .line 223
    :cond_a
    iget-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->conn:Ljava/net/HttpURLConnection;

    const-string v4, "Content-Range"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    const-string v1, ""

    :cond_b
    const-string v4, "bytes (\\d+)-(\\d+)/(\\d+)"

    const/4 v9, 0x2

    .line 226
    invoke-static {v4, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 227
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 228
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    .line 229
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    .line 230
    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    int-to-long v9, v9

    cmp-long v1, v9, v5

    if-nez v1, :cond_c

    .line 234
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->os:Ljava/io/OutputStream;

    .line 239
    :cond_c
    :goto_5
    iget-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->ins:Ljava/io/InputStream;

    .line 240
    invoke-virtual {p0}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->check()Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_4

    .line 243
    :cond_d
    iget-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->os:Ljava/io/OutputStream;

    if-nez v1, :cond_e

    .line 245
    iget-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    .line 247
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->os:Ljava/io/OutputStream;

    :cond_e
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 252
    :cond_f
    :goto_6
    iget-object v4, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->ins:Ljava/io/InputStream;

    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_11

    .line 253
    iget-object v5, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->conn:Ljava/net/HttpURLConnection;

    if-nez v5, :cond_10

    goto/16 :goto_4

    .line 255
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 256
    iget-object v9, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->os:Ljava/io/OutputStream;

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v10, v4}, Ljava/io/OutputStream;->write([BII)V

    const-wide/16 v9, 0x14

    add-long/2addr v9, v7

    cmp-long v4, v5, v9

    if-lez v4, :cond_f

    move-wide v7, v5

    goto :goto_6

    .line 262
    :cond_11
    iget-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->os:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    const/4 v1, 0x0

    .line 263
    iput-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->os:Ljava/io/OutputStream;

    .line 264
    iget-object v4, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->ins:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 265
    iput-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->ins:Ljava/io/InputStream;

    .line 266
    iget-object v4, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 267
    iput-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->conn:Ljava/net/HttpURLConnection;

    .line 268
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to move downloaded bubble Source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto :goto_7

    :catch_2
    :try_start_5
    const-string p1, "fail to to download remote bubble source"

    .line 274
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 276
    :cond_12
    iget-object p1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->os:Ljava/io/OutputStream;

    invoke-static {p1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 277
    iget-object p1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->ins:Ljava/io/InputStream;

    invoke-static {p1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    return-void

    .line 276
    :goto_7
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->os:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 277
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->ins:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 278
    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method


# virtual methods
.method public cancelUpload()V
    .locals 3

    const/4 v0, 0x1

    .line 66
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 67
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->request:Lcom/narvii/util/http/ApiRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->context:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 69
    iget-object v2, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->request:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 70
    iput-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->request:Lcom/narvii/util/http/ApiRequest;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 74
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :catch_0
    iput-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->conn:Ljava/net/HttpURLConnection;

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->os:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 80
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 81
    iput-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->os:Ljava/io/OutputStream;

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->ins:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    .line 84
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 85
    iput-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->ins:Ljava/io/InputStream;

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

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadingBubble:Lcom/narvii/model/BubbleInfo;

    invoke-virtual {p0, v0}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->removeUploadDir(Lcom/narvii/model/BubbleInfo;)V

    .line 95
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadingBubble:Lcom/narvii/model/BubbleInfo;

    invoke-direct {p0, v0}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->prepareElementsResources(Lcom/narvii/model/BubbleInfo;)V

    .line 98
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadingBubble:Lcom/narvii/model/BubbleInfo;

    invoke-direct {p0, v0}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->checkAndConfigElementsResource(Lcom/narvii/model/BubbleInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadingBubble:Lcom/narvii/model/BubbleInfo;

    invoke-virtual {v0}, Lcom/narvii/model/BubbleInfo;->clone()Lcom/narvii/model/BubbleInfo;

    move-result-object v0

    .line 105
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadingBubble:Lcom/narvii/model/BubbleInfo;

    invoke-direct {p0, v2}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->getUploadConfigFile(Lcom/narvii/model/BubbleInfo;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Ljava/io/File;Ljava/lang/Object;)V

    .line 108
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadingBubble:Lcom/narvii/model/BubbleInfo;

    invoke-direct {p0, v1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->getUploadDir(Lcom/narvii/model/BubbleInfo;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const-string v2, "publish.zip"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 110
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadingBubble:Lcom/narvii/model/BubbleInfo;

    invoke-direct {p0, v1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->getUploadDir(Lcom/narvii/model/BubbleInfo;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/narvii/util/ZipUtils;->compressedFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->doInBackground([Ljava/lang/Void;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method protected getProxyStack()Lcom/narvii/util/http/ProxyStack;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    invoke-virtual {v0}, Lcom/narvii/monetization/bubble/BubbleService;->getStack()Lcom/narvii/util/http/ProxyStack;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/io/File;)V
    .locals 4

    if-nez p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadListener:Lcom/narvii/monetization/bubble/service/BubbleUploadListener;

    invoke-interface {p1}, Lcom/narvii/monetization/bubble/service/BubbleUploadListener;->onZipFail()V

    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->context:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 130
    iget-object v1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->uploadingBubble:Lcom/narvii/model/BubbleInfo;

    invoke-direct {p0, v1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->isEditingMode(Lcom/narvii/model/BubbleInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
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

    .line 133
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

    .line 135
    :goto_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    iget v3, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->cid:I

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 136
    invoke-virtual {v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Ljava/io/File;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->request:Lcom/narvii/util/http/ApiRequest;

    .line 137
    iget-object p1, p0, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->request:Lcom/narvii/util/http/ApiRequest;

    new-instance v1, Lcom/narvii/monetization/bubble/service/BubbleUploadTask$1;

    const-class v2, Lcom/narvii/monetization/bubble/BubbleUploadResponse;

    invoke-direct {v1, p0, v2}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask$1;-><init>(Lcom/narvii/monetization/bubble/service/BubbleUploadTask;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->onPostExecute(Ljava/io/File;)V

    return-void
.end method

.method public removeUploadDir(Lcom/narvii/model/BubbleInfo;)V
    .locals 0

    .line 349
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->getUploadDir(Lcom/narvii/model/BubbleInfo;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    return-void
.end method
