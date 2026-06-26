.class public Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;
.super Lcom/narvii/monetization/store/MonetizationStoreBaseFragment;
.source "MonetizationStoreSectionDetailFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$TopAdapter;,
        Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;,
        Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$SharedStickerEntryAdapter;,
        Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$GreyMarginAdapter;
    }
.end annotation


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private headerLayout:Lcom/narvii/monetization/store/HeaderLayout;

.field private isGlobalSpace:Z

.field private lbm:Landroid/support/v4/content/LocalBroadcastManager;

.field private membership:Lcom/narvii/wallet/MembershipService;

.field private myStickerEntry:Landroid/view/View;

.field private pendingStickerRequstCount:I

.field private receiver:Landroid/content/BroadcastReceiver;

.field private sharedStickerEntryAdapter:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$SharedStickerEntryAdapter;

.field private storeItemListAdapter:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreBaseFragment;-><init>()V

    .line 69
    new-instance v0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$1;-><init>(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)V

    iput-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->queryPendingCount()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->storeItemListAdapter:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->pendingStickerRequstCount:I

    return p0
.end method

.method static synthetic access$202(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->pendingStickerRequstCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$SharedStickerEntryAdapter;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->sharedStickerEntryAdapter:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$SharedStickerEntryAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;Lcom/narvii/monetization/store/data/StoreSectionMini;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->updateHeaderView(Lcom/narvii/monetization/store/data/StoreSectionMini;)V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)Lcom/narvii/wallet/MembershipService;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->membership:Lcom/narvii/wallet/MembershipService;

    return-object p0
.end method

.method private configRightButton()V
    .locals 3

    const-string v0, "sectionGroupId"

    .line 163
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sticker"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0540

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->myStickerEntry:Landroid/view/View;

    .line 165
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->myStickerEntry:Landroid/view/View;

    new-instance v1, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$3;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$3;-><init>(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->myStickerEntry:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setActionBarRightView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private queryPendingCount()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 138
    :cond_1
    new-instance v0, Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 139
    new-instance v1, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$2;-><init>(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerHelper;->sendPendingRequestCountRequest(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private updateHeaderView(Lcom/narvii/monetization/store/data/StoreSectionMini;)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->headerLayout:Lcom/narvii/monetization/store/HeaderLayout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const v1, 0x7f090acf

    .line 219
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/narvii/monetization/store/data/StoreSectionMini;->icon()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->headerLayout:Lcom/narvii/monetization/store/HeaderLayout;

    const v1, 0x7f090ad1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object p1, p1, Lcom/narvii/monetization/store/data/StoreSectionMini;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 7

    .line 196
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 197
    new-instance v0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$TopAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$TopAdapter;-><init>(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 198
    new-instance v0, Lcom/narvii/list/DivideColumnAdapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v3, v1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v4, v1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v5, v1

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 199
    new-instance v1, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;

    invoke-direct {v1, p0, p0}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;-><init>(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;Lcom/narvii/app/NVContext;)V

    iput-object v1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->storeItemListAdapter:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;

    .line 200
    iget-object v1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->storeItemListAdapter:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    const/4 v1, 0x1

    .line 201
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    const-string v0, "sectionGroupId"

    .line 203
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sticker"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->isGlobalSpace:Z

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$GreyMarginAdapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$GreyMarginAdapter;-><init>(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;Lcom/narvii/app/NVContext;I)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 205
    new-instance v0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$SharedStickerEntryAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$SharedStickerEntryAdapter;-><init>(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->sharedStickerEntryAdapter:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$SharedStickerEntryAdapter;

    .line 206
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->sharedStickerEntryAdapter:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$SharedStickerEntryAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 207
    new-instance v0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$GreyMarginAdapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$GreyMarginAdapter;-><init>(Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;Lcom/narvii/app/NVContext;I)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-object p1
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b052d

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 157
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 158
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->configRightButton()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 108
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "account"

    .line 109
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string p1, "membership"

    .line 110
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/wallet/MembershipService;

    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 111
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->queryPendingCount()V

    .line 112
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    .line 113
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.PENDING_STICKER_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 114
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const-string p1, "config"

    .line 116
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 117
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->isGlobalSpace:Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 185
    invoke-super {p0, p1, p2}, Lcom/narvii/monetization/store/MonetizationStoreBaseFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 186
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 187
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    const-string p2, "sectionGroupId"

    .line 189
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "sticker"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->isGlobalSpace:Z

    if-nez p2, :cond_0

    .line 190
    check-cast p1, Lcom/narvii/widget/NVListView;

    const p2, -0x111112

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->setOverscrollStretchFooter(I)V

    :cond_0
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 4

    .line 226
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/StoreItemBaseObject;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "update"

    if-ne v0, v1, :cond_2

    .line 227
    iget-object v0, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->storeItemListAdapter:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 229
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 230
    instance-of v2, v1, Lcom/narvii/monetization/store/data/StoreItem;

    if-nez v2, :cond_1

    goto :goto_0

    .line 233
    :cond_1
    check-cast v1, Lcom/narvii/monetization/store/data/StoreItem;

    .line 234
    iget-object v2, v1, Lcom/narvii/monetization/store/data/StoreItem;->refObjectId:Ljava/lang/String;

    iget-object v3, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/narvii/model/StoreItemBaseObject;

    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/model/StoreItemBaseObject;

    invoke-virtual {v1, p1}, Lcom/narvii/monetization/store/data/StoreItem;->setCachedRefObject(Lcom/narvii/model/NVObject;)V

    .line 236
    iget-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->storeItemListAdapter:Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment$StoreItemListAdapter;

    if-eqz p1, :cond_2

    .line 237
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .line 128
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 129
    invoke-direct {p0}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->queryPendingCount()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 82
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f09080a

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/list/overlay/OverlayLayout;

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {p1, v0}, Lcom/narvii/list/overlay/OverlayLayout;->attach(Lcom/narvii/widget/NVListView;)V

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f0b052c

    .line 87
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x43020000    # 130.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/overlay/OverlayLayout;->setLayout(II)V

    .line 88
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/narvii/list/overlay/OverlayLayout;->setHeight1(I)V

    const v0, 0x7f0904f4

    .line 90
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/store/HeaderLayout;

    iput-object p1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->headerLayout:Lcom/narvii/monetization/store/HeaderLayout;

    .line 91
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    .line 92
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    .line 93
    iget-object v1, p0, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->headerLayout:Lcom/narvii/monetization/store/HeaderLayout;

    invoke-virtual {v1, p1, v0}, Lcom/narvii/monetization/store/HeaderLayout;->setImageSizeRange(II)V

    .line 96
    :cond_0
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarTitleView(Landroid/view/View;)V

    const-string p1, "sectionGroupInfo"

    .line 98
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/monetization/store/data/StoreSectionMini;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/store/data/StoreSectionMini;

    .line 99
    invoke-direct {p0, p1}, Lcom/narvii/monetization/store/MonetizationStoreSectionDetailFragment;->updateHeaderView(Lcom/narvii/monetization/store/data/StoreSectionMini;)V

    return-void
.end method
