.class public Lcom/narvii/userblock/GlobalBlockService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/userblock/UserBlockService;


# static fields
.field public static final ACTION_BLOCK_LIST_CHANGED:Ljava/lang/String; = "com.narvii.action.ACTION_BLOCK_LIST_CHANGED"

.field private static final EXPIRE:J


# instance fields
.field private account:Lcom/narvii/account/AccountService;

.field protected blockedList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blockerList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private context:Lcom/narvii/app/NVContext;

.field private lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-wide/16 v0, 0x7530

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    const-wide/32 v0, 0x36ee80

    .line 11
    .line 12
    :goto_0
    sput-wide v0, Lcom/narvii/userblock/GlobalBlockService;->EXPIRE:J

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/userblock/GlobalBlockService$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/userblock/GlobalBlockService$1;-><init>(Lcom/narvii/userblock/GlobalBlockService;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->receiver:Landroid/content/BroadcastReceiver;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/userblock/GlobalBlockService;->context:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/userblock/GlobalBlockService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/userblock/GlobalBlockService;->context:Lcom/narvii/app/NVContext;

    .line 25
    .line 26
    const-string v0, "account"

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/narvii/userblock/GlobalBlockService;->account:Lcom/narvii/account/AccountService;

    .line 35
    return-void
.end method


# virtual methods
.method public isBlocked(Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->blockedList:Ljava/util/Set;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/userblock/GlobalBlockService;->update()V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->blockedList:Ljava/util/Set;

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    return v1

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->blockerList:Ljava/util/Set;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 27
    move-result p1

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    return v1

    .line 31
    :cond_2
    const/4 p1, 0x0

    .line 32
    return p1
.end method

.method public isInBlockedList(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->blockedList:Ljava/util/Set;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/userblock/GlobalBlockService;->update()V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->blockedList:Ljava/util/Set;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public refresh(Z)V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->account:Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    const-string p1, "blockedUidList"

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    const-string p1, "blockerUidList"

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-nez p1, :cond_0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move p1, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    move p1, v1

    .line 39
    .line 40
    .line 41
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    move-result-wide v3

    .line 43
    .line 44
    const-string v5, "blockListTime"

    .line 45
    .line 46
    if-nez p1, :cond_4

    .line 47
    .line 48
    const-wide/16 v6, 0x0

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 52
    move-result-wide v6

    .line 53
    .line 54
    cmp-long v8, v3, v6

    .line 55
    .line 56
    if-ltz v8, :cond_3

    .line 57
    .line 58
    sget-wide v8, Lcom/narvii/userblock/GlobalBlockService;->EXPIRE:J

    .line 59
    add-long/2addr v6, v8

    .line 60
    .line 61
    cmp-long v6, v3, v6

    .line 62
    .line 63
    if-lez v6, :cond_2

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    move v1, v2

    .line 66
    :cond_3
    :goto_2
    or-int/2addr p1, v1

    .line 67
    .line 68
    :cond_4
    if-eqz p1, :cond_5

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    const-string v1, "/block/full-list"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    iget-object v1, p0, Lcom/narvii/userblock/GlobalBlockService;->context:Lcom/narvii/app/NVContext;

    .line 89
    .line 90
    const-string v2, "api"

    .line 91
    .line 92
    .line 93
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 97
    .line 98
    new-instance v2, Lcom/narvii/userblock/GlobalBlockService$2;

    .line 99
    .line 100
    const-class v6, Lcom/narvii/userblock/BlockListResponse;

    .line 101
    .line 102
    .line 103
    invoke-direct {v2, p0, v6, v0}, Lcom/narvii/userblock/GlobalBlockService$2;-><init>(Lcom/narvii/userblock/GlobalBlockService;Ljava/lang/Class;Landroid/content/SharedPreferences;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, p1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    .line 113
    invoke-interface {p1, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    .line 117
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 118
    :cond_5
    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/userblock/GlobalBlockService;->receiver:Landroid/content/BroadcastReceiver;

    .line 5
    .line 6
    new-instance v2, Landroid/content/IntentFilter;

    .line 7
    .line 8
    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/userblock/GlobalBlockService;->update()V

    .line 18
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/userblock/GlobalBlockService;->receiver:Landroid/content/BroadcastReceiver;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->blockedList:Ljava/util/Set;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->blockerList:Ljava/util/Set;

    .line 13
    return-void
.end method

.method protected update()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->account:Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "blockedUidList"

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    iput-object v1, p0, Lcom/narvii/userblock/GlobalBlockService;->blockedList:Ljava/util/Set;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    iput-object v1, p0, Lcom/narvii/userblock/GlobalBlockService;->blockedList:Ljava/util/Set;

    .line 32
    .line 33
    :cond_0
    const-string v1, "blockerUidList"

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    iput-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->blockerList:Ljava/util/Set;

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->blockerList:Ljava/util/Set;

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    iput-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->blockedList:Ljava/util/Set;

    .line 55
    .line 56
    .line 57
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    iput-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->blockerList:Ljava/util/Set;

    .line 61
    .line 62
    :cond_2
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .line 63
    .line 64
    const-string v1, "com.narvii.action.ACTION_BLOCK_LIST_CHANGED"

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    iget-object v1, p0, Lcom/narvii/userblock/GlobalBlockService;->context:Lcom/narvii/app/NVContext;

    .line 70
    .line 71
    .line 72
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    .line 76
    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 81
    return-void
.end method

.method public updateBlockList(Ljava/util/List;Ljava/util/List;)V
    .locals 2
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
    iget-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->account:Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    new-instance v1, Ljava/util/HashSet;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 24
    .line 25
    const-string p1, "blockedUidList"

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    new-instance v0, Ljava/util/HashSet;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 35
    .line 36
    const-string p2, "blockerUidList"

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/userblock/GlobalBlockService;->update()V

    .line 47
    return-void
.end method
