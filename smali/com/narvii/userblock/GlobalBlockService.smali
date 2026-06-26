.class public Lcom/narvii/userblock/GlobalBlockService;
.super Ljava/lang/Object;
.source "GlobalBlockService.java"

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

.field private lbm:Landroid/support/v4/content/LocalBroadcastManager;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x7530

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x36ee80

    :goto_0
    sput-wide v0, Lcom/narvii/userblock/GlobalBlockService;->EXPIRE:J

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/narvii/userblock/GlobalBlockService$1;

    invoke-direct {v0, p0}, Lcom/narvii/userblock/GlobalBlockService$1;-><init>(Lcom/narvii/userblock/GlobalBlockService;)V

    iput-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->receiver:Landroid/content/BroadcastReceiver;

    .line 40
    iput-object p1, p0, Lcom/narvii/userblock/GlobalBlockService;->context:Lcom/narvii/app/NVContext;

    .line 41
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/userblock/GlobalBlockService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    .line 42
    iget-object p1, p0, Lcom/narvii/userblock/GlobalBlockService;->context:Lcom/narvii/app/NVContext;

    const-string v0, "account"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/userblock/GlobalBlockService;->account:Lcom/narvii/account/AccountService;

    return-void
.end method


# virtual methods
.method public isBlocked(Ljava/lang/String;)Z
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->blockedList:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/narvii/userblock/GlobalBlockService;->update()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->blockedList:Ljava/util/Set;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->blockerList:Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public isInBlockedList(Ljava/lang/String;)Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->blockedList:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/narvii/userblock/GlobalBlockService;->update()V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->blockedList:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public refresh(Z)V
    .locals 10

    .line 123
    iget-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 124
    iget-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    const-string p1, "blockedUidList"

    .line 125
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "blockerUidList"

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 126
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "blockListTime"

    if-nez p1, :cond_4

    const-wide/16 v6, 0x0

    .line 128
    invoke-interface {v0, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v8, v3, v6

    if-ltz v8, :cond_2

    .line 129
    sget-wide v8, Lcom/narvii/userblock/GlobalBlockService;->EXPIRE:J

    add-long/2addr v6, v8

    cmp-long v8, v3, v6

    if-lez v8, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    or-int/2addr p1, v1

    :cond_4
    if-eqz p1, :cond_5

    .line 132
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v1, "/block/full-list"

    invoke-virtual {p1, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 133
    iget-object v1, p0, Lcom/narvii/userblock/GlobalBlockService;->context:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 134
    new-instance v2, Lcom/narvii/userblock/GlobalBlockService$2;

    const-class v6, Lcom/narvii/userblock/BlockListResponse;

    invoke-direct {v2, p0, v6, v0}, Lcom/narvii/userblock/GlobalBlockService$2;-><init>(Lcom/narvii/userblock/GlobalBlockService;Ljava/lang/Class;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, p1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 145
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    return-void
.end method

.method public start()V
    .locals 4

    .line 46
    iget-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/userblock/GlobalBlockService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 47
    invoke-virtual {p0}, Lcom/narvii/userblock/GlobalBlockService;->update()V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/userblock/GlobalBlockService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->blockedList:Ljava/util/Set;

    .line 53
    iput-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->blockerList:Ljava/util/Set;

    return-void
.end method

.method protected update()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "blockedUidList"

    .line 67
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/userblock/GlobalBlockService;->blockedList:Ljava/util/Set;

    .line 68
    iget-object v2, p0, Lcom/narvii/userblock/GlobalBlockService;->blockedList:Ljava/util/Set;

    if-nez v2, :cond_0

    .line 69
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/userblock/GlobalBlockService;->blockedList:Ljava/util/Set;

    :cond_0
    const-string v2, "blockerUidList"

    .line 71
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->blockerList:Ljava/util/Set;

    .line 72
    iget-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->blockerList:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 73
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->blockerList:Ljava/util/Set;

    goto :goto_0

    .line 76
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->blockedList:Ljava/util/Set;

    .line 77
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->blockerList:Ljava/util/Set;

    .line 79
    :cond_2
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.narvii.action.ACTION_BLOCK_LIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/narvii/userblock/GlobalBlockService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

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

    .line 111
    iget-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/narvii/userblock/GlobalBlockService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string p1, "blockedUidList"

    .line 114
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string p2, "blockerUidList"

    .line 115
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 116
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/userblock/GlobalBlockService;->update()V

    return-void
.end method
