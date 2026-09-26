.class Lcom/narvii/sticker/StickerCacheService$4;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sticker/StickerCacheService$4;->this$0:Lcom/narvii/sticker/StickerCacheService;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/sticker/StickerCacheService$4;->val$wr:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/sticker/StickerCacheService$4;->val$stickerStatusChangeListener:Lcom/narvii/sticker/StickerStatusChangeListener;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/sticker/StickerCacheService$4;->val$sticker:Lcom/narvii/model/Sticker;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/sticker/StickerCacheService$4;->val$wr:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/sticker/StickerStatusChangeListener;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/sticker/StickerCacheService$4;->val$stickerStatusChangeListener:Lcom/narvii/sticker/StickerStatusChangeListener;

    .line 13
    .line 14
    iget-object p2, p0, Lcom/narvii/sticker/StickerCacheService$4;->val$sticker:Lcom/narvii/model/Sticker;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService$4;->this$0:Lcom/narvii/sticker/StickerCacheService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Lcom/narvii/sticker/StickerCacheService;->getStickerDownloadStatusInfo(Lcom/narvii/model/Sticker;)Lcom/narvii/asset/DownloadStatusInfo;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, p2, v0}, Lcom/narvii/sticker/StickerStatusChangeListener;->onStatusChanged(Lcom/narvii/model/Sticker;Lcom/narvii/asset/DownloadStatusInfo;)V

    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return p1
.end method
