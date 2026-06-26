.class public Lcom/narvii/userblock/CommunityBlockService;
.super Ljava/lang/Object;
.source "CommunityBlockService.java"

# interfaces
.implements Lcom/narvii/userblock/UserBlockService;


# instance fields
.field private cid:I

.field private context:Lcom/narvii/app/NVContext;

.field private headUidList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isLeaderOrCurator:Z

.field private lbm:Landroid/support/v4/content/LocalBroadcastManager;

.field private parent:Lcom/narvii/userblock/UserBlockService;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/userblock/UserBlockService;I)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/narvii/userblock/CommunityBlockService$1;

    invoke-direct {v0, p0}, Lcom/narvii/userblock/CommunityBlockService$1;-><init>(Lcom/narvii/userblock/CommunityBlockService;)V

    iput-object v0, p0, Lcom/narvii/userblock/CommunityBlockService;->receiver:Landroid/content/BroadcastReceiver;

    .line 32
    iput-object p1, p0, Lcom/narvii/userblock/CommunityBlockService;->context:Lcom/narvii/app/NVContext;

    .line 33
    iput-object p2, p0, Lcom/narvii/userblock/CommunityBlockService;->parent:Lcom/narvii/userblock/UserBlockService;

    .line 34
    iput p3, p0, Lcom/narvii/userblock/CommunityBlockService;->cid:I

    .line 35
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/userblock/CommunityBlockService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/userblock/CommunityBlockService;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/narvii/userblock/CommunityBlockService;->cid:I

    return p0
.end method


# virtual methods
.method public isBlocked(Ljava/lang/String;)Z
    .locals 2

    .line 75
    iget-boolean v0, p0, Lcom/narvii/userblock/CommunityBlockService;->isLeaderOrCurator:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/narvii/userblock/CommunityBlockService;->headUidList:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/narvii/userblock/CommunityBlockService;->parent:Lcom/narvii/userblock/UserBlockService;

    invoke-interface {v0, p1}, Lcom/narvii/userblock/UserBlockService;->isBlocked(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isInBlockedList(Ljava/lang/String;)Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/narvii/userblock/CommunityBlockService;->parent:Lcom/narvii/userblock/UserBlockService;

    invoke-interface {v0, p1}, Lcom/narvii/userblock/UserBlockService;->isInBlockedList(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public refresh(Z)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/narvii/userblock/CommunityBlockService;->parent:Lcom/narvii/userblock/UserBlockService;

    invoke-interface {v0, p1}, Lcom/narvii/userblock/UserBlockService;->refresh(Z)V

    return-void
.end method

.method public start()V
    .locals 4

    .line 56
    invoke-virtual {p0}, Lcom/narvii/userblock/CommunityBlockService;->update()V

    .line 57
    iget-object v0, p0, Lcom/narvii/userblock/CommunityBlockService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/userblock/CommunityBlockService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.COMMUNITY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/narvii/userblock/CommunityBlockService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/userblock/CommunityBlockService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected update()V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/narvii/userblock/CommunityBlockService;->context:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 40
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/narvii/userblock/CommunityBlockService;->isLeaderOrCurator:Z

    .line 43
    iget-object v0, p0, Lcom/narvii/userblock/CommunityBlockService;->context:Lcom/narvii/app/NVContext;

    const-string v1, "community"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 44
    iget v1, p0, Lcom/narvii/userblock/CommunityBlockService;->cid:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 45
    iget-object v1, v0, Lcom/narvii/model/Community;->communityHeadList:Ljava/util/List;

    if-nez v1, :cond_1

    goto :goto_2

    .line 48
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/narvii/userblock/CommunityBlockService;->headUidList:Ljava/util/HashSet;

    .line 49
    iget-object v0, v0, Lcom/narvii/model/Community;->communityHeadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    .line 50
    iget-object v2, p0, Lcom/narvii/userblock/CommunityBlockService;->headUidList:Ljava/util/HashSet;

    iget-object v1, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_2
    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/narvii/userblock/CommunityBlockService;->headUidList:Ljava/util/HashSet;

    :cond_3
    return-void
.end method

.method public updateBlockList(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/narvii/userblock/CommunityBlockService;->parent:Lcom/narvii/userblock/UserBlockService;

    invoke-interface {v0, p1, p2}, Lcom/narvii/userblock/UserBlockService;->updateBlockList(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
