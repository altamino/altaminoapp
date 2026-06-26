.class final Lcom/narvii/prefs/StorageFragment$cleanCache$1;
.super Ljava/lang/Object;
.source "StorageFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/StorageFragment;->cleanCache(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStorageFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StorageFragment.kt\ncom/narvii/prefs/StorageFragment$cleanCache$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,353:1\n1587#2,2:354\n*E\n*S KotlinDebug\n*F\n+ 1 StorageFragment.kt\ncom/narvii/prefs/StorageFragment$cleanCache$1\n*L\n293#1,2:354\n*E\n"
.end annotation


# instance fields
.field final synthetic $bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

.field final synthetic $gifc:Lcom/narvii/util/drawables/gif/GifLoader;

.field final synthetic $imgc:Lcom/narvii/util/image/DiskLruCacheWrapper;

.field final synthetic $mediaPreloadService:Lcom/narvii/video/MediaPreloadService;

.field final synthetic $medial:Lcom/narvii/media/MediaLoader;

.field final synthetic $nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

.field final synthetic $size:Ljava/lang/String;

.field final synthetic $stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

.field final synthetic $themePackService:Lcom/narvii/theme/ThemePackService;

.field final synthetic this$0:Lcom/narvii/prefs/StorageFragment;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/StorageFragment;Lcom/narvii/util/image/DiskLruCacheWrapper;Lcom/narvii/util/drawables/gif/GifLoader;Lcom/narvii/media/MediaLoader;Lcom/narvii/sticker/StickerCacheService;Lcom/narvii/monetization/bubble/BubbleService;Lcom/narvii/video/MediaPreloadService;Lcom/narvii/nvplayer/INVPlayer;Lcom/narvii/theme/ThemePackService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/prefs/StorageFragment$cleanCache$1;->this$0:Lcom/narvii/prefs/StorageFragment;

    iput-object p2, p0, Lcom/narvii/prefs/StorageFragment$cleanCache$1;->$imgc:Lcom/narvii/util/image/DiskLruCacheWrapper;

    iput-object p3, p0, Lcom/narvii/prefs/StorageFragment$cleanCache$1;->$gifc:Lcom/narvii/util/drawables/gif/GifLoader;

    iput-object p4, p0, Lcom/narvii/prefs/StorageFragment$cleanCache$1;->$medial:Lcom/narvii/media/MediaLoader;

    iput-object p5, p0, Lcom/narvii/prefs/StorageFragment$cleanCache$1;->$stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    iput-object p6, p0, Lcom/narvii/prefs/StorageFragment$cleanCache$1;->$bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    iput-object p7, p0, Lcom/narvii/prefs/StorageFragment$cleanCache$1;->$mediaPreloadService:Lcom/narvii/video/MediaPreloadService;

    iput-object p8, p0, Lcom/narvii/prefs/StorageFragment$cleanCache$1;->$nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    iput-object p9, p0, Lcom/narvii/prefs/StorageFragment$cleanCache$1;->$themePackService:Lcom/narvii/theme/ThemePackService;

    iput-object p10, p0, Lcom/narvii/prefs/StorageFragment$cleanCache$1;->$size:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 254
    :try_start_0
    iget-object p1, p0, Lcom/narvii/prefs/StorageFragment$cleanCache$1;->$imgc:Lcom/narvii/util/image/DiskLruCacheWrapper;

    invoke-virtual {p1}, Lcom/narvii/util/image/DiskLruCacheWrapper;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/narvii/prefs/StorageFragment$cleanCache$1;->$gifc:Lcom/narvii/util/drawables/gif/GifLoader;

    invoke-virtual {p1}, Lcom/narvii/util/drawables/gif/GifLoader;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 264
    :catch_1
    :try_start_2
    iget-object p1, p0, Lcom/narvii/prefs/StorageFragment$cleanCache$1;->$medial:Lcom/narvii/media/MediaLoader;

    invoke-virtual {p1}, Lcom/narvii/media/MediaLoader;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 269
    :catch_2
    :try_start_3
    iget-object p1, p0, Lcom/narvii/prefs/StorageFragment$cleanCache$1;->$stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    invoke-virtual {p1}, Lcom/narvii/sticker/StickerCacheService;->clear()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 274
    :catch_3
    :try_start_4
    iget-object p1, p0, Lcom/narvii/prefs/StorageFragment$cleanCache$1;->$bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    invoke-virtual {p1}, Lcom/narvii/monetization/bubble/BubbleService;->clear()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 279
    :catch_4
    :try_start_5
    iget-object p1, p0, Lcom/narvii/prefs/StorageFragment$cleanCache$1;->$mediaPreloadService:Lcom/narvii/video/MediaPreloadService;

    invoke-virtual {p1}, Lcom/narvii/video/MediaPreloadService;->clear()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 284
    :catch_5
    :try_start_6
    iget-object p1, p0, Lcom/narvii/prefs/StorageFragment$cleanCache$1;->$nvPlayer:Lcom/narvii/nvplayer/INVPlayer;

    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->clear()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 289
    :catch_6
    :try_start_7
    iget-object p1, p0, Lcom/narvii/prefs/StorageFragment$cleanCache$1;->$themePackService:Lcom/narvii/theme/ThemePackService;

    invoke-virtual {p1}, Lcom/narvii/theme/ThemePackService;->clear()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 293
    :catch_7
    iget-object p1, p0, Lcom/narvii/prefs/StorageFragment$cleanCache$1;->this$0:Lcom/narvii/prefs/StorageFragment;

    invoke-static {p1}, Lcom/narvii/prefs/StorageFragment;->access$getCacheDirs(Lcom/narvii/prefs/StorageFragment;)Ljava/util/List;

    move-result-object p1

    .line 354
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    .line 294
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 297
    :cond_0
    invoke-static {p2}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    goto :goto_0

    .line 301
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cache cleared ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/narvii/prefs/StorageFragment$cleanCache$1;->$size:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "b)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 306
    new-instance p1, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;

    iget-object p2, p0, Lcom/narvii/prefs/StorageFragment$cleanCache$1;->this$0:Lcom/narvii/prefs/StorageFragment;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/narvii/prefs/StorageFragment$StorageAsyncTask;-><init>(Lcom/narvii/prefs/StorageFragment;I)V

    new-array p2, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 304
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
