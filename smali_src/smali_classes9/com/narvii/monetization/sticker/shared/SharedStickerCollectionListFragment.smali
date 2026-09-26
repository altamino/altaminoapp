.class public Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

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

.field private lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private pendingApproveContainer:Landroid/view/View;

.field private pendingRequestCount:I

.field receiver:Landroid/content/BroadcastReceiver;

.field stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

.field storeItemListAdapter:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$4;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$4;-><init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$6;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$6;-><init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->actionBarRightListener:Landroid/view/View$OnClickListener;

    .line 18
    return-void
.end method

.method private queryShareStickerCount()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 28
    .line 29
    new-instance v1, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$5;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$5;-><init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerHelper;->sendPendingRequestCountRequest(Lcom/narvii/util/Callback;)V

    .line 36
    return-void

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    .line 39
    iput v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->pendingRequestCount:I

    .line 40
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->pendingRequestCount:I

    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->queryShareStickerCount()V

    return-void
.end method

.method private updateActionBarRightButton()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->removeRightView()V

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/narvii/model/User;->isLeader()Z

    .line 37
    move-result v1

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->storeItemListAdapter:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;

    .line 42
    .line 43
    .line 44
    const v2, 0x7f120be0

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->storeItemListAdapter:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 62
    move-result v1

    .line 63
    .line 64
    if-nez v1, :cond_0

    .line 65
    goto :goto_0

    .line 66
    .line 67
    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    const v3, 0x7f060029

    .line 73
    .line 74
    .line 75
    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 76
    move-result-object v1

    .line 77
    const/4 v3, 0x1

    .line 78
    .line 79
    iget-object v4, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->actionBarRightListener:Landroid/view/View$OnClickListener;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/content/res/ColorStateList;ZLandroid/view/View$OnClickListener;)V

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 85
    const/4 v3, 0x0

    .line 86
    .line 87
    .line 88
    const v4, -0x7f000001

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2, v4, v1, v3}, Lcom/narvii/app/NVActivity;->setActionBarRightView(IIZLandroid/view/View$OnClickListener;)V

    .line 92
    :cond_2
    :goto_1
    return-void
.end method

.method private updatePendingApproveContainer()V
    .locals 5

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
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v0, v2

    .line 29
    .line 30
    :goto_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->pendingApproveContainer:Landroid/view/View;

    .line 31
    .line 32
    .line 33
    const v3, 0x7f0a0ad9

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    check-cast v1, Landroid/widget/TextView;

    .line 40
    .line 41
    iget v3, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->pendingRequestCount:I

    .line 42
    .line 43
    .line 44
    invoke-static {v3}, Lcom/narvii/util/Utils;->getBadgeCount(I)Ljava/lang/String;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    const/16 v3, 0x8

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iget v4, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->pendingRequestCount:I

    .line 55
    .line 56
    if-lez v4, :cond_1

    .line 57
    move v4, v2

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move v4, v3

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->pendingApproveContainer:Landroid/view/View;

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    iget v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->pendingRequestCount:I

    .line 69
    .line 70
    if-lez v0, :cond_2

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    move v2, v3

    .line 73
    .line 74
    .line 75
    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 76
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->updateActionBarRightButton()V

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->updatePendingApproveContainer()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 6

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0, p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;-><init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->storeItemListAdapter:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/list/DivideColumnAdapter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    const/high16 v1, 0x40e00000    # 7.0f

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 19
    move-result v0

    .line 20
    float-to-int v2, v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 28
    move-result v0

    .line 29
    float-to-int v3, v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    const/high16 v1, 0x41700000    # 15.0f

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 39
    move-result v0

    .line 40
    float-to-int v4, v0

    .line 41
    const/4 v5, 0x0

    .line 42
    move-object v0, p1

    .line 43
    move-object v1, p0

    .line 44
    .line 45
    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->storeItemListAdapter:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;

    .line 49
    const/4 v1, 0x3

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 53
    return-object p1
.end method

.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    .line 4
    .line 5
    const v1, -0xcccccd

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 9
    return-object v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 7
    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->updateActionBarRightButton()V

    .line 7
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0x66

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->storeItemListAdapter:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 20
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f1210ed

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    .line 11
    const-string v0, "account"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 20
    .line 21
    const-string v0, "pendingRequestCount"

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 27
    move-result v0

    .line 28
    .line 29
    iput v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->pendingRequestCount:I

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 34
    move-result v0

    .line 35
    .line 36
    iput v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->pendingRequestCount:I

    .line 37
    .line 38
    :goto_0
    new-instance v0, Lcom/narvii/monetization/sticker/StickerHelper;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 42
    .line 43
    iput-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->queryShareStickerCount()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    iput-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 59
    .line 60
    new-instance v2, Landroid/content/IntentFilter;

    .line 61
    .line 62
    const-string v3, "com.narvii.action.PENDING_STICKER_CHANGED"

    .line 63
    .line 64
    .line 65
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 69
    .line 70
    if-nez p1, :cond_1

    .line 71
    .line 72
    const-string p1, "statistics"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 79
    .line 80
    const-string v0, "Amino+ Product Category Page (Store)"

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    const-string v0, "Source"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    const-string v0, "Type"

    .line 97
    .line 98
    const-string v1, "Shared Sticker Packs"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    const-string v0, "Amino+ Product Category Page (Store) Total"

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 108
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d0316

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
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 11
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 12
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->queryShareStickerCount()V

    .line 7
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
    const-string v0, "pendingRequestCount"

    .line 6
    .line 7
    iget v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->pendingRequestCount:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0ad8

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->pendingApproveContainer:Landroid/view/View;

    .line 13
    .line 14
    new-instance p2, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$1;

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$1;-><init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    .line 22
    .line 23
    const p1, 0x7f0d046b

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    const p2, 0x7f0a03db

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    new-instance v0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$2;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$2;-><init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    .line 44
    .line 45
    const p2, 0x7f0a04e9

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    new-instance p2, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$3;

    .line 52
    .line 53
    .line 54
    invoke-direct {p2, p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$3;-><init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method public willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 2

    .line 1
    .line 2
    const-string p1, "drawerHost"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/drawer/DrawerHost;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Lcom/narvii/drawer/DrawerHost;->refreshGeneralCount(J)Z

    .line 16
    :cond_0
    return-void
.end method
