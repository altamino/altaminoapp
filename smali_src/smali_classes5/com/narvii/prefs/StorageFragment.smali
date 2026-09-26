.class public final Lcom/narvii/prefs/StorageFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/prefs/StorageFragment$Adapter;,
        Lcom/narvii/prefs/StorageFragment$Companion;,
        Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;,
        Lcom/narvii/prefs/StorageFragment$StorageModel;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStorageFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StorageFragment.kt\ncom/narvii/prefs/StorageFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,353:1\n1855#2,2:354\n1855#2:356\n1856#2:358\n1855#2,2:363\n1855#2,2:367\n1#3:357\n13309#4,2:359\n13309#4,2:361\n13309#4,2:365\n13309#4,2:369\n*S KotlinDebug\n*F\n+ 1 StorageFragment.kt\ncom/narvii/prefs/StorageFragment\n*L\n210#1:354,2\n211#1:356\n211#1:358\n234#1:363,2\n293#1:367,2\n212#1:359,2\n217#1:361,2\n322#1:365,2\n334#1:369,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/prefs/StorageFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final REQUEST_ASSETS_CODE:I = 0x2711


# instance fields
.field private adapter:Lcom/narvii/prefs/StorageFragment$Adapter;

.field private captionFont:Lcom/narvii/asset/AssetDownloader;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private captionStyle:Lcom/narvii/asset/AssetDownloader;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

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
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/prefs/StorageFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/prefs/StorageFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/prefs/StorageFragment;->Companion:Lcom/narvii/prefs/StorageFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static final synthetic access$cleanCache(Lcom/narvii/prefs/StorageFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/prefs/StorageFragment;->cleanCache(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static final synthetic access$cleanDrafts(Lcom/narvii/prefs/StorageFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/prefs/StorageFragment;->cleanDrafts(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/narvii/prefs/StorageFragment;)Lcom/narvii/prefs/StorageFragment$Adapter;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/prefs/StorageFragment;->adapter:Lcom/narvii/prefs/StorageFragment$Adapter;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getAssetsSize(Lcom/narvii/prefs/StorageFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/prefs/StorageFragment;->getAssetsSize()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getCacheSize(Lcom/narvii/prefs/StorageFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/prefs/StorageFragment;->getCacheSize()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getDraftsSize(Lcom/narvii/prefs/StorageFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/prefs/StorageFragment;->getDraftsSize()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getList$p(Lcom/narvii/prefs/StorageFragment;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/prefs/StorageFragment;->list:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method private final calculateSize(J)Ljava/lang/String;
    .locals 6

    .line 1
    .line 2
    const/16 v0, 0x1f4

    .line 3
    int-to-long v0, v0

    .line 4
    add-long/2addr p1, v0

    .line 5
    .line 6
    const/16 v2, 0x400

    .line 7
    int-to-long v2, v2

    .line 8
    div-long/2addr p1, v2

    .line 9
    .line 10
    const-wide/16 v4, 0x3e8

    .line 11
    .line 12
    cmp-long v4, p1, v4

    .line 13
    .line 14
    if-gez v4, :cond_0

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string p1, "KB"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :cond_0
    add-long/2addr p1, v0

    .line 34
    div-long/2addr p1, v2

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string p1, "MB"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    return-object p1
.end method

.method private final cleanCache(Ljava/lang/String;)V
    .locals 13

    .line 1
    .line 2
    const-string v0, "imageDiskCache"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    move-object v2, v0

    .line 8
    .line 9
    check-cast v2, Lcom/narvii/util/image/DiskLruCacheWrapper;

    .line 10
    .line 11
    const-string v0, "gifLoader"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    move-object v3, v0

    .line 17
    .line 18
    check-cast v3, Lcom/narvii/util/drawables/gif/GifLoader;

    .line 19
    .line 20
    const-string v0, "mediaLoader"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    move-object v4, v0

    .line 26
    .line 27
    check-cast v4, Lcom/narvii/media/MediaLoader;

    .line 28
    .line 29
    const-string v0, "stickerCache"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    move-object v5, v0

    .line 35
    .line 36
    check-cast v5, Lcom/narvii/sticker/StickerCacheService;

    .line 37
    .line 38
    const-string v0, "bubble"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 43
    move-object v6, v0

    .line 44
    .line 45
    check-cast v6, Lcom/narvii/monetization/bubble/BubbleService;

    .line 46
    .line 47
    const-string v0, "mediapreload"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 52
    move-object v7, v0

    .line 53
    .line 54
    check-cast v7, Lcom/narvii/video/MediaPreloadService;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    .line 65
    move-result-object v8

    .line 66
    .line 67
    const-string v0, "themePack"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 72
    move-object v9, v0

    .line 73
    .line 74
    check-cast v9, Lcom/narvii/theme/ThemePackService;

    .line 75
    .line 76
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 84
    const/4 v1, 0x1

    .line 85
    .line 86
    new-array v10, v1, [Ljava/lang/Object;

    .line 87
    const/4 v11, 0x0

    .line 88
    .line 89
    aput-object p1, v10, v11

    .line 90
    .line 91
    .line 92
    const v11, 0x7f1210a0

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v11, v10}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    move-result-object v10

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v10}, Lcom/narvii/util/dialog/ActionSheetDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    const v10, 0x7f12109f

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v10, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 106
    .line 107
    new-instance v12, Lcom/narvii/prefs/r;

    .line 108
    move-object v1, v12

    .line 109
    move-object v10, p0

    .line 110
    move-object v11, p1

    .line 111
    .line 112
    .line 113
    invoke-direct/range {v1 .. v11}, Lcom/narvii/prefs/r;-><init>(Lcom/narvii/util/image/DiskLruCacheWrapper;Lcom/narvii/util/drawables/gif/GifLoader;Lcom/narvii/media/MediaLoader;Lcom/narvii/sticker/StickerCacheService;Lcom/narvii/monetization/bubble/BubbleService;Lcom/narvii/video/MediaPreloadService;Lcom/narvii/nvplayer/INVPlayer;Lcom/narvii/theme/ThemePackService;Lcom/narvii/prefs/StorageFragment;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v12}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 120
    return-void
.end method

.method private static final cleanCache$lambda$7(Lcom/narvii/util/image/DiskLruCacheWrapper;Lcom/narvii/util/drawables/gif/GifLoader;Lcom/narvii/media/MediaLoader;Lcom/narvii/sticker/StickerCacheService;Lcom/narvii/monetization/bubble/BubbleService;Lcom/narvii/video/MediaPreloadService;Lcom/narvii/nvplayer/INVPlayer;Lcom/narvii/theme/ThemePackService;Lcom/narvii/prefs/StorageFragment;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    const-string p10, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p8, p10}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p10, "$size"

    .line 8
    .line 9
    .line 10
    invoke-static {p9, p10}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :catch_0
    :try_start_1
    invoke-virtual {p1}, Lcom/narvii/util/drawables/gif/GifLoader;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 17
    .line 18
    .line 19
    :catch_1
    :try_start_2
    invoke-virtual {p2}, Lcom/narvii/media/MediaLoader;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 20
    .line 21
    .line 22
    :catch_2
    :try_start_3
    invoke-virtual {p3}, Lcom/narvii/sticker/StickerCacheService;->clear()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 23
    .line 24
    .line 25
    :catch_3
    :try_start_4
    invoke-virtual {p4}, Lcom/narvii/monetization/bubble/BubbleService;->clear()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 26
    .line 27
    .line 28
    :catch_4
    :try_start_5
    invoke-virtual {p5}, Lcom/narvii/video/MediaPreloadService;->clear()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 29
    .line 30
    .line 31
    :catch_5
    :try_start_6
    invoke-interface {p6}, Lcom/narvii/nvplayer/INVPlayer;->clear()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 32
    .line 33
    .line 34
    :catch_6
    :try_start_7
    invoke-virtual {p7}, Lcom/narvii/theme/ThemePackService;->clear()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 35
    .line 36
    .line 37
    :catch_7
    invoke-direct {p8}, Lcom/narvii/prefs/StorageFragment;->getCacheDirs()Ljava/util/List;

    .line 38
    move-result-object p0

    .line 39
    .line 40
    check-cast p0, Ljava/lang/Iterable;

    .line 41
    .line 42
    .line 43
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object p0

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    check-cast p1, Ljava/io/File;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 60
    move-result p2

    .line 61
    .line 62
    if-eqz p2, :cond_0

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 66
    goto :goto_0

    .line 67
    .line 68
    .line 69
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    .line 70
    goto :goto_0

    .line 71
    .line 72
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    const-string p1, "cache cleared ("

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string p1, "b)"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p0

    .line 93
    .line 94
    .line 95
    invoke-static {p0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 96
    .line 97
    const-string p0, "statistics"

    .line 98
    .line 99
    .line 100
    invoke-virtual {p8, p0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    move-result-object p0

    .line 102
    .line 103
    check-cast p0, Lcom/narvii/util/statistics/StatisticsService;

    .line 104
    .line 105
    .line 106
    invoke-static {p0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 107
    .line 108
    const-string p1, "Clear Cache"

    .line 109
    .line 110
    .line 111
    invoke-interface {p0, p1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 112
    move-result-object p0

    .line 113
    .line 114
    const-string p1, "Clear Cache Total"

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 118
    .line 119
    new-instance p0, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;

    .line 120
    const/4 p1, 0x0

    .line 121
    .line 122
    .line 123
    invoke-direct {p0, p8, p1}, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;-><init>(Lcom/narvii/prefs/StorageFragment;I)V

    .line 124
    .line 125
    new-array p1, p1, [Ljava/lang/Void;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 129
    return-void
.end method

.method private final cleanDrafts(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    new-array v2, v1, [Ljava/lang/Object;

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    aput-object p1, v2, v3

    .line 16
    .line 17
    .line 18
    const p1, 0x7f1210a0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    const p1, 0x7f1203a0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 32
    .line 33
    new-instance p1, Lcom/narvii/prefs/q;

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, p0}, Lcom/narvii/prefs/q;-><init>(Lcom/narvii/prefs/StorageFragment;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 43
    return-void
.end method

.method private static final cleanDrafts$lambda$10(Lcom/narvii/prefs/StorageFragment;Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/narvii/post/DraftManager;->getDraftsRootDir(Landroid/content/Context;)Ljava/io/File;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/post/DraftManager;->listArchiveFiles(Landroid/content/Context;)[Ljava/io/File;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    const-string p2, "listArchiveFiles(...)"

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    array-length p2, p1

    .line 31
    const/4 v0, 0x0

    .line 32
    move v1, v0

    .line 33
    .line 34
    :goto_0
    if-ge v1, p2, :cond_0

    .line 35
    .line 36
    aget-object v2, p1, v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_0
    new-instance p1, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;

    .line 45
    const/4 p2, 0x2

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, p0, p2}, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;-><init>(Lcom/narvii/prefs/StorageFragment;I)V

    .line 49
    .line 50
    new-array p0, v0, [Ljava/lang/Void;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 54
    return-void
.end method

.method private final getAssetsSize()Ljava/lang/String;
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prefs/StorageFragment;->captionStyle:Lcom/narvii/asset/AssetDownloader;

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoader;->getCacheSize()J

    .line 10
    move-result-wide v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-wide v3, v1

    .line 13
    .line 14
    :goto_0
    iget-object v0, p0, Lcom/narvii/prefs/StorageFragment;->captionFont:Lcom/narvii/asset/AssetDownloader;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoader;->getCacheSize()J

    .line 20
    move-result-wide v5

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move-wide v5, v1

    .line 23
    :goto_1
    add-long/2addr v3, v5

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/media/online/audio/AudioDownloader;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/narvii/media/online/audio/AudioDownloader;-><init>(Lcom/narvii/app/NVContext;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/util/fileloader/FileLoader;->getDir()Ljava/io/File;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/narvii/util/Utils;->getFolderSize(Ljava/io/File;)J

    .line 36
    move-result-wide v5

    .line 37
    add-long/2addr v3, v5

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/prefs/StorageFragment;->stickerHelper:Lcom/narvii/scene/helper/StickerHelper;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/narvii/scene/helper/StickerHelper;->getCacheSize()J

    .line 45
    move-result-wide v1

    .line 46
    :cond_2
    add-long/2addr v3, v1

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v3, v4}, Lcom/narvii/prefs/StorageFragment;->calculateSize(J)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method

.method private final getCacheDirs()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    const-string v1, "Facebook"

    .line 8
    .line 9
    const-string v2, "im_cached_content"

    .line 10
    .line 11
    const-string v3, "AdMob"

    .line 12
    .line 13
    const-string v4, "al"

    .line 14
    .line 15
    .line 16
    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lkotlin/collections/t;->p([Ljava/lang/Object;)Ljava/util/List;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    const-string v2, "gif"

    .line 24
    .line 25
    const-string v3, "img"

    .line 26
    .line 27
    const-string v4, "bubble"

    .line 28
    .line 29
    const-string v5, "stickers"

    .line 30
    .line 31
    const-string v6, "media-preload"

    .line 32
    .line 33
    const-string v7, "exo-cache"

    .line 34
    .line 35
    const-string v8, "propBundles"

    .line 36
    .line 37
    .line 38
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-static {v2}, Lkotlin/collections/t;->p([Ljava/lang/Object;)Ljava/util/List;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    check-cast v1, Ljava/lang/Iterable;

    .line 54
    .line 55
    .line 56
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object v4

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result v5

    .line 62
    .line 63
    if-eqz v5, :cond_0

    .line 64
    .line 65
    .line 66
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object v5

    .line 68
    .line 69
    check-cast v5, Ljava/lang/String;

    .line 70
    .line 71
    new-instance v6, Ljava/io/File;

    .line 72
    .line 73
    .line 74
    invoke-direct {v6, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    goto :goto_0

    .line 79
    .line 80
    .line 81
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    .line 85
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    move-result v3

    .line 87
    .line 88
    if-eqz v3, :cond_2

    .line 89
    .line 90
    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    move-result-object v3

    .line 93
    .line 94
    check-cast v3, Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 98
    move-result-object v4

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 102
    move-result-object v3

    .line 103
    .line 104
    if-eqz v3, :cond_1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    goto :goto_1

    .line 109
    .line 110
    .line 111
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 112
    move-result-object v1

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 116
    move-result-object v1

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 120
    move-result-object v1

    .line 121
    const/4 v3, 0x0

    .line 122
    .line 123
    if-eqz v1, :cond_4

    .line 124
    array-length v4, v1

    .line 125
    move v5, v3

    .line 126
    .line 127
    :goto_2
    if-ge v5, v4, :cond_4

    .line 128
    .line 129
    aget-object v6, v1, v5

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 133
    move-result-object v7

    .line 134
    .line 135
    .line 136
    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 137
    move-result v7

    .line 138
    .line 139
    if-nez v7, :cond_3

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 145
    goto :goto_2

    .line 146
    .line 147
    .line 148
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 149
    move-result-object v1

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 153
    move-result-object v1

    .line 154
    .line 155
    if-eqz v1, :cond_6

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 159
    move-result-object v1

    .line 160
    .line 161
    if-eqz v1, :cond_6

    .line 162
    array-length v4, v1

    .line 163
    .line 164
    :goto_3
    if-ge v3, v4, :cond_6

    .line 165
    .line 166
    aget-object v5, v1, v3

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 170
    move-result-object v6

    .line 171
    .line 172
    .line 173
    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 174
    move-result v6

    .line 175
    .line 176
    if-nez v6, :cond_5

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 182
    goto :goto_3

    .line 183
    :cond_6
    return-object v0
.end method

.method private final getCacheSize()Ljava/lang/String;
    .locals 9

    .line 1
    .line 2
    const-string v0, "imageDiskCache"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/image/DiskLruCacheWrapper;

    .line 9
    .line 10
    const-string v1, "gifLoader"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lcom/narvii/util/drawables/gif/GifLoader;

    .line 17
    .line 18
    const-string v2, "mediaLoader"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    check-cast v2, Lcom/narvii/media/MediaLoader;

    .line 25
    .line 26
    const-string v3, "stickerCache"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    check-cast v3, Lcom/narvii/sticker/StickerCacheService;

    .line 33
    .line 34
    const-string v4, "bubble"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    check-cast v4, Lcom/narvii/monetization/bubble/BubbleService;

    .line 41
    .line 42
    const-string v5, "mediapreload"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    move-result-object v5

    .line 47
    .line 48
    check-cast v5, Lcom/narvii/video/MediaPreloadService;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 52
    move-result-object v6

    .line 53
    .line 54
    .line 55
    invoke-static {v6}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v6}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    .line 59
    move-result-object v6

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->size()J

    .line 66
    move-result-wide v7

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/narvii/util/drawables/gif/GifLoader;->size()J

    .line 73
    move-result-wide v0

    .line 74
    add-long/2addr v7, v0

    .line 75
    .line 76
    .line 77
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/narvii/media/MediaLoader;->size()J

    .line 81
    move-result-wide v0

    .line 82
    add-long/2addr v7, v0

    .line 83
    .line 84
    .line 85
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/narvii/sticker/StickerCacheService;->size()J

    .line 89
    move-result-wide v0

    .line 90
    add-long/2addr v7, v0

    .line 91
    .line 92
    .line 93
    invoke-static {v4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4}, Lcom/narvii/monetization/bubble/BubbleService;->size()J

    .line 97
    move-result-wide v0

    .line 98
    add-long/2addr v7, v0

    .line 99
    .line 100
    .line 101
    invoke-static {v5}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5}, Lcom/narvii/video/MediaPreloadService;->size()J

    .line 105
    move-result-wide v0

    .line 106
    add-long/2addr v7, v0

    .line 107
    .line 108
    .line 109
    invoke-interface {v6}, Lcom/narvii/nvplayer/INVPlayer;->size()J

    .line 110
    move-result-wide v0

    .line 111
    add-long/2addr v7, v0

    .line 112
    .line 113
    .line 114
    invoke-direct {p0}, Lcom/narvii/prefs/StorageFragment;->getCacheDirs()Ljava/util/List;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    check-cast v0, Ljava/lang/Iterable;

    .line 118
    .line 119
    .line 120
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    .line 124
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    move-result v1

    .line 126
    .line 127
    if-eqz v1, :cond_1

    .line 128
    .line 129
    .line 130
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    move-result-object v1

    .line 132
    .line 133
    check-cast v1, Ljava/io/File;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 137
    move-result v2

    .line 138
    .line 139
    if-eqz v2, :cond_0

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 143
    move-result-wide v1

    .line 144
    goto :goto_1

    .line 145
    .line 146
    .line 147
    :cond_0
    invoke-static {v1}, Lcom/narvii/util/Utils;->getFolderSize(Ljava/io/File;)J

    .line 148
    move-result-wide v1

    .line 149
    :goto_1
    add-long/2addr v7, v1

    .line 150
    goto :goto_0

    .line 151
    .line 152
    .line 153
    :cond_1
    invoke-direct {p0, v7, v8}, Lcom/narvii/prefs/StorageFragment;->calculateSize(J)Ljava/lang/String;

    .line 154
    move-result-object v0

    .line 155
    return-object v0
.end method

.method private final getDraftsSize()Ljava/lang/String;
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/post/DraftManager;->getDraftsRootDir(Landroid/content/Context;)Ljava/io/File;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/util/Utils;->getFolderSize(Ljava/io/File;)J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Lcom/narvii/post/DraftManager;->listArchiveFiles(Landroid/content/Context;)[Ljava/io/File;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    const-string v3, "listArchiveFiles(...)"

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    array-length v3, v2

    .line 27
    const/4 v4, 0x0

    .line 28
    .line 29
    :goto_0
    if-ge v4, v3, :cond_0

    .line 30
    .line 31
    aget-object v5, v2, v4

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 35
    move-result-wide v5

    .line 36
    add-long/2addr v0, v5

    .line 37
    .line 38
    add-int/lit8 v4, v4, 0x1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/narvii/prefs/StorageFragment;->calculateSize(J)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method

.method public static synthetic t(Lcom/narvii/prefs/StorageFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/prefs/StorageFragment;->cleanDrafts$lambda$10(Lcom/narvii/prefs/StorageFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/util/image/DiskLruCacheWrapper;Lcom/narvii/util/drawables/gif/GifLoader;Lcom/narvii/media/MediaLoader;Lcom/narvii/sticker/StickerCacheService;Lcom/narvii/monetization/bubble/BubbleService;Lcom/narvii/video/MediaPreloadService;Lcom/narvii/nvplayer/INVPlayer;Lcom/narvii/theme/ThemePackService;Lcom/narvii/prefs/StorageFragment;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p11}, Lcom/narvii/prefs/StorageFragment;->cleanCache$lambda$7(Lcom/narvii/util/image/DiskLruCacheWrapper;Lcom/narvii/util/drawables/gif/GifLoader;Lcom/narvii/media/MediaLoader;Lcom/narvii/sticker/StickerCacheService;Lcom/narvii/monetization/bubble/BubbleService;Lcom/narvii/video/MediaPreloadService;Lcom/narvii/nvplayer/INVPlayer;Lcom/narvii/theme/ThemePackService;Lcom/narvii/prefs/StorageFragment;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 p1, 0x3

    .line 2
    .line 3
    new-array p1, p1, [Lcom/narvii/prefs/StorageFragment$StorageModel;

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/prefs/StorageFragment$StorageModel;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    const v2, 0x7f1210a9

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    const-string v2, "getString(...)"

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    const-string v3, ""

    .line 24
    const/4 v4, 0x1

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1, v3, v4, v3}, Lcom/narvii/prefs/StorageFragment$StorageModel;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 28
    const/4 v1, 0x0

    .line 29
    .line 30
    aput-object v0, p1, v1

    .line 31
    .line 32
    new-instance v0, Lcom/narvii/prefs/StorageFragment$StorageModel;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object v5

    .line 37
    .line 38
    .line 39
    const v6, 0x7f1210a3

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object v5

    .line 44
    .line 45
    .line 46
    invoke-static {v5, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const v6, 0x7f1210a7

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 53
    move-result-object v6

    .line 54
    .line 55
    .line 56
    invoke-static {v6, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, v5, v6, v4, v3}, Lcom/narvii/prefs/StorageFragment$StorageModel;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 60
    .line 61
    aput-object v0, p1, v4

    .line 62
    .line 63
    new-instance v0, Lcom/narvii/prefs/StorageFragment$StorageModel;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 67
    move-result-object v5

    .line 68
    .line 69
    .line 70
    const v6, 0x7f1210aa

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 74
    move-result-object v5

    .line 75
    .line 76
    .line 77
    invoke-static {v5, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v5, v3, v4, v3}, Lcom/narvii/prefs/StorageFragment$StorageModel;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 81
    const/4 v2, 0x2

    .line 82
    .line 83
    aput-object v0, p1, v2

    .line 84
    .line 85
    .line 86
    invoke-static {p1}, Lkotlin/collections/t;->p([Ljava/lang/Object;)Ljava/util/List;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    iput-object p1, p0, Lcom/narvii/prefs/StorageFragment;->list:Ljava/util/List;

    .line 90
    .line 91
    new-instance p1, Lcom/narvii/prefs/StorageFragment$Adapter;

    .line 92
    .line 93
    iget-object v0, p0, Lcom/narvii/prefs/StorageFragment;->list:Ljava/util/List;

    .line 94
    const/4 v3, 0x0

    .line 95
    .line 96
    if-nez v0, :cond_0

    .line 97
    .line 98
    const-string v0, "list"

    .line 99
    .line 100
    .line 101
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 102
    move-object v0, v3

    .line 103
    .line 104
    .line 105
    :cond_0
    invoke-direct {p1, p0, p0, v0}, Lcom/narvii/prefs/StorageFragment$Adapter;-><init>(Lcom/narvii/prefs/StorageFragment;Lcom/narvii/app/NVContext;Ljava/util/List;)V

    .line 106
    .line 107
    iput-object p1, p0, Lcom/narvii/prefs/StorageFragment;->adapter:Lcom/narvii/prefs/StorageFragment$Adapter;

    .line 108
    .line 109
    new-instance p1, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;

    .line 110
    .line 111
    .line 112
    invoke-direct {p1, p0, v1}, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;-><init>(Lcom/narvii/prefs/StorageFragment;I)V

    .line 113
    .line 114
    new-array v0, v1, [Ljava/lang/Void;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 118
    .line 119
    new-instance p1, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;

    .line 120
    .line 121
    .line 122
    invoke-direct {p1, p0, v4}, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;-><init>(Lcom/narvii/prefs/StorageFragment;I)V

    .line 123
    .line 124
    new-array v0, v1, [Ljava/lang/Void;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 128
    .line 129
    new-instance p1, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;

    .line 130
    .line 131
    .line 132
    invoke-direct {p1, p0, v2}, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;-><init>(Lcom/narvii/prefs/StorageFragment;I)V

    .line 133
    .line 134
    new-array v0, v1, [Ljava/lang/Void;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 138
    .line 139
    iget-object p1, p0, Lcom/narvii/prefs/StorageFragment;->adapter:Lcom/narvii/prefs/StorageFragment$Adapter;

    .line 140
    .line 141
    if-nez p1, :cond_1

    .line 142
    .line 143
    const-string p1, "adapter"

    .line 144
    .line 145
    .line 146
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 147
    goto :goto_0

    .line 148
    :cond_1
    move-object v3, p1

    .line 149
    :goto_0
    return-object v3
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
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const/16 p2, 0x2711

    .line 3
    .line 4
    if-ne p1, p2, :cond_0

    .line 5
    .line 6
    new-instance p1, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;

    .line 7
    const/4 p2, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, p0, p2}, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;-><init>(Lcom/narvii/prefs/StorageFragment;I)V

    .line 11
    const/4 p2, 0x0

    .line 12
    .line 13
    new-array p2, p2, [Ljava/lang/Void;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 17
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f1210a2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    .line 11
    const-string p1, "captionFont"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/asset/AssetDownloader;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/prefs/StorageFragment;->captionFont:Lcom/narvii/asset/AssetDownloader;

    .line 20
    .line 21
    const-string p1, "captionStyle"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, Lcom/narvii/asset/AssetDownloader;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/narvii/prefs/StorageFragment;->captionStyle:Lcom/narvii/asset/AssetDownloader;

    .line 30
    .line 31
    new-instance p1, Lcom/narvii/scene/helper/StickerHelper;

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, p0}, Lcom/narvii/scene/helper/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 35
    .line 36
    iput-object p1, p0, Lcom/narvii/prefs/StorageFragment;->stickerHelper:Lcom/narvii/scene/helper/StickerHelper;

    .line 37
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/widget/ListView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    :goto_0
    if-nez p1, :cond_1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    const/4 p2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 18
    :goto_1
    return-void
.end method

.method public onThemeChange(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onThemeChange(I)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    const-string v1, "null cannot be cast to non-null type com.narvii.widget.NVListView"

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    const/4 v0, 0x2

    .line 10
    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    const v0, 0x7f0600a1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 23
    move-result p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 57
    const/4 v0, 0x0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    const v0, 0x7f0603eb

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 72
    move-result p1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchHeader(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 106
    const/4 v0, -0x1

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setListContentBackgroundColor(I)V

    .line 110
    :goto_0
    return-void
.end method
