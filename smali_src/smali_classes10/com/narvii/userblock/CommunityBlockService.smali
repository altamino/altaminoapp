.class public Lcom/narvii/userblock/CommunityBlockService;
.super Ljava/lang/Object;
.source "SourceFile"

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

.field private lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private parent:Lcom/narvii/userblock/UserBlockService;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/userblock/UserBlockService;I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/userblock/CommunityBlockService$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/userblock/CommunityBlockService$1;-><init>(Lcom/narvii/userblock/CommunityBlockService;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/userblock/CommunityBlockService;->receiver:Landroid/content/BroadcastReceiver;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/userblock/CommunityBlockService;->context:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/userblock/CommunityBlockService;->parent:Lcom/narvii/userblock/UserBlockService;

    .line 15
    .line 16
    iput p3, p0, Lcom/narvii/userblock/CommunityBlockService;->cid:I

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/userblock/CommunityBlockService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 27
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/userblock/CommunityBlockService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/userblock/CommunityBlockService;->cid:I

    return p0
.end method


# virtual methods
.method public isBlocked(Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/userblock/CommunityBlockService;->isLeaderOrCurator:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/narvii/userblock/CommunityBlockService;->headUidList:Ljava/util/HashSet;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    return v1

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/narvii/userblock/CommunityBlockService;->parent:Lcom/narvii/userblock/UserBlockService;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p1}, Lcom/narvii/userblock/UserBlockService;->isBlocked(Ljava/lang/String;)Z

    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public isInBlockedList(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/userblock/CommunityBlockService;->parent:Lcom/narvii/userblock/UserBlockService;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/narvii/userblock/UserBlockService;->isInBlockedList(Ljava/lang/String;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public refresh(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/userblock/CommunityBlockService;->parent:Lcom/narvii/userblock/UserBlockService;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/narvii/userblock/UserBlockService;->refresh(Z)V

    .line 6
    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/userblock/CommunityBlockService;->update()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/userblock/CommunityBlockService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/userblock/CommunityBlockService;->receiver:Landroid/content/BroadcastReceiver;

    .line 8
    .line 9
    new-instance v2, Landroid/content/IntentFilter;

    .line 10
    .line 11
    const-string v3, "com.narvii.action.COMMUNITY_CHANGED"

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 18
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/userblock/CommunityBlockService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/userblock/CommunityBlockService;->receiver:Landroid/content/BroadcastReceiver;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 8
    return-void
.end method

.method protected update()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/userblock/CommunityBlockService;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "account"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    .line 27
    :goto_0
    iput-boolean v0, p0, Lcom/narvii/userblock/CommunityBlockService;->isLeaderOrCurator:Z

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/userblock/CommunityBlockService;->context:Lcom/narvii/app/NVContext;

    .line 30
    .line 31
    const-string v1, "community"

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 38
    .line 39
    iget v1, p0, Lcom/narvii/userblock/CommunityBlockService;->cid:I

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-object v1, v0, Lcom/narvii/model/Community;->communityHeadList:Ljava/util/List;

    .line 48
    .line 49
    if-nez v1, :cond_1

    .line 50
    goto :goto_2

    .line 51
    .line 52
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    .line 53
    .line 54
    .line 55
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 56
    .line 57
    iput-object v1, p0, Lcom/narvii/userblock/CommunityBlockService;->headUidList:Ljava/util/HashSet;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/narvii/model/Community;->communityHeadList:Ljava/util/List;

    .line 60
    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v1

    .line 68
    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    check-cast v1, Lcom/narvii/model/User;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/narvii/userblock/CommunityBlockService;->headUidList:Ljava/util/HashSet;

    .line 78
    .line 79
    iget-object v1, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    :goto_2
    const/4 v0, 0x0

    .line 85
    .line 86
    iput-object v0, p0, Lcom/narvii/userblock/CommunityBlockService;->headUidList:Ljava/util/HashSet;

    .line 87
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/userblock/CommunityBlockService;->parent:Lcom/narvii/userblock/UserBlockService;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/narvii/userblock/UserBlockService;->updateBlockList(Ljava/util/List;Ljava/util/List;)V

    .line 6
    return-void
.end method
