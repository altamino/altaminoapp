.class public Lcom/narvii/poweruser/ModerationToolFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/poweruser/ModerationToolFragment$Adapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/narvii/poweruser/ModerationToolFragment$Adapter;

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private pendingStickerRequestCount:I

.field receiver:Landroid/content/BroadcastReceiver;

.field stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/poweruser/ModerationToolFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/poweruser/ModerationToolFragment$1;-><init>(Lcom/narvii/poweruser/ModerationToolFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/poweruser/ModerationToolFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 11
    return-void
.end method

.method private sendPendingStickerRequest()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poweruser/ModerationToolFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    const-string v0, "account"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/poweruser/ModerationToolFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 32
    .line 33
    new-instance v1, Lcom/narvii/poweruser/ModerationToolFragment$2;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/narvii/poweruser/ModerationToolFragment$2;-><init>(Lcom/narvii/poweruser/ModerationToolFragment;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerHelper;->sendPendingRequestCountRequest(Lcom/narvii/util/Callback;)V

    .line 40
    :cond_1
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/poweruser/ModerationToolFragment;)Lcom/narvii/poweruser/ModerationToolFragment$Adapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/poweruser/ModerationToolFragment;->adapter:Lcom/narvii/poweruser/ModerationToolFragment$Adapter;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/poweruser/ModerationToolFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/poweruser/ModerationToolFragment;->pendingStickerRequestCount:I

    return p0
.end method

.method static bridge synthetic v(Lcom/narvii/poweruser/ModerationToolFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/poweruser/ModerationToolFragment;->pendingStickerRequestCount:I

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/poweruser/ModerationToolFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/poweruser/ModerationToolFragment;->sendPendingStickerRequest()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/poweruser/ModerationToolFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/poweruser/ModerationToolFragment$Adapter;-><init>(Lcom/narvii/poweruser/ModerationToolFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/poweruser/ModerationToolFragment;->adapter:Lcom/narvii/poweruser/ModerationToolFragment$Adapter;

    .line 8
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f120bd5

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/poweruser/ModerationToolFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 21
    .line 22
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    .line 23
    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 26
    .line 27
    iput-object p1, p0, Lcom/narvii/poweruser/ModerationToolFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/narvii/poweruser/ModerationToolFragment;->sendPendingStickerRequest()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    iput-object p1, p0, Lcom/narvii/poweruser/ModerationToolFragment;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/poweruser/ModerationToolFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 43
    .line 44
    new-instance v1, Landroid/content/IntentFilter;

    .line 45
    .line 46
    const-string v2, "com.narvii.action.PENDING_STICKER_CHANGED"

    .line 47
    .line 48
    .line 49
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 53
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/poweruser/ModerationToolFragment;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/poweruser/ModerationToolFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 11
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 8
    .line 9
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    .line 10
    .line 11
    .line 12
    const v0, -0x50506

    .line 13
    .line 14
    .line 15
    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 19
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
    invoke-direct {p0}, Lcom/narvii/poweruser/ModerationToolFragment;->sendPendingStickerRequest()V

    .line 7
    return-void
.end method
