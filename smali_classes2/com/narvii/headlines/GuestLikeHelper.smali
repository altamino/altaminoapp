.class public Lcom/narvii/headlines/GuestLikeHelper;
.super Ljava/lang/Object;
.source "GuestLikeHelper.java"


# static fields
.field public static final MAX_ID_LIST_SIZE:I = 0xc8


# instance fields
.field hashSet:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field nvContext:Lcom/narvii/app/NVContext;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field sharedPreferences:Landroid/content/SharedPreferences;

.field uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/narvii/headlines/GuestLikeHelper$1;

    invoke-direct {v0, p0}, Lcom/narvii/headlines/GuestLikeHelper$1;-><init>(Lcom/narvii/headlines/GuestLikeHelper;)V

    iput-object v0, p0, Lcom/narvii/headlines/GuestLikeHelper;->receiver:Landroid/content/BroadcastReceiver;

    .line 41
    iput-object p1, p0, Lcom/narvii/headlines/GuestLikeHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 42
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "headline_guest_like"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/headlines/GuestLikeHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 43
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/headlines/GuestLikeHelper;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/headlines/GuestLikeHelper;Ljava/util/Set;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/narvii/headlines/GuestLikeHelper;->save(Ljava/util/Set;)V

    return-void
.end method

.method private addGuestVoted(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/narvii/headlines/GuestLikeHelper;->getVotedIdList()Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 113
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 114
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result p1

    add-int/lit16 p1, p1, -0xc8

    .line 115
    iget-object v1, p0, Lcom/narvii/headlines/GuestLikeHelper;->hashSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    if-lez p1, :cond_1

    .line 116
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 121
    :cond_1
    invoke-direct {p0, v0}, Lcom/narvii/headlines/GuestLikeHelper;->save(Ljava/util/Set;)V

    :cond_2
    return-void
.end method

.method private getVotedIdList()Ljava/util/LinkedHashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/narvii/headlines/GuestLikeHelper;->hashSet:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/narvii/headlines/GuestLikeHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 92
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/headlines/GuestLikeHelper;->uid:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/narvii/headlines/GuestLikeHelper;->uid:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/headlines/GuestLikeHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const-string/jumbo v3, "uid"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "votedIdList"

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/narvii/headlines/GuestLikeHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/narvii/headlines/GuestLikeHelper;->hashSet:Ljava/util/LinkedHashSet;

    goto :goto_0

    .line 101
    :cond_1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/narvii/headlines/GuestLikeHelper;->hashSet:Ljava/util/LinkedHashSet;

    .line 102
    iget-object v0, p0, Lcom/narvii/headlines/GuestLikeHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/headlines/GuestLikeHelper;->uid:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 105
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/headlines/GuestLikeHelper;->hashSet:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method private removeGuestVoted(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/narvii/headlines/GuestLikeHelper;->getVotedIdList()Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 140
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 141
    invoke-direct {p0, v0}, Lcom/narvii/headlines/GuestLikeHelper;->save(Ljava/util/Set;)V

    :cond_1
    return-void
.end method

.method private save(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "votedIdList"

    if-nez p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/narvii/headlines/GuestLikeHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/narvii/headlines/GuestLikeHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 130
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getGuestVoteValue(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/narvii/headlines/GuestLikeHelper;->getVotedIdList()Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    return p1

    :cond_1
    return v0
.end method

.method public onGuestVote(Ljava/lang/String;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 83
    invoke-direct {p0, p1}, Lcom/narvii/headlines/GuestLikeHelper;->removeGuestVoted(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/headlines/GuestLikeHelper;->addGuestVoted(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public start()V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/narvii/headlines/GuestLikeHelper;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/headlines/GuestLikeHelper;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/narvii/headlines/GuestLikeHelper;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/headlines/GuestLikeHelper;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
