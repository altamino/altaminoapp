.class Lcom/narvii/sticker/StickerCacheService$3;
.super Ljava/lang/Object;
.source "StickerCacheService.java"

# interfaces
.implements Lcom/narvii/sticker/StickerCacheService$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sticker/StickerCacheService;->observeStickerStatusChange(Lcom/narvii/model/Sticker;Lcom/narvii/sticker/StickerStatusChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sticker/StickerCacheService;

.field final synthetic val$sticker:Lcom/narvii/model/Sticker;

.field final synthetic val$stickerStatusChangeListener:Lcom/narvii/sticker/StickerStatusChangeListener;

.field final synthetic val$wr:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/narvii/sticker/StickerCacheService;Ljava/lang/ref/WeakReference;Lcom/narvii/sticker/StickerStatusChangeListener;Lcom/narvii/model/Sticker;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/narvii/sticker/StickerCacheService$3;->this$0:Lcom/narvii/sticker/StickerCacheService;

    iput-object p2, p0, Lcom/narvii/sticker/StickerCacheService$3;->val$wr:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/narvii/sticker/StickerCacheService$3;->val$stickerStatusChangeListener:Lcom/narvii/sticker/StickerStatusChangeListener;

    iput-object p4, p0, Lcom/narvii/sticker/StickerCacheService$3;->val$sticker:Lcom/narvii/model/Sticker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 258
    iget-object p1, p0, Lcom/narvii/sticker/StickerCacheService$3;->val$wr:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/sticker/StickerStatusChangeListener;

    if-eqz p1, :cond_0

    .line 260
    iget-object p1, p0, Lcom/narvii/sticker/StickerCacheService$3;->val$stickerStatusChangeListener:Lcom/narvii/sticker/StickerStatusChangeListener;

    iget-object p2, p0, Lcom/narvii/sticker/StickerCacheService$3;->val$sticker:Lcom/narvii/model/Sticker;

    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService$3;->this$0:Lcom/narvii/sticker/StickerCacheService;

    invoke-virtual {v0, p2}, Lcom/narvii/sticker/StickerCacheService;->getStickerDownloadStatusInfo(Lcom/narvii/model/Sticker;)Lcom/narvii/asset/DownloadStatusInfo;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/narvii/sticker/StickerStatusChangeListener;->onStatusChanged(Lcom/narvii/model/Sticker;Lcom/narvii/asset/DownloadStatusInfo;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
