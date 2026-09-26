.class public Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;
.super Lcom/narvii/media/MediaPickerGalleryFragment;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/media/MediaPickerGalleryFragment;-><init>()V

    .line 4
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/media/MediaPickerGalleryFragment;->updateSelectView()V

    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/media/MediaPickerGalleryFragment;->updateSelectView()V

    .line 4
    return-void
.end method

.method static bridge synthetic r(Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->updateTitle()V

    return-void
.end method

.method private updateTitle()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->pager:Lcom/narvii/widget/NVViewPager;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->count:I

    .line 8
    .line 9
    if-gez v0, :cond_1

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    iput v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->count:I

    .line 13
    .line 14
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->pager:Lcom/narvii/widget/NVViewPager;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 23
    move-result v1

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "/"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    iget v1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->count:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getCurrentMediaItem()Lcom/narvii/media/MediaSelectItem;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->pager:Lcom/narvii/widget/NVViewPager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->galleryAdapter:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/narvii/adapter/FragmentGalleryAdapter;->getCount()I

    .line 14
    move-result v1

    .line 15
    .line 16
    if-ge v0, v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->galleryAdapter:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;->getMediaSelectItem(I)Lcom/narvii/media/MediaSelectItem;

    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/media/MediaPickerGalleryFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "count"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 9
    move-result p1

    .line 10
    .line 11
    iput p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->count:I

    .line 12
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/media/MediaPickerGalleryFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->pager:Lcom/narvii/widget/NVViewPager;

    .line 6
    .line 7
    new-instance p2, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {p2, p0}, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->updateTitle()V

    .line 17
    return-void
.end method

.method protected setUpPagerAdapter(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    .line 2
    new-instance v8, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    iget-object v4, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->mediaItems:Ljava/util/ArrayList;

    .line 13
    .line 14
    const-string v0, "stopTime"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v5

    .line 19
    .line 20
    const-string v0, "start"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 24
    move-result v6

    .line 25
    .line 26
    const-string v0, "isEnd"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 30
    move-result v7

    .line 31
    move-object v0, v8

    .line 32
    move-object v1, p0

    .line 33
    move-object v3, p0

    .line 34
    .line 35
    .line 36
    invoke-direct/range {v0 .. v7}, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;-><init>(Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;Landroidx/fragment/app/FragmentManager;Lcom/narvii/app/NVContext;Ljava/util/List;Ljava/lang/String;IZ)V

    .line 37
    .line 38
    iput-object v8, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->galleryAdapter:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getUserVisibleHint()Z

    .line 42
    move-result v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v8, v0}, Lcom/narvii/util/FixedFragmentStatePagerAdapter;->setUserVisibleHint(Z)V

    .line 46
    .line 47
    if-nez p1, :cond_0

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_0
    const-string v0, "adapter"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 54
    .line 55
    :goto_0
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment;->pager:Lcom/narvii/widget/NVViewPager;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->galleryAdapter:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 61
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->galleryAdapter:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/util/FixedFragmentStatePagerAdapter;->setUserVisibleHint(Z)V

    .line 11
    :cond_0
    return-void
.end method

.method protected updateChildrenVisibleHint(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment;->galleryAdapter:Lcom/narvii/sharedfolder/SharedPhotoGalleryPickFragment$GalleryAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/util/FixedFragmentStatePagerAdapter;->setUserVisibleHint(Z)V

    .line 8
    :cond_0
    return-void
.end method
