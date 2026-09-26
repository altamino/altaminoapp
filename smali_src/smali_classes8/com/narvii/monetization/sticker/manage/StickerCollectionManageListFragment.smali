.class public Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter;,
        Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$1;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 11
    return-void
.end method

.method private queryShareStickerCount()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->accountService:Lcom/narvii/account/AccountService;

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
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->accountService:Lcom/narvii/account/AccountService;

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
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 28
    .line 29
    new-instance v1, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$2;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$2;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;)V

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
    iput v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->pendingStickerCount:I

    .line 40
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->pendingStickerCount:I

    return p0
.end method

.method static bridge synthetic u(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->pendingStickerCount:I

    return-void
.end method

.method private updateAdapter()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/StickerService;->getStickerCollectionList()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerCollectionList:Ljava/util/List;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/StickerService;->getError()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->error:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerListAdapter:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;->notifyDataSetChanged()V

    .line 24
    :cond_0
    return-void
.end method

.method private updateSortButton()V
    .locals 4

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
    iget-object v1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerCollectionList:Ljava/util/List;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    check-cast v2, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isPersonal()Z

    .line 38
    move-result v3

    .line 39
    .line 40
    if-nez v3, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isLocalMood()Z

    .line 44
    move-result v2

    .line 45
    .line 46
    if-nez v2, :cond_0

    .line 47
    const/4 v1, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v1, 0x0

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVActivity;->setRightViewEnabled(Z)V

    .line 53
    :cond_2
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->queryShareStickerCount()V

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->updateAdapter()V

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->updateSortButton()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/monetization/common/ManageTitleAdapter;

    .line 8
    .line 9
    .line 10
    const v1, 0x7f121140

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0, v1}, Lcom/narvii/monetization/common/ManageTitleAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 23
    .line 24
    :cond_0
    new-instance v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$4;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$4;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;Lcom/narvii/app/NVContext;)V

    .line 28
    .line 29
    new-instance v1, Lcom/narvii/list/MergeAdapter;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 33
    .line 34
    new-instance v2, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter;

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, p0, p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$CreateStickerPackAdapter;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;Lcom/narvii/app/NVContext;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 41
    .line 42
    new-instance v2, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, p0, p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;Lcom/narvii/app/NVContext;)V

    .line 46
    .line 47
    iput-object v2, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerListAdapter:Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$StickerListAdapter;

    .line 48
    const/4 v3, 0x1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 58
    .line 59
    new-instance v0, Lcom/narvii/adapter/MarginAdapter;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    const/high16 v2, 0x41200000    # 10.0f

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 69
    move-result v1

    .line 70
    float-to-int v1, v1

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, p0, v1}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    .line 78
    new-instance v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$5;

    .line 79
    .line 80
    .line 81
    const v1, 0x7f12012e

    .line 82
    .line 83
    .line 84
    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$5;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;Lcom/narvii/app/NVContext;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    .line 89
    new-instance v0, Lcom/narvii/adapter/MarginAdapter;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    .line 96
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 97
    move-result v1

    .line 98
    float-to-int v1, v1

    .line 99
    .line 100
    .line 101
    invoke-direct {v0, p0, v1}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    .line 106
    new-instance v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$6;

    .line 107
    .line 108
    .line 109
    const v1, 0x7f1210ed

    .line 110
    .line 111
    .line 112
    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$6;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;Lcom/narvii/app/NVContext;I)V

    .line 113
    .line 114
    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerEntryAdapter:Lcom/narvii/monetization/common/ManageEntryAdapter;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 118
    move-result v0

    .line 119
    .line 120
    if-nez v0, :cond_1

    .line 121
    .line 122
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerEntryAdapter:Lcom/narvii/monetization/common/ManageEntryAdapter;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    .line 127
    :cond_1
    new-instance v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$7;

    .line 128
    .line 129
    .line 130
    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$7;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;Lcom/narvii/app/NVContext;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 134
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$3;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment$3;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;)V

    .line 23
    .line 24
    .line 25
    const v1, 0x7f120be0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->updateSortButton()V

    .line 32
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "sticker"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/monetization/sticker/StickerService;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcom/narvii/monetization/sticker/StickerService;->addStickerCollectionListObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V

    .line 17
    .line 18
    const-string v0, "membership"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 27
    .line 28
    new-instance v0, Lcom/narvii/monetization/sticker/StickerHelper;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 34
    .line 35
    const-string v0, "account"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->accountService:Lcom/narvii/account/AccountService;

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->queryShareStickerCount()V

    .line 47
    .line 48
    .line 49
    const v0, 0x7f120d20

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 53
    .line 54
    const-string v0, "Sticker (Bar)"

    .line 55
    .line 56
    .line 57
    invoke-static {p0, v0}, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->attachTo(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 60
    .line 61
    new-instance v1, Landroid/content/IntentFilter;

    .line 62
    .line 63
    const-string v2, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 64
    .line 65
    .line 66
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 72
    .line 73
    new-instance v1, Landroid/content/IntentFilter;

    .line 74
    .line 75
    const-string v2, "com.narvii.action.PENDING_STICKER_CHANGED"

    .line 76
    .line 77
    .line 78
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/StickerService;->isStickerPackListRefreshedThisSession()Z

    .line 87
    move-result v0

    .line 88
    .line 89
    if-nez v0, :cond_0

    .line 90
    .line 91
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 92
    const/4 v1, 0x0

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerService;->refreshStickerCollectionInfo(Z)V

    .line 96
    .line 97
    :cond_0
    if-nez p1, :cond_1

    .line 98
    .line 99
    const-string p1, "statistics"

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 106
    .line 107
    const-string v0, "My Stickers"

    .line 108
    .line 109
    .line 110
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    const-string v0, "Source"

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    const-string v0, "My Stickers Total"

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 127
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d031f

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
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lcom/narvii/monetization/sticker/StickerService;->removeStickerCollectionListObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V

    .line 14
    return-void
.end method

.method public onListChanged()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->updateAdapter()V

    .line 4
    return-void
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
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0603f8

    .line 19
    .line 20
    .line 21
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 22
    move-result p2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 26
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
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->queryShareStickerCount()V

    .line 7
    return-void
.end method

.method public onRequestFailed()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->updateAdapter()V

    .line 4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionManageListFragment;->updateAdapter()V

    .line 7
    return-void
.end method
