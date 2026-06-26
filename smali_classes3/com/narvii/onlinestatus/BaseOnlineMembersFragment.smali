.class public abstract Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;
.super Lcom/narvii/list/NVListFragment;
.source "BaseOnlineMembersFragment.java"

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

    .line 41
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "section"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->SECTION_HEADER:Lcom/narvii/util/Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 125
    new-instance v0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment$1;-><init>(Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;)V

    iput-object v0, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 164
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 166
    iput-object p1, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f100012

    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isHover(I)Z
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->SECTION_HEADER:Lcom/narvii/util/Tag;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

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

    .line 72
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 74
    new-instance p1, Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-direct {p1}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Source"

    const-string v2, "Live Layer (See All)"

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "chatInvite"

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 80
    :cond_0
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 82
    new-instance p1, Lcom/narvii/onlinestatus/OnlineDialogHelper;

    invoke-direct {p1, p0}, Lcom/narvii/onlinestatus/OnlineDialogHelper;-><init>(Lcom/narvii/app/NVFragment;)V

    iput-object p1, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->onlineDialogHelper:Lcom/narvii/onlinestatus/OnlineDialogHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0566

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 153
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 154
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setClipChildren(Z)V

    .line 155
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setClipToPadding(Z)V

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 157
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 2

    .line 209
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onLoginResult(ZLandroid/content/Intent;)V

    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chat"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "uid"

    .line 211
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->startChat(Ljava/lang/String;)V

    .line 213
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "login"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 215
    iget-object p1, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->onlineDialogHelper:Lcom/narvii/onlinestatus/OnlineDialogHelper;

    iget-object p1, p1, Lcom/narvii/onlinestatus/OnlineDialogHelper;->goLoginDialog:Lcom/narvii/util/dialog/RealtimeBlurDialog;

    if-eqz p1, :cond_2

    .line 216
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 217
    iget-object p1, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->onlineDialogHelper:Lcom/narvii/onlinestatus/OnlineDialogHelper;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/narvii/onlinestatus/OnlineDialogHelper;->goLoginDialog:Lcom/narvii/util/dialog/RealtimeBlurDialog;

    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 147
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 148
    iget-object v0, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->onlineDialogHelper:Lcom/narvii/onlinestatus/OnlineDialogHelper;

    invoke-virtual {v0}, Lcom/narvii/onlinestatus/OnlineDialogHelper;->checkOnlineStatus()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 97
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p2, "config"

    .line 98
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/config/ConfigService;

    const-string v0, "themePack"

    .line 99
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/theme/ThemePackService;

    .line 100
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p2

    .line 102
    invoke-static {}, Lcom/narvii/livelayer/BackgroundHelper;->getDynamicBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 104
    sget-object v1, Lcom/narvii/theme/ThemePackService$ThemeObject;->BACKGROUND:Lcom/narvii/theme/ThemePackService$ThemeObject;

    invoke-virtual {v0, p2, v1, v2, v2}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    const v3, 0x7f090b67

    .line 107
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/NVImageView;

    const v4, 0x7f09013d

    .line 108
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 109
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v4

    invoke-virtual {p1, v4}, Lcom/github/mmin18/widget/RealtimeBlurView;->setBlurRadius(F)V

    .line 110
    invoke-virtual {p1, v2}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    .line 111
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_2

    .line 113
    invoke-virtual {v3, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 115
    :cond_2
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p2}, Lcom/narvii/theme/ThemePackService;->getThemeColor(I)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, p1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 119
    iget-object p2, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_3
    return-void
.end method

.method public showUserDialog(Lcom/narvii/model/User;)V
    .locals 3

    const-string v0, "account"

    .line 177
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 178
    iget-object v1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Live Layer (See All)"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    new-instance v0, Lcom/narvii/onlinestatus/UserDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/narvii/onlinestatus/UserDialog;-><init>(Landroid/content/Context;Lcom/narvii/model/User;)V

    .line 185
    iput-object v1, v0, Lcom/narvii/onlinestatus/UserDialog;->source:Ljava/lang/String;

    .line 186
    new-instance v1, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment$2;-><init>(Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;Lcom/narvii/model/User;Lcom/narvii/onlinestatus/UserDialog;)V

    invoke-virtual {v0, v1}, Lcom/narvii/onlinestatus/UserDialog;->setOnClickListener(Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;)V

    .line 203
    invoke-virtual {v0}, Lcom/narvii/onlinestatus/UserDialog;->show()V

    goto :goto_1

    .line 179
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string v0, "Source"

    .line 181
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public startChat(Ljava/lang/String;)V
    .locals 2

    const-string v0, "account"

    .line 226
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 227
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "chatInvite"

    .line 229
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/invite/ChatInviteFragment;

    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {v0, p1}, Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "chat"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "uid"

    .line 235
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected updateTitle(I)V
    .locals 0

    return-void
.end method
