.class public Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;
.super Lcom/narvii/media/MediaPickerGalleryFragment;
.source "SharedPhotoGalleryPickFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;
    }
.end annotation


# instance fields
.field count:I

.field public galleryAdapter:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/narvii/media/MediaPickerGalleryFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->updateTitle()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;)V
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/narvii/media/MediaPickerGalleryFragment;->updateSelectView()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;)V
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/narvii/media/MediaPickerGalleryFragment;->updateSelectView()V

    return-void
.end method

.method private updateTitle()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->pager:Lcom/narvii/widget/NVViewPager;

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    iget v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->count:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->count:I

    .line 99
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->pager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getCurrentMediaItem()Lcom/narvii/media/MediaSelectItem;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->pager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-ltz v0, :cond_0

    .line 105
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->galleryAdapter:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;

    invoke-virtual {v1}, Lcom/narvii/adapter/FragmentGalleryAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->galleryAdapter:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;

    invoke-virtual {v1, v0}, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;->getMediaSelectItem(I)Lcom/narvii/media/MediaSelectItem;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/narvii/media/MediaPickerGalleryFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "count"

    .line 40
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->count:I

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 45
    invoke-super {p0, p1, p2}, Lcom/narvii/media/MediaPickerGalleryFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 46
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->pager:Lcom/narvii/widget/NVViewPager;

    new-instance p2, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$1;

    invoke-direct {p2, p0}, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 65
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->updateTitle()V

    return-void
.end method

.method protected setUpPagerAdapter(Landroid/os/Bundle;)V
    .locals 9

    .line 70
    new-instance v8, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v4, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->mediaItems:Ljava/util/ArrayList;

    const-string v0, "stopTime"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "start"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v6

    const-string v0, "isEnd"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v7

    move-object v0, v8

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;-><init>(Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;Landroid/support/v4/app/FragmentManager;Lcom/narvii/app/NVContext;Ljava/util/List;Ljava/lang/String;IZ)V

    iput-object v8, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->galleryAdapter:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;

    .line 71
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->galleryAdapter:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getUserVisibleHint()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/FixedFragmentStatePagerAdapter;->setUserVisibleHint(Z)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "adapter"

    .line 73
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 74
    :goto_0
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->pager:Lcom/narvii/widget/NVViewPager;

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->galleryAdapter:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    .line 80
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->galleryAdapter:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0, p1}, Lcom/narvii/util/FixedFragmentStatePagerAdapter;->setUserVisibleHint(Z)V

    :cond_0
    return-void
.end method

.method protected updateChildrenVisibleHint(Z)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->galleryAdapter:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0, p1}, Lcom/narvii/util/FixedFragmentStatePagerAdapter;->setUserVisibleHint(Z)V

    :cond_0
    return-void
.end method
