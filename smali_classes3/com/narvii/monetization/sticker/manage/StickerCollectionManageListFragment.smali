.class public Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "StickerCollectionManageListFragment.java"

# interfaces
.implements Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;,
        Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter;
    }
.end annotation


# instance fields
.field accountService:Lcom/narvii/account/AccountService;

.field error:Ljava/lang/String;

.field membershipService:Lcom/narvii/wallet/MembershipService;

.field private pendingStickerCount:I

.field receiver:Landroid/content/BroadcastReceiver;

.field stickerCollectionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
            ">;"
        }
    .end annotation
.end field

.field stickerEntryAdapter:Lcom/narvii/monetization/common/ManageEntryAdapter;

.field stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

.field stickerListAdapter:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;

.field stickerService:Lcom/narvii/monetization/sticker/StickerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 67
    new-instance v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$1;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;)V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->queryShareStickerCount()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->pendingStickerCount:I

    return p0
.end method

.method static synthetic access$102(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;I)I
    .locals 0

    .line 54
    iput p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->pendingStickerCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->updateAdapter()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->updateSortButton()V

    return-void
.end method

.method private queryShareStickerCount()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 111
    iput v1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->pendingStickerCount:I

    return-void

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    new-instance v1, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$2;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$2;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerHelper;->sendPendingRequestCountRequest(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private updateAdapter()V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/StickerService;->getStickerCollectionList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerCollectionList:Ljava/util/List;

    .line 307
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/StickerService;->getError()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->error:Ljava/lang/String;

    .line 308
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerListAdapter:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private updateSortButton()V
    .locals 5

    .line 149
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_2

    .line 150
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    const/4 v1, 0x0

    .line 152
    iget-object v2, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerCollectionList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 153
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 154
    invoke-virtual {v3}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isPersonal()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isLocalMood()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    .line 160
    :cond_1
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVActivity;->setRightViewEnabled(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

    .line 194
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 196
    new-instance v0, Lcom/narvii/monetization/common/ManageTitleAdapter;

    const v1, 0x7f0f102a

    invoke-direct {v0, p0, v1}, Lcom/narvii/monetization/common/ManageTitleAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 197
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 201
    :cond_0
    new-instance v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$4;

    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$4;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;Lcom/narvii/app/NVContext;)V

    .line 208
    new-instance v1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 209
    new-instance v2, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter;

    invoke-direct {v2, p0, p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;Lcom/narvii/app/NVContext;)V

    invoke-virtual {v1, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 210
    new-instance v2, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;

    invoke-direct {v2, p0, p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;Lcom/narvii/app/NVContext;)V

    iput-object v2, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerListAdapter:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;

    .line 211
    iget-object v2, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerListAdapter:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 212
    invoke-virtual {v0, v1}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 214
    invoke-virtual {p1, v0, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 216
    new-instance v0, Lcom/narvii/adapter/MarginAdapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 217
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 219
    new-instance v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$5;

    const v1, 0x7f0f00f0

    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$5;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;Lcom/narvii/app/NVContext;I)V

    .line 233
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 235
    new-instance v0, Lcom/narvii/adapter/MarginAdapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 236
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 238
    new-instance v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$6;

    const v1, 0x7f0f0fe3

    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$6;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;Lcom/narvii/app/NVContext;I)V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerEntryAdapter:Lcom/narvii/monetization/common/ManageEntryAdapter;

    .line 248
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerEntryAdapter:Lcom/narvii/monetization/common/ManageEntryAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 253
    :cond_1
    new-instance v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$7;

    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$7;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;Lcom/narvii/app/NVContext;)V

    .line 274
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "StickerManagementPage"

    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 134
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    const v0, 0x7f0f0b1c

    .line 137
    new-instance v1, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$3;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$3;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->updateSortButton()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 82
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "sticker"

    .line 83
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/StickerService;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 84
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    invoke-virtual {v0, p0}, Lcom/narvii/monetization/sticker/StickerService;->addStickerCollectionListObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V

    const-string v0, "membership"

    .line 86
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipService;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 87
    new-instance v0, Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    const-string v0, "account"

    .line 88
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 89
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->queryShareStickerCount()V

    const v0, 0x7f0f0bf5

    .line 90
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string v0, "Sticker (Bar)"

    .line 91
    invoke-static {p0, v0}, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->attachTo(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    .line 92
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 93
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.PENDING_STICKER_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 95
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/StickerService;->isStickerPackListRefreshedThisSession()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerService;->refreshStickerCollectionInfo(Z)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02ea

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 177
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 178
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 179
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    invoke-virtual {v0, p0}, Lcom/narvii/monetization/sticker/StickerService;->removeStickerCollectionListObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V

    return-void
.end method

.method public onListChanged()V
    .locals 0

    .line 297
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->updateAdapter()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 289
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 290
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 291
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 292
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f06018e

    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    return-void
.end method

.method public onRefresh()V
    .locals 0

    .line 171
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 172
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->queryShareStickerCount()V

    return-void
.end method

.method public onRequestFailed()V
    .locals 0

    .line 302
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->updateAdapter()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 283
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 284
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->updateAdapter()V

    return-void
.end method
