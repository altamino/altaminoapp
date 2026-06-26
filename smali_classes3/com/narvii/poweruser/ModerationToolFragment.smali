.class public Lcom/narvii/poweruser/ModerationToolFragment;
.super Lcom/narvii/list/NVListFragment;
.source "ModerationToolFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/poweruser/ModerationToolFragment$Adapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/narvii/poweruser/ModerationToolFragment$Adapter;

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field lbm:Landroid/support/v4/content/LocalBroadcastManager;

.field private pendingStickerRequestCount:I

.field receiver:Landroid/content/BroadcastReceiver;

.field stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 76
    new-instance v0, Lcom/narvii/poweruser/ModerationToolFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/ModerationToolFragment$1;-><init>(Lcom/narvii/poweruser/ModerationToolFragment;)V

    iput-object v0, p0, Lcom/narvii/poweruser/ModerationToolFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/poweruser/ModerationToolFragment;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/narvii/poweruser/ModerationToolFragment;->sendPendingStickerRequest()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/poweruser/ModerationToolFragment;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/narvii/poweruser/ModerationToolFragment;->pendingStickerRequestCount:I

    return p0
.end method

.method static synthetic access$102(Lcom/narvii/poweruser/ModerationToolFragment;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/narvii/poweruser/ModerationToolFragment;->pendingStickerRequestCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/narvii/poweruser/ModerationToolFragment;)Lcom/narvii/poweruser/ModerationToolFragment$Adapter;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/narvii/poweruser/ModerationToolFragment;->adapter:Lcom/narvii/poweruser/ModerationToolFragment$Adapter;

    return-object p0
.end method

.method private sendPendingStickerRequest()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/narvii/poweruser/ModerationToolFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "account"

    .line 89
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 90
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    if-eqz v1, :cond_1

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

    return-void

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/narvii/poweruser/ModerationToolFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    new-instance v1, Lcom/narvii/poweruser/ModerationToolFragment$2;

    invoke-direct {v1, p0}, Lcom/narvii/poweruser/ModerationToolFragment$2;-><init>(Lcom/narvii/poweruser/ModerationToolFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerHelper;->sendPendingRequestCountRequest(Lcom/narvii/util/Callback;)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 66
    new-instance p1, Lcom/narvii/poweruser/ModerationToolFragment$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/poweruser/ModerationToolFragment$Adapter;-><init>(Lcom/narvii/poweruser/ModerationToolFragment;)V

    iput-object p1, p0, Lcom/narvii/poweruser/ModerationToolFragment;->adapter:Lcom/narvii/poweruser/ModerationToolFragment$Adapter;

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 49
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f0b11

    .line 50
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/poweruser/ModerationToolFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 52
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-direct {p1, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/poweruser/ModerationToolFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 53
    invoke-direct {p0}, Lcom/narvii/poweruser/ModerationToolFragment;->sendPendingStickerRequest()V

    .line 54
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/poweruser/ModerationToolFragment;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    .line 55
    iget-object p1, p0, Lcom/narvii/poweruser/ModerationToolFragment;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v0, p0, Lcom/narvii/poweruser/ModerationToolFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.PENDING_STICKER_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 60
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 61
    iget-object v0, p0, Lcom/narvii/poweruser/ModerationToolFragment;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/poweruser/ModerationToolFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 1

    .line 112
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x2

    .line 113
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 114
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const v0, -0x50506

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 115
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onRefresh()V
    .locals 0

    .line 71
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 72
    invoke-direct {p0}, Lcom/narvii/poweruser/ModerationToolFragment;->sendPendingStickerRequest()V

    return-void
.end method
