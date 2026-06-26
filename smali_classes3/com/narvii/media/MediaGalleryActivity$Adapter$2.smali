.class Lcom/narvii/media/MediaGalleryActivity$Adapter$2;
.super Ljava/lang/Object;
.source "MediaGalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/MediaGalleryActivity$Adapter;->getView(Landroid/view/View;Lcom/narvii/model/Media;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/media/MediaGalleryActivity$Adapter;

.field final synthetic val$btnLoadHQ:Landroid/view/View;

.field final synthetic val$downloadingContainer:Landroid/view/View;

.field final synthetic val$il:Lcom/narvii/util/image/NVImageLoader;

.field final synthetic val$item:Lcom/narvii/model/Media;

.field final synthetic val$iv:Lcom/narvii/widget/NVImageView;

.field final synthetic val$pro:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaGalleryActivity$Adapter;Landroid/view/View;Landroid/view/View;Landroid/widget/ProgressBar;Lcom/narvii/model/Media;Lcom/narvii/widget/NVImageView;Lcom/narvii/util/image/NVImageLoader;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->this$1:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    iput-object p2, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$downloadingContainer:Landroid/view/View;

    iput-object p3, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$btnLoadHQ:Landroid/view/View;

    iput-object p4, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$pro:Landroid/widget/ProgressBar;

    iput-object p5, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$item:Lcom/narvii/model/Media;

    iput-object p6, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$iv:Lcom/narvii/widget/NVImageView;

    iput-object p7, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$il:Lcom/narvii/util/image/NVImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 395
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$downloadingContainer:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 396
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$btnLoadHQ:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 398
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$pro:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$item:Lcom/narvii/model/Media;

    invoke-virtual {v0}, Lcom/narvii/model/Media;->getDownloadProgress()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 399
    new-instance p1, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$1;

    invoke-direct {p1, p0}, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$1;-><init>(Lcom/narvii/media/MediaGalleryActivity$Adapter$2;)V

    .line 417
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 418
    iget-object v0, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$il:Lcom/narvii/util/image/NVImageLoader;

    iget-object v1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$2;->val$item:Lcom/narvii/model/Media;

    iget-object v1, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    const-string v2, "uhq"

    invoke-static {v1, v2}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$2;

    invoke-direct {v2, p0, p1}, Lcom/narvii/media/MediaGalleryActivity$Adapter$2$2;-><init>(Lcom/narvii/media/MediaGalleryActivity$Adapter$2;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    return-void
.end method
