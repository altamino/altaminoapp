.class public Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;
.super Lcom/narvii/app/NVFragment;
.source "SharedPhotoGalleryFragment.java"


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

    .line 45
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    sput-object v0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->FILE_LIST:Lcom/narvii/util/statistics/TmpValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 48
    new-instance v0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;)V

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->photoDeleteCallback:Lcom/narvii/util/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->updateTitle()V

    return-void
.end method

.method private updateTitle()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    iget v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->count:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 150
    iput v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->count:I

    .line 152
    :cond_1
    iget v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->count:I

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 155
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 166
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090048

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f0802ae

    .line 94
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 62
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "list"

    .line 63
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/SharedFile;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->list:Ljava/util/List;

    .line 64
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->list:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->FILE_LIST:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual {v0}, Lcom/narvii/util/statistics/TmpValue;->getAndRemove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->list:Ljava/util/List;

    .line 66
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->list:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 72
    :cond_0
    new-instance v0, Lcom/narvii/sharedfolder/HideDetailStatusManager;

    invoke-direct {v0}, Lcom/narvii/sharedfolder/HideDetailStatusManager;-><init>()V

    iput-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->hideDetailStatusManager:Lcom/narvii/sharedfolder/HideDetailStatusManager;

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "count"

    .line 74
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->count:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02a5

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    .line 99
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f090818

    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVViewPager;

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    .line 101
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 102
    new-instance p1, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    iget-object v5, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->list:Ljava/util/List;

    const-string v0, "stopTime"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "start"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v7

    const-string v0, "isEnd"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v8

    move-object v1, p1

    move-object v2, p0

    move-object v4, p0

    invoke-direct/range {v1 .. v8}, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;-><init>(Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;Landroid/support/v4/app/FragmentManager;Lcom/narvii/app/NVContext;Ljava/util/List;Ljava/lang/String;IZ)V

    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->galleryAdapter:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;

    .line 103
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->galleryAdapter:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getUserVisibleHint()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/FixedFragmentStatePagerAdapter;->setUserVisibleHint(Z)V

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "adapter"

    .line 105
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 106
    :goto_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->galleryAdapter:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const-string p1, "position"

    .line 107
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    .line 108
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {p2, p1}, Lcom/narvii/widget/NVViewPager;->setCurrentPosition(I)V

    .line 109
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    new-instance p2, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$2;

    invoke-direct {p2, p0}, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$2;-><init>(Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 127
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->updateTitle()V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 132
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    .line 133
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->galleryAdapter:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p1}, Lcom/narvii/util/FixedFragmentStatePagerAdapter;->setUserVisibleHint(Z)V

    :cond_0
    return-void
.end method

.method protected updateChildrenVisibleHint(Z)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment;->galleryAdapter:Lcom/narvii/sharedfolder/SharedPhotoGalleryFragment$GalleryAdapter;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0, p1}, Lcom/narvii/util/FixedFragmentStatePagerAdapter;->setUserVisibleHint(Z)V

    :cond_0
    return-void
.end method
