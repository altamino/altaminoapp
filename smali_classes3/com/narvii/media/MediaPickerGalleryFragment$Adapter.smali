.class Lcom/narvii/media/MediaPickerGalleryFragment$Adapter;
.super Lcom/narvii/util/PagerGalleryAdapter;
.source "MediaPickerGalleryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/MediaPickerGalleryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/PagerGalleryAdapter<",
        "Lcom/narvii/media/MediaSelectItem;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/MediaPickerGalleryFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/media/MediaPickerGalleryFragment;)V
    .locals 1

    .line 332
    iput-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$Adapter;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 333
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$layout;->gallery_media:I

    invoke-direct {p0, p1, v0}, Lcom/narvii/util/PagerGalleryAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Lcom/narvii/media/MediaSelectItem;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    .line 338
    invoke-interface {p2}, Lcom/narvii/media/MediaSelectItem;->getSelectMedia()Lcom/narvii/model/Media;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 339
    :goto_0
    sget v0, Lcom/narvii/lib/R$id;->image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 340
    invoke-virtual {v0, p2}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 341
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    instance-of v1, v0, Lcom/narvii/widget/TouchImageView;

    if-eqz v1, :cond_2

    .line 343
    check-cast v0, Lcom/narvii/widget/TouchImageView;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/narvii/model/Media;->isImage()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {v0, p2}, Lcom/narvii/widget/TouchImageView;->setZoomEnabled(Z)V

    :cond_2
    return-object p1
.end method

.method public bridge synthetic getView(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    .line 329
    check-cast p2, Lcom/narvii/media/MediaSelectItem;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/media/MediaPickerGalleryFragment$Adapter;->getView(Landroid/view/View;Lcom/narvii/media/MediaSelectItem;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 350
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$Adapter;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    invoke-virtual {p1}, Lcom/narvii/media/MediaPickerGalleryFragment;->getCurrentMediaItem()Lcom/narvii/media/MediaSelectItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 351
    invoke-interface {p1}, Lcom/narvii/media/MediaSelectItem;->getSelectMedia()Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/narvii/media/MediaSelectItem;->getSelectMedia()Lcom/narvii/model/Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment$Adapter;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    invoke-interface {p1}, Lcom/narvii/media/MediaSelectItem;->getSelectMedia()Lcom/narvii/model/Media;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
