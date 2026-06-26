.class Lcom/narvii/media/MediaPickerGalleryFragment$1;
.super Ljava/lang/Object;
.source "MediaPickerGalleryFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/MediaPickerGalleryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/MediaPickerGalleryFragment;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaPickerGalleryFragment;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$1;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 68
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$1;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    iget-object p1, p1, Lcom/narvii/media/MediaPickerGalleryFragment;->pager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$1;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    iget-object v1, v1, Lcom/narvii/media/MediaPickerGalleryFragment;->pager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    sget v2, Lcom/narvii/lib/R$id;->image:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 72
    instance-of v2, v1, Lcom/narvii/widget/TouchImageView;

    if-eqz v2, :cond_0

    .line 73
    check-cast v1, Lcom/narvii/widget/TouchImageView;

    invoke-virtual {v1}, Lcom/narvii/widget/TouchImageView;->resetZoom()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$1;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    invoke-virtual {p1}, Lcom/narvii/media/MediaPickerGalleryFragment;->updateSelectView()V

    return-void
.end method
