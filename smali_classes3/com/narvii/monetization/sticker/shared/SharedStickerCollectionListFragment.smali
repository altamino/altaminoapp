.class public Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SharedStickerCollectionListFragment.java"

# interfaces
.implements Lcom/narvii/app/FragmentWillFinishListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;
    }
.end annotation


# static fields
.field public static final KEY_PENDING_COUNT:Ljava/lang/String; = "pendingRequestCount"

.field private static final REQUEST_MANAGE:I = 0x66


# instance fields
.field accountService:Lcom/narvii/account/AccountService;

.field actionBarRightListener:Landroid/view/View$OnClickListener;

.field private lbm:Landroid/support/v4/content/LocalBroadcastManager;

.field private pendingApproveContainer:Landroid/view/View;

.field private pendingRequestCount:I

.field receiver:Landroid/content/BroadcastReceiver;

.field stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

.field storeItemListAdapter:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 148
    new-instance v0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$4;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$4;-><init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;)V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 226
    new-instance v0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$6;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$6;-><init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;)V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->actionBarRightListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->queryShareStickerCount()V

    return-void
.end method

.method static synthetic access$102(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->pendingRequestCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->updatePendingApproveContainer()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->updateActionBarRightButton()V

    return-void
.end method

.method private queryShareStickerCount()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->accountService:Lcom/narvii/account/AccountService;

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

    .line 173
    iput v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->pendingRequestCount:I

    return-void

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    new-instance v1, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$5;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$5;-><init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerHelper;->sendPendingRequestCountRequest(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private updateActionBarRightButton()V
    .locals 5

    .line 210
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_4

    .line 211
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 212
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->removeRightView()V

    .line 213
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->accountService:Lcom/narvii/account/AccountService;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/model/User;->isLeader()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 215
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->storeItemListAdapter:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->storeItemListAdapter:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;

    invoke-virtual {v1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    const v4, 0x7f0f0b1c

    if-eqz v1, :cond_3

    const v1, -0x7f000001

    const/4 v2, 0x0

    .line 217
    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/narvii/app/NVActivity;->setActionBarRightView(IIZLandroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 220
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f060028

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v3, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->actionBarRightListener:Landroid/view/View$OnClickListener;

    .line 219
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/content/res/ColorStateList;ZLandroid/view/View$OnClickListener;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private updatePendingApproveContainer()V
    .locals 5

    const-string v0, "account"

    .line 159
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 160
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 161
    :goto_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->pendingApproveContainer:Landroid/view/View;

    const v3, 0x7f090828

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 162
    iget v3, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->pendingRequestCount:I

    invoke-static {v3}, Lcom/narvii/util/Utils;->getBadgeCount(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    .line 163
    iget v4, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->pendingRequestCount:I

    if-lez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->pendingApproveContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->pendingRequestCount:I

    if-lez v0, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 6

    .line 251
    new-instance p1, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;-><init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->storeItemListAdapter:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;

    .line 252
    new-instance p1, Lcom/narvii/list/DivideColumnAdapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v2, v0

    .line 253
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v3, v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 254
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->storeItemListAdapter:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    return-object p1
.end method

.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 99
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xcccccd

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 265
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 246
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 198
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 199
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->updateActionBarRightButton()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/16 v0, 0x66

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->storeItemListAdapter:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 238
    invoke-virtual {v0, v1, v2}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 241
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 79
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0f0fe3

    .line 80
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string v0, "account"

    .line 81
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->accountService:Lcom/narvii/account/AccountService;

    const-string v0, "pendingRequestCount"

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->pendingRequestCount:I

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->pendingRequestCount:I

    .line 87
    :goto_0
    new-instance v0, Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 88
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->queryShareStickerCount()V

    .line 89
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    .line 90
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.PENDING_STICKER_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02e1

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 138
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 139
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 204
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 205
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 206
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public onRefresh()V
    .locals 0

    .line 144
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 145
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->queryShareStickerCount()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 192
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 193
    iget v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->pendingRequestCount:I

    const-string v1, "pendingRequestCount"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 109
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090827

    .line 110
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->pendingApproveContainer:Landroid/view/View;

    .line 111
    iget-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->pendingApproveContainer:Landroid/view/View;

    new-instance p2, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$1;

    invoke-direct {p2, p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$1;-><init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b0435

    .line 118
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090308

    .line 119
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$2;-><init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0903ea

    .line 126
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$3;

    invoke-direct {p2, p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$3;-><init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 2

    const-string p1, "drawerHost"

    .line 423
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/drawer/DrawerHost;

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    .line 425
    invoke-virtual {p1, v0, v1}, Lcom/narvii/drawer/DrawerHost;->refreshGeneralCount(J)Z

    :cond_0
    return-void
.end method
