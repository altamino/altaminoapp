.class public Lcom/narvii/master/explorer/ExplorerCommunityListFragment;
.super Lcom/narvii/master/explorer/CommunityPageFragment;
.source "SourceFile"

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
        Lcom/narvii/master/explorer/ExplorerCommunityListFragment$FitTopAdapter;,
        Lcom/narvii/master/explorer/ExplorerCommunityListFragment$BottomAdapter;
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/explorer/CommunityPageFragment;-><init>()V

    .line 4
    return-void
.end method

.method private changeLanguage(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->curLanguageCode:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iput-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->curLanguageCode:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter;->setLanguage(Ljava/lang/String;)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->resetList()V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 37
    move-result v0

    .line 38
    .line 39
    if-lez v0, :cond_3

    .line 40
    const/4 v0, 0x0

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 48
    move-result v1

    .line 49
    .line 50
    if-ge v0, v1, :cond_3

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    instance-of v1, v1, Landroid/widget/LinearLayout;

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    iget-object v1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 72
    move-result-object v2

    .line 73
    .line 74
    check-cast v2, Landroid/widget/LinearLayout;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Lcom/narvii/master/explorer/CommunityPageAdapter;->resetRecylerViewAdapter(Landroid/view/ViewGroup;)V

    .line 78
    .line 79
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 80
    goto :goto_0

    .line 81
    .line 82
    .line 83
    :cond_3
    invoke-direct {p0, p1}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->updateEmptyView(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private getLanguageTextColor()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->actionbarTextColorSeted()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/master/explorer/CommunityPageAdapter;->getActionbarTextColor()I

    .line 24
    move-result v0

    .line 25
    return v0

    .line 26
    :cond_0
    const/4 v0, -0x1

    .line 27
    return v0
.end method

.method private hideLanguageInfoLayout()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/PreferencesHelper;->setCurExplorerLanguageShowed()V

    .line 6
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

.method private showLanguageChooseDialog()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->hideLanguageInfoLayout()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 16
    .line 17
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 21
    .line 22
    const-string v2, "community-collection/supported-languages"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x0

    .line 32
    .line 33
    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    const-string v3, "start"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    const/16 v2, 0x64

    .line 44
    .line 45
    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    const-string v3, "size"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    const-string v2, "api"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 66
    .line 67
    new-instance v3, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;

    .line 68
    .line 69
    const-class v4, Lcom/narvii/master/explorer/SupportLanguageResponse;

    .line 70
    .line 71
    .line 72
    invoke-direct {v3, p0, v4, v0}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;-><init>(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 76
    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)Lcom/narvii/master/explorer/CommunityPageAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    return-object p0
.end method

.method private updateEmptyView(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    const v1, 0x7f0a07a6

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Landroid/widget/TextView;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    new-instance v1, Lcom/narvii/master/CommunityHelper;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Lcom/narvii/master/CommunityHelper;->getFirstLetterCapLanguage(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    :cond_1
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    .line 33
    .line 34
    .line 35
    const v0, 0x7f0a07a7

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    new-instance v0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$2;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, p0}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$2;-><init>(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    :cond_2
    :goto_0
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->curLanguageCode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)Lcom/narvii/language/ContentLanguageService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->curLanguageCode:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic y(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->showLanguageChooseDialog()V

    return-void
.end method

.method static bridge synthetic z(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->updateEmptyView(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 3

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$MyAdapter;-><init>(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$FitTopAdapter;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$FitTopAdapter;-><init>(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)V

    .line 18
    .line 19
    new-instance v1, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$BottomAdapter;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$BottomAdapter;-><init>(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    .line 28
    const/4 v2, 0x1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    return-object p1
.end method

.method protected externalOffset()I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    const v2, 0x7f0702f4

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 19
    move-result v1

    .line 20
    add-int/2addr v0, v1

    .line 21
    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "explore_communities_list"

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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    .line 4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a0191

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a0c8f

    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    const-class p1, Lcom/narvii/master/search/GlobalSearchTabFragment;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    const-string v0, "tab"

    .line 24
    .line 25
    const-string v1, "community"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    invoke-static {p0, p1}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    const v0, 0x7f010037

    .line 39
    .line 40
    .line 41
    const v1, 0x7f010038

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 49
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/master/explorer/CommunityPageFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/PreferencesHelper;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    .line 11
    .line 12
    const-string v0, "content_language"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lcom/narvii/language/ContentLanguageService;->registerLanguageChangeListener(Lcom/narvii/language/LanguageChangeListener;)V

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const-string v0, "languageCode"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->curLanguageCode:Ljava/lang/String;

    .line 34
    .line 35
    :cond_0
    new-instance v0, Lcom/narvii/master/MasterShareTabHelper;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/narvii/master/MasterShareTabHelper;-><init>(Lcom/narvii/list/NVListFragment;)V

    .line 39
    .line 40
    iput-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->masterShareTabHelper:Lcom/narvii/master/MasterShareTabHelper;

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    const-string v0, "itemHeightArray"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    const-class v0, Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v0, v0}, Lcom/narvii/util/JacksonUtils;->readMapAs(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->masterShareTabHelper:Lcom/narvii/master/MasterShareTabHelper;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lcom/narvii/master/MasterShareTabHelper;->setItemHeightArray(Ljava/util/HashMap;)V

    .line 62
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d0381

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

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/narvii/language/ContentLanguageService;->unRegisterLanguageChangeListener(Lcom/narvii/language/LanguageChangeListener;)V

    .line 9
    return-void
.end method

.method public onLanguageChanged(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->changeLanguage(Ljava/lang/String;)V

    .line 16
    :cond_0
    return-void
.end method

.method protected onListScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/master/explorer/CommunityPageAdapter;->featuredFlipperAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    const/4 p2, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p2, 0x0

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {p1, p2}, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->setVisibleInListView(Z)V

    .line 17
    :cond_1
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0d0227

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    .line 10
    .line 11
    .line 12
    invoke-super {p0, p1, p2}, Lcom/narvii/master/explorer/CommunityPageFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    .line 16
    move-result p1

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/narvii/master/theme/MasterThemeExtensionKt;->addMasterThemeFragment(Landroidx/fragment/app/FragmentManager;)Lcom/narvii/master/theme/MasterThemeFragment;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    new-instance p2, Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 34
    .line 35
    const-string v0, "#66000000"

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 39
    move-result v0

    .line 40
    .line 41
    const-string v1, "overlayColor"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 48
    :cond_0
    return-void
.end method

.method public onMasterAppearanceChanged(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onPause()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/narvii/master/explorer/CommunityPageAdapter;->featuredFlipperAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->setFragmentResume(Z)V

    .line 16
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/narvii/master/explorer/CommunityPageAdapter;->featuredFlipperAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->setFragmentResume(Z)V

    .line 16
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "languageCode"

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->curLanguageCode:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->masterShareTabHelper:Lcom/narvii/master/MasterShareTabHelper;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/master/MasterShareTabHelper;->getItemHeightArray()Ljava/util/HashMap;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->safeWriteAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    const-string v1, "itemHeightArray"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStart()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    instance-of v0, v0, Lcom/narvii/master/MasterTabFragment;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/master/MasterTabFragment;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lcom/narvii/master/MasterTabFragment;->addMasterThemeChangedListener(Lcom/narvii/master/MasterAppearanceChangedListener;)V

    .line 21
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/master/MasterTabFragment;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/master/MasterTabFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/narvii/master/MasterTabFragment;->removeMasterThemeChangeListener(Lcom/narvii/master/MasterAppearanceChangedListener;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStop()V

    .line 21
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/master/explorer/CommunityPageFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0ed1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    iput-object p2, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->topBar:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    const/16 v0, 0x8

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    const p2, 0x7f0a0191

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    iput-object p2, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->btnBack:Landroid/view/View;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    const p2, 0x7f0a0c8f

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    iput-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->btnSearch:Landroid/view/View;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 53
    move-result-object p1

    .line 54
    const/4 p2, 0x1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 58
    .line 59
    iget-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->masterShareTabHelper:Lcom/narvii/master/MasterShareTabHelper;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 63
    move-result-object p2

    .line 64
    .line 65
    check-cast p2, Lcom/narvii/widget/NVListView;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Lcom/narvii/master/MasterShareTabHelper;->attachToList(Lcom/narvii/widget/NVListView;)V

    .line 69
    return-void
.end method

.method public resetOffset()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->masterShareTabHelper:Lcom/narvii/master/MasterShareTabHelper;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/master/MasterShareTabHelper;->resetOffsetViewTranslation()V

    .line 14
    :cond_0
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
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/narvii/master/explorer/CommunityPageAdapter;->featuredFlipperAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/narvii/master/explorer/CommunityPageAdapter$FeaturedFlipperAdapter;->setFragmentVisible(Z)V

    .line 15
    :cond_0
    return-void
.end method

.method public topOffsetHeight()I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    const v2, 0x7f0702f4

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 19
    move-result v1

    .line 20
    add-int/2addr v0, v1

    .line 21
    return v0
.end method
