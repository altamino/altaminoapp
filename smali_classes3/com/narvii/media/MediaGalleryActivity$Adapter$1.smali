.class Lcom/narvii/media/MediaGalleryActivity$Adapter$1;
.super Ljava/lang/Object;
.source "MediaGalleryActivity.java"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


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

.field final synthetic val$item:Lcom/narvii/model/Media;

.field final synthetic val$iv:Lcom/narvii/widget/NVImageView;

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaGalleryActivity$Adapter;Landroid/widget/ProgressBar;Lcom/narvii/widget/NVImageView;Lcom/narvii/model/Media;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$1;->this$1:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    iput-object p2, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$1;->val$progressBar:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$1;->val$iv:Lcom/narvii/widget/NVImageView;

    iput-object p4, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$1;->val$item:Lcom/narvii/model/Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 2

    .line 378
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$1;->val$progressBar:Landroid/widget/ProgressBar;

    iget-object p3, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$1;->val$iv:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p3}, Lcom/narvii/widget/NVImageView;->getStatus()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 379
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$1;->this$1:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    iget-object p1, p1, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    invoke-virtual {p1}, Lcom/narvii/media/MediaGalleryActivity;->getCurrentMedia()Lcom/narvii/model/Media;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$1;->val$item:Lcom/narvii/model/Media;

    if-ne p1, p2, :cond_1

    .line 380
    iget-object p1, p0, Lcom/narvii/media/MediaGalleryActivity$Adapter$1;->this$1:Lcom/narvii/media/MediaGalleryActivity$Adapter;

    iget-object p1, p1, Lcom/narvii/media/MediaGalleryActivity$Adapter;->this$0:Lcom/narvii/media/MediaGalleryActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$string;->image_not_available:I

    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :cond_1
    return-void
.end method
