.class Lcom/narvii/media/MediaGalleryActivity$Adapter$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$2;->this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$2;->val$fakeProgressRunnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$2;->this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$btnLoadHQ:Landroid/view/View;

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$2;->this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->this$1:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    sget v0, Lcom/narvii/lib/R$string;->media_save_fail:I

    .line 21
    const/4 v1, 0x1

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$2;->this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$downloadingContainer:Landroid/view/View;

    .line 33
    .line 34
    const/16 v0, 0x8

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$2;->this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$iv:Lcom/narvii/widget/NVImageView;

    .line 42
    .line 43
    sget v0, Lcom/narvii/lib/R$id;->hq_image_load_finish:I

    .line 44
    .line 45
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 49
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object p2, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$2;->this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    .line 10
    .line 11
    iget-object p2, p2, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$iv:Lcom/narvii/widget/NVImageView;

    .line 12
    .line 13
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$2;->this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$iv:Lcom/narvii/widget/NVImageView;

    .line 24
    .line 25
    sget p2, Lcom/narvii/lib/R$id;->hq_image_load_finish:I

    .line 26
    .line 27
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$2;->this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$item:Lcom/narvii/model/Media;

    .line 35
    .line 36
    const/16 p2, 0x64

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lcom/narvii/model/Media;->setDownloadProgress(I)V

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$2;->this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$pro:Landroid/widget/ProgressBar;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 47
    .line 48
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$2;->this$2:Lcom/narvii/media/MediaGalleryActivity$Adapter$2;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$downloadingContainer:Landroid/view/View;

    .line 51
    .line 52
    const/16 p2, 0x8

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 58
    .line 59
    iget-object p2, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$2;->val$fakeProgressRunnable:Ljava/lang/Runnable;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method
