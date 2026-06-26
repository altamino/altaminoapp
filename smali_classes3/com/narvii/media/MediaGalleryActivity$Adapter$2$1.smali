.class Lcom/narvii/media/MediaGalleryActivity$Adapter$2$1;
.super Ljava/lang/Object;
.source "MediaGalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaGalleryActivity$Adapter$2;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$1;->this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 402
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$1;->this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    iget-object v0, v0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$item:Lcom/narvii/model/Media;

    invoke-virtual {v0}, Lcom/narvii/model/Media;->getDownloadProgress()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 404
    sget-object v2, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 406
    :cond_0
    iget-object v2, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$1;->this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    iget-object v2, v2, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$iv:Lcom/narvii/widget/NVImageView;

    sget v3, Lcom/narvii/lib/R$id;->hq_image_load_finish:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0xa

    if-lt v0, v1, :cond_2

    .line 409
    instance-of v0, v2, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    goto :goto_0

    :cond_1
    const/16 v1, 0x5a

    const/16 v0, 0x5a

    .line 411
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$1;->this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    iget-object v1, v1, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$item:Lcom/narvii/model/Media;

    invoke-virtual {v1, v0}, Lcom/narvii/model/Media;->setDownloadProgress(I)V

    .line 412
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$1;->this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    iget-object v1, v0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$pro:Landroid/widget/ProgressBar;

    iget-object v0, v0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$item:Lcom/narvii/model/Media;

    invoke-virtual {v0}, Lcom/narvii/model/Media;->getDownloadProgress()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    const-wide/16 v0, 0xc8

    .line 413
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
