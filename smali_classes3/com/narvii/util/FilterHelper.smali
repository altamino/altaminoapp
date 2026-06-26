.class public Lcom/narvii/util/FilterHelper;
.super Ljava/lang/Object;
.source "FilterHelper.java"


# instance fields
.field protected context:Lcom/narvii/app/NVContext;

.field protected filterClosed:Z

.field protected filterDeleted:Z

.field protected keepBlockedUser:Z

.field protected keepForLeader:Z

.field protected keepForLeaderAndCurator:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/narvii/util/FilterHelper;->keepForLeaderAndCurator:Z

    .line 22
    iput-boolean v0, p0, Lcom/narvii/util/FilterHelper;->keepForLeader:Z

    .line 23
    iput-boolean v0, p0, Lcom/narvii/util/FilterHelper;->keepBlockedUser:Z

    .line 24
    iput-boolean v0, p0, Lcom/narvii/util/FilterHelper;->filterDeleted:Z

    .line 25
    iput-boolean v0, p0, Lcom/narvii/util/FilterHelper;->filterClosed:Z

    .line 28
    iput-object p1, p0, Lcom/narvii/util/FilterHelper;->context:Lcom/narvii/app/NVContext;

    return-void
.end method


# virtual methods
.method public filter(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/narvii/model/NVObject;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 113
    :cond_0
    iget-boolean v1, p0, Lcom/narvii/util/FilterHelper;->keepForLeaderAndCurator:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/narvii/util/FilterHelper;->keepForLeader:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_1

    .line 114
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/narvii/util/FilterHelper;->context:Lcom/narvii/app/NVContext;

    const-string v2, "account"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 115
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    .line 122
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/NVObject;

    .line 124
    invoke-virtual {p0, v5, v1}, Lcom/narvii/util/FilterHelper;->isAccessibleToUser(Lcom/narvii/model/NVObject;Lcom/narvii/model/User;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v0, :cond_4

    .line 128
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    if-nez v0, :cond_4

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_4

    .line 134
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    move-object p1, v0

    :goto_5
    return-object p1
.end method

.method public filterClosed()Lcom/narvii/util/FilterHelper;
    .locals 1

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/narvii/util/FilterHelper;->filterClosed:Z

    return-object p0
.end method

.method public filterDeleted()Lcom/narvii/util/FilterHelper;
    .locals 1

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/narvii/util/FilterHelper;->filterDeleted:Z

    return-object p0
.end method

.method public isAccessible(Lcom/narvii/model/NVObject;)Z
    .locals 2

    .line 98
    iget-boolean v0, p0, Lcom/narvii/util/FilterHelper;->keepForLeaderAndCurator:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/util/FilterHelper;->keepForLeader:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 99
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/util/FilterHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 100
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    .line 105
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/util/FilterHelper;->isAccessibleToUser(Lcom/narvii/model/NVObject;Lcom/narvii/model/User;)Z

    move-result p1

    return p1
.end method

.method protected isAccessibleToUser(Lcom/narvii/model/NVObject;Lcom/narvii/model/User;)Z
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/narvii/util/FilterHelper;->context:Lcom/narvii/app/NVContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "block"

    .line 66
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/userblock/UserBlockService;

    .line 70
    :goto_0
    iget-boolean v1, p0, Lcom/narvii/util/FilterHelper;->filterDeleted:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->invisibleBecauseOfDeleted()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 76
    :cond_1
    iget-boolean v1, p0, Lcom/narvii/util/FilterHelper;->filterClosed:Z

    if-eqz v1, :cond_2

    .line 77
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->invisibleBecauseOfClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 83
    :cond_2
    iget-boolean v1, p0, Lcom/narvii/util/FilterHelper;->filterClosed:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/narvii/util/FilterHelper;->filterDeleted:Z

    if-nez v1, :cond_4

    .line 84
    iget-boolean v1, p0, Lcom/narvii/util/FilterHelper;->keepForLeader:Z

    if-eqz v1, :cond_3

    invoke-virtual {p1, p2}, Lcom/narvii/model/NVObject;->isAccessibleByLeader(Lcom/narvii/model/User;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p2}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result p2

    if-nez p2, :cond_4

    :goto_1
    return v2

    .line 89
    :cond_4
    iget-boolean p2, p0, Lcom/narvii/util/FilterHelper;->keepBlockedUser:Z

    if-nez p2, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/narvii/userblock/UserBlockService;->isBlocked(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v2

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public keepBlockedUser()Lcom/narvii/util/FilterHelper;
    .locals 1

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/narvii/util/FilterHelper;->keepBlockedUser:Z

    return-object p0
.end method

.method public keepBlockedUser(Z)Lcom/narvii/util/FilterHelper;
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/narvii/util/FilterHelper;->keepBlockedUser:Z

    return-object p0
.end method

.method public keepForLeader()Lcom/narvii/util/FilterHelper;
    .locals 1

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/narvii/util/FilterHelper;->keepForLeader:Z

    return-object p0
.end method

.method public keepForLeaderAndCurator()Lcom/narvii/util/FilterHelper;
    .locals 1

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/narvii/util/FilterHelper;->keepForLeaderAndCurator:Z

    return-object p0
.end method
