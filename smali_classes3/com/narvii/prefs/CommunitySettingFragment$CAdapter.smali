.class Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;
.super Lcom/narvii/prefs/SettingsFragment$Adapter;
.source "CommunitySettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/prefs/CommunitySettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CAdapter"
.end annotation


# instance fields
.field LEAVE:Lcom/narvii/util/Tag;

.field final synthetic this$0:Lcom/narvii/prefs/CommunitySettingFragment;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/CommunitySettingFragment;)V
    .locals 1

    .line 59
    iput-object p1, p0, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;->this$0:Lcom/narvii/prefs/CommunitySettingFragment;

    invoke-direct {p0, p1}, Lcom/narvii/prefs/SettingsFragment$Adapter;-><init>(Lcom/narvii/prefs/SettingsFragment;)V

    .line 60
    new-instance p1, Lcom/narvii/util/Tag;

    const-string v0, "leave"

    invoke-direct {p1, v0}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;->LEAVE:Lcom/narvii/util/Tag;

    return-void
.end method

.method private leaveCommunity()V
    .locals 3

    const-string v0, "config"

    .line 152
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 153
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    const-string v1, "community"

    .line 154
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/community/CommunityService;

    .line 155
    invoke-virtual {v1, v0}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v1

    if-nez v1, :cond_0

    .line 157
    new-instance v1, Lcom/narvii/model/Community;

    invoke-direct {v1}, Lcom/narvii/model/Community;-><init>()V

    .line 158
    iput v0, v1, Lcom/narvii/model/Community;->id:I

    .line 160
    :cond_0
    new-instance v0, Lcom/narvii/master/MasterLeaveCommunityHelper;

    iget-object v2, p0, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;->this$0:Lcom/narvii/prefs/CommunitySettingFragment;

    invoke-direct {v0, v2}, Lcom/narvii/master/MasterLeaveCommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    new-instance v2, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter$1;

    invoke-direct {v2, p0}, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter$1;-><init>(Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/community/LeaveCommunityHelper;->leaveCommunity(Lcom/narvii/model/Community;Lcom/narvii/util/Callback;)V

    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-super {p0, p1}, Lcom/narvii/prefs/SettingsFragment$Adapter;->buildCells(Ljava/util/List;)V

    .line 66
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    :goto_0
    const v4, 0x7f0f0e48

    if-ge v2, v0, :cond_3

    .line 67
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 68
    instance-of v6, v5, Lcom/narvii/list/prefs/PrefsItem;

    if-eqz v6, :cond_2

    .line 69
    move-object v6, v5

    check-cast v6, Lcom/narvii/list/prefs/PrefsItem;

    iget v6, v6, Lcom/narvii/list/prefs/PrefsItem;->id:I

    const v7, 0x7f0f02c2

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    if-ne v6, v4, :cond_1

    goto :goto_1

    :cond_1
    const v4, 0x7f0f0f96

    if-ne v6, v4, :cond_2

    move v3, v2

    .line 78
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/narvii/prefs/SettingsFragment$Adapter;->LOGOUT:Lcom/narvii/util/Tag;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "account"

    .line 83
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 84
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v2

    .line 85
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-lez v3, :cond_7

    if-eqz v0, :cond_7

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v3, 0x1

    .line 94
    new-instance v5, Lcom/narvii/list/prefs/PrefsSection;

    const v6, 0x7f0f0711

    invoke-direct {v5, v6}, Lcom/narvii/list/prefs/PrefsSection;-><init>(I)V

    invoke-interface {p1, v3, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 96
    new-instance v3, Lcom/narvii/list/prefs/PrefsEntry;

    invoke-direct {v3, v4}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 97
    const-class v4, Lcom/narvii/account/CommunityPushSettingFragment;

    invoke-static {v4}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    iput-object v4, v3, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    const-string v4, "config"

    .line 98
    invoke-virtual {p0, v4}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/config/ConfigService;

    const-string v5, "community"

    .line 99
    invoke-virtual {p0, v5}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/community/CommunityService;

    .line 100
    invoke-virtual {v4}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v5

    .line 101
    iget-object v6, v3, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v4

    const-string v7, "community_push_setting_id"

    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    iget-object v4, v3, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    if-nez v5, :cond_4

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    iget-object v5, v5, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    :goto_2
    const-string v6, "community_push_setting_name"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    iget-object v4, v3, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    const-string v5, "Source"

    const-string v6, "Settings"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    add-int/lit8 v4, v0, 0x1

    .line 104
    invoke-interface {p1, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 106
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    const v3, 0x7f0f0e15

    invoke-direct {v0, v3}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 107
    const-class v3, Lcom/narvii/user/list/BlockedListFragment;

    invoke-static {v3}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    add-int/lit8 v3, v4, 0x1

    .line 108
    invoke-interface {p1, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 110
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    const v4, 0x7f0f00f9

    invoke-direct {v0, v4}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 111
    const-class v5, Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    invoke-static {v5}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 112
    iget-object v5, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;->this$0:Lcom/narvii/prefs/CommunitySettingFragment;

    invoke-virtual {v6, v4}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "title"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object v4, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    const-string v5, "privilegeKey"

    const-string v7, "privilegeOfChatInviteRequest"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4, v7}, Lcom/narvii/model/User;->getPrivilegeText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/narvii/list/prefs/PrefsItem;->desc:Ljava/lang/String;

    .line 115
    invoke-virtual {v2, v7}, Lcom/narvii/model/User;->getPrivilege(Ljava/lang/String;)I

    move-result v4

    const/high16 v7, -0x10000

    const/4 v8, 0x3

    if-ne v4, v8, :cond_5

    const/high16 v4, -0x10000

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    iput v4, v0, Lcom/narvii/list/prefs/PrefsItem;->descColor:I

    add-int/lit8 v4, v3, 0x1

    .line 117
    invoke-interface {p1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 119
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    const v3, 0x7f0f00f7

    invoke-direct {v0, v3}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 120
    const-class v9, Lcom/narvii/prefs/UserProfilePrivilegeFragment;

    invoke-static {v9}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v9

    iput-object v9, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 121
    iget-object v9, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0f02a1

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    iget-object v6, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    iget-object v9, p0, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;->this$0:Lcom/narvii/prefs/CommunitySettingFragment;

    invoke-virtual {v9, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v9, "subTitle"

    invoke-virtual {v6, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    iget-object v3, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    const-string v6, "privilegeOfCommentOnUserProfile"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Lcom/narvii/model/User;->getPrivilegeText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/narvii/list/prefs/PrefsItem;->desc:Ljava/lang/String;

    .line 125
    invoke-virtual {v2, v6}, Lcom/narvii/model/User;->getPrivilege(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v8, :cond_6

    const/high16 v1, -0x10000

    :cond_6
    iput v1, v0, Lcom/narvii/list/prefs/PrefsItem;->descColor:I

    add-int/lit8 v1, v4, 0x1

    .line 126
    invoke-interface {p1, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 129
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    const v2, 0x7f0f0f31

    invoke-direct {v0, v2}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(I)V

    .line 130
    const-class v2, Lcom/narvii/post/draft/DraftListFragment;

    invoke-static {v2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    add-int/lit8 v2, v1, 0x1

    .line 131
    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 133
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_7

    add-int/lit8 v0, v2, 0x1

    .line 134
    new-instance v1, Lcom/narvii/list/prefs/PrefsMargin;

    invoke-direct {v1}, Lcom/narvii/list/prefs/PrefsMargin;-><init>()V

    invoke-interface {p1, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 135
    iget-object v1, p0, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;->LEAVE:Lcom/narvii/util/Tag;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 143
    invoke-virtual {p0, p1}, Lcom/narvii/list/prefs/PrefsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;->LEAVE:Lcom/narvii/util/Tag;

    if-ne v0, v1, :cond_0

    const p1, 0x7f0b05a7

    .line 144
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 145
    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f0f0e18

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    return-object p1

    .line 148
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/prefs/SettingsFragment$Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;->LEAVE:Lcom/narvii/util/Tag;

    if-ne p3, v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/narvii/prefs/CommunitySettingFragment$CAdapter;->leaveCommunity()V

    const/4 p1, 0x1

    return p1

    .line 178
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/prefs/SettingsFragment$Adapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
