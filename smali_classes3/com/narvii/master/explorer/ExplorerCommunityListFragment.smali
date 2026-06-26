.class public Lcom/narvii/master/explorer/ExplorerCommunityListFragment;
.super Lcom/narvii/master/explorer/CommunityPageFragment;
.source "ExplorerCommunityListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/master/MasterAppearanceChangedListener;
.implements Lcom/narvii/language/LanguageChangeListener;
.implements Lcom/narvii/master/MasterTopBarAvailable;
.implements Lcom/narvii/master/MasterTopOffsetAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;,
        Lcom/narvii/master/explorer/ExplorerCommunityListFragment$BottomAdapter;,
        Lcom/narvii/master/explorer/ExplorerCommunityListFragment$FitTopAdapter;
    }
.end annotation


# instance fields
.field private btnBack:Landroid/view/View;

.field private btnSearch:Landroid/view/View;

.field private communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

.field private curLanguageCode:Ljava/lang/String;

.field private languageService:Lcom/narvii/language/ContentLanguageService;

.field private masterShareTabHelper:Lcom/narvii/master/MasterShareTabHelper;

.field sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

.field private topBar:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/narvii/master/explorer/CommunityPageFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)Lcom/narvii/master/explorer/CommunityPageAdapter;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->curLanguageCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->curLanguageCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->updateEmptyView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)Lcom/narvii/language/ContentLanguageService;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->showLanguageChooseDialog()V

    return-void
.end method

.method private changeLanguage(Ljava/lang/String;)V
    .locals 3

    .line 511
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->curLanguageCode:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 514
    :cond_0
    iput-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->curLanguageCode:Ljava/lang/String;

    .line 515
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    if-eqz v0, :cond_1

    .line 516
    invoke-virtual {v0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->setLanguage(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    invoke-virtual {v0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->resetList()V

    .line 519
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 520
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 521
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 522
    iget-object v1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/narvii/master/explorer/CommunityPageAdapter;->resetRecylerViewAdapter(Landroid/view/ViewGroup;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 527
    :cond_3
    invoke-direct {p0, p1}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->updateEmptyView(Ljava/lang/String;)V

    return-void
.end method

.method private getLanguageTextColor()I
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    invoke-virtual {v0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->actionbarTextColorSeted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    invoke-virtual {v0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getActionbarTextColor()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private hideLanguageInfoLayout()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    invoke-virtual {v0}, Lcom/narvii/util/PreferencesHelper;->setCurExplorerLanguageShowed()V

    return-void
.end method

.method private showLanguageChooseDialog()V
    .locals 5

    .line 463
    invoke-direct {p0}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->hideLanguageInfoLayout()V

    .line 464
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 465
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 466
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v2, "community-collection/supported-languages"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 467
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 468
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "start"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const/16 v2, 0x64

    .line 469
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "size"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 470
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    const-string v2, "api"

    .line 471
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 472
    new-instance v3, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;

    const-class v4, Lcom/narvii/master/explorer/SupportLanguageResponse;

    invoke-direct {v3, p0, v4, v0}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;-><init>(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private updateEmptyView(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 531
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f090624

    .line 534
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 536
    new-instance v1, Lcom/narvii/master/CommunityHelper;

    invoke-direct {v1, p0}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 537
    invoke-virtual {v1, p1}, Lcom/narvii/master/CommunityHelper;->getFirstLetterCapLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    :cond_1
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    const v0, 0x7f090625

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 542
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$2;-><init>(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 3

    .line 211
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 212
    new-instance v0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;-><init>(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)V

    iput-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    .line 213
    new-instance v0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$FitTopAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$FitTopAdapter;-><init>(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)V

    .line 214
    new-instance v1, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$BottomAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$BottomAdapter;-><init>(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)V

    .line 215
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 216
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 217
    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method protected externalOffset()I
    .locals 3

    .line 126
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Explore"

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTopBarAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 0

    .line 115
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090102

    if-eq p1, v0, :cond_1

    const v0, 0x7f0909c7

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    const-class p1, Lcom/narvii/master/search/GlobalSearchTabFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "tab"

    const-string v1, "community"

    .line 226
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 228
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f010029

    const v1, 0x7f01002a

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 77
    invoke-super {p0, p1}, Lcom/narvii/master/explorer/CommunityPageFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    new-instance v0, Lcom/narvii/util/PreferencesHelper;

    invoke-direct {v0, p0}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    const-string v0, "content_language"

    .line 79
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    iput-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 80
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    invoke-virtual {v0, p0}, Lcom/narvii/language/ContentLanguageService;->registerLanguageChangeListener(Lcom/narvii/language/LanguageChangeListener;)V

    if-eqz p1, :cond_0

    const-string v0, "languageCode"

    .line 82
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->curLanguageCode:Ljava/lang/String;

    .line 84
    :cond_0
    new-instance v0, Lcom/narvii/master/MasterShareTabHelper;

    invoke-direct {v0, p0}, Lcom/narvii/master/MasterShareTabHelper;-><init>(Lcom/narvii/list/NVListFragment;)V

    iput-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->masterShareTabHelper:Lcom/narvii/master/MasterShareTabHelper;

    if-eqz p1, :cond_1

    const-string v0, "itemHeightArray"

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Ljava/lang/Integer;

    const-class v1, Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lcom/narvii/util/JacksonUtils;->readMapAs(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 88
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->masterShareTabHelper:Lcom/narvii/master/MasterShareTabHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/master/MasterShareTabHelper;->setItemHeightArray(Ljava/util/HashMap;)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0347

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 163
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 164
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    invoke-virtual {v0, p0}, Lcom/narvii/language/ContentLanguageService;->unRegisterLanguageChangeListener(Lcom/narvii/language/LanguageChangeListener;)V

    return-void
.end method

.method public onLanguageChanged(Ljava/lang/String;)V
    .locals 1

    .line 250
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0, p1}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->changeLanguage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onListScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 204
    iget-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/narvii/master/explorer/CommunityPageAdapter;->featuredFlipperAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 205
    :goto_0
    invoke-virtual {p1, p2}, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->setVisibleInListView(Z)V

    :cond_1
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 2

    const v0, 0x7f0b01f9

    .line 188
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    .line 189
    invoke-super {p0, p1, p2}, Lcom/narvii/master/explorer/CommunityPageFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 190
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 193
    invoke-static {p1}, Lcom/narvii/master/theme/MasterThemeExtensionKt;->addMasterThemeFragment(Landroid/support/v4/app/FragmentManager;)Lcom/narvii/master/theme/MasterThemeFragment;

    move-result-object p1

    .line 194
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "#66000000"

    .line 195
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "overlayColor"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onMasterAppearanceChanged(I)V
    .locals 0

    .line 243
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    nop

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 147
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onPause()V

    .line 148
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/master/explorer/CommunityPageAdapter;->featuredFlipperAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 149
    invoke-virtual {v0, v1}, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->setFragmentResume(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 139
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 140
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/master/explorer/CommunityPageAdapter;->featuredFlipperAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 141
    invoke-virtual {v0, v1}, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->setFragmentResume(Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 334
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 335
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->curLanguageCode:Ljava/lang/String;

    const-string v1, "languageCode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->masterShareTabHelper:Lcom/narvii/master/MasterShareTabHelper;

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0}, Lcom/narvii/master/MasterShareTabHelper;->getItemHeightArray()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->safeWriteAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "itemHeightArray"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 131
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStart()V

    .line 132
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/master/MasterTabFragment;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/master/MasterTabFragment;

    invoke-virtual {v0, p0}, Lcom/narvii/master/MasterTabFragment;->addMasterThemeChangedListener(Lcom/narvii/master/MasterAppearanceChangedListener;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 155
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/master/MasterTabFragment;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/master/MasterTabFragment;

    invoke-virtual {v0, p0}, Lcom/narvii/master/MasterTabFragment;->removeMasterThemeChangeListener(Lcom/narvii/master/MasterAppearanceChangedListener;)V

    .line 158
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 100
    invoke-super {p0, p1, p2}, Lcom/narvii/master/explorer/CommunityPageFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090bb4

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->topBar:Landroid/view/View;

    .line 102
    iget-object p2, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->topBar:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f090102

    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->btnBack:Landroid/view/View;

    .line 104
    iget-object p2, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->btnBack:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0909c7

    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->btnSearch:Landroid/view/View;

    .line 106
    iget-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->btnSearch:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setNestedScrollingEnabled(Z)V

    .line 110
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->masterShareTabHelper:Lcom/narvii/master/MasterShareTabHelper;

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVListView;

    invoke-virtual {p1, p2}, Lcom/narvii/master/MasterShareTabHelper;->attachToList(Lcom/narvii/widget/NVListView;)V

    return-void
.end method

.method public resetOffset()V
    .locals 1

    .line 269
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->masterShareTabHelper:Lcom/narvii/master/MasterShareTabHelper;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Lcom/narvii/master/MasterShareTabHelper;->resetOffsetViewTranslation()V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 180
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    .line 181
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/master/explorer/CommunityPageAdapter;->featuredFlipperAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->setFragmentVisible(Z)V

    :cond_0
    return-void
.end method

.method public topOffsetHeight()I
    .locals 3

    .line 264
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
