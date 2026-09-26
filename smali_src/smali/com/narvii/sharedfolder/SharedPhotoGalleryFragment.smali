.class public Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;
    }
.end annotation


# static fields
.field public static final FILE_LIST:Lcom/narvii/util/statistics/TmpValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Ljava/util/List<",
            "Lcom/narvii/model/SharedFile;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field count:I

.field public galleryAdapter:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;

.field public hideDetailStatusManager:Lcom/narvii/sharedfolder/HideDetailStatusManager;

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/SharedFile;",
            ">;"
        }
    .end annotation
.end field

.field photoDeleteCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/SharedFile;",
            ">;"
        }
    .end annotation
.end field

.field viewPager:Lcom/narvii/widget/NVViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->FILE_LIST:Lcom/narvii/util/statistics/TmpValue;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->photoDeleteCallback:Lcom/narvii/util/Callback;

    .line 11
    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->updateTitle()V

    return-void
.end method

.method private updateTitle()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->count:I

    .line 8
    .line 9
    if-gez v0, :cond_1

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    iput v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->count:I

    .line 13
    .line 14
    :cond_1
    iget v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->count:I

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 32
    move-result v1

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v1, "/"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    iget v1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->count:I

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    :goto_0
    return-void
.end method


# virtual methods
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

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0a0079

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    check-cast p1, Landroid/widget/ImageView;

    .line 25
    .line 26
    .line 27
    const v0, 0x7f0803b5

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 31
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "list"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-class v1, Lcom/narvii/model/SharedFile;

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->list:Ljava/util/List;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    sget-object v0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->FILE_LIST:Lcom/narvii/util/statistics/TmpValue;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/util/statistics/TmpValue;->getAndRemove()Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Ljava/util/List;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->list:Ljava/util/List;

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 47
    return-void

    .line 48
    .line 49
    :cond_0
    new-instance v0, Lcom/narvii/sharedfolder/HideDetailStatusManager;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0}, Lcom/narvii/sharedfolder/HideDetailStatusManager;-><init>()V

    .line 53
    .line 54
    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->hideDetailStatusManager:Lcom/narvii/sharedfolder/HideDetailStatusManager;

    .line 55
    const/4 v0, 0x0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    const-string v0, "count"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 64
    move-result v0

    .line 65
    .line 66
    iput v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->count:I

    .line 67
    .line 68
    if-nez p1, :cond_1

    .line 69
    .line 70
    const-string/jumbo p1, "statistics"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 77
    .line 78
    const-string v0, "Detailed Page Opened"

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    const-string v0, "Detailed Page Opened Total"

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    .line 91
    const-string/jumbo v0, "type"

    .line 92
    .line 93
    const-string/jumbo v1, "shared folder media"

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    const-string v1, "Source"

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 107
    .line 108
    const-string v0, "Detailed shared folder media Page Opened"

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 112
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d02d5

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0ac1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/widget/NVViewPager;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    .line 15
    const/4 v0, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 19
    .line 20
    new-instance p1, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    iget-object v5, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->list:Ljava/util/List;

    .line 31
    .line 32
    const-string/jumbo v0, "stopTime"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v6

    .line 37
    .line 38
    const-string/jumbo v0, "start"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 42
    move-result v7

    .line 43
    .line 44
    const-string v0, "isEnd"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 48
    move-result v8

    .line 49
    move-object v1, p1

    .line 50
    move-object v2, p0

    .line 51
    move-object v4, p0

    .line 52
    .line 53
    .line 54
    invoke-direct/range {v1 .. v8}, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;-><init>(Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;Landroidx/fragment/app/FragmentManager;Lcom/narvii/app/NVContext;Ljava/util/List;Ljava/lang/String;IZ)V

    .line 55
    .line 56
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->galleryAdapter:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getUserVisibleHint()Z

    .line 60
    move-result v0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lcom/narvii/util/FixedFragmentStatePagerAdapter;->setUserVisibleHint(Z)V

    .line 64
    .line 65
    if-nez p2, :cond_0

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_0
    const-string p1, "adapter"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 72
    .line 73
    :goto_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    .line 74
    .line 75
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->galleryAdapter:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 79
    .line 80
    const-string p1, "position"

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 84
    move-result p1

    .line 85
    .line 86
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, p1}, Lcom/narvii/widget/NVViewPager;->setCurrentPosition(I)V

    .line 90
    .line 91
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    .line 92
    .line 93
    new-instance p2, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$2;

    .line 94
    .line 95
    .line 96
    invoke-direct {p2, p0}, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$2;-><init>(Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 100
    .line 101
    .line 102
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->updateTitle()V

    .line 103
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
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->galleryAdapter:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;

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
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->galleryAdapter:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;

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
