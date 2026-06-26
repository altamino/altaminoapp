.class public final Lcom/narvii/prefs/StorageFragment;
.super Lcom/narvii/list/NVListFragment;
.source "StorageFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/prefs/StorageFragment$Adapter;,
        Lcom/narvii/prefs/StorageFragment$StorageModel;,
        Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;,
        Lcom/narvii/prefs/StorageFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStorageFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StorageFragment.kt\ncom/narvii/prefs/StorageFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,353:1\n1587#2,2:354\n1587#2,2:356\n1587#2,2:362\n10894#3,2:358\n10894#3,2:360\n10894#3,2:364\n*E\n*S KotlinDebug\n*F\n+ 1 StorageFragment.kt\ncom/narvii/prefs/StorageFragment\n*L\n210#1,2:354\n211#1,2:356\n234#1,2:362\n212#1,2:358\n217#1,2:360\n322#1,2:364\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/prefs/StorageFragment$Companion;

.field private static final REQUEST_ASSETS_CODE:I = 0x2711


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private adapter:Lcom/narvii/prefs/StorageFragment$Adapter;

.field private captionFont:Lcom/narvii/asset/AssetDownloader;

.field private captionStyle:Lcom/narvii/asset/AssetDownloader;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/prefs/StorageFragment$StorageModel;",
            ">;"
        }
    .end annotation
.end field

.field private stickerHelper:Lcom/narvii/scene/helper/StickerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/prefs/StorageFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/prefs/StorageFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/prefs/StorageFragment;->Companion:Lcom/narvii/prefs/StorageFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$cleanCache(Lcom/narvii/prefs/StorageFragment;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/narvii/prefs/StorageFragment;->cleanCache(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$cleanDrafts(Lcom/narvii/prefs/StorageFragment;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/narvii/prefs/StorageFragment;->cleanDrafts(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/narvii/prefs/StorageFragment;)Lcom/narvii/prefs/StorageFragment$Adapter;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/narvii/prefs/StorageFragment;->adapter:Lcom/narvii/prefs/StorageFragment$Adapter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getAssetsSize(Lcom/narvii/prefs/StorageFragment;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/narvii/prefs/StorageFragment;->getAssetsSize()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCacheDirs(Lcom/narvii/prefs/StorageFragment;)Ljava/util/List;
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/narvii/prefs/StorageFragment;->getCacheDirs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCacheSize(Lcom/narvii/prefs/StorageFragment;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/narvii/prefs/StorageFragment;->getCacheSize()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDraftsSize(Lcom/narvii/prefs/StorageFragment;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/narvii/prefs/StorageFragment;->getDraftsSize()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getList$p(Lcom/narvii/prefs/StorageFragment;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/narvii/prefs/StorageFragment;->list:Ljava/util/List;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "list"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$setAdapter$p(Lcom/narvii/prefs/StorageFragment;Lcom/narvii/prefs/StorageFragment$Adapter;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/narvii/prefs/StorageFragment;->adapter:Lcom/narvii/prefs/StorageFragment$Adapter;

    return-void
.end method

.method public static final synthetic access$setList$p(Lcom/narvii/prefs/StorageFragment;Ljava/util/List;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/narvii/prefs/StorageFragment;->list:Ljava/util/List;

    return-void
.end method

.method private final calculateSize(J)Ljava/lang/String;
    .locals 7

    const/16 v0, 0x1f4

    int-to-long v0, v0

    add-long/2addr p1, v0

    const/16 v2, 0x400

    int-to-long v2, v2

    .line 341
    div-long/2addr p1, v2

    const/16 v4, 0x3e8

    int-to-long v4, v4

    cmp-long v6, p1, v4

    if-gez v6, :cond_0

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "KB"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 345
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-long/2addr p1, v0

    div-long/2addr p1, v2

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "MB"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final cleanCache(Ljava/lang/String;)V
    .locals 13

    const-string v0, "imageDiskCache"

    .line 241
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/narvii/util/image/DiskLruCacheWrapper;

    const-string v0, "gifLoader"

    .line 242
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/narvii/util/drawables/gif/GifLoader;

    const-string v0, "mediaLoader"

    .line 243
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/narvii/media/MediaLoader;

    const-string v0, "stickerCache"

    .line 244
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/narvii/sticker/StickerCacheService;

    const-string v0, "bubble"

    .line 245
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/narvii/monetization/bubble/BubbleService;

    const-string v0, "mediapreload"

    .line 246
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/narvii/video/MediaPreloadService;

    .line 247
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object v9

    const-string v0, "themePack"

    .line 248
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/narvii/theme/ThemePackService;

    .line 249
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0f95

    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    .line 250
    invoke-virtual {p0, v1, v11}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f0f94

    .line 251
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 252
    new-instance v12, Lcom/narvii/prefs/StorageFragment$cleanCache$1;

    move-object v1, v12

    move-object v2, p0

    move-object v11, p1

    invoke-direct/range {v1 .. v11}, Lcom/narvii/prefs/StorageFragment$cleanCache$1;-><init>(Lcom/narvii/prefs/StorageFragment;Lcom/narvii/util/image/DiskLruCacheWrapper;Lcom/narvii/util/drawables/gif/GifLoader;Lcom/narvii/media/MediaLoader;Lcom/narvii/sticker/StickerCacheService;Lcom/narvii/monetization/bubble/BubbleService;Lcom/narvii/video/MediaPreloadService;Lcom/narvii/nvplayer/INVPlayer;Lcom/narvii/theme/ThemePackService;Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 308
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void

    .line 247
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method private final cleanDrafts(Ljava/lang/String;)V
    .locals 4

    .line 329
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const p1, 0x7f0f0f95

    .line 330
    invoke-virtual {p0, p1, v2}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f0f0348

    .line 331
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 332
    new-instance p1, Lcom/narvii/prefs/StorageFragment$cleanDrafts$1;

    invoke-direct {p1, p0}, Lcom/narvii/prefs/StorageFragment$cleanDrafts$1;-><init>(Lcom/narvii/prefs/StorageFragment;)V

    invoke-virtual {v0, p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 337
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method

.method private final getAssetsSize()Ljava/lang/String;
    .locals 7

    .line 313
    iget-object v0, p0, Lcom/narvii/prefs/StorageFragment;->captionStyle:Lcom/narvii/asset/AssetDownloader;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoader;->getCacheSize()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 314
    :goto_0
    iget-object v0, p0, Lcom/narvii/prefs/StorageFragment;->captionFont:Lcom/narvii/asset/AssetDownloader;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoader;->getCacheSize()J

    move-result-wide v5

    goto :goto_1

    :cond_1
    move-wide v5, v1

    :goto_1
    add-long/2addr v3, v5

    .line 315
    new-instance v0, Lcom/narvii/media/online/audio/AudioDownloader;

    invoke-direct {v0, p0}, Lcom/narvii/media/online/audio/AudioDownloader;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoader;->getDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getFolderSize(Ljava/io/File;)J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 316
    iget-object v0, p0, Lcom/narvii/prefs/StorageFragment;->stickerHelper:Lcom/narvii/scene/helper/StickerHelper;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/narvii/scene/helper/StickerHelper;->getCacheSize()J

    move-result-wide v1

    :cond_2
    add-long/2addr v3, v1

    .line 312
    invoke-direct {p0, v3, v4}, Lcom/narvii/prefs/StorageFragment;->calculateSize(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getCacheDirs()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "AdMob"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "AppLovin"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "al"

    aput-object v5, v1, v4

    const/4 v5, 0x3

    const-string v6, "Facebook"

    aput-object v6, v1, v5

    const/4 v6, 0x4

    const-string v7, "im_cached_content"

    aput-object v7, v1, v6

    const/4 v7, 0x5

    const-string v8, "Kiip"

    aput-object v8, v1, v7

    const/4 v8, 0x6

    const-string v9, "Tapjoy"

    aput-object v9, v1, v8

    const/4 v9, 0x7

    const-string v10, "UnityAds"

    aput-object v10, v1, v9

    const/16 v10, 0x8

    const-string v11, "Vungle"

    aput-object v11, v1, v10

    const/16 v10, 0x9

    const-string v11, "vungle"

    aput-object v11, v1, v10

    .line 207
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-array v9, v9, [Ljava/lang/String;

    const-string v10, "gif"

    aput-object v10, v9, v2

    const-string v10, "img"

    aput-object v10, v9, v3

    const-string v3, "bubble"

    aput-object v3, v9, v4

    const-string v3, "stickers"

    aput-object v3, v9, v5

    const-string v3, "media-preload"

    aput-object v3, v9, v6

    const-string v3, "exo-cache"

    aput-object v3, v9, v7

    const-string v3, "propBundles"

    aput-object v3, v9, v8

    .line 208
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 209
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    .line 354
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 210
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 356
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 211
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 212
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const-string v4, "it"

    if-eqz v1, :cond_4

    .line 358
    array-length v6, v1

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_4

    aget-object v8, v1, v7

    .line 213
    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 214
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 217
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 360
    array-length v5, v1

    :goto_3
    if-ge v2, v5, :cond_6

    aget-object v6, v1, v2

    .line 218
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 219
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return-object v0
.end method

.method private final getCacheSize()Ljava/lang/String;
    .locals 10

    const-string v0, "imageDiskCache"

    .line 226
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/image/DiskLruCacheWrapper;

    const-string v1, "gifLoader"

    .line 227
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/drawables/gif/GifLoader;

    const-string v2, "mediaLoader"

    .line 228
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/media/MediaLoader;

    const-string v3, "stickerCache"

    .line 229
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/sticker/StickerCacheService;

    const-string v4, "bubble"

    .line 230
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/monetization/bubble/BubbleService;

    const-string v5, "mediapreload"

    .line 231
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/video/MediaPreloadService;

    .line 232
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_8

    invoke-static {v6}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object v6

    if-eqz v0, :cond_7

    .line 233
    invoke-virtual {v0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->size()J

    move-result-wide v8

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/narvii/util/drawables/gif/GifLoader;->size()J

    move-result-wide v0

    add-long/2addr v8, v0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/narvii/media/MediaLoader;->size()J

    move-result-wide v0

    add-long/2addr v8, v0

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/narvii/sticker/StickerCacheService;->size()J

    move-result-wide v0

    add-long/2addr v8, v0

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/narvii/monetization/bubble/BubbleService;->size()J

    move-result-wide v0

    add-long/2addr v8, v0

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/narvii/video/MediaPreloadService;->size()J

    move-result-wide v0

    add-long/2addr v8, v0

    invoke-interface {v6}, Lcom/narvii/nvplayer/INVPlayer;->size()J

    move-result-wide v0

    add-long/2addr v8, v0

    .line 234
    invoke-direct {p0}, Lcom/narvii/prefs/StorageFragment;->getCacheDirs()Ljava/util/List;

    move-result-object v0

    .line 362
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 235
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lcom/narvii/util/Utils;->getFolderSize(Ljava/io/File;)J

    move-result-wide v1

    :goto_1
    add-long/2addr v8, v1

    goto :goto_0

    .line 237
    :cond_1
    invoke-direct {p0, v8, v9}, Lcom/narvii/prefs/StorageFragment;->calculateSize(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 233
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v7

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v7

    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v7

    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v7

    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v7

    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v7

    .line 232
    :cond_8
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    goto :goto_3

    :goto_2
    throw v7

    :goto_3
    goto :goto_2
.end method

.method private final getDraftsSize()Ljava/lang/String;
    .locals 7

    .line 321
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/post/DraftManager;->getDraftsRootDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getFolderSize(Ljava/io/File;)J

    move-result-wide v0

    .line 322
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/post/DraftManager;->listArchiveFiles(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v2

    const-string v3, "DraftManager.listArchiveFiles(context)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 323
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 325
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/narvii/prefs/StorageFragment;->calculateSize(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/prefs/StorageFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/prefs/StorageFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/prefs/StorageFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/prefs/StorageFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/prefs/StorageFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 7

    const/4 p1, 0x3

    new-array p1, p1, [Lcom/narvii/prefs/StorageFragment$StorageModel;

    .line 65
    new-instance v0, Lcom/narvii/prefs/StorageFragment$StorageModel;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0f9e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resources.getString(R.st\u2026g.settings_storage_cache)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v3, ""

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/narvii/prefs/StorageFragment$StorageModel;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 66
    new-instance v0, Lcom/narvii/prefs/StorageFragment$StorageModel;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0f98

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "resources.getString(R.st\u2026.settings_storage_assets)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, 0x7f0f0f9c

    .line 67
    invoke-virtual {p0, v5}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(R.string.setti\u2026_storage_assets_subtitle)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {v0, v4, v5, v2, v3}, Lcom/narvii/prefs/StorageFragment$StorageModel;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    aput-object v0, p1, v2

    .line 69
    new-instance v0, Lcom/narvii/prefs/StorageFragment$StorageModel;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0f9f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "resources.getString(R.st\u2026ings_storage_post_drafts)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v4, v3, v2, v3}, Lcom/narvii/prefs/StorageFragment$StorageModel;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v3, 0x2

    aput-object v0, p1, v3

    .line 64
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/prefs/StorageFragment;->list:Ljava/util/List;

    .line 71
    new-instance p1, Lcom/narvii/prefs/StorageFragment$Adapter;

    iget-object v0, p0, Lcom/narvii/prefs/StorageFragment;->list:Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p1, p0, p0, v0}, Lcom/narvii/prefs/StorageFragment$Adapter;-><init>(Lcom/narvii/prefs/StorageFragment;Lcom/narvii/app/NVContext;Ljava/util/List;)V

    iput-object p1, p0, Lcom/narvii/prefs/StorageFragment;->adapter:Lcom/narvii/prefs/StorageFragment$Adapter;

    .line 72
    new-instance p1, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;

    invoke-direct {p1, p0, v1}, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;-><init>(Lcom/narvii/prefs/StorageFragment;I)V

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    new-instance p1, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;

    invoke-direct {p1, p0, v2}, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;-><init>(Lcom/narvii/prefs/StorageFragment;I)V

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    new-instance p1, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;

    invoke-direct {p1, p0, v3}, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;-><init>(Lcom/narvii/prefs/StorageFragment;I)V

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 75
    iget-object p1, p0, Lcom/narvii/prefs/StorageFragment;->adapter:Lcom/narvii/prefs/StorageFragment$Adapter;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p1, "adapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_1
    const-string p1, "list"

    .line 71
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method protected getSelectorDarkColor()I
    .locals 1

    const v0, 0x33ffffff

    return v0
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p2, 0x2711

    if-ne p1, p2, :cond_0

    .line 80
    new-instance p1, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;-><init>(Lcom/narvii/prefs/StorageFragment;I)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f0f97

    .line 51
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string p1, "captionFont"

    .line 52
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/asset/AssetDownloader;

    iput-object p1, p0, Lcom/narvii/prefs/StorageFragment;->captionFont:Lcom/narvii/asset/AssetDownloader;

    const-string p1, "captionStyle"

    .line 53
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/asset/AssetDownloader;

    iput-object p1, p0, Lcom/narvii/prefs/StorageFragment;->captionStyle:Lcom/narvii/asset/AssetDownloader;

    .line 54
    new-instance p1, Lcom/narvii/scene/helper/StickerHelper;

    invoke-direct {p1, p0}, Lcom/narvii/scene/helper/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/prefs/StorageFragment;->stickerHelper:Lcom/narvii/scene/helper/StickerHelper;

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/prefs/StorageFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 58
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 59
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 60
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    :cond_1
    return-void
.end method

.method public onThemeChange(I)V
    .locals 2

    .line 159
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onThemeChange(I)V

    const-string v0, "null cannot be cast to non-null type com.narvii.widget.NVListView"

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 161
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f06007d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 162
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Lcom/narvii/widget/NVListView;

    invoke-virtual {v1, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 163
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/narvii/widget/NVListView;

    invoke-virtual {v1, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 164
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/narvii/widget/NVListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 163
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 162
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    .line 166
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f060181

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 167
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_6

    check-cast v1, Lcom/narvii/widget/NVListView;

    invoke-virtual {v1, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 168
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Lcom/narvii/widget/NVListView;

    invoke-virtual {v1, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 169
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Lcom/narvii/widget/NVListView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    goto :goto_0

    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_0
    return-void
.end method
