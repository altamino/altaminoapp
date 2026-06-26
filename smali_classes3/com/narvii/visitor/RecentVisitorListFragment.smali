.class public Lcom/narvii/visitor/RecentVisitorListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "RecentVisitorListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/visitor/RecentVisitorListFragment$OwnerPrivacyMode;,
        Lcom/narvii/visitor/RecentVisitorListFragment$VisitorPrivacyMode;,
        Lcom/narvii/visitor/RecentVisitorListFragment$SectionHeader;,
        Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;
    }
.end annotation


# static fields
.field public static final ERROR_CODE_OWNER_IN_PRIVATE_MODE:I = 0x12b


# instance fields
.field accountService:Lcom/narvii/account/AccountService;

.field adapter:Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;

.field isGlobal:Z

.field isMe:Z

.field ownerPrivacyMode:I

.field final receiver:Landroid/content/BroadcastReceiver;

.field private totalVisitorsCount:J

.field uid:Ljava/lang/String;

.field userListHelper:Lcom/narvii/user/list/UserListHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    const-wide/16 v0, 0x0

    .line 69
    iput-wide v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->totalVisitorsCount:J

    .line 71
    new-instance v0, Lcom/narvii/visitor/RecentVisitorListFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/visitor/RecentVisitorListFragment$1;-><init>(Lcom/narvii/visitor/RecentVisitorListFragment;)V

    iput-object v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/visitor/RecentVisitorListFragment;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/narvii/visitor/RecentVisitorListFragment;->mayPrivacyModeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/visitor/RecentVisitorListFragment;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/narvii/visitor/RecentVisitorListFragment;->goToVisitorSettingsPage()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/visitor/RecentVisitorListFragment;)J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->totalVisitorsCount:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/narvii/visitor/RecentVisitorListFragment;J)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/narvii/visitor/RecentVisitorListFragment;->updateActionBarTitle(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/visitor/RecentVisitorListFragment;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/narvii/visitor/RecentVisitorListFragment;->updatePrivacyViews()V

    return-void
.end method

.method private goToVisitorSettingsPage()V
    .locals 1

    .line 246
    const-class v0, Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 247
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private mayPrivacyModeChanged()V
    .locals 2

    .line 251
    iget-boolean v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->isMe:Z

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getVisitorPrivacyMode()I

    move-result v0

    .line 255
    iget v1, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->ownerPrivacyMode:I

    if-eq v1, v0, :cond_1

    .line 256
    iput v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->ownerPrivacyMode:I

    .line 257
    invoke-direct {p0}, Lcom/narvii/visitor/RecentVisitorListFragment;->updatePrivacyViews()V

    .line 258
    iget-object v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->adapter:Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;

    if-eqz v0, :cond_1

    .line 259
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    :cond_1
    return-void
.end method

.method private updateActionBarTitle(J)V
    .locals 1

    .line 265
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f0e9e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 270
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const-string v0, ""

    invoke-static {p1, v0, p2}, Lcom/narvii/util/Utils;->setActionBarTitle(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method private updateEmptyView()V
    .locals 3

    const v0, 0x7f0b05e3

    .line 219
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    move-result-object v0

    .line 220
    iget-boolean v1, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->isMe:Z

    const v2, 0x7f0904d6

    invoke-static {v0, v2, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    const v1, 0x7f09057e

    .line 222
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 223
    iget-boolean v2, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->isGlobal:Z

    if-eqz v2, :cond_0

    const v2, 0x7f080587

    goto :goto_0

    :cond_0
    const v2, 0x7f080586

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f090776

    .line 224
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f0c46

    .line 225
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0904d5

    .line 226
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 227
    iget-boolean v2, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->isMe:Z

    invoke-static {v1, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 228
    iget-boolean v2, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->isMe:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 229
    new-instance v2, Lcom/narvii/visitor/RecentVisitorListFragment$3;

    invoke-direct {v2, p0}, Lcom/narvii/visitor/RecentVisitorListFragment$3;-><init>(Lcom/narvii/visitor/RecentVisitorListFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    :cond_1
    sget-object v1, Lcom/narvii/app/theme/NVTheme;->Companion:Lcom/narvii/app/theme/NVTheme$Companion;

    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->getNVTheme()Lcom/narvii/app/theme/NVTheme;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/narvii/app/theme/NVTheme$Companion;->bindNVThemeView(Lcom/narvii/app/theme/NVTheme;Landroid/view/View;)V

    return-void
.end method

.method private updatePrivacyViews()V
    .locals 4

    .line 125
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 128
    :cond_0
    iget v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->ownerPrivacyMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 129
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090589

    invoke-static {v1, v2, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 130
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0908c8

    iget-boolean v3, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->isMe:Z

    invoke-static {v1, v2, v3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 131
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090678

    xor-int/lit8 v3, v0, 0x1

    invoke-static {v1, v2, v3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 132
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09058a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 133
    iget-boolean v2, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->isMe:Z

    if-eqz v2, :cond_2

    const v2, 0x7f0f0b29

    goto :goto_1

    :cond_2
    const v2, 0x7f0f0d11

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 134
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090580

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 135
    iget-boolean v2, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->isGlobal:Z

    if-eqz v2, :cond_3

    const v2, 0x7f08058a

    goto :goto_2

    :cond_3
    const v2, 0x7f080589

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    goto :goto_3

    .line 136
    :cond_4
    iget-wide v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->totalVisitorsCount:J

    :goto_3
    invoke-direct {p0, v0, v1}, Lcom/narvii/visitor/RecentVisitorListFragment;->updateActionBarTitle(J)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 1

    .line 170
    new-instance p1, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;-><init>(Lcom/narvii/visitor/RecentVisitorListFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->adapter:Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;

    .line 171
    iget-boolean p1, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->isGlobal:Z

    if-eqz p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->adapter:Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->adapter:Lcom/narvii/visitor/RecentVisitorListFragment$Adapter;

    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "RecentVisitors"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 106
    iget-boolean p1, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->isGlobal:Z

    if-eqz p1, :cond_0

    .line 107
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const v0, -0xecf1bd

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarCustomDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 108
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setDarkTheme(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 82
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0f0e9e

    .line 83
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    const-string v1, "uid"

    .line 85
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->uid:Ljava/lang/String;

    const-string v1, "config"

    .line 86
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    const-string v2, "account"

    .line 87
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/account/AccountService;

    iput-object v2, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 88
    iget-object v2, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->uid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->isMe:Z

    const-string v2, "privacyMode"

    if-nez p1, :cond_0

    .line 90
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->ownerPrivacyMode:I

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->ownerPrivacyMode:I

    .line 94
    :goto_0
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->isGlobal:Z

    .line 95
    iget-object p1, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->uid:Ljava/lang/String;

    if-nez p1, :cond_2

    .line 96
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void

    .line 99
    :cond_2
    iget-object p1, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.PRIVACY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const v0, 0x7f0f0737

    const/4 v1, 0x0

    .line 141
    invoke-interface {p1, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0803df

    .line 142
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    .line 143
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 144
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02d2

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 179
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 180
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 181
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 160
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0737

    if-ne v0, v1, :cond_0

    .line 161
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "SettingIcon"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 162
    invoke-direct {p0}, Lcom/narvii/visitor/RecentVisitorListFragment;->goToVisitorSettingsPage()V

    const/4 p1, 0x1

    return p1

    .line 165
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 206
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onPause()V

    .line 207
    iget-boolean v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->isMe:Z

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->markRecentVisitorAsRead()V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 149
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const v0, 0x7f0f0737

    .line 150
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-boolean v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->isMe:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 114
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 115
    iget v0, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->ownerPrivacyMode:I

    const-string v1, "privacyMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 186
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 187
    iget-boolean p2, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->isGlobal:Z

    if-eqz p2, :cond_0

    const p2, -0xecf1bd

    .line 188
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 190
    :cond_0
    iget-boolean p2, p0, Lcom/narvii/visitor/RecentVisitorListFragment;->isGlobal:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    invoke-virtual {p0, p2}, Lcom/narvii/app/theme/NVThemeFragment;->setNVThemeValue(I)V

    .line 191
    invoke-direct {p0}, Lcom/narvii/visitor/RecentVisitorListFragment;->updateEmptyView()V

    const p2, 0x7f090589

    .line 192
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 193
    sget-object p2, Lcom/narvii/app/theme/NVTheme;->Companion:Lcom/narvii/app/theme/NVTheme$Companion;

    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->getNVTheme()Lcom/narvii/app/theme/NVTheme;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/narvii/app/theme/NVTheme$Companion;->bindNVThemeView(Lcom/narvii/app/theme/NVTheme;Landroid/view/View;)V

    const p2, 0x7f0908c8

    .line 194
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/visitor/RecentVisitorListFragment$2;

    invoke-direct {p2, p0}, Lcom/narvii/visitor/RecentVisitorListFragment$2;-><init>(Lcom/narvii/visitor/RecentVisitorListFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    invoke-direct {p0}, Lcom/narvii/visitor/RecentVisitorListFragment;->updatePrivacyViews()V

    return-void
.end method
