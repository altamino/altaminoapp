.class Lcom/narvii/sticker/StickerCacheService$2;
.super Ljava/lang/Object;
.source "StickerCacheService.java"

# interfaces
.implements Lcom/narvii/sticker/StickerCacheService$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sticker/StickerCacheService;->observeFileStatusChange(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/sticker/StickerFileDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sticker/StickerCacheService;

.field final synthetic val$wr:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/narvii/sticker/StickerCacheService;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/narvii/sticker/StickerCacheService$2;->this$0:Lcom/narvii/sticker/StickerCacheService;

    iput-object p2, p0, Lcom/narvii/sticker/StickerCacheService$2;->val$wr:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService$2;->val$wr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/sticker/StickerFileDownloadListener;

    if-eqz v0, :cond_0

    .line 234
    iget-object v1, p0, Lcom/narvii/sticker/StickerCacheService$2;->this$0:Lcom/narvii/sticker/StickerCacheService;

    invoke-virtual {v1, p1, p2}, Lcom/narvii/sticker/StickerCacheService;->getFileDownloadStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/asset/DownloadStatusInfo;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/narvii/sticker/StickerFileDownloadListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/asset/DownloadStatusInfo;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
