.class public final synthetic Lcom/narvii/prefs/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/util/image/DiskLruCacheWrapper;

.field public final synthetic b:Lcom/narvii/util/drawables/gif/GifLoader;

.field public final synthetic c:Lcom/narvii/media/MediaLoader;

.field public final synthetic d:Lcom/narvii/sticker/StickerCacheService;

.field public final synthetic f:Lcom/narvii/monetization/bubble/BubbleService;

.field public final synthetic g:Lcom/narvii/video/MediaPreloadService;

.field public final synthetic h:Lcom/narvii/nvplayer/INVPlayer;

.field public final synthetic i:Lcom/narvii/theme/ThemePackService;

.field public final synthetic j:Lcom/narvii/prefs/StorageFragment;

.field public final synthetic k:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/util/image/DiskLruCacheWrapper;Lcom/narvii/util/drawables/gif/GifLoader;Lcom/narvii/media/MediaLoader;Lcom/narvii/sticker/StickerCacheService;Lcom/narvii/monetization/bubble/BubbleService;Lcom/narvii/video/MediaPreloadService;Lcom/narvii/nvplayer/INVPlayer;Lcom/narvii/theme/ThemePackService;Lcom/narvii/prefs/StorageFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/prefs/r;->a:Lcom/narvii/util/image/DiskLruCacheWrapper;

    iput-object p2, p0, Lcom/narvii/prefs/r;->b:Lcom/narvii/util/drawables/gif/GifLoader;

    iput-object p3, p0, Lcom/narvii/prefs/r;->c:Lcom/narvii/media/MediaLoader;

    iput-object p4, p0, Lcom/narvii/prefs/r;->d:Lcom/narvii/sticker/StickerCacheService;

    iput-object p5, p0, Lcom/narvii/prefs/r;->f:Lcom/narvii/monetization/bubble/BubbleService;

    iput-object p6, p0, Lcom/narvii/prefs/r;->g:Lcom/narvii/video/MediaPreloadService;

    iput-object p7, p0, Lcom/narvii/prefs/r;->h:Lcom/narvii/nvplayer/INVPlayer;

    iput-object p8, p0, Lcom/narvii/prefs/r;->i:Lcom/narvii/theme/ThemePackService;

    iput-object p9, p0, Lcom/narvii/prefs/r;->j:Lcom/narvii/prefs/StorageFragment;

    iput-object p10, p0, Lcom/narvii/prefs/r;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/narvii/prefs/r;->a:Lcom/narvii/util/image/DiskLruCacheWrapper;

    iget-object v1, p0, Lcom/narvii/prefs/r;->b:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v2, p0, Lcom/narvii/prefs/r;->c:Lcom/narvii/media/MediaLoader;

    iget-object v3, p0, Lcom/narvii/prefs/r;->d:Lcom/narvii/sticker/StickerCacheService;

    iget-object v4, p0, Lcom/narvii/prefs/r;->f:Lcom/narvii/monetization/bubble/BubbleService;

    iget-object v5, p0, Lcom/narvii/prefs/r;->g:Lcom/narvii/video/MediaPreloadService;

    iget-object v6, p0, Lcom/narvii/prefs/r;->h:Lcom/narvii/nvplayer/INVPlayer;

    iget-object v7, p0, Lcom/narvii/prefs/r;->i:Lcom/narvii/theme/ThemePackService;

    iget-object v8, p0, Lcom/narvii/prefs/r;->j:Lcom/narvii/prefs/StorageFragment;

    iget-object v9, p0, Lcom/narvii/prefs/r;->k:Ljava/lang/String;

    move-object v10, p1

    move v11, p2

    invoke-static/range {v0 .. v11}, Lcom/narvii/prefs/StorageFragment;->u(Lcom/narvii/util/image/DiskLruCacheWrapper;Lcom/narvii/util/drawables/gif/GifLoader;Lcom/narvii/media/MediaLoader;Lcom/narvii/sticker/StickerCacheService;Lcom/narvii/monetization/bubble/BubbleService;Lcom/narvii/video/MediaPreloadService;Lcom/narvii/nvplayer/INVPlayer;Lcom/narvii/theme/ThemePackService;Lcom/narvii/prefs/StorageFragment;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
