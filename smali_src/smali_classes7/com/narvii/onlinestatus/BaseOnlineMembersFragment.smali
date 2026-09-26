.class public abstract Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/list/HoverAdapter;


# static fields
.field static final SECTION_HEADER:Lcom/narvii/util/Tag;

.field public static onlineMemberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field protected mergeAdapter:Lcom/narvii/list/MergeAdapter;

.field onlineDialogHelper:Lcom/narvii/onlinestatus/OnlineDialogHelper;

.field scrollListener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/Tag;

    .line 3
    .line 4
    const-string v1, "section"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->SECTION_HEADER:Lcom/narvii/util/Tag;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment$1;-><init>(Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 11
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


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 8
    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f130013

    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
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

.method public isHover(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->getItem(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    sget-object v0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->SECTION_HEADER:Lcom/narvii/util/Tag;

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 11
    .line 12
    new-instance v0, Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    const-string v1, "Source"

    .line 18
    .line 19
    const-string v2, "Live Layer (See All)"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    const-string v1, "chatInvite"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 43
    .line 44
    :cond_0
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 48
    .line 49
    iput-object p1, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 50
    .line 51
    new-instance p1, Lcom/narvii/onlinestatus/OnlineDialogHelper;

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, p0}, Lcom/narvii/onlinestatus/OnlineDialogHelper;-><init>(Lcom/narvii/app/NVFragment;)V

    .line 55
    .line 56
    iput-object p1, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->onlineDialogHelper:Lcom/narvii/onlinestatus/OnlineDialogHelper;

    .line 57
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d060e

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

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 18
    return-void
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onLoginResult(ZLandroid/content/Intent;)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "chat"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const-string v0, "uid"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->startChat(Ljava/lang/String;)V

    .line 27
    .line 28
    :cond_0
    const-string v0, "login"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result p2

    .line 37
    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->onlineDialogHelper:Lcom/narvii/onlinestatus/OnlineDialogHelper;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/narvii/onlinestatus/OnlineDialogHelper;->goLoginDialog:Lcom/narvii/util/dialog/RealtimeBlurDialog;

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->onlineDialogHelper:Lcom/narvii/onlinestatus/OnlineDialogHelper;

    .line 52
    const/4 p2, 0x0

    .line 53
    .line 54
    iput-object p2, p1, Lcom/narvii/onlinestatus/OnlineDialogHelper;->goLoginDialog:Lcom/narvii/util/dialog/RealtimeBlurDialog;

    .line 55
    goto :goto_0

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 59
    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->onlineDialogHelper:Lcom/narvii/onlinestatus/OnlineDialogHelper;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/onlinestatus/OnlineDialogHelper;->checkOnlineStatus()V

    .line 9
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p2, "config"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    check-cast p2, Lcom/narvii/config/ConfigService;

    .line 12
    .line 13
    const-string v0, "themePack"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/theme/ThemePackService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 23
    move-result p2

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/narvii/livelayer/BackgroundHelper;->getDynamicBackground()Landroid/graphics/drawable/Drawable;

    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x0

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    sget-object v1, Lcom/narvii/theme/ThemePackService$ThemeObject;->BACKGROUND:Lcom/narvii/theme/ThemePackService$ThemeObject;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p2, v1, v2, v2}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;II)Landroid/graphics/drawable/Drawable;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    :cond_0
    const v3, 0x7f0a0e6c

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    check-cast v3, Lcom/narvii/widget/NVImageView;

    .line 46
    .line 47
    .line 48
    const v4, 0x7f0a01db

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    check-cast p1, Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 58
    move-result-object v4

    .line 59
    .line 60
    const/high16 v5, 0x41f00000    # 30.0f

    .line 61
    .line 62
    .line 63
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 64
    move-result v4

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v4}, Lcom/github/mmin18/widget/RealtimeBlurView;->setBlurRadius(F)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v2}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    .line 71
    .line 72
    if-eqz v1, :cond_1

    .line 73
    goto :goto_0

    .line 74
    .line 75
    :cond_1
    const/16 v2, 0x8

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :cond_2
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p2}, Lcom/narvii/theme/ThemePackService;->getThemeColor(I)I

    .line 90
    move-result p2

    .line 91
    .line 92
    .line 93
    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, p1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    .line 98
    .line 99
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    if-eqz p1, :cond_3

    .line 103
    .line 104
    iget-object p2, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 108
    :cond_3
    return-void
.end method

.method public showUserDialog(Lcom/narvii/model/User;)V
    .locals 3

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    iget-object v1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    const-string v1, "Live Layer (See All)"

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    new-instance v0, Lcom/narvii/onlinestatus/UserDialog;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v2, p1}, Lcom/narvii/onlinestatus/UserDialog;-><init>(Landroid/content/Context;Lcom/narvii/model/User;)V

    .line 41
    .line 42
    iput-object v1, v0, Lcom/narvii/onlinestatus/UserDialog;->source:Ljava/lang/String;

    .line 43
    .line 44
    new-instance v1, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment$2;

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, p0, p1, v0}, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment$2;-><init>(Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;Lcom/narvii/model/User;Lcom/narvii/onlinestatus/UserDialog;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/narvii/onlinestatus/UserDialog;->setOnClickListener(Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/narvii/onlinestatus/UserDialog;->show()V

    .line 54
    goto :goto_1

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    if-nez p1, :cond_2

    .line 61
    return-void

    .line 62
    .line 63
    :cond_2
    const-string v0, "Source"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    invoke-static {p0, p1}, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 70
    :goto_1
    return-void
.end method

.method public startChat(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    const-string v1, "chatInvite"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 35
    .line 36
    const-string v1, "chat"

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    const-string v1, "uid"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method protected updateTitle(I)V
    .locals 0

    return-void
.end method
