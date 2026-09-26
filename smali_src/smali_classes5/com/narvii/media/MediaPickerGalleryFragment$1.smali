.class Lcom/narvii/media/MediaPickerGalleryFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$1;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$1;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/media/MediaPickerGalleryFragment;->pager:Lcom/narvii/widget/NVViewPager;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    :goto_0
    if-ge v0, p1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$1;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/narvii/media/MediaPickerGalleryFragment;->pager:Lcom/narvii/widget/NVViewPager;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    sget v2, Lcom/narvii/lib/R$id;->image:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    instance-of v2, v1, Lcom/narvii/widget/TouchImageView;

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    check-cast v1, Lcom/narvii/widget/TouchImageView;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/narvii/widget/TouchImageView;->resetZoom()V

    .line 37
    .line 38
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_1
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$1;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/narvii/media/MediaPickerGalleryFragment;->updateSelectView()V

    .line 45
    return-void
.end method
