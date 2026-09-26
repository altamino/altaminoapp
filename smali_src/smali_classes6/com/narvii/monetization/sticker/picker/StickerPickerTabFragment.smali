.class public Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;
.super Lcom/narvii/app/TabPagerFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;
.implements Lcom/narvii/video/attachment/sticker/IEditorStickerPicker;
.implements Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;
.implements Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$OnStickerCollectionSelectListener;
.implements Lcom/narvii/widget/NVPagerTabLayout$OnTabItemClickListener;
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;
    }
.end annotation


# instance fields
.field private affiliationsService:Lcom/narvii/community/AffiliationsService;

.field collectionIdSelected:Z

.field private communityStickers:Lcom/narvii/widget/ThumbImageView;

.field private currentSticker:Lcom/narvii/model/Sticker;

.field private dialog:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

.field private editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

.field editorTheme:Z

.field private errorView:Landroid/view/View;

.field private installingSticker:Lcom/narvii/video/model/StickerInfoPack;

.field private internalStickerSelectListener:Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

.field mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

.field private progressView:Landroid/view/View;

.field private retryView:Landroid/view/View;

.field private sharedDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field private sharedEmptyObserver:Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;

.field private sharedFailRunnable:Ljava/lang/Runnable;

.field private sharedFinishRunnable:Ljava/lang/Runnable;

.field private sharedObserver:Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;

.field showSelected:Z

.field showingTrial:Z

.field stickerCollectionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
            ">;"
        }
    .end annotation
.end field

.field private stickerFromLocalPicker:Z

.field private stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

.field stickerPreviewListener:Lcom/narvii/monetization/sticker/StickerPreviewListener;

.field private stickerSelectListener:Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

.field private stickerService:Lcom/narvii/monetization/sticker/StickerService;

.field tabLayout:Landroid/view/View;

.field private trialLayout:Landroid/view/View;

.field trialStickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

.field private videoManager:Lcom/narvii/video/services/VideoManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/TabPagerFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->collectionIdSelected:Z

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$1;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$1;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->internalStickerSelectListener:Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$2;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$2;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerPreviewListener:Lcom/narvii/monetization/sticker/StickerPreviewListener;

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$3;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$3;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedEmptyObserver:Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;

    .line 28
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedDialog:Lcom/narvii/util/dialog/ProgressDialog;

    return-object p0
.end method

.method static bridge synthetic B(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedFailRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic C(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedFinishRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic D(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/monetization/sticker/picker/StickerSelectListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerSelectListener:Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

    return-object p0
.end method

.method static bridge synthetic E(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/monetization/sticker/StickerService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    return-object p0
.end method

.method static bridge synthetic F(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Lcom/narvii/model/Sticker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->currentSticker:Lcom/narvii/model/Sticker;

    return-void
.end method

.method static bridge synthetic G(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedFailRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic H(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic I(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->showSharedStickerPackPicker(Z)V

    return-void
.end method

.method static bridge synthetic J(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->showTrial(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/widget/NVViewPager;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/widget/NVViewPager;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/widget/NVViewPager;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/widget/NVViewPager;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 3
    return-object p0
.end method

.method private dismiss(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;->forsakePreviewSticker()V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {v0}, Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;->savePreviewSticker()V

    .line 14
    .line 15
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/video/services/VideoManager;->abortAnimatedStickerConvertTasks()V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/video/services/VideoManager;->removeAllViewInstallStickerCallback()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->t(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->i0()Z

    .line 46
    return-void
.end method

.method private filterStickerCollections(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorTheme:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isPersonal()Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 33
    :cond_2
    :goto_0
    return-object p1
.end method

.method private getTabView(Lcom/narvii/monetization/sticker/model/StickerCollection;)Landroid/view/View;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    const v1, 0x7f0d070f

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    iget-boolean v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorTheme:Z

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    .line 27
    const v2, 0x7f0807f4

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_0
    const v2, 0x7f0807f3

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 39
    .line 40
    .line 41
    const v1, 0x7f0a0e21

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    check-cast v1, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isLocalMood()Z

    .line 51
    move-result v2

    .line 52
    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    iget-object v2, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->smallIcon:Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 59
    goto :goto_1

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    iget-object v3, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->smallIcon:Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2, v3}, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;->setStickerImageUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_1
    const v1, 0x7f0a0a19

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->notAvailable()Z

    .line 79
    move-result p1

    .line 80
    .line 81
    .line 82
    invoke-static {v1, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 83
    return-object v0
.end method

.method private goToStore()V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "StoreIcon"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 16
    .line 17
    const-class v0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    const-string v1, "Source"

    .line 24
    .line 25
    const-string v2, "Keyboard"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    const-string v1, "sectionGroupId"

    .line 31
    .line 32
    const-string v2, "sticker"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 39
    move-result v1

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    const-string v1, "__communityId"

    .line 44
    const/4 v2, 0x0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-static {p0, v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 51
    return-void
.end method

.method private synthetic lambda$onViewCreated$2(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->retry()V

    .line 4
    return-void
.end method

.method private synthetic lambda$onViewCreated$3(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    sget-object p1, Lcom/narvii/logging/ActSemantic;->expand:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v0, "SharedStickerPack"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 16
    const/4 p1, 0x1

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->showSharedStickerPackPicker(Z)V

    .line 20
    return-void
.end method

.method private synthetic lambda$onViewCreated$4(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    sget-object p1, Lcom/narvii/logging/ActSemantic;->popUp:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v0, "More"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Lcom/narvii/monetization/sticker/StickerHelper;->pickStickerImage(Lcom/narvii/media/MediaPickerFragment;Z)V

    .line 24
    return-void
.end method

.method private synthetic lambda$onViewCreated$5(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->goToStore()V

    .line 4
    return-void
.end method

.method private synthetic lambda$onViewCreated$6(Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->dismiss(Z)V

    .line 5
    return-void
.end method

.method private synthetic lambda$onViewCreated$7(Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->dismiss(Z)V

    .line 5
    return-void
.end method

.method private synthetic lambda$onViewCreated$8(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->goToStore()V

    .line 4
    return-void
.end method

.method private synthetic lambda$onViewCreated$9(Lcom/narvii/video/model/StickerInfoPack;Lcom/narvii/model/Sticker;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;-><init>()V

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p1, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->collectionId:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->selectStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p2}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->setCurrentSticker(Lcom/narvii/model/Sticker;)V

    .line 16
    return-void
.end method

.method private synthetic lambda$showSharedStickerPackPicker$0(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedObserver:Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/StickerService;->removeSharedStickerPackObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V

    .line 8
    .line 9
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedFinishRunnable:Ljava/lang/Runnable;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedFailRunnable:Ljava/lang/Runnable;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    return-void
.end method

.method private synthetic lambda$showSharedStickerPackPicker$1(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->updateCommunityStickerView()V

    .line 4
    return-void
.end method

.method public static synthetic n(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->lambda$onViewCreated$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->lambda$onViewCreated$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Lcom/narvii/video/model/StickerInfoPack;Lcom/narvii/model/Sticker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->lambda$onViewCreated$9(Lcom/narvii/video/model/StickerInfoPack;Lcom/narvii/model/Sticker;)V

    return-void
.end method

.method public static synthetic q(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->lambda$onViewCreated$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->lambda$onViewCreated$4(Landroid/view/View;)V

    return-void
.end method

.method private resetTabList(Lcom/narvii/app/TabPagerAdapter;)V
    .locals 10

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    .line 8
    .line 9
    if-eqz v1, :cond_3

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    :goto_0
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 16
    move-result v2

    .line 17
    .line 18
    if-ge v1, v2, :cond_3

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    .line 27
    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 30
    move-result v2

    .line 31
    .line 32
    add-int/lit8 v2, v2, -0x1

    .line 33
    sub-int/2addr v2, v1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    move v2, v1

    .line 36
    .line 37
    :goto_1
    iget-object v3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    .line 38
    .line 39
    .line 40
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    check-cast v2, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    if-nez v3, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 57
    move-result-object v3

    .line 58
    :goto_2
    move-object v5, v3

    .line 59
    goto :goto_3

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-virtual {v2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 63
    move-result-object v3

    .line 64
    goto :goto_2

    .line 65
    .line 66
    .line 67
    :goto_3
    invoke-direct {p0, v2}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->getTabView(Lcom/narvii/monetization/sticker/model/StickerCollection;)Landroid/view/View;

    .line 68
    move-result-object v7

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isLocalMood()Z

    .line 72
    move-result v3

    .line 73
    .line 74
    if-eqz v3, :cond_2

    .line 75
    .line 76
    new-instance v9, Landroid/os/Bundle;

    .line 77
    .line 78
    .line 79
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 80
    .line 81
    const-string v2, "source"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object v3

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    new-instance v2, Lcom/narvii/app/TabPagerAdapter$TabInfo;

    .line 91
    const/4 v6, 0x0

    .line 92
    .line 93
    const-class v8, Lcom/narvii/monetization/sticker/picker/MoodPickerListFragment;

    .line 94
    move-object v4, v2

    .line 95
    .line 96
    .line 97
    invoke-direct/range {v4 .. v9}, Lcom/narvii/app/TabPagerAdapter$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 98
    goto :goto_4

    .line 99
    .line 100
    :cond_2
    new-instance v9, Landroid/os/Bundle;

    .line 101
    .line 102
    .line 103
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getLiteStickerCollection()Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 107
    move-result-object v2

    .line 108
    .line 109
    .line 110
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 111
    move-result-object v2

    .line 112
    .line 113
    const-string v3, "stickerCollection"

    .line 114
    .line 115
    .line 116
    invoke-virtual {v9, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    new-instance v2, Lcom/narvii/app/TabPagerAdapter$TabInfo;

    .line 119
    const/4 v6, 0x0

    .line 120
    .line 121
    const-class v8, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 122
    move-object v4, v2

    .line 123
    .line 124
    .line 125
    invoke-direct/range {v4 .. v9}, Lcom/narvii/app/TabPagerAdapter$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 126
    .line 127
    .line 128
    :goto_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    add-int/lit8 v1, v1, 0x1

    .line 131
    goto :goto_0

    .line 132
    .line 133
    .line 134
    :cond_3
    invoke-virtual {p1, v0}, Lcom/narvii/app/TabPagerAdapter;->setTabs(Ljava/util/List;)V

    .line 135
    return-void
.end method

.method private retry()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerService;->refreshStickerCollectionInfo(Z)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->updateViews()V

    .line 10
    return-void
.end method

.method public static synthetic s(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->lambda$showSharedStickerPackPicker$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showSharedStickerPackPicker(Z)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->dialog:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_5

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedObserver:Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)V

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedObserver:Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedObserver:Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lcom/narvii/monetization/sticker/StickerService;->removeSharedStickerPackObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/StickerService;->getSharedStickerPackList()Ljava/util/List;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 35
    move-result p1

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    const v0, 0x7f120d70

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 52
    return-void

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 56
    move-result p1

    .line 57
    .line 58
    if-eqz p1, :cond_4

    .line 59
    .line 60
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 61
    .line 62
    if-nez p1, :cond_2

    .line 63
    .line 64
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 72
    .line 73
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 74
    .line 75
    :cond_2
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 79
    .line 80
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 81
    .line 82
    new-instance v0, Lcom/narvii/monetization/sticker/picker/i;

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/picker/i;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 89
    .line 90
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/StickerService;->isSharedRequesting()Z

    .line 94
    move-result p1

    .line 95
    .line 96
    if-nez p1, :cond_3

    .line 97
    .line 98
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 99
    const/4 v0, 0x1

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/StickerService;->refreshSharedStickerPackList(Z)V

    .line 103
    .line 104
    :cond_3
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 105
    .line 106
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedObserver:Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/StickerService;->addSharedStickerPackListObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V

    .line 110
    return-void

    .line 111
    .line 112
    :cond_4
    new-instance p1, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 113
    .line 114
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 115
    .line 116
    iget v2, v2, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackCount:I

    .line 117
    .line 118
    .line 119
    invoke-direct {p1, p0, p0, v0, v2}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$OnStickerCollectionSelectListener;Ljava/util/List;I)V

    .line 120
    .line 121
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->dialog:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 122
    .line 123
    new-instance v0, Lcom/narvii/monetization/sticker/picker/j;

    .line 124
    .line 125
    .line 126
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/picker/j;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 130
    .line 131
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 132
    .line 133
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedObserver:Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/StickerService;->removeSharedStickerPackObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V

    .line 137
    .line 138
    .line 139
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 140
    move-result p1

    .line 141
    .line 142
    if-nez p1, :cond_7

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    .line 146
    move-result p1

    .line 147
    .line 148
    if-eqz p1, :cond_6

    .line 149
    goto :goto_0

    .line 150
    .line 151
    :cond_6
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->dialog:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->refreshData()V

    .line 155
    .line 156
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->dialog:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 157
    .line 158
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->trialStickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->setSelectedStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 162
    .line 163
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->dialog:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->show()V

    .line 167
    .line 168
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v1}, Lcom/narvii/monetization/sticker/StickerService;->refreshSharedStickerPackList(Z)V

    .line 172
    .line 173
    .line 174
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->updateCommunityStickerView()V

    .line 175
    :cond_7
    :goto_0
    return-void
.end method

.method private showTrial(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->trialLayout:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->showingTrial:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/app/TabPagerFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    xor-int/lit8 v1, p1, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVPagerTabLayout;->setShowSelectedStatus(Z)V

    .line 17
    .line 18
    :cond_0
    if-nez p1, :cond_1

    .line 19
    const/4 p1, 0x0

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->trialStickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->dialog:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->updateCommunityStickerView()V

    .line 27
    return-void
.end method

.method public static synthetic t(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->lambda$onViewCreated$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->lambda$showSharedStickerPackPicker$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private updateCommunityStickerView()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    const v1, 0x7f0a0386

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->communityStickers:Lcom/narvii/widget/ThumbImageView;

    .line 23
    .line 24
    const-string v0, "community"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 31
    .line 32
    const-string v1, "config"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 42
    move-result v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->dialog:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 49
    const/4 v2, 0x0

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 55
    move-result v1

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->communityStickers:Lcom/narvii/widget/ThumbImageView;

    .line 60
    .line 61
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->communityStickers:Lcom/narvii/widget/ThumbImageView;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Lcom/narvii/widget/ThumbImageView;->setShadowColor(I)V

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->communityStickers:Lcom/narvii/widget/ThumbImageView;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2}, Lcom/narvii/widget/ThumbImageView;->setShadowSize(I)V

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->communityStickers:Lcom/narvii/widget/ThumbImageView;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    const v3, 0x7f080620

    .line 84
    .line 85
    .line 86
    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    goto :goto_1

    .line 92
    .line 93
    :cond_1
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->communityStickers:Lcom/narvii/widget/ThumbImageView;

    .line 94
    .line 95
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 99
    .line 100
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->communityStickers:Lcom/narvii/widget/ThumbImageView;

    .line 101
    .line 102
    if-eqz v0, :cond_2

    .line 103
    .line 104
    iget-object v0, v0, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 105
    goto :goto_0

    .line 106
    :cond_2
    const/4 v0, 0x0

    .line 107
    .line 108
    .line 109
    :goto_0
    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 110
    .line 111
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->communityStickers:Lcom/narvii/widget/ThumbImageView;

    .line 112
    .line 113
    const/high16 v1, 0x66000000

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ThumbImageView;->setShadowColor(I)V

    .line 117
    .line 118
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->communityStickers:Lcom/narvii/widget/ThumbImageView;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 122
    move-result-object v1

    .line 123
    .line 124
    const/high16 v3, 0x40800000    # 4.0f

    .line 125
    .line 126
    .line 127
    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 128
    move-result v1

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ThumbImageView;->setShadowSize(I)V

    .line 132
    .line 133
    .line 134
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    .line 138
    const v1, 0x7f0a0388

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    move-result-object v0

    .line 143
    .line 144
    iget-boolean v3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->showingTrial:Z

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 151
    move-result-object v0

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    move-result-object v0

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 159
    move-result v1

    .line 160
    .line 161
    if-eqz v1, :cond_3

    .line 162
    .line 163
    const/16 v2, 0x8

    .line 164
    .line 165
    .line 166
    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 167
    return-void
.end method

.method private updateViews()V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/StickerService;->getStickerCollectionList()Ljava/util/List;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->filterStickerCollections(Ljava/util/List;)Ljava/util/List;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/StickerService;->getError()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    .line 28
    const/4 v2, 0x1

    .line 29
    const/4 v3, 0x0

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 35
    move-result v1

    .line 36
    .line 37
    if-lez v1, :cond_1

    .line 38
    move v1, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v1, v3

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    move-result v0

    .line 45
    xor-int/2addr v0, v2

    .line 46
    .line 47
    new-instance v2, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    .line 54
    move-result v2

    .line 55
    const/4 v4, 0x4

    .line 56
    .line 57
    const/16 v5, 0x8

    .line 58
    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->tabLayout:Landroid/view/View;

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    move v6, v3

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move v6, v4

    .line 67
    .line 68
    .line 69
    :goto_1
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 70
    goto :goto_2

    .line 71
    .line 72
    :cond_3
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->tabLayout:Landroid/view/View;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    :goto_2
    iget-object v2, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 78
    .line 79
    if-eqz v1, :cond_4

    .line 80
    move v4, v3

    .line 81
    .line 82
    .line 83
    :cond_4
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->progressView:Landroid/view/View;

    .line 86
    .line 87
    if-nez v1, :cond_6

    .line 88
    .line 89
    if-eqz v0, :cond_5

    .line 90
    goto :goto_3

    .line 91
    :cond_5
    move v4, v3

    .line 92
    goto :goto_4

    .line 93
    :cond_6
    :goto_3
    move v4, v5

    .line 94
    .line 95
    .line 96
    :goto_4
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->errorView:Landroid/view/View;

    .line 99
    .line 100
    if-nez v1, :cond_7

    .line 101
    .line 102
    if-eqz v0, :cond_7

    .line 103
    goto :goto_5

    .line 104
    :cond_7
    move v3, v5

    .line 105
    .line 106
    .line 107
    :goto_5
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 108
    return-void
.end method

.method public static synthetic v(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->lambda$onViewCreated$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->lambda$onViewCreated$5(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/model/Sticker;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->currentSticker:Lcom/narvii/model/Sticker;

    return-object p0
.end method

.method static bridge synthetic y(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->dialog:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    return-object p0
.end method

.method static bridge synthetic z(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/monetization/sticker/picker/StickerSelectListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->internalStickerSelectListener:Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

    return-object p0
.end method


# virtual methods
.method protected canSendActiveLog(Z)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->canSendActiveLog(Z)Z

    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public correctScrollTab()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/widget/NVPagerTabLayout;->scrollToCurrentPosition()V

    .line 10
    :cond_0
    return-void
.end method

.method protected createAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0, v1, v2}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->resetTabList(Lcom/narvii/app/TabPagerAdapter;)V

    .line 17
    return-object v0
.end method

.method public getCurrentSelectedCollectionId()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->getCurIndex()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 20
    move-result v1

    .line 21
    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    .line 24
    sub-int v0, v1, v0

    .line 25
    .line 26
    :cond_0
    if-ltz v0, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    .line 29
    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 32
    move-result v1

    .line 33
    .line 34
    if-ge v0, v1, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    .line 37
    .line 38
    .line 39
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorTheme:Z

    if-eqz v0, :cond_0

    const-string v0, "sticker_picker"

    return-object v0

    :cond_0
    const-string v0, "sticker_keyboard"

    return-object v0
.end method

.method public isFinalPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public notifyPagerSelectedStickerChanged(Lcom/narvii/model/Sticker;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-virtual {v0}, Lcom/narvii/app/TabPagerAdapter;->getCount()I

    .line 13
    move-result v2

    .line 14
    .line 15
    if-ge v1, v2, :cond_3

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/app/TabPagerAdapter;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    instance-of v3, v2, Lcom/narvii/monetization/sticker/picker/MoodPickerListFragment;

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    move-object v3, v2

    .line 25
    .line 26
    check-cast v3, Lcom/narvii/monetization/sticker/picker/MoodPickerListFragment;

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    const/4 v4, 0x0

    .line 30
    goto :goto_1

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/Sticker;->getMoodUnicode()Ljava/lang/String;

    .line 34
    move-result-object v4

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-virtual {v3, v4}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->setMood(Ljava/lang/String;)V

    .line 38
    .line 39
    :cond_1
    instance-of v3, v2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 40
    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    check-cast v2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->setSelectedSticker(Lcom/narvii/model/Sticker;)V

    .line 47
    .line 48
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 49
    goto :goto_0

    .line 50
    .line 51
    .line 52
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    const-string v1, "trial"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    check-cast v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 62
    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->setSelectedSticker(Lcom/narvii/model/Sticker;)V

    .line 67
    :cond_4
    return-void
.end method

.method public onAffiliationChanged()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isInVisitorMode()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isCurrentCommunityJoined()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerService;->refreshStickerCollectionInfo(Z)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Lcom/narvii/community/AffiliationsService;->removeAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 26
    :cond_0
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorTheme:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    const/4 p1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->dismiss(Z)V

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->dialog:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->dismiss()V

    .line 11
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "showSelected"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->showSelected:Z

    .line 12
    .line 13
    const-string v0, "sticker"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    check-cast v1, Lcom/narvii/monetization/sticker/StickerService;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 22
    .line 23
    const-string v1, "videoManager"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    check-cast v2, Lcom/narvii/video/services/VideoManager;

    .line 30
    .line 31
    iput-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 35
    move-result v2

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v0}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    check-cast v0, Lcom/narvii/monetization/sticker/StickerService;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 50
    .line 51
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/StickerService;->isStickerPackListRefreshedThisSession()Z

    .line 55
    move-result v0

    .line 56
    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 60
    const/4 v2, 0x0

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Lcom/narvii/monetization/sticker/StickerService;->refreshStickerCollectionInfo(Z)V

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isVisitorNotJoined()Z

    .line 67
    move-result v0

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    const-string v0, "affiliations"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    check-cast v0, Lcom/narvii/community/AffiliationsService;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p0}, Lcom/narvii/community/AffiliationsService;->addAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 83
    .line 84
    :cond_2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p0}, Lcom/narvii/monetization/sticker/StickerService;->addStickerCollectionListObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V

    .line 88
    .line 89
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 90
    .line 91
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedEmptyObserver:Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v2}, Lcom/narvii/monetization/sticker/StickerService;->addSharedStickerPackListObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V

    .line 95
    .line 96
    if-eqz p1, :cond_3

    .line 97
    .line 98
    const-string v0, "collectionIdSelected"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 102
    move-result p1

    .line 103
    .line 104
    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->collectionIdSelected:Z

    .line 105
    .line 106
    :cond_3
    const-string p1, "source"

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    const-string v0, "editor"

    .line 113
    .line 114
    .line 115
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 116
    move-result p1

    .line 117
    .line 118
    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorTheme:Z

    .line 119
    .line 120
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    .line 121
    .line 122
    .line 123
    invoke-direct {p1, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 124
    .line 125
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    const-string v0, "mediaPicker"

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 135
    move-result-object p1

    .line 136
    .line 137
    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    .line 138
    .line 139
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 140
    .line 141
    if-nez p1, :cond_4

    .line 142
    .line 143
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    .line 144
    .line 145
    .line 146
    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    .line 147
    .line 148
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 152
    move-result-object p1

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 156
    move-result-object p1

    .line 157
    .line 158
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 162
    move-result-object p1

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 166
    .line 167
    :cond_4
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 174
    move-result-object p1

    .line 175
    .line 176
    check-cast p1, Lcom/narvii/video/services/VideoManager;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, p0}, Lcom/narvii/video/services/VideoManager;->registerStickerInstallCallback(Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;)V

    .line 180
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
    iget-boolean p3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorTheme:Z

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    .line 8
    const p3, 0x7f0d0326

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    .line 15
    :cond_0
    const-string p3, "tabBottom"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 19
    move-result p3

    .line 20
    .line 21
    if-eqz p3, :cond_1

    .line 22
    .line 23
    .line 24
    const p3, 0x7f0d0325

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    .line 31
    .line 32
    :cond_1
    const p3, 0x7f0d0324

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "videoManager"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/video/services/VideoManager;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/video/services/VideoManager;->unregisterStickerInstallCallback()V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedEmptyObserver:Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerService;->removeSharedStickerPackObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lcom/narvii/monetization/sticker/StickerService;->removeStickerCollectionListObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V

    .line 24
    .line 25
    .line 26
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 34
    :cond_0
    return-void
.end method

.method public onEditorStickerRemoved()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->setCurrentSticker(Lcom/narvii/model/Sticker;)V

    .line 5
    return-void
.end method

.method public onListChanged()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->getCurrentSelectedCollectionId()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->updateViews()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->resetPagerAdapter(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public onLocalAnimatedStickerConvertTerminated()V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorTheme:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerFromLocalPicker:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->installingSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lcom/narvii/video/services/VideoManager;->abortAnimatedStickerConvertTask(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->installingSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    move-object v0, v1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->installingSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-static {v0}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 39
    const/4 v0, 0x0

    .line 40
    .line 41
    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerFromLocalPicker:Z

    .line 42
    .line 43
    iput-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->installingSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 44
    :cond_1
    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorTheme:Z

    .line 3
    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    if-eqz p1, :cond_6

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-lez v0, :cond_6

    .line 13
    .line 14
    const-string v0, "photo"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, Lcom/narvii/model/Media;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    if-eqz p1, :cond_5

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-nez v0, :cond_0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    const/4 v0, 0x2

    .line 46
    .line 47
    if-nez p2, :cond_1

    .line 48
    move p2, v0

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_1
    const-string v2, "pickFrom"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 55
    move-result p2

    .line 56
    :goto_0
    const/4 v2, 0x1

    .line 57
    .line 58
    iput-boolean v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerFromLocalPicker:Z

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    new-instance v3, Lcom/narvii/model/Sticker;

    .line 65
    .line 66
    .line 67
    invoke-direct {v3}, Lcom/narvii/model/Sticker;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Lcom/narvii/util/FileUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    iput-object p1, v3, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    .line 78
    const/4 p1, 0x3

    .line 79
    .line 80
    if-ne p2, p1, :cond_2

    .line 81
    move v0, p1

    .line 82
    .line 83
    :cond_2
    iput v0, v3, Lcom/narvii/model/Sticker;->sourceType:I

    .line 84
    .line 85
    const-string p1, "videoManager"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    check-cast p1, Lcom/narvii/video/services/VideoManager;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v3, v2}, Lcom/narvii/video/services/VideoManager;->obtainInstalledStickerInfo(Lcom/narvii/model/Sticker;Ljava/lang/String;)Lcom/narvii/video/model/StickerInfoPack;

    .line 95
    move-result-object p2

    .line 96
    .line 97
    if-eqz p2, :cond_3

    .line 98
    .line 99
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

    .line 100
    .line 101
    if-eqz p1, :cond_6

    .line 102
    .line 103
    .line 104
    invoke-interface {p1, p2}, Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;->setPickedPreviewSticker(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 105
    goto :goto_2

    .line 106
    .line 107
    :cond_3
    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

    .line 108
    .line 109
    if-eqz p2, :cond_4

    .line 110
    .line 111
    .line 112
    invoke-interface {p2}, Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;->onBlockedInstallingSticker()V

    .line 113
    :cond_4
    const/4 p2, 0x0

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v3, v2, v1, p2}, Lcom/narvii/video/services/VideoManager;->installSticker(Lcom/narvii/model/Sticker;Ljava/lang/String;ZLcom/narvii/video/services/VideoManager$IInstallStickerCallback;)V

    .line 117
    goto :goto_2

    .line 118
    .line 119
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

    .line 120
    .line 121
    if-eqz p1, :cond_6

    .line 122
    .line 123
    .line 124
    invoke-interface {p1}, Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;->onStickerInstallFailed()V

    .line 125
    :cond_6
    :goto_2
    return-void
.end method

.method public onRequestFailed()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->updateViews()V

    .line 4
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "collectionIdSelected"

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->collectionIdSelected:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    return-void
.end method

.method public onStickerCollectionSelected(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 5

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    new-instance v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 12
    .line 13
    new-instance v1, Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getLiteStickerCollection()Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    const-string v3, "stickerCollection"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    const-string v2, "trial"

    .line 32
    const/4 v3, 0x1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorTheme:Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->setIsEditorTheme(Z)V

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->internalStickerSelectListener:Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->setStickerSelectListener(Lcom/narvii/monetization/sticker/picker/StickerSelectListener;)V

    .line 49
    .line 50
    iget-boolean v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->showSelected:Z

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->currentSticker:Lcom/narvii/model/Sticker;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->setSelectedSticker(Lcom/narvii/model/Sticker;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    .line 68
    const v4, 0x7f0a0d09

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v4, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->v(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, v3}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->showTrial(Z)V

    .line 79
    .line 80
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->trialStickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 81
    .line 82
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->dialog:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 83
    .line 84
    if-eqz p1, :cond_2

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->dismiss()V

    .line 88
    :cond_2
    return-void
.end method

.method public onStickerInstallFailed(Lcom/narvii/model/Sticker;)V
    .locals 2
    .param p1    # Lcom/narvii/model/Sticker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Sticker installed failed, collection id: "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, " id: "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    const-string v0, "NVEditor_Log"

    .line 32
    .line 33
    .line 34
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/4 p1, 0x0

    .line 36
    .line 37
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->installingSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 38
    const/4 p1, 0x0

    .line 39
    .line 40
    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerFromLocalPicker:Z

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;->onStickerInstallFailed()V

    .line 48
    :cond_0
    return-void
.end method

.method public onStickerInstallStart(Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 0
    .param p1    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->installingSticker:Lcom/narvii/video/model/StickerInfoPack;

    return-void
.end method

.method public onStickerInstalled(Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 2
    .param p1    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->installingSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerFromLocalPicker:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->currentSticker:Lcom/narvii/model/Sticker;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->currentSticker:Lcom/narvii/model/Sticker;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerFromLocalPicker:Z

    .line 37
    .line 38
    new-instance v0, Lcom/narvii/model/Sticker;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0}, Lcom/narvii/model/Sticker;-><init>()V

    .line 42
    .line 43
    iget-object v1, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    .line 44
    .line 45
    iput-object v1, v0, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v1, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    .line 48
    .line 49
    iput-object v1, v0, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->setCurrentSticker(Lcom/narvii/model/Sticker;)V

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, p1}, Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;->setPickedPreviewSticker(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 60
    :cond_1
    return-void
.end method

.method public onTabItemClicked(I)V
    .locals 1

    .line 1
    .line 2
    sget-object p1, Lcom/narvii/logging/ActSemantic;->tabSelected:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v0, "StickerPack"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    return-void

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    const-string v0, "trial"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->t(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 50
    :cond_1
    const/4 p1, 0x0

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->showTrial(Z)V

    .line 54
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/TabPagerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0d09

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    iput-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->trialLayout:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const p2, 0x102000d

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    iput-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->progressView:Landroid/view/View;

    .line 22
    .line 23
    .line 24
    const p2, 0x7f0a04fe

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    iput-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->errorView:Landroid/view/View;

    .line 31
    .line 32
    .line 33
    const p2, 0x7f0a0c38

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    iput-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->retryView:Landroid/view/View;

    .line 40
    .line 41
    new-instance v0, Lcom/narvii/monetization/sticker/picker/a;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/picker/a;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    .line 50
    const p2, 0x7f0a0aef

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    iput-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->tabLayout:Landroid/view/View;

    .line 57
    .line 58
    iget-object p2, p0, Lcom/narvii/app/TabPagerFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 59
    .line 60
    if-eqz p2, :cond_0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    .line 67
    invoke-static {p2}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 68
    move-result p2

    .line 69
    .line 70
    iget-object v0, p0, Lcom/narvii/app/TabPagerFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    const/high16 v2, 0x42480000    # 50.0f

    .line 77
    .line 78
    .line 79
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 80
    move-result v1

    .line 81
    .line 82
    mul-int/lit8 v1, v1, 0x3

    .line 83
    sub-int/2addr p2, v1

    .line 84
    .line 85
    div-int/lit8 p2, p2, 0x2

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p2}, Lcom/narvii/widget/NVPagerTabLayout;->setScrollOffset(I)V

    .line 89
    .line 90
    iget-object p2, p0, Lcom/narvii/app/TabPagerFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, p0}, Lcom/narvii/widget/NVPagerTabLayout;->setOnTabItemClickListener(Lcom/narvii/widget/NVPagerTabLayout$OnTabItemClickListener;)V

    .line 94
    .line 95
    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->updateCommunityStickerView()V

    .line 97
    .line 98
    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->communityStickers:Lcom/narvii/widget/ThumbImageView;

    .line 99
    .line 100
    new-instance v0, Lcom/narvii/monetization/sticker/picker/b;

    .line 101
    .line 102
    .line 103
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/picker/b;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    iget-boolean p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorTheme:Z

    .line 109
    .line 110
    .line 111
    const v0, 0x7f0a0da4

    .line 112
    .line 113
    if-eqz p2, :cond_1

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    move-result-object p2

    .line 118
    .line 119
    new-instance v0, Lcom/narvii/monetization/sticker/picker/c;

    .line 120
    .line 121
    .line 122
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/picker/c;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    .line 127
    .line 128
    const p2, 0x7f0a0db6

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    move-result-object p2

    .line 133
    .line 134
    new-instance v0, Lcom/narvii/monetization/sticker/picker/d;

    .line 135
    .line 136
    .line 137
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/picker/d;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    .line 142
    .line 143
    const p2, 0x7f0a0321

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    move-result-object p2

    .line 148
    .line 149
    new-instance v0, Lcom/narvii/monetization/sticker/picker/e;

    .line 150
    .line 151
    .line 152
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/picker/e;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    .line 157
    .line 158
    const p2, 0x7f0a0df8

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 162
    move-result-object p1

    .line 163
    .line 164
    new-instance p2, Lcom/narvii/monetization/sticker/picker/f;

    .line 165
    .line 166
    .line 167
    invoke-direct {p2, p0}, Lcom/narvii/monetization/sticker/picker/f;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    goto :goto_0

    .line 172
    .line 173
    .line 174
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 175
    move-result-object p1

    .line 176
    .line 177
    new-instance p2, Lcom/narvii/monetization/sticker/picker/g;

    .line 178
    .line 179
    .line 180
    invoke-direct {p2, p0}, Lcom/narvii/monetization/sticker/picker/g;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    .line 185
    .line 186
    :goto_0
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->updateViews()V

    .line 187
    const/4 p1, 0x0

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->resetPagerAdapter(Ljava/lang/String;)V

    .line 191
    .line 192
    iget-boolean p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorTheme:Z

    .line 193
    .line 194
    if-eqz p1, :cond_2

    .line 195
    .line 196
    const-string p1, "activeSticker"

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 200
    move-result-object p1

    .line 201
    .line 202
    const-class p2, Lcom/narvii/video/model/StickerInfoPack;

    .line 203
    .line 204
    .line 205
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 206
    move-result-object p1

    .line 207
    .line 208
    check-cast p1, Lcom/narvii/video/model/StickerInfoPack;

    .line 209
    .line 210
    if-eqz p1, :cond_2

    .line 211
    .line 212
    new-instance p2, Lcom/narvii/model/Sticker;

    .line 213
    .line 214
    .line 215
    invoke-direct {p2}, Lcom/narvii/model/Sticker;-><init>()V

    .line 216
    .line 217
    iget-object v0, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    .line 218
    .line 219
    iput-object v0, p2, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    .line 220
    .line 221
    iget-object v0, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    .line 222
    .line 223
    iput-object v0, p2, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 224
    .line 225
    new-instance v0, Lcom/narvii/monetization/sticker/picker/h;

    .line 226
    .line 227
    .line 228
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/monetization/sticker/picker/h;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Lcom/narvii/video/model/StickerInfoPack;Lcom/narvii/model/Sticker;)V

    .line 229
    .line 230
    .line 231
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 232
    :cond_2
    return-void
.end method

.method public resetPagerAdapter(Ljava/lang/String;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->getCurIndex()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    move v1, v2

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 17
    move-result v1

    .line 18
    :goto_0
    const/4 v3, 0x1

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    move v4, v3

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v4, v2

    .line 24
    .line 25
    .line 26
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 27
    move-result-object v5

    .line 28
    .line 29
    check-cast v5, Lcom/narvii/app/TabPagerAdapter;

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v5}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->resetTabList(Lcom/narvii/app/TabPagerAdapter;)V

    .line 33
    .line 34
    iget-object v5, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    .line 35
    .line 36
    if-nez v5, :cond_2

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v2}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    .line 42
    return-void

    .line 43
    .line 44
    :cond_2
    if-eqz v5, :cond_3

    .line 45
    .line 46
    const-string v5, "collectionId"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v6

    .line 51
    .line 52
    if-eqz v6, :cond_3

    .line 53
    .line 54
    iget-boolean v6, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->collectionIdSelected:Z

    .line 55
    .line 56
    if-nez v6, :cond_3

    .line 57
    .line 58
    iput-boolean v3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->collectionIdSelected:Z

    .line 59
    .line 60
    iget-object p1, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 70
    move-result v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    .line 74
    return-void

    .line 75
    .line 76
    :cond_3
    if-eqz v4, :cond_4

    .line 77
    .line 78
    iget-object p1, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v2}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    .line 82
    goto :goto_2

    .line 83
    .line 84
    :cond_4
    if-eqz p1, :cond_5

    .line 85
    .line 86
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    .line 87
    .line 88
    .line 89
    invoke-static {v2, p1}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 90
    move-result p1

    .line 91
    const/4 v2, -0x1

    .line 92
    .line 93
    if-eq p1, v2, :cond_5

    .line 94
    .line 95
    iget-object v0, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    .line 99
    goto :goto_2

    .line 100
    .line 101
    .line 102
    :cond_5
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 103
    move-result p1

    .line 104
    .line 105
    if-eqz p1, :cond_6

    .line 106
    .line 107
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    .line 108
    .line 109
    .line 110
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 111
    move-result p1

    .line 112
    sub-int/2addr v1, v0

    .line 113
    .line 114
    sub-int v0, p1, v1

    .line 115
    .line 116
    :cond_6
    iget-object p1, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVViewPager;->setCurrentPosition(I)V

    .line 120
    :goto_2
    return-void
.end method

.method public selectStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 13
    move-result p1

    .line 14
    const/4 v0, -0x1

    .line 15
    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->correctScrollTab()V

    .line 25
    const/4 p1, 0x0

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->showTrial(Z)V

    .line 29
    return-void
.end method

.method public setCurrentSticker(Lcom/narvii/model/Sticker;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->currentSticker:Lcom/narvii/model/Sticker;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->notifyPagerSelectedStickerChanged(Lcom/narvii/model/Sticker;)V

    .line 12
    :cond_0
    return-void
.end method

.method public setEditorStickerPickerCallback(Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;)V
    .locals 0
    .param p1    # Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

    return-void
.end method

.method public setStickerSelectListener(Lcom/narvii/monetization/sticker/picker/StickerSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerSelectListener:Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

    return-void
.end method

.method public tabLayoutBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorTheme:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string v1, "#2C2C2D"

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 12
    move-result v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, -0x1

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 18
    return-object v0
.end method

.method protected updateTabView(I)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/TabPagerFragment;->updateTabView(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0}, Lcom/narvii/widget/NVPagerTabLayout;->getTabCount()I

    .line 16
    move-result v3

    .line 17
    .line 18
    if-ge v2, v3, :cond_3

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVPagerTabLayout;->getChildTabAt(I)Landroid/view/View;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    if-ne v2, p1, :cond_1

    .line 27
    const/4 v4, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v4, v1

    .line 30
    .line 31
    .line 32
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 33
    .line 34
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_3
    return-void
.end method
