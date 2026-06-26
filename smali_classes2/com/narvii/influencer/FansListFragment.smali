.class public Lcom/narvii/influencer/FansListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "FansListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/influencer/FansListFragment$EmptyAdapter;,
        Lcom/narvii/influencer/FansListFragment$FansListAdapter;
    }
.end annotation


# instance fields
.field accountService:Lcom/narvii/account/AccountService;

.field fansListAdapter:Lcom/narvii/influencer/FansListFragment$FansListAdapter;

.field header:Landroid/view/View;

.field private influencer:Lcom/narvii/model/User;

.field private influencerUid:Ljava/lang/String;

.field private isMeThisInfluencer:Z

.field private overlayLayout:Lcom/narvii/list/overlay/OverlayLayout;

.field swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

.field totalFans:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/influencer/FansListFragment;Lcom/narvii/model/User;)Lcom/narvii/model/User;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/narvii/influencer/FansListFragment;->influencer:Lcom/narvii/model/User;

    return-object p1
.end method

.method static synthetic access$100(Lcom/narvii/influencer/FansListFragment;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/narvii/influencer/FansListFragment;->updateHeader()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/influencer/FansListFragment;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/narvii/influencer/FansListFragment;->isMeThisInfluencer:Z

    return p0
.end method

.method static synthetic access$300(Lcom/narvii/influencer/FansListFragment;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/narvii/influencer/FansListFragment;->influencerUid:Ljava/lang/String;

    return-object p0
.end method

.method private updateHeader()V
    .locals 8

    .line 214
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment;->influencer:Lcom/narvii/model/User;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 215
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 217
    iget-object v1, p0, Lcom/narvii/influencer/FansListFragment;->header:Landroid/view/View;

    const v2, 0x7f090422

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/narvii/influencer/FansListFragment;->totalFans:Landroid/widget/TextView;

    .line 218
    iget-object v1, p0, Lcom/narvii/influencer/FansListFragment;->totalFans:Landroid/widget/TextView;

    sget-object v2, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    iget-object v3, p0, Lcom/narvii/influencer/FansListFragment;->influencer:Lcom/narvii/model/User;

    invoke-virtual {v3}, Lcom/narvii/model/User;->getFansCount()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f0ffc

    new-array v2, v0, [Ljava/lang/Object;

    .line 219
    iget-object v3, p0, Lcom/narvii/influencer/FansListFragment;->influencer:Lcom/narvii/model/User;

    invoke-virtual {v3}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/narvii/influencer/FansListFragment;->influencer:Lcom/narvii/model/User;

    invoke-virtual {v3}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v1, p0, Lcom/narvii/influencer/FansListFragment;->header:Landroid/view/View;

    const v2, 0x7f09012c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 221
    iget-object v2, p0, Lcom/narvii/influencer/FansListFragment;->influencer:Lcom/narvii/model/User;

    invoke-virtual {v2}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 223
    iget-object v1, p0, Lcom/narvii/influencer/FansListFragment;->header:Landroid/view/View;

    const v2, 0x7f0904de

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "config"

    .line 224
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/config/ConfigService;

    const-string v3, "themePack"

    .line 225
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/theme/ThemePackService;

    .line 226
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v2

    .line 227
    invoke-virtual {v3, v2}, Lcom/narvii/theme/ThemePackService;->getThemeColor(I)I

    move-result v2

    .line 229
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v6, 0x2

    new-array v6, v6, [I

    const v7, 0x66ffffff

    and-int/2addr v7, v2

    aput v7, v6, v4

    const v7, -0x33000001    # -1.3421772E8f

    and-int/2addr v2, v7

    aput v2, v6, v0

    invoke-direct {v3, v5, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 230
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 231
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 5

    .line 163
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 164
    new-instance v0, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {v0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x7f0b0200

    aput v4, v2, v3

    .line 165
    invoke-virtual {v0, v2}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 166
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    new-instance v0, Lcom/narvii/influencer/FansListFragment$FansListAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/influencer/FansListFragment$FansListAdapter;-><init>(Lcom/narvii/influencer/FansListFragment;)V

    iput-object v0, p0, Lcom/narvii/influencer/FansListFragment;->fansListAdapter:Lcom/narvii/influencer/FansListFragment$FansListAdapter;

    .line 169
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment;->fansListAdapter:Lcom/narvii/influencer/FansListFragment$FansListAdapter;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 170
    new-instance v0, Lcom/narvii/influencer/FansListFragment$EmptyAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/influencer/FansListFragment$EmptyAdapter;-><init>(Lcom/narvii/influencer/FansListFragment;Lcom/narvii/app/NVContext;)V

    .line 171
    iget-object v1, p0, Lcom/narvii/influencer/FansListFragment;->fansListAdapter:Lcom/narvii/influencer/FansListFragment$FansListAdapter;

    invoke-virtual {v0, v1}, Lcom/narvii/influencer/FansListFragment$EmptyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 172
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090423

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/narvii/influencer/FansListFragment;->influencer:Lcom/narvii/model/User;

    if-eqz p1, :cond_1

    .line 203
    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 205
    :cond_1
    const-class p1, Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 206
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment;->influencerUid:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 85
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "account"

    .line 86
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/influencer/FansListFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string/jumbo v0, "user"

    const-string v1, "id"

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/influencer/FansListFragment;->influencerUid:Ljava/lang/String;

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/User;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    iput-object v0, p0, Lcom/narvii/influencer/FansListFragment;->influencer:Lcom/narvii/model/User;

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/influencer/FansListFragment;->influencerUid:Ljava/lang/String;

    .line 92
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/User;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    iput-object v0, p0, Lcom/narvii/influencer/FansListFragment;->influencer:Lcom/narvii/model/User;

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/influencer/FansListFragment;->influencerUid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/influencer/FansListFragment;->isMeThisInfluencer:Z

    .line 95
    new-instance v0, Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-direct {v0}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 96
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "Source"

    const-string v3, "Fans List"

    .line 97
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v3, "chatInvite"

    invoke-virtual {v1, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 178
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x7f0f0fa2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 179
    invoke-interface {p1, v0, p2, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f080309

    .line 180
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 181
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0b02a0

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 118
    move-object p3, p2

    check-cast p3, Landroid/view/ViewGroup;

    const v0, 0x7f0b067e

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-object p2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 186
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0fa2

    if-ne v0, v1, :cond_1

    .line 187
    iget-object p1, p0, Lcom/narvii/influencer/FansListFragment;->influencer:Lcom/narvii/model/User;

    if-eqz p1, :cond_0

    .line 189
    invoke-static {p0, p1}, Lcom/narvii/share/ShareDialog;->getShareDialogFromFanClub(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Lcom/narvii/share/ShareDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 193
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRefresh()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment;->fansListAdapter:Lcom/narvii/influencer/FansListFragment$FansListAdapter;

    new-instance v1, Lcom/narvii/influencer/FansListFragment$1;

    invoke-direct {v1, p0}, Lcom/narvii/influencer/FansListFragment$1;-><init>(Lcom/narvii/influencer/FansListFragment;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 110
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 111
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment;->influencerUid:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment;->influencer:Lcom/narvii/model/User;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 124
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f09080a

    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/list/overlay/OverlayLayout;

    iput-object p2, p0, Lcom/narvii/influencer/FansListFragment;->overlayLayout:Lcom/narvii/list/overlay/OverlayLayout;

    const/4 p2, 0x0

    .line 126
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVListFragment;->setEmptyView(Landroid/view/View;)V

    .line 129
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result p2

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v0

    add-int/2addr p2, v0

    .line 130
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment;->overlayLayout:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07013f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0b01ff

    invoke-virtual {v0, v2, v1}, Lcom/narvii/list/overlay/OverlayLayout;->setLayout(II)V

    .line 131
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment;->overlayLayout:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {v0, p2}, Lcom/narvii/list/overlay/OverlayLayout;->setHeight1(I)V

    .line 132
    iget-object p2, p0, Lcom/narvii/influencer/FansListFragment;->overlayLayout:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {p2, v0}, Lcom/narvii/list/overlay/OverlayLayout;->attach(Lcom/narvii/widget/NVListView;)V

    const p2, 0x7f090423

    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/influencer/FansListFragment;->header:Landroid/view/View;

    .line 134
    iget-object p2, p0, Lcom/narvii/influencer/FansListFragment;->header:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-direct {p0}, Lcom/narvii/influencer/FansListFragment;->updateHeader()V

    const p2, 0x7f090b2d

    .line 137
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/narvii/influencer/FansListFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 138
    iget-object p1, p0, Lcom/narvii/influencer/FansListFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 139
    iget-object p1, p0, Lcom/narvii/influencer/FansListFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {p1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setTarget(Lcom/narvii/widget/NVListView;)V

    .line 140
    iget-object p1, p0, Lcom/narvii/influencer/FansListFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-virtual {p1, p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;)V

    const-string p1, "config"

    .line 141
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 142
    iget-object v0, p0, Lcom/narvii/influencer/FansListFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result p1

    aput p1, v1, p2

    invoke-virtual {v0, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 143
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result p1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v0

    add-int/2addr p1, v0

    .line 144
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->externalOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->externalOffset()I

    move-result v2

    add-int/2addr v1, v2

    .line 146
    iget-object v2, p0, Lcom/narvii/influencer/FansListFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    add-int/2addr v0, p1

    add-int/2addr p1, v1

    invoke-virtual {v2, p2, v0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setProgressViewOffset(ZII)V

    return-void
.end method
