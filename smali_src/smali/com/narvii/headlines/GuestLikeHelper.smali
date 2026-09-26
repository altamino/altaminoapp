.class public Lcom/narvii/headlines/GuestLikeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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

.field localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field nvContext:Lcom/narvii/app/NVContext;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field sharedPreferences:Landroid/content/SharedPreferences;

.field uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/headlines/GuestLikeHelper$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/headlines/GuestLikeHelper$1;-><init>(Lcom/narvii/headlines/GuestLikeHelper;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/headlines/GuestLikeHelper;->receiver:Landroid/content/BroadcastReceiver;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/headlines/GuestLikeHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "headline_guest_like"

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/headlines/GuestLikeHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    iput-object p1, p0, Lcom/narvii/headlines/GuestLikeHelper;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 36
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/headlines/GuestLikeHelper;Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/headlines/GuestLikeHelper;->save(Ljava/util/Set;)V

    return-void
.end method

.method private addGuestVoted(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/narvii/headlines/GuestLikeHelper;->getVotedIdList()Ljava/util/LinkedHashSet;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 11
    move-result p1

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 17
    move-result p1

    .line 18
    .line 19
    add-int/lit16 p1, p1, -0xc8

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/headlines/GuestLikeHelper;->hashSet:Ljava/util/LinkedHashSet;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    :goto_0
    if-lez p1, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v2

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 40
    .line 41
    add-int/lit8 p1, p1, -0x1

    .line 42
    goto :goto_0

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-direct {p0, v0}, Lcom/narvii/headlines/GuestLikeHelper;->save(Ljava/util/Set;)V

    .line 46
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/GuestLikeHelper;->hashSet:Ljava/util/LinkedHashSet;

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/headlines/GuestLikeHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    const-string v1, "account"

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/headlines/GuestLikeHelper;->uid:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/headlines/GuestLikeHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 23
    .line 24
    const-string/jumbo v2, "uid"

    .line 25
    const/4 v3, 0x0

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    move-result v0

    .line 34
    .line 35
    const-string/jumbo v1, "votedIdList"

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/headlines/GuestLikeHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    const-class v1, Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    if-nez v0, :cond_0

    .line 52
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 62
    .line 63
    iput-object v1, p0, Lcom/narvii/headlines/GuestLikeHelper;->hashSet:Ljava/util/LinkedHashSet;

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 67
    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 70
    .line 71
    iput-object v0, p0, Lcom/narvii/headlines/GuestLikeHelper;->hashSet:Ljava/util/LinkedHashSet;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/narvii/headlines/GuestLikeHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 74
    .line 75
    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    iget-object v3, p0, Lcom/narvii/headlines/GuestLikeHelper;->uid:Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    .line 86
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 91
    .line 92
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/headlines/GuestLikeHelper;->hashSet:Ljava/util/LinkedHashSet;

    .line 93
    return-object v0
.end method

.method private removeGuestVoted(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/narvii/headlines/GuestLikeHelper;->getVotedIdList()Ljava/util/LinkedHashSet;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 11
    move-result p1

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/narvii/headlines/GuestLikeHelper;->save(Ljava/util/Set;)V

    .line 17
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

    .line 1
    .line 2
    const-string/jumbo v0, "votedIdList"

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/headlines/GuestLikeHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/narvii/headlines/GuestLikeHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 36
    :goto_0
    return-void
.end method


# virtual methods
.method public getGuestVoteValue(Ljava/lang/String;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/narvii/headlines/GuestLikeHelper;->getVotedIdList()Ljava/util/LinkedHashSet;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    const/4 p1, 0x4

    .line 16
    return p1

    .line 17
    :cond_1
    return v0
.end method

.method public onGuestVote(Ljava/lang/String;I)V
    .locals 0

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/headlines/GuestLikeHelper;->removeGuestVoted(Ljava/lang/String;)V

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/headlines/GuestLikeHelper;->addGuestVoted(Ljava/lang/String;)V

    .line 10
    :goto_0
    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/GuestLikeHelper;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/headlines/GuestLikeHelper;->receiver:Landroid/content/BroadcastReceiver;

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
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/GuestLikeHelper;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/headlines/GuestLikeHelper;->receiver:Landroid/content/BroadcastReceiver;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 8
    return-void
.end method
