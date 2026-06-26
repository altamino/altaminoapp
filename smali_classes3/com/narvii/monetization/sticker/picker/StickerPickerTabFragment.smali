.class public Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;
.super Lcom/narvii/app/TabPagerFragment;
.source "StickerPickerTabFragment.java"

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

    .line 79
    invoke-direct {p0}, Lcom/narvii/app/TabPagerFragment;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->collectionIdSelected:Z

    .line 101
    new-instance v0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$1;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->internalStickerSelectListener:Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

    .line 116
    new-instance v0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$2;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerPreviewListener:Lcom/narvii/monetization/sticker/StickerPreviewListener;

    .line 139
    new-instance v0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$3;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$3;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedEmptyObserver:Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/model/Sticker;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->currentSticker:Lcom/narvii/model/Sticker;

    return-object p0
.end method

.method static synthetic access$002(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Lcom/narvii/model/Sticker;)Lcom/narvii/model/Sticker;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->currentSticker:Lcom/narvii/model/Sticker;

    return-object p1
.end method

.method static synthetic access$100(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/monetization/sticker/picker/StickerSelectListener;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerSelectListener:Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedDialog:Lcom/narvii/util/dialog/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedFailRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedFailRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Z)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->showSharedStickerPackPicker(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/monetization/sticker/picker/StickerSelectListener;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->internalStickerSelectListener:Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/widget/NVViewPager;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/widget/NVViewPager;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/widget/NVViewPager;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/widget/NVViewPager;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/monetization/sticker/StickerService;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->dialog:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Z)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->showTrial(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedFinishRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$902(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedFinishRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private dismiss(Z)V
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 461
    invoke-interface {v0}, Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;->forsakePreviewSticker()V

    goto :goto_0

    .line 463
    :cond_0
    invoke-interface {v0}, Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;->savePreviewSticker()V

    .line 466
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    invoke-virtual {p1}, Lcom/narvii/video/services/VideoManager;->abortAnimatedStickerConvertTasks()V

    .line 467
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    invoke-virtual {p1}, Lcom/narvii/video/services/VideoManager;->removeAllViewInstallStickerCallback()V

    .line 468
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 469
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

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

    if-eqz p1, :cond_2

    .line 592
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorTheme:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 595
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 596
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 597
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 598
    invoke-virtual {v1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isPersonal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 599
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_2
    :goto_0
    return-object p1
.end method

.method private getTabView(Lcom/narvii/monetization/sticker/model/StickerCollection;)Landroid/view/View;
    .locals 4

    .line 303
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0658

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 304
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorTheme:Z

    if-eqz v2, :cond_0

    const v2, 0x7f080609

    goto :goto_0

    :cond_0
    const v2, 0x7f080608

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f090b3b

    .line 305
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;

    .line 306
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isLocalMood()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 307
    iget-object v2, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->smallIcon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_1

    .line 309
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->smallIcon:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/narvii/monetization/sticker/widget/StickerCacheImageView;->setStickerImageUrl(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const v1, 0x7f09077d

    .line 312
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 313
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->notAvailable()Z

    move-result p1

    invoke-static {v1, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    return-object v0
.end method

.method private goToStore()V
    .locals 3

    .line 473
    sget-object v0, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "StoreIcon"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 474
    const-class v0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Source"

    const-string v2, "Keyboard"

    .line 475
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sectionGroupId"

    const-string v2, "sticker"

    .line 476
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const-string v2, "__communityId"

    .line 478
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 480
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private resetTabList(Lcom/narvii/app/TabPagerAdapter;)V
    .locals 10

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 206
    :goto_0
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 207
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    goto :goto_1

    :cond_0
    move v2, v1

    .line 208
    :goto_1
    iget-object v3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 209
    invoke-virtual {v2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object v5, v3

    .line 210
    invoke-direct {p0, v2}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->getTabView(Lcom/narvii/monetization/sticker/model/StickerCollection;)Landroid/view/View;

    move-result-object v7

    .line 211
    invoke-virtual {v2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isLocalMood()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 212
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v2, "source"

    .line 213
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance v2, Lcom/narvii/app/TabPagerAdapter$TabInfo;

    const/4 v6, 0x0

    const-class v8, Lcom/narvii/monetization/sticker/picker/MoodPickerListFragment;

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/narvii/app/TabPagerAdapter$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_3

    .line 216
    :cond_2
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 217
    invoke-virtual {v2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getLiteStickerCollection()Lcom/narvii/monetization/sticker/model/StickerCollection;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "stickerCollection"

    invoke-virtual {v9, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v2, Lcom/narvii/app/TabPagerAdapter$TabInfo;

    const/4 v6, 0x0

    const-class v8, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/narvii/app/TabPagerAdapter$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 220
    :goto_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    :cond_3
    invoke-virtual {p1, v0}, Lcom/narvii/app/TabPagerAdapter;->setTabs(Ljava/util/List;)V

    return-void
.end method

.method private retry()V
    .locals 2

    .line 587
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerService;->refreshStickerCollectionInfo(Z)V

    .line 588
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->updateViews()V

    return-void
.end method

.method private showSharedStickerPackPicker(Z)V
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->dialog:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 319
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedObserver:Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$4;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedObserver:Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedObserver:Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;

    invoke-virtual {v0, v2}, Lcom/narvii/monetization/sticker/StickerService;->removeSharedStickerPackObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V

    .line 348
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/StickerService;->getSharedStickerPackList()Ljava/util/List;

    move-result-object v0

    if-nez p1, :cond_1

    .line 350
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 351
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f0c42

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void

    .line 355
    :cond_1
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 356
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-nez p1, :cond_2

    .line 357
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 359
    :cond_2
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 360
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedDialog:Lcom/narvii/util/dialog/ProgressDialog;

    new-instance v0, Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$jEmxJ7Thhj4y8iSs6irOGkAUYf4;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$jEmxJ7Thhj4y8iSs6irOGkAUYf4;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 365
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/StickerService;->isSharedRequesting()Z

    move-result p1

    if-nez p1, :cond_3

    .line 366
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/StickerService;->refreshSharedStickerPackList(Z)V

    .line 368
    :cond_3
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedObserver:Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;

    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/StickerService;->addSharedStickerPackListObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V

    return-void

    .line 372
    :cond_4
    new-instance p1, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    iget v2, v2, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackCount:I

    invoke-direct {p1, p0, p0, v0, v2}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$OnStickerCollectionSelectListener;Ljava/util/List;I)V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->dialog:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 373
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->dialog:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    new-instance v0, Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$MM32-iHPxebeWycDmqImcgDQHp8;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$MM32-iHPxebeWycDmqImcgDQHp8;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 374
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedObserver:Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;

    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/StickerService;->removeSharedStickerPackObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V

    .line 377
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    .line 380
    :cond_6
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->dialog:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->refreshData()V

    .line 381
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->dialog:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->trialStickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->setSelectedStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 382
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->dialog:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->show()V

    .line 384
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    invoke-virtual {p1, v1}, Lcom/narvii/monetization/sticker/StickerService;->refreshSharedStickerPackList(Z)V

    .line 385
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->updateCommunityStickerView()V

    :cond_7
    :goto_0
    return-void
.end method

.method private showTrial(Z)V
    .locals 2

    .line 668
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->trialLayout:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 669
    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->showingTrial:Z

    .line 670
    iget-object v0, p0, Lcom/narvii/app/TabPagerFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    if-eqz v0, :cond_0

    xor-int/lit8 v1, p1, 0x1

    .line 671
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVPagerTabLayout;->setShowSelectedStatus(Z)V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 674
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->trialStickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 675
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->dialog:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    .line 677
    :cond_1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->updateCommunityStickerView()V

    return-void
.end method

.method private updateCommunityStickerView()V
    .locals 4

    .line 484
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 487
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->communityStickers:Lcom/narvii/widget/ThumbImageView;

    const-string v0, "community"

    .line 488
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/CommunityService;

    const-string v1, "config"

    .line 489
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 490
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v0

    .line 491
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->dialog:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 492
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->communityStickers:Lcom/narvii/widget/ThumbImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 493
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->communityStickers:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v0, v2}, Lcom/narvii/widget/ThumbImageView;->setShadowColor(I)V

    .line 494
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->communityStickers:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v0, v2}, Lcom/narvii/widget/ThumbImageView;->setShadowSize(I)V

    .line 495
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->communityStickers:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0804f2

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 497
    :cond_1
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->communityStickers:Lcom/narvii/widget/ThumbImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 498
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->communityStickers:Lcom/narvii/widget/ThumbImageView;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 499
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->communityStickers:Lcom/narvii/widget/ThumbImageView;

    const/high16 v1, 0x66000000

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ThumbImageView;->setShadowColor(I)V

    .line 500
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->communityStickers:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ThumbImageView;->setShadowSize(I)V

    .line 502
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->showingTrial:Z

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 503
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x8

    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateViews()V
    .locals 7

    .line 567
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/StickerService;->getStickerCollectionList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->filterStickerCollections(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    .line 571
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/StickerService;->getError()Ljava/lang/String;

    move-result-object v0

    .line 572
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 573
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    .line 574
    new-instance v2, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v2, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 575
    invoke-virtual {v2}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v2

    const/4 v4, 0x4

    const/16 v5, 0x8

    if-eqz v2, :cond_3

    .line 577
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->tabLayout:Landroid/view/View;

    if-eqz v1, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/4 v6, 0x4

    :goto_1
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 579
    :cond_3
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->tabLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 581
    :goto_2
    iget-object v2, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    if-eqz v1, :cond_4

    const/4 v4, 0x0

    :cond_4
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 582
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->progressView:Landroid/view/View;

    if-nez v1, :cond_6

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/16 v4, 0x8

    :goto_4
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 583
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->errorView:Landroid/view/View;

    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    const/16 v3, 0x8

    :goto_5
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected canSendActiveLog(Z)Z
    .locals 1

    .line 682
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 685
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->canSendActiveLog(Z)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public correctScrollTab()V
    .locals 1

    .line 292
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0}, Lcom/narvii/widget/NVPagerTabLayout;->scrollToCurrentPosition()V

    :cond_0
    return-void
.end method

.method protected createAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 3

    .line 197
    new-instance v0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    .line 198
    invoke-direct {p0, v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->resetTabList(Lcom/narvii/app/TabPagerAdapter;)V

    return-object v0
.end method

.method public getCurrentSelectedCollectionId()Ljava/lang/String;
    .locals 2

    .line 227
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->getCurIndex()I

    move-result v0

    .line 229
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 230
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, v0

    :cond_0
    if-ltz v0, :cond_1

    .line 231
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 233
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 661
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorTheme:Z

    if-eqz v0, :cond_0

    const-string v0, "StickerPicker"

    return-object v0

    :cond_0
    const-string v0, "StickerKeyboard"

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

.method public synthetic lambda$onViewCreated$2$StickerPickerTabFragment(Landroid/view/View;)V
    .locals 0

    .line 405
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->retry()V

    return-void
.end method

.method public synthetic lambda$onViewCreated$3$StickerPickerTabFragment(Landroid/view/View;)V
    .locals 1

    .line 416
    sget-object p1, Lcom/narvii/logging/ActSemantic;->expand:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "SharedStickerPack"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    const/4 p1, 0x1

    .line 417
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->showSharedStickerPackPicker(Z)V

    return-void
.end method

.method public synthetic lambda$onViewCreated$4$StickerPickerTabFragment(Landroid/view/View;)V
    .locals 2

    .line 422
    sget-object p1, Lcom/narvii/logging/ActSemantic;->popUp:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "More"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 423
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/monetization/sticker/StickerHelper;->pickStickerImage(Lcom/narvii/media/MediaPickerFragment;Z)V

    return-void
.end method

.method public synthetic lambda$onViewCreated$5$StickerPickerTabFragment(Landroid/view/View;)V
    .locals 0

    .line 426
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->goToStore()V

    return-void
.end method

.method public synthetic lambda$onViewCreated$6$StickerPickerTabFragment(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 428
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->dismiss(Z)V

    return-void
.end method

.method public synthetic lambda$onViewCreated$7$StickerPickerTabFragment(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 429
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->dismiss(Z)V

    return-void
.end method

.method public synthetic lambda$onViewCreated$8$StickerPickerTabFragment(Landroid/view/View;)V
    .locals 0

    .line 432
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->goToStore()V

    return-void
.end method

.method public synthetic lambda$onViewCreated$9$StickerPickerTabFragment(Lcom/narvii/video/model/StickerInfoPack;Lcom/narvii/model/Sticker;)V
    .locals 1

    .line 444
    new-instance v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-direct {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;-><init>()V

    .line 445
    iget-object p1, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    iput-object p1, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->collectionId:Ljava/lang/String;

    .line 446
    invoke-virtual {p0, v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->selectStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 447
    invoke-virtual {p0, p2}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->setCurrentSticker(Lcom/narvii/model/Sticker;)V

    return-void
.end method

.method public synthetic lambda$showSharedStickerPackPicker$0$StickerPickerTabFragment(Landroid/content/DialogInterface;)V
    .locals 1

    .line 361
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedObserver:Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;

    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/StickerService;->removeSharedStickerPackObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V

    .line 362
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 363
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedFailRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$showSharedStickerPackPicker$1$StickerPickerTabFragment(Landroid/content/DialogInterface;)V
    .locals 0

    .line 373
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->updateCommunityStickerView()V

    return-void
.end method

.method public notifyPagerSelectedStickerChanged(Lcom/narvii/model/Sticker;)V
    .locals 5

    .line 176
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment$Adapter;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 178
    :goto_0
    invoke-virtual {v0}, Lcom/narvii/app/TabPagerAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 179
    invoke-virtual {v0, v1}, Lcom/narvii/app/TabPagerAdapter;->getFragmentAt(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 180
    instance-of v3, v2, Lcom/narvii/monetization/sticker/picker/MoodPickerListFragment;

    if-eqz v3, :cond_1

    .line 181
    move-object v3, v2

    check-cast v3, Lcom/narvii/monetization/sticker/picker/MoodPickerListFragment;

    if-nez p1, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/Sticker;->getMoodUnicode()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->setMood(Ljava/lang/String;)V

    .line 183
    :cond_1
    instance-of v3, v2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    if-eqz v3, :cond_2

    .line 184
    check-cast v2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-virtual {v2, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->setSelectedSticker(Lcom/narvii/model/Sticker;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "trial"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    if-eqz v0, :cond_4

    .line 191
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->setSelectedSticker(Lcom/narvii/model/Sticker;)V

    :cond_4
    return-void
.end method

.method public onAffiliationChanged()V
    .locals 2

    .line 802
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isInVisitorMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isCurrentCommunityJoined()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerService;->refreshStickerCollectionInfo(Z)V

    .line 804
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    if-eqz v0, :cond_0

    .line 805
    invoke-virtual {v0, p0}, Lcom/narvii/community/AffiliationsService;->removeAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    :cond_0
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0

    .line 708
    iget-boolean p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorTheme:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 709
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->dismiss(Z)V

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 390
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 391
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->dialog:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    if-eqz p1, :cond_0

    .line 392
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 508
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "showSelected"

    .line 509
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->showSelected:Z

    const-string v0, "sticker"

    .line 510
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/monetization/sticker/StickerService;

    iput-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    const-string v1, "videoManager"

    .line 511
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/services/VideoManager;

    iput-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 512
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 513
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/StickerService;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/StickerService;->isStickerPackListRefreshedThisSession()Z

    move-result v0

    if-nez v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/narvii/monetization/sticker/StickerService;->refreshStickerCollectionInfo(Z)V

    .line 520
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isVisitorNotJoined()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "affiliations"

    .line 521
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/AffiliationsService;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 522
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {v0, p0}, Lcom/narvii/community/AffiliationsService;->addAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 524
    :cond_2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    invoke-virtual {v0, p0}, Lcom/narvii/monetization/sticker/StickerService;->addStickerCollectionListObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V

    .line 525
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedEmptyObserver:Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;

    invoke-virtual {v0, v2}, Lcom/narvii/monetization/sticker/StickerService;->addSharedStickerPackListObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V

    if-eqz p1, :cond_3

    const-string v0, "collectionIdSelected"

    .line 528
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->collectionIdSelected:Z

    :cond_3
    const-string p1, "source"

    .line 531
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "editor"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorTheme:Z

    .line 533
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-direct {p1, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 534
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "mediaPicker"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 535
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-nez p1, :cond_4

    .line 536
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 537
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {p1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 539
    :cond_4
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 540
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/services/VideoManager;

    invoke-virtual {p1, p0}, Lcom/narvii/video/services/VideoManager;->registerStickerInstallCallback(Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 557
    iget-boolean p3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorTheme:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const p3, 0x7f0b02f1

    .line 558
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p3, "tabBottom"

    .line 559
    invoke-virtual {p0, p3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    const p3, 0x7f0b02f0

    .line 560
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const p3, 0x7f0b02ef

    .line 562
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "videoManager"

    .line 545
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/services/VideoManager;

    invoke-virtual {v0}, Lcom/narvii/video/services/VideoManager;->unregisterStickerInstallCallback()V

    .line 546
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->sharedEmptyObserver:Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerService;->removeSharedStickerPackObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V

    .line 547
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    invoke-virtual {v0, p0}, Lcom/narvii/monetization/sticker/StickerService;->removeStickerCollectionListObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V

    .line 548
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 549
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    :cond_0
    return-void
.end method

.method public onEditorStickerRemoved()V
    .locals 1

    const/4 v0, 0x0

    .line 722
    invoke-virtual {p0, v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->setCurrentSticker(Lcom/narvii/model/Sticker;)V

    return-void
.end method

.method public onListChanged()V
    .locals 1

    .line 625
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->getCurrentSelectedCollectionId()Ljava/lang/String;

    move-result-object v0

    .line 626
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->updateViews()V

    .line 627
    invoke-virtual {p0, v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->resetPagerAdapter(Ljava/lang/String;)V

    return-void
.end method

.method public onLocalAnimatedStickerConvertTerminated()V
    .locals 3

    .line 727
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorTheme:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerFromLocalPicker:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->installingSticker:Lcom/narvii/video/model/StickerInfoPack;

    if-eqz v0, :cond_1

    .line 728
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    invoke-virtual {v1, v0}, Lcom/narvii/video/services/VideoManager;->abortAnimatedStickerConvertTask(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 729
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->installingSticker:Lcom/narvii/video/model/StickerInfoPack;

    iget-object v0, v0, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 730
    :goto_0
    invoke-static {v2}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    const/4 v0, 0x0

    .line 731
    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerFromLocalPicker:Z

    .line 732
    iput-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->installingSticker:Lcom/narvii/video/model/StickerInfoPack;

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

    .line 770
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorTheme:Z

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    const-string v0, "photo"

    .line 771
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/photos/PhotoManager;

    const/4 v1, 0x0

    .line 772
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    invoke-virtual {p1}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 773
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x2

    if-nez p2, :cond_1

    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    const-string v2, "pickFrom"

    .line 779
    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    :goto_0
    const/4 v2, 0x1

    .line 780
    iput-boolean v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerFromLocalPicker:Z

    .line 781
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 782
    new-instance v3, Lcom/narvii/model/Sticker;

    invoke-direct {v3}, Lcom/narvii/model/Sticker;-><init>()V

    .line 783
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/FileUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    const/4 p1, 0x3

    if-ne p2, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    .line 784
    :goto_1
    iput p1, v3, Lcom/narvii/model/Sticker;->sourceType:I

    const-string p1, "videoManager"

    .line 785
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/services/VideoManager;

    .line 786
    invoke-virtual {p1, v3, v2}, Lcom/narvii/video/services/VideoManager;->obtainInstalledStickerInfo(Lcom/narvii/model/Sticker;Ljava/lang/String;)Lcom/narvii/video/model/StickerInfoPack;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 788
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

    if-eqz p1, :cond_6

    .line 789
    invoke-interface {p1, p2}, Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;->setPickedPreviewSticker(Lcom/narvii/video/model/StickerInfoPack;)V

    goto :goto_3

    .line 792
    :cond_3
    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

    if-eqz p2, :cond_4

    .line 793
    invoke-interface {p2}, Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;->onBlockedInstallingSticker()V

    :cond_4
    const/4 p2, 0x0

    .line 795
    invoke-virtual {p1, v3, v2, v1, p2}, Lcom/narvii/video/services/VideoManager;->installSticker(Lcom/narvii/model/Sticker;Ljava/lang/String;ZLcom/narvii/video/services/VideoManager$IInstallStickerCallback;)V

    goto :goto_3

    .line 774
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

    if-eqz p1, :cond_6

    .line 775
    invoke-interface {p1}, Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;->onStickerInstallFailed()V

    :cond_6
    :goto_3
    return-void
.end method

.method public onRequestFailed()V
    .locals 0

    .line 632
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->updateViews()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 171
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 172
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->collectionIdSelected:Z

    const-string v1, "collectionIdSelected"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStickerCollectionSelected(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 640
    :cond_0
    new-instance v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;

    invoke-direct {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;-><init>()V

    .line 641
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 642
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 643
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getLiteStickerCollection()Lcom/narvii/monetization/sticker/model/StickerCollection;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "stickerCollection"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    const-string v3, "trial"

    .line 644
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 645
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 646
    iget-boolean v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorTheme:Z

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->setIsEditorTheme(Z)V

    .line 647
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->internalStickerSelectListener:Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->setStickerSelectListener(Lcom/narvii/monetization/sticker/picker/StickerSelectListener;)V

    .line 648
    iget-boolean v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->showSelected:Z

    if-eqz v1, :cond_1

    .line 649
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->currentSticker:Lcom/narvii/model/Sticker;

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->setSelectedSticker(Lcom/narvii/model/Sticker;)V

    .line 651
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v4, 0x7f090a40

    invoke-virtual {v1, v4, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 652
    invoke-direct {p0, v2}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->showTrial(Z)V

    .line 653
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->trialStickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 654
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->dialog:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;

    if-eqz p1, :cond_2

    .line 655
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->dismiss()V

    :cond_2
    return-void
.end method

.method public onStickerInstallFailed(Lcom/narvii/model/Sticker;)V
    .locals 2

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sticker installed failed, collection id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NVEditor_Log"

    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 761
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->installingSticker:Lcom/narvii/video/model/StickerInfoPack;

    const/4 p1, 0x0

    .line 762
    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerFromLocalPicker:Z

    .line 763
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

    if-eqz p1, :cond_0

    .line 764
    invoke-interface {p1}, Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;->onStickerInstallFailed()V

    :cond_0
    return-void
.end method

.method public onStickerInstallStart(Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 0

    .line 738
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->installingSticker:Lcom/narvii/video/model/StickerInfoPack;

    return-void
.end method

.method public onStickerInstalled(Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 2

    const/4 v0, 0x0

    .line 743
    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->installingSticker:Lcom/narvii/video/model/StickerInfoPack;

    .line 744
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerFromLocalPicker:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->currentSticker:Lcom/narvii/model/Sticker;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    iget-object v0, v0, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->currentSticker:Lcom/narvii/model/Sticker;

    iget-object v1, v1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 745
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 746
    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerFromLocalPicker:Z

    .line 747
    new-instance v0, Lcom/narvii/model/Sticker;

    invoke-direct {v0}, Lcom/narvii/model/Sticker;-><init>()V

    .line 748
    iget-object v1, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    .line 749
    iget-object v1, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 750
    invoke-virtual {p0, v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->setCurrentSticker(Lcom/narvii/model/Sticker;)V

    .line 751
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

    if-eqz v0, :cond_1

    .line 752
    invoke-interface {v0, p1}, Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;->setPickedPreviewSticker(Lcom/narvii/video/model/StickerInfoPack;)V

    :cond_1
    return-void
.end method

.method public onTabItemClicked(I)V
    .locals 1

    .line 695
    sget-object p1, Lcom/narvii/logging/ActSemantic;->tabSelected:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "StickerPack"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 696
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 699
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "trial"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 701
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    const/4 p1, 0x0

    .line 703
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->showTrial(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 399
    invoke-super {p0, p1, p2}, Lcom/narvii/app/TabPagerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090a40

    .line 401
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->trialLayout:Landroid/view/View;

    const p2, 0x102000d

    .line 402
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->progressView:Landroid/view/View;

    const p2, 0x7f0903fc

    .line 403
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->errorView:Landroid/view/View;

    const p2, 0x7f09097a

    .line 404
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->retryView:Landroid/view/View;

    .line 405
    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->retryView:Landroid/view/View;

    new-instance v0, Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$GfFCGC4B4xAdsAg3rCWEjPUWXRk;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$GfFCGC4B4xAdsAg3rCWEjPUWXRk;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090839

    .line 406
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->tabLayout:Landroid/view/View;

    .line 408
    iget-object p2, p0, Lcom/narvii/app/TabPagerFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    if-eqz p2, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result p2

    .line 410
    iget-object v0, p0, Lcom/narvii/app/TabPagerFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {v0, p2}, Lcom/narvii/widget/NVPagerTabLayout;->setScrollOffset(I)V

    .line 411
    iget-object p2, p0, Lcom/narvii/app/TabPagerFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-virtual {p2, p0}, Lcom/narvii/widget/NVPagerTabLayout;->setOnTabItemClickListener(Lcom/narvii/widget/NVPagerTabLayout$OnTabItemClickListener;)V

    .line 414
    :cond_0
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->updateCommunityStickerView()V

    .line 415
    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->communityStickers:Lcom/narvii/widget/ThumbImageView;

    new-instance v0, Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$gMvAGAgGDQ1LUlPAPk6ZJblAz2U;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$gMvAGAgGDQ1LUlPAPk6ZJblAz2U;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    iget-boolean p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorTheme:Z

    const v0, 0x7f090aaa

    if-eqz p2, :cond_1

    .line 421
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$9m4T7YDV4z3Lac60DgSP8ZGJ9Cw;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$9m4T7YDV4z3Lac60DgSP8ZGJ9Cw;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090abc

    .line 425
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$jkDLyy_ZZ6rFJBJDkllvq6X8liA;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$jkDLyy_ZZ6rFJBJDkllvq6X8liA;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09025e

    .line 428
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$vmmUPjLuHC0kbYXdeUUwrvJ_M2w;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$vmmUPjLuHC0kbYXdeUUwrvJ_M2w;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090b13

    .line 429
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$HGy_IsjViCGoD-4HoryNrlOSMmY;

    invoke-direct {p2, p0}, Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$HGy_IsjViCGoD-4HoryNrlOSMmY;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 431
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$MF-MUs5py1RvnBYiv5eFw3IFBe0;

    invoke-direct {p2, p0}, Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$MF-MUs5py1RvnBYiv5eFw3IFBe0;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    :goto_0
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->updateViews()V

    const/4 p1, 0x0

    .line 436
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->resetPagerAdapter(Ljava/lang/String;)V

    .line 437
    iget-boolean p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorTheme:Z

    if-eqz p1, :cond_2

    const-string p1, "activeSticker"

    .line 438
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/narvii/video/model/StickerInfoPack;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/model/StickerInfoPack;

    if-eqz p1, :cond_2

    .line 440
    new-instance p2, Lcom/narvii/model/Sticker;

    invoke-direct {p2}, Lcom/narvii/model/Sticker;-><init>()V

    .line 441
    iget-object v0, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerId:Ljava/lang/String;

    iput-object v0, p2, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    .line 442
    iget-object v0, p1, Lcom/narvii/video/model/StickerInfoPack;->stickerCollectionId:Ljava/lang/String;

    iput-object v0, p2, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 443
    new-instance v0, Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$Nk56aw3ENpAKGaLEcsGw7ZDhMiw;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/monetization/sticker/picker/-$$Lambda$StickerPickerTabFragment$Nk56aw3ENpAKGaLEcsGw7ZDhMiw;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;Lcom/narvii/video/model/StickerInfoPack;Lcom/narvii/model/Sticker;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public resetPagerAdapter(Ljava/lang/String;)V
    .locals 7

    .line 240
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->getCurIndex()I

    move-result v0

    .line 241
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 248
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v5

    check-cast v5, Lcom/narvii/app/TabPagerAdapter;

    invoke-direct {p0, v5}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->resetTabList(Lcom/narvii/app/TabPagerAdapter;)V

    .line 250
    iget-object v5, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    if-nez v5, :cond_2

    .line 251
    iget-object p1, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {p1, v2}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    return-void

    :cond_2
    if-eqz v5, :cond_3

    const-string v5, "collectionId"

    .line 255
    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->collectionIdSelected:Z

    if-nez v6, :cond_3

    .line 256
    iput-boolean v3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->collectionIdSelected:Z

    .line 257
    iget-object p1, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    return-void

    :cond_3
    if-eqz v4, :cond_4

    .line 262
    iget-object p1, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {p1, v2}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    .line 266
    iget-object v4, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    invoke-static {v4, p1}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result p1

    const/4 v4, -0x1

    if-eq p1, v4, :cond_5

    .line 269
    iget-object v2, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v2, p1}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    const/4 v2, 0x1

    :cond_5
    if-nez v2, :cond_7

    .line 273
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr v1, v0

    sub-int v0, p1, v1

    .line 274
    :cond_6
    iget-object p1, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVViewPager;->setCurrentPosition(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method public selectStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerCollectionList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/narvii/app/TabPagerFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    .line 287
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->correctScrollTab()V

    const/4 p1, 0x0

    .line 288
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->showTrial(Z)V

    return-void
.end method

.method public setCurrentSticker(Lcom/narvii/model/Sticker;)V
    .locals 1

    .line 163
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->currentSticker:Lcom/narvii/model/Sticker;

    .line 164
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->notifyPagerSelectedStickerChanged(Lcom/narvii/model/Sticker;)V

    :cond_0
    return-void
.end method

.method public setEditorStickerPickerCallback(Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;)V
    .locals 0

    .line 717
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorStickerPickerCallback:Lcom/narvii/video/attachment/sticker/IEditorStickerPickerCallback;

    return-void
.end method

.method public setStickerSelectListener(Lcom/narvii/monetization/sticker/picker/StickerSelectListener;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->stickerSelectListener:Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

    return-void
.end method

.method public tabLayoutBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 620
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-boolean v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerTabFragment;->editorTheme:Z

    if-eqz v1, :cond_0

    const-string v1, "#2C2C2D"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method protected updateTabView(I)V
    .locals 5

    .line 607
    invoke-super {p0, p1}, Lcom/narvii/app/TabPagerFragment;->updateTabView(I)V

    .line 608
    invoke-virtual {p0}, Lcom/narvii/app/TabPagerFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 610
    :goto_0
    invoke-virtual {v0}, Lcom/narvii/widget/NVPagerTabLayout;->getTabCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 611
    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVPagerTabLayout;->getChildTabAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    if-ne v2, p1, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 613
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
