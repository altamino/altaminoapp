.class public final Lcom/narvii/master/home/MyAminosFragment;
.super Lcom/narvii/app/NVScrollableTabFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;
.implements Lcom/narvii/master/MasterTopBarAvailable;
.implements Lcom/narvii/master/MasterTopOffsetAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/MyAminosFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/home/MyAminosFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final _SINGLE:Ljava/lang/String; = "__single"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final INDEX_MY_COMMUNITY:I

.field private accountService:Lcom/narvii/account/AccountService;

.field private myCommunityListService:Lcom/narvii/community/MyCommunityListService;

.field private final receiver:Lcom/narvii/master/home/MyAminosFragment$receiver$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/master/home/MyAminosFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/home/MyAminosFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/master/home/MyAminosFragment;->Companion:Lcom/narvii/master/home/MyAminosFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVScrollableTabFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/master/home/MyAminosFragment$receiver$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/master/home/MyAminosFragment$receiver$1;-><init>(Lcom/narvii/master/home/MyAminosFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/master/home/MyAminosFragment;->receiver:Lcom/narvii/master/home/MyAminosFragment$receiver$1;

    .line 11
    return-void
.end method

.method public static final synthetic access$updateTabLayout(Lcom/narvii/master/home/MyAminosFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/home/MyAminosFragment;->updateTabLayout()V

    .line 4
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

.method private final updateTabLayout()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/MyAminosFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "myCommunityListService"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    move-object v0, v1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->list()Ljava/util/List;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    if-nez v0, :cond_3

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/master/home/MyAminosFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    const-string v0, "accountService"

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v1, v0

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move v0, v2

    .line 42
    goto :goto_2

    .line 43
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 44
    .line 45
    :goto_2
    iget-object v1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 46
    .line 47
    const/16 v3, 0x8

    .line 48
    .line 49
    if-nez v1, :cond_4

    .line 50
    goto :goto_3

    .line 51
    .line 52
    :cond_4
    if-eqz v0, :cond_5

    .line 53
    move v2, v3

    .line 54
    .line 55
    .line 56
    :cond_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    :goto_3
    iget-object v1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 59
    .line 60
    if-nez v1, :cond_6

    .line 61
    goto :goto_4

    .line 62
    .line 63
    .line 64
    :cond_6
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    :goto_4
    iget-object v1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 67
    .line 68
    if-nez v1, :cond_7

    .line 69
    goto :goto_5

    .line 70
    .line 71
    :cond_7
    iput-boolean v0, v1, Lcom/narvii/widget/NVViewPager;->disableScroll:Z

    .line 72
    :goto_5
    return-void
.end method


# virtual methods
.method protected createUpdateTabViewDelegate()Lcom/narvii/nested/tab/UpdateTabViewDelegate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/nested/tab/ScrollTabViewDelegate;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/nested/tab/ScrollTabViewDelegate;-><init>()V

    .line 6
    return-object v0
.end method

.method protected getBundles(I)Landroid/os/Bundle;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/master/home/MyAminosFragment;->INDEX_MY_COMMUNITY:I

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    const-string v1, "__single"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/master/home/MyAminosFragment;->isSingleFragment()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/app/NVScrollableTabFragment;->getBundles(I)Landroid/os/Bundle;

    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method protected getFragment(I)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/app/NVFragment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget v0, p0, Lcom/narvii/master/home/MyAminosFragment;->INDEX_MY_COMMUNITY:I

    if-ne p1, v0, :cond_0

    const-class p1, Lcom/narvii/master/MyCommunityListFragment;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "communities"

    return-object v0
.end method

.method protected getTabLabel(I)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/master/home/MyAminosFragment;->INDEX_MY_COMMUNITY:I

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    const p1, 0x7f120d15

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return-object p1
.end method

.method protected getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    .line 11
    const v0, 0x7f0d0727

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    const v0, 0x7f0a0e27

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 32
    return-object p2
.end method

.method public final isSingleFragment()Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "__single"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isTopBarAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/master/home/MyAminosFragment;->isSingleFragment()Z

    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    const p1, 0x7f120d15

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 17
    const/4 p1, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    :goto_0
    const-string p1, "myCommunityList"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    const-string v1, "getService(...)"

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    check-cast p1, Lcom/narvii/community/MyCommunityListService;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/narvii/master/home/MyAminosFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 40
    .line 41
    const-string p1, "account"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/narvii/master/home/MyAminosFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/master/home/MyAminosFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 55
    .line 56
    if-nez p1, :cond_1

    .line 57
    .line 58
    const-string p1, "myCommunityListService"

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move-object v0, p1

    .line 64
    .line 65
    .line 66
    :goto_1
    invoke-virtual {v0, p0}, Lcom/narvii/community/MyCommunityListService;->addObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    .line 67
    .line 68
    iget-object p1, p0, Lcom/narvii/master/home/MyAminosFragment;->receiver:Lcom/narvii/master/home/MyAminosFragment$receiver$1;

    .line 69
    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    .line 71
    .line 72
    const-string v1, "com.narvii.action.ACCOUNT_CHANGED"

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 79
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "menu"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "inflater"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    const v1, 0x7f121056

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0, v1, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    const v1, 0x7f0805fe

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x2

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 30
    .line 31
    .line 32
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 33
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string p3, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p3, 0x7f0d02f8

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/home/MyAminosFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "myCommunityListService"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0, p0}, Lcom/narvii/community/MyCommunityListService;->removeObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/master/home/MyAminosFragment;->receiver:Lcom/narvii/master/home/MyAminosFragment$receiver$1;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 22
    return-void
.end method

.method public onListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Lcom/narvii/community/MyCommunityListService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/community/MyCommunityListResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/home/MyAminosFragment;->updateTabLayout()V

    .line 4
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "item"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 9
    move-result v0

    .line 10
    .line 11
    .line 12
    const v1, 0x7f121056

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    const-string/jumbo v0, "searchIcon"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 30
    .line 31
    const-class p1, Lcom/narvii/master/search/GlobalSearchBaseFragment;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    const-string/jumbo v0, "section_type"

    .line 38
    const/4 v1, 0x1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    .line 43
    const-string v0, "language"

    .line 44
    .line 45
    .line 46
    invoke-static {p0}, Lcom/narvii/util/LanguageHelper;->getUserSelectedLanguageCode(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    invoke-static {p0, p1}, Lcom/narvii/master/home/MyAminosFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 54
    return v1

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 58
    move-result p1

    .line 59
    return p1
.end method

.method public onReminderChanged(Lcom/narvii/community/MyCommunityListService;)V
    .locals 0
    .param p1    # Lcom/narvii/community/MyCommunityListService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onSuggestListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/master/CommunityListResponse;)V
    .locals 0
    .param p1    # Lcom/narvii/community/MyCommunityListService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/master/CommunityListResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVBaseScrollableTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    const p2, 0x7f0a0c4f

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Landroid/view/ViewGroup;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/master/home/MyAminosFragment;->isSingleFragment()Z

    .line 21
    move-result p2

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    .line 30
    const v0, 0x7f0600a1

    .line 31
    .line 32
    .line 33
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 34
    move-result p2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p2, 0x0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-direct {p0}, Lcom/narvii/master/home/MyAminosFragment;->updateTabLayout()V

    .line 46
    return-void
.end method

.method public resetOffset()V
    .locals 2

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
    const-string v1, "null cannot be cast to non-null type com.narvii.master.MasterTabFragment"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/master/MasterTabFragment;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/master/MasterTabFragment;->getMasterTopBar()Lcom/narvii/master/MasterTopBar;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/master/MasterTopBar;->collapse()V

    .line 29
    :cond_0
    return-void
.end method

.method public final setStoreBadged()V
    .locals 2

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
    const-string v1, "null cannot be cast to non-null type com.narvii.master.MasterTabFragment"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/master/MasterTabFragment;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/master/MasterTabFragment;->setStoreBadged()V

    .line 23
    :cond_0
    return-void
.end method

.method public tabLayoutBackground()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public topOffsetHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
