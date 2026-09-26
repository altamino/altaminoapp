.class public Lcom/narvii/util/FilterHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/util/FilterHelper;->keepForLeaderAndCurator:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/util/FilterHelper;->keepForLeader:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/narvii/util/FilterHelper;->keepBlockedUser:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/narvii/util/FilterHelper;->filterDeleted:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/narvii/util/FilterHelper;->filterClosed:Z

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/util/FilterHelper;->context:Lcom/narvii/app/NVContext;

    .line 17
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

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/narvii/util/FilterHelper;->keepForLeaderAndCurator:Z

    .line 7
    .line 8
    if-nez v1, :cond_2

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/narvii/util/FilterHelper;->keepForLeader:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move-object v1, v0

    .line 15
    goto :goto_1

    .line 16
    .line 17
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/narvii/util/FilterHelper;->context:Lcom/narvii/app/NVContext;

    .line 18
    .line 19
    const-string v2, "account"

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x0

    .line 35
    move v4, v3

    .line 36
    .line 37
    .line 38
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v5

    .line 40
    .line 41
    if-eqz v5, :cond_5

    .line 42
    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v5

    .line 46
    .line 47
    check-cast v5, Lcom/narvii/model/NVObject;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v5, v1}, Lcom/narvii/util/FilterHelper;->isAccessibleToUser(Lcom/narvii/model/NVObject;Lcom/narvii/model/User;)Z

    .line 51
    move-result v6

    .line 52
    .line 53
    if-eqz v6, :cond_3

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    goto :goto_4

    .line 60
    .line 61
    :cond_3
    if-nez v0, :cond_4

    .line 62
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    move v5, v3

    .line 68
    .line 69
    :goto_3
    if-ge v5, v4, :cond_4

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v6

    .line 74
    .line 75
    check-cast v6, Lcom/narvii/model/NVObject;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    add-int/lit8 v5, v5, 0x1

    .line 81
    goto :goto_3

    .line 82
    .line 83
    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 84
    goto :goto_2

    .line 85
    .line 86
    :cond_5
    if-nez v0, :cond_6

    .line 87
    goto :goto_5

    .line 88
    :cond_6
    move-object p1, v0

    .line 89
    :goto_5
    return-object p1
.end method

.method public filterClosed()Lcom/narvii/util/FilterHelper;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/util/FilterHelper;->filterClosed:Z

    return-object p0
.end method

.method public filterDeleted()Lcom/narvii/util/FilterHelper;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/util/FilterHelper;->filterDeleted:Z

    return-object p0
.end method

.method public isAccessible(Lcom/narvii/model/NVObject;)Z
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/util/FilterHelper;->keepForLeaderAndCurator:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/narvii/util/FilterHelper;->keepForLeader:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    .line 13
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/util/FilterHelper;->context:Lcom/narvii/app/NVContext;

    .line 14
    .line 15
    const-string v1, "account"

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/util/FilterHelper;->isAccessibleToUser(Lcom/narvii/model/NVObject;Lcom/narvii/model/User;)Z

    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method protected isAccessibleToUser(Lcom/narvii/model/NVObject;Lcom/narvii/model/User;)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/FilterHelper;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    const-string v1, "block"

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/userblock/UserBlockService;

    .line 15
    .line 16
    :goto_0
    iget-boolean v1, p0, Lcom/narvii/util/FilterHelper;->filterDeleted:Z

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->invisibleBecauseOfDeleted()Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    return v2

    .line 27
    .line 28
    :cond_1
    iget-boolean v1, p0, Lcom/narvii/util/FilterHelper;->filterClosed:Z

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->invisibleBecauseOfClosed()Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    return v2

    .line 38
    .line 39
    :cond_2
    iget-boolean v1, p0, Lcom/narvii/util/FilterHelper;->filterClosed:Z

    .line 40
    .line 41
    if-nez v1, :cond_4

    .line 42
    .line 43
    iget-boolean v1, p0, Lcom/narvii/util/FilterHelper;->filterDeleted:Z

    .line 44
    .line 45
    if-nez v1, :cond_4

    .line 46
    .line 47
    iget-boolean v1, p0, Lcom/narvii/util/FilterHelper;->keepForLeader:Z

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lcom/narvii/model/NVObject;->isAccessibleByLeader(Lcom/narvii/model/User;)Z

    .line 53
    move-result p2

    .line 54
    .line 55
    if-nez p2, :cond_4

    .line 56
    goto :goto_1

    .line 57
    .line 58
    .line 59
    :cond_3
    invoke-virtual {p1, p2}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 60
    move-result p2

    .line 61
    .line 62
    if-nez p2, :cond_4

    .line 63
    :goto_1
    return v2

    .line 64
    .line 65
    :cond_4
    iget-boolean p2, p0, Lcom/narvii/util/FilterHelper;->keepBlockedUser:Z

    .line 66
    .line 67
    if-nez p2, :cond_5

    .line 68
    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-interface {v0, p1}, Lcom/narvii/userblock/UserBlockService;->isBlocked(Ljava/lang/String;)Z

    .line 77
    move-result p1

    .line 78
    .line 79
    if-eqz p1, :cond_5

    .line 80
    return v2

    .line 81
    :cond_5
    const/4 p1, 0x1

    .line 82
    return p1
.end method

.method public keepBlockedUser()Lcom/narvii/util/FilterHelper;
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/util/FilterHelper;->keepBlockedUser:Z

    return-object p0
.end method

.method public keepBlockedUser(Z)Lcom/narvii/util/FilterHelper;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/narvii/util/FilterHelper;->keepBlockedUser:Z

    return-object p0
.end method

.method public keepForLeader()Lcom/narvii/util/FilterHelper;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/util/FilterHelper;->keepForLeader:Z

    return-object p0
.end method

.method public keepForLeaderAndCurator()Lcom/narvii/util/FilterHelper;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/util/FilterHelper;->keepForLeaderAndCurator:Z

    return-object p0
.end method
