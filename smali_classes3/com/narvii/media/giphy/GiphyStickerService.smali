.class public final Lcom/narvii/media/giphy/GiphyStickerService;
.super Ljava/lang/Object;
.source "GiphyStickerService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;,
        Lcom/narvii/media/giphy/GiphyStickerService$GiphyStickerDownloadListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGiphyStickerService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GiphyStickerService.kt\ncom/narvii/media/giphy/GiphyStickerService\n*L\n1#1,126:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final GIPHY_STICKER_DOWNLOAD_DIR_PATH:Ljava/lang/String;

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
.end field

.field private final downloadingItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
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
.end field

.field private final giphyLoader$delegate:Lkotlin/Lazy;

.field private final nvContext:Lcom/narvii/app/NVContext;

.field private packListingListener:Lcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/media/giphy/GiphyStickerService;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "giphyLoader"

    const-string v4, "getGiphyLoader()Lcom/narvii/media/giphy/GiphyStickerLoader;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/media/giphy/GiphyStickerService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    const-string v0, "nvContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService;->nvContext:Lcom/narvii/app/NVContext;

    const-string p1, "EditorSticker/CopiedStickerSrc"

    .line 28
    iput-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService;->GIPHY_STICKER_DOWNLOAD_DIR_PATH:Ljava/lang/String;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService;->cachedGiphyPackList:Ljava/util/ArrayList;

    .line 30
    iget-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "config"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    const-string v0, "giphyApiKey"

    const-string v1, "12ss5TcLvRjUze"

    invoke-virtual {p1, v0, v1}, Lcom/narvii/config/ConfigService;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService;->apiKey:Ljava/lang/String;

    .line 31
    iget-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "api"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    iput-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService;->apiService:Lcom/narvii/util/http/ApiService;

    .line 32
    new-instance p1, Lcom/narvii/media/giphy/GiphyStickerService$giphyLoader$2;

    invoke-direct {p1, p0}, Lcom/narvii/media/giphy/GiphyStickerService$giphyLoader$2;-><init>(Lcom/narvii/media/giphy/GiphyStickerService;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService;->giphyLoader$delegate:Lkotlin/Lazy;

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService;->downloadingItems:Ljava/util/ArrayList;

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService;->errorItems:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$getCachedGiphyPackList$p(Lcom/narvii/media/giphy/GiphyStickerService;)Ljava/util/ArrayList;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->cachedGiphyPackList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getDownloadingItems$p(Lcom/narvii/media/giphy/GiphyStickerService;)Ljava/util/ArrayList;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->downloadingItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getErrorItems$p(Lcom/narvii/media/giphy/GiphyStickerService;)Ljava/util/ArrayList;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->errorItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getGIPHY_STICKER_DOWNLOAD_DIR_PATH$p(Lcom/narvii/media/giphy/GiphyStickerService;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->GIPHY_STICKER_DOWNLOAD_DIR_PATH:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getPackListingListener$p(Lcom/narvii/media/giphy/GiphyStickerService;)Lcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->packListingListener:Lcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;

    return-object p0
.end method

.method public static final synthetic access$setCachedGiphyPackList$p(Lcom/narvii/media/giphy/GiphyStickerService;Ljava/util/ArrayList;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService;->cachedGiphyPackList:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$setPackListingListener$p(Lcom/narvii/media/giphy/GiphyStickerService;Lcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService;->packListingListener:Lcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;

    return-void
.end method

.method private final getGiphyLoader()Lcom/narvii/media/giphy/GiphyStickerLoader;
    .locals 3

    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->giphyLoader$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/media/giphy/GiphyStickerService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/giphy/GiphyStickerLoader;

    return-object v0
.end method

.method public static synthetic loadGiphyPackList$default(Lcom/narvii/media/giphy/GiphyStickerService;ZLcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 37
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/media/giphy/GiphyStickerService;->loadGiphyPackList(ZLcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;)V

    return-void
.end method


# virtual methods
.method public final downloadGiphySticker(Lcom/narvii/media/giphy/GiphyItem;Lcom/narvii/media/giphy/GiphyStickerService$GiphyStickerDownloadListener;)V
    .locals 2

    const-string v0, "giphyItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->downloadingItems:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->downloadingItems:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->errorItems:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 73
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 74
    invoke-direct {p0}, Lcom/narvii/media/giphy/GiphyStickerService;->getGiphyLoader()Lcom/narvii/media/giphy/GiphyStickerLoader;

    move-result-object p2

    new-instance v1, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/narvii/media/giphy/GiphyStickerService$downloadGiphySticker$1;-><init>(Lcom/narvii/media/giphy/GiphyStickerService;Lcom/narvii/media/giphy/GiphyItem;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p2, p1, v1}, Lcom/narvii/media/giphy/GiphyStickerLoader;->loadGiphySticker(Lcom/narvii/media/giphy/GiphyItem;Lcom/narvii/util/fileloader/IFileDownloadCallback;)V

    return-void
.end method

.method public final getGiphyItemDownloadStatus(Lcom/narvii/media/giphy/GiphyItem;)Lcom/narvii/asset/DownloadStatusInfo;
    .locals 3

    const-string v0, "giphyItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, p1}, Lcom/narvii/media/giphy/GiphyStickerService;->getLocalFile(Lcom/narvii/media/giphy/GiphyItem;)Ljava/io/File;

    move-result-object v0

    .line 114
    invoke-static {v0}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/narvii/media/giphy/GiphyStickerService;->downloadingItems:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/narvii/media/giphy/GiphyStickerService;->errorItems:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    sget-object p1, Lcom/narvii/asset/DownloadStatusInfo;->READY:Lcom/narvii/asset/DownloadStatusInfo;

    const-string v0, "DownloadStatusInfo.READY"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 116
    :cond_0
    invoke-static {v0}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->downloadingItems:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->errorItems:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    sget-object p1, Lcom/narvii/asset/DownloadStatusInfo;->IDLE:Lcom/narvii/asset/DownloadStatusInfo;

    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->errorItems:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->downloadingItems:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    sget-object p1, Lcom/narvii/asset/DownloadStatusInfo;->FAIL:Lcom/narvii/asset/DownloadStatusInfo;

    goto :goto_0

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->downloadingItems:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 121
    new-instance p1, Lcom/narvii/asset/DownloadStatusInfo;

    const/4 v0, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p1, v0, v1}, Lcom/narvii/asset/DownloadStatusInfo;-><init>(IF)V

    goto :goto_0

    .line 123
    :cond_3
    sget-object p1, Lcom/narvii/asset/DownloadStatusInfo;->IDLE:Lcom/narvii/asset/DownloadStatusInfo;

    :goto_0
    const-string v0, "if (FileUtils.isEmpty(do\u2026StatusInfo.IDLE\n        }"

    .line 116
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method

.method public final getLocalFile(Lcom/narvii/media/giphy/GiphyItem;)Ljava/io/File;
    .locals 5

    const-string v0, "giphyItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/media/giphy/GiphyStickerService;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "nvContext.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/media/giphy/GiphyStickerService;->GIPHY_STICKER_DOWNLOAD_DIR_PATH:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    iget-object v1, p1, Lcom/narvii/media/giphy/GiphyItem;->packId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ".gif"

    if-eqz v1, :cond_0

    .line 106
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/narvii/media/giphy/GiphyItem;->packId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/narvii/media/giphy/GiphyItem;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method public final getLocalPath(Lcom/narvii/media/giphy/GiphyItem;)Ljava/lang/String;
    .locals 1

    const-string v0, "giphyItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/narvii/media/giphy/GiphyStickerService;->getLocalFile(Lcom/narvii/media/giphy/GiphyItem;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getLocalFile(giphyItem).absolutePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getNvContext()Lcom/narvii/app/NVContext;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->nvContext:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final loadGiphyPackList(ZLcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;)V
    .locals 2

    .line 38
    iput-object p2, p0, Lcom/narvii/media/giphy/GiphyStickerService;->packListingListener:Lcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService;->cachedGiphyPackList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService;->cachedGiphyPackList:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    .line 43
    iget-object p1, p0, Lcom/narvii/media/giphy/GiphyStickerService;->packListingListener:Lcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/narvii/media/giphy/GiphyStickerService;->cachedGiphyPackList:Ljava/util/ArrayList;

    invoke-interface {p1, p2}, Lcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;->onGiphyPackListLoaded(Ljava/util/ArrayList;)V

    :cond_1
    return-void

    .line 46
    :cond_2
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string p2, "https://api.giphy.com/v1/stickers/packs"

    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->_url(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 47
    iget-object p2, p0, Lcom/narvii/media/giphy/GiphyStickerService;->apiKey:Ljava/lang/String;

    const-string v0, "api_key"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 48
    iget-object p2, p0, Lcom/narvii/media/giphy/GiphyStickerService;->apiService:Lcom/narvii/util/http/ApiService;

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    new-instance v0, Lcom/narvii/media/giphy/GiphyStickerService$loadGiphyPackList$1;

    const-class v1, Lcom/narvii/media/giphy/GiphyPackListResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/media/giphy/GiphyStickerService$loadGiphyPackList$1;-><init>(Lcom/narvii/media/giphy/GiphyStickerService;Ljava/lang/Class;)V

    invoke-virtual {p2, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public final unregisterPackListingListener()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/narvii/media/giphy/GiphyStickerService;->packListingListener:Lcom/narvii/media/giphy/GiphyStickerService$GiphyPackListingListener;

    return-void
.end method
