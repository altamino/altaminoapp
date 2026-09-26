.class public final Lcom/narvii/media/giphy/GiphyStickerService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;,
        Lcom/narvii/media/giphy/GiphyStickerService$GiphyStickerDownloadListener;
    }
.end annotation


# instance fields
.field private final GIPHY_STICKER_DOWNLOAD_DIR_PATH:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final apiKey:Ljava/lang/String;

.field private final apiService:Lcom/narvii/util/http/ApiService;

.field private cachedGiphyPackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/giphy/GiphyPack;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final downloadingItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final errorItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final giphyLoader$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final nvContext:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private packListingListener:Lcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 3
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "nvContext"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService;->nvContext:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    const-string v0, "EditorSticker/CopiedStickerSrc"

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->GIPHY_STICKER_DOWNLOAD_DIR_PATH:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->cachedGiphyPackList:Ljava/util/ArrayList;

    .line 22
    .line 23
    const-string v0, "config"

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 30
    .line 31
    const-string v1, "giphyApiKey"

    .line 32
    .line 33
    const-string v2, "12ss5TcLvRjUze"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/narvii/config/ConfigService;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    iput-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->apiKey:Ljava/lang/String;

    .line 40
    .line 41
    const-string v0, "api"

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService;->apiService:Lcom/narvii/util/http/ApiService;

    .line 50
    .line 51
    new-instance p1, Lcom/narvii/media/giphy/GiphyStickerService$giphyLoader$2;

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, p0}, Lcom/narvii/media/giphy/GiphyStickerService$giphyLoader$2;-><init>(Lcom/narvii/media/giphy/GiphyStickerService;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    iput-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService;->giphyLoader$delegate:Lw7/m;

    .line 61
    .line 62
    new-instance p1, Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    iput-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService;->downloadingItems:Ljava/util/ArrayList;

    .line 68
    .line 69
    new-instance p1, Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    iput-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService;->errorItems:Ljava/util/ArrayList;

    .line 75
    return-void
.end method

.method public static final synthetic access$getCachedGiphyPackList$p(Lcom/narvii/media/giphy/GiphyStickerService;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->cachedGiphyPackList:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getDownloadingItems$p(Lcom/narvii/media/giphy/GiphyStickerService;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->downloadingItems:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getErrorItems$p(Lcom/narvii/media/giphy/GiphyStickerService;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->errorItems:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getGIPHY_STICKER_DOWNLOAD_DIR_PATH$p(Lcom/narvii/media/giphy/GiphyStickerService;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->GIPHY_STICKER_DOWNLOAD_DIR_PATH:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPackListingListener$p(Lcom/narvii/media/giphy/GiphyStickerService;)Lcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->packListingListener:Lcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;

    .line 3
    return-object p0
.end method

.method private final getGiphyLoader()Lcom/narvii/media/giphy/GiphyStickerLoader;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->giphyLoader$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/media/giphy/GiphyStickerLoader;

    .line 9
    return-object v0
.end method

.method public static synthetic loadGiphyPackList$default(Lcom/narvii/media/giphy/GiphyStickerService;ZLcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x1

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/media/giphy/GiphyStickerService;->loadGiphyPackList(ZLcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;)V

    .line 9
    return-void
.end method


# virtual methods
.method public final downloadGiphySticker(Lcom/narvii/media/giphy/GiphyItem;Lcom/narvii/media/giphy/GiphyStickerService$GiphyStickerDownloadListener;)V
    .locals 2
    .param p1    # Lcom/narvii/media/giphy/GiphyItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/media/giphy/GiphyStickerService$GiphyStickerDownloadListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "giphyItem"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "listener"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->downloadingItems:Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v1, p1, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->downloadingItems:Ljava/util/ArrayList;

    .line 23
    .line 24
    iget-object v1, p1, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->errorItems:Ljava/util/ArrayList;

    .line 30
    .line 31
    iget-object v1, p1, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 35
    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/narvii/media/giphy/GiphyStickerService;->getGiphyLoader()Lcom/narvii/media/giphy/GiphyStickerLoader;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    new-instance v1, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, p0, p1, v0}, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;-><init>(Lcom/narvii/media/giphy/GiphyStickerService;Lcom/narvii/media/giphy/GiphyItem;Ljava/lang/ref/WeakReference;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p1, v1}, Lcom/narvii/media/giphy/GiphyStickerLoader;->loadGiphySticker(Lcom/narvii/media/giphy/GiphyItem;Lcom/narvii/util/fileloader/IFileDownloadCallback;)V

    .line 52
    return-void
.end method

.method public final getGiphyItemDownloadStatus(Lcom/narvii/media/giphy/GiphyItem;)Lcom/narvii/asset/DownloadStatusInfo;
    .locals 3
    .param p1    # Lcom/narvii/media/giphy/GiphyItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "giphyItem"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/media/giphy/GiphyStickerService;->getLocalFile(Lcom/narvii/media/giphy/GiphyItem;)Ljava/io/File;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/media/giphy/GiphyStickerService;->downloadingItems:Ljava/util/ArrayList;

    .line 18
    .line 19
    iget-object v2, p1, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/media/giphy/GiphyStickerService;->errorItems:Ljava/util/ArrayList;

    .line 28
    .line 29
    iget-object v2, p1, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 33
    move-result v1

    .line 34
    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    sget-object p1, Lcom/narvii/asset/DownloadStatusInfo;->READY:Lcom/narvii/asset/DownloadStatusInfo;

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 41
    goto :goto_0

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-static {v0}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->downloadingItems:Ljava/util/ArrayList;

    .line 50
    .line 51
    iget-object v1, p1, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 55
    move-result v0

    .line 56
    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->errorItems:Ljava/util/ArrayList;

    .line 60
    .line 61
    iget-object v1, p1, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 65
    move-result v0

    .line 66
    .line 67
    if-nez v0, :cond_1

    .line 68
    .line 69
    sget-object p1, Lcom/narvii/asset/DownloadStatusInfo;->IDLE:Lcom/narvii/asset/DownloadStatusInfo;

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 73
    goto :goto_0

    .line 74
    .line 75
    :cond_1
    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->errorItems:Ljava/util/ArrayList;

    .line 76
    .line 77
    iget-object v1, p1, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 81
    move-result v0

    .line 82
    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->downloadingItems:Ljava/util/ArrayList;

    .line 86
    .line 87
    iget-object v1, p1, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 91
    move-result v0

    .line 92
    .line 93
    if-nez v0, :cond_2

    .line 94
    .line 95
    sget-object p1, Lcom/narvii/asset/DownloadStatusInfo;->FAIL:Lcom/narvii/asset/DownloadStatusInfo;

    .line 96
    .line 97
    .line 98
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 99
    goto :goto_0

    .line 100
    .line 101
    :cond_2
    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->downloadingItems:Ljava/util/ArrayList;

    .line 102
    .line 103
    iget-object p1, p1, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 107
    move-result p1

    .line 108
    .line 109
    if-eqz p1, :cond_3

    .line 110
    .line 111
    new-instance p1, Lcom/narvii/asset/DownloadStatusInfo;

    .line 112
    const/4 v0, 0x1

    .line 113
    .line 114
    const/high16 v1, 0x3f000000    # 0.5f

    .line 115
    .line 116
    .line 117
    invoke-direct {p1, v0, v1}, Lcom/narvii/asset/DownloadStatusInfo;-><init>(IF)V

    .line 118
    goto :goto_0

    .line 119
    .line 120
    :cond_3
    sget-object p1, Lcom/narvii/asset/DownloadStatusInfo;->IDLE:Lcom/narvii/asset/DownloadStatusInfo;

    .line 121
    .line 122
    .line 123
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 124
    :goto_0
    return-object p1
.end method

.method public final getLocalFile(Lcom/narvii/media/giphy/GiphyItem;)Ljava/io/File;
    .locals 5
    .param p1    # Lcom/narvii/media/giphy/GiphyItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "giphyItem"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Ljava/io/File;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/media/giphy/GiphyStickerService;->nvContext:Lcom/narvii/app/NVContext;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    iget-object v2, p0, Lcom/narvii/media/giphy/GiphyStickerService;->GIPHY_STICKER_DOWNLOAD_DIR_PATH:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    .line 24
    iget-object v1, p1, Lcom/narvii/media/giphy/GiphyItem;->packId:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v1

    .line 29
    .line 30
    const-string v2, ".gif"

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    new-instance v1, Ljava/io/File;

    .line 35
    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    iget-object p1, p1, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 58
    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    iget-object v4, p1, Lcom/narvii/media/giphy/GiphyItem;->packId:Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const/16 v4, 0x5f

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    .line 87
    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    :goto_0
    return-object v1
.end method

.method public final getLocalPath(Lcom/narvii/media/giphy/GiphyItem;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/narvii/media/giphy/GiphyItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "giphyItem"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/media/giphy/GiphyStickerService;->getLocalFile(Lcom/narvii/media/giphy/GiphyItem;)Ljava/io/File;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    const-string v0, "getAbsolutePath(...)"

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    return-object p1
.end method

.method public final getNvContext()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->nvContext:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final loadGiphyPackList(ZLcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;)V
    .locals 2
    .param p2    # Lcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p2, p0, Lcom/narvii/media/giphy/GiphyStickerService;->packListingListener:Lcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService;->cachedGiphyPackList:Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService;->cachedGiphyPackList:Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 15
    move-result p1

    .line 16
    .line 17
    xor-int/lit8 p1, p1, 0x1

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService;->packListingListener:Lcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p2, p0, Lcom/narvii/media/giphy/GiphyStickerService;->cachedGiphyPackList:Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, p2}, Lcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;->onGiphyPackListLoaded(Ljava/util/ArrayList;)V

    .line 29
    :cond_1
    return-void

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    const-string p2, "https://api.giphy.com/v1/stickers/packs"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->_url(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    const-string p2, "api_key"

    .line 42
    .line 43
    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->apiKey:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 47
    .line 48
    iget-object p2, p0, Lcom/narvii/media/giphy/GiphyStickerService;->apiService:Lcom/narvii/util/http/ApiService;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    new-instance v0, Lcom/narvii/media/giphy/GiphyStickerService$loadGiphyPackList$1;

    .line 55
    .line 56
    const-class v1, Lcom/narvii/media/giphy/GiphyPackListResponse;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, p0, v1}, Lcom/narvii/media/giphy/GiphyStickerService$loadGiphyPackList$1;-><init>(Lcom/narvii/media/giphy/GiphyStickerService;Ljava/lang/Class;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 63
    return-void
.end method

.method public final unregisterPackListingListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->packListingListener:Lcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;

    return-void
.end method
