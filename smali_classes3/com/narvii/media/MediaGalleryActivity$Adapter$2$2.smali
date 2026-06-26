.class Lcom/narvii/media/MediaGalleryActivity$Adapter$2$2;
.super Ljava/lang/Object;
.source "MediaGalleryActivity.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


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

.field final synthetic val$fakeProgressRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaGalleryActivity$Adapter$2;Ljava/lang/Runnable;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$2;->this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    iput-object p2, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$2;->val$fakeProgressRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 435
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$2;->this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    iget-object p1, p1, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$btnLoadHQ:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 436
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$2;->this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    iget-object p1, p1, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->this$1:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    iget-object p1, p1, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$string;->media_save_fail:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 437
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$2;->this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    iget-object p1, p1, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$downloadingContainer:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 438
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$2;->this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    iget-object p1, p1, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$iv:Lcom/narvii/widget/NVImageView;

    sget v0, Lcom/narvii/lib/R$id;->hq_image_load_finish:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 1

    .line 421
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 425
    :cond_0
    iget-object p2, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$2;->this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    iget-object p2, p2, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$iv:Lcom/narvii/widget/NVImageView;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 426
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$2;->this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    iget-object p1, p1, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$iv:Lcom/narvii/widget/NVImageView;

    sget p2, Lcom/narvii/lib/R$id;->hq_image_load_finish:I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 427
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$2;->this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    iget-object p1, p1, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$item:Lcom/narvii/model/Media;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Lcom/narvii/model/Media;->setDownloadProgress(I)V

    .line 428
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$2;->this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    iget-object p1, p1, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$pro:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 429
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$2;->this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    iget-object p1, p1, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$downloadingContainer:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 430
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$2;->val$fakeProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
