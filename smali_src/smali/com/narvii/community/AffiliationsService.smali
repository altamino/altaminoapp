.class public Lcom/narvii/community/AffiliationsService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/community/AffiliationsService$AffiliationResponse;,
        Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;
    }
.end annotation


# static fields
.field private static final EXPIRE:J


# instance fields
.field private account:Lcom/narvii/account/AccountService;

.field public final affiliationChangeListeners:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private affiliations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private context:Lcom/narvii/app/NVContext;

.field private lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private final listener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/community/AffiliationsService$AffiliationResponse;",
            ">;"
        }
    .end annotation
.end field

.field public final listeners:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/util/Callback<",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private refreshCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/community/AffiliationsService$AffiliationResponse;",
            ">;"
        }
    .end annotation
.end field

.field private timeStamp:Ljava/lang/String;


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
    sput-wide v0, Lcom/narvii/community/AffiliationsService;->EXPIRE:J

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/community/AffiliationsService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/community/AffiliationsService;->affiliationChangeListeners:Lcom/narvii/util/EventDispatcher;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/community/AffiliationsService$1;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/narvii/community/AffiliationsService$1;-><init>(Lcom/narvii/community/AffiliationsService;)V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/community/AffiliationsService;->receiver:Landroid/content/BroadcastReceiver;

    .line 25
    .line 26
    new-instance v0, Lcom/narvii/community/AffiliationsService$4;

    .line 27
    .line 28
    const-class v1, Lcom/narvii/community/AffiliationsService$AffiliationResponse;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0, v1}, Lcom/narvii/community/AffiliationsService$4;-><init>(Lcom/narvii/community/AffiliationsService;Ljava/lang/Class;)V

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/community/AffiliationsService;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/narvii/community/AffiliationsService;->context:Lcom/narvii/app/NVContext;

    .line 36
    .line 37
    const-string v0, "account"

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/community/AffiliationsService;->account:Lcom/narvii/account/AccountService;

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    iput-object p1, p0, Lcom/narvii/community/AffiliationsService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 56
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/community/AffiliationsService;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/community/AffiliationsService;->account:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/community/AffiliationsService;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/community/AffiliationsService;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/community/AffiliationsService;)Lcom/narvii/util/Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/community/AffiliationsService;->refreshCallback:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/community/AffiliationsService;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/community/AffiliationsService;->affiliations:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/community/AffiliationsService;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/community/AffiliationsService;->timeStamp:Ljava/lang/String;

    return-void
.end method

.method private op(II)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/community/AffiliationsService;->affiliations()Ljava/util/List;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    if-ne p1, v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v1, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, -0x1

    .line 35
    .line 36
    if-ne p1, v1, :cond_3

    .line 37
    .line 38
    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 44
    move-result v1

    .line 45
    .line 46
    :goto_0
    const-string p1, ","

    .line 47
    .line 48
    .line 49
    invoke-static {v0, p1}, Lcom/narvii/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    iget-object p2, p0, Lcom/narvii/community/AffiliationsService;->account:Lcom/narvii/account/AccountService;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    .line 59
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    const-string v0, "affiliations"

    .line 63
    .line 64
    .line 65
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    const-string p2, "affiliationsTime"

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 76
    const/4 p1, 0x0

    .line 77
    .line 78
    iput-object p1, p0, Lcom/narvii/community/AffiliationsService;->affiliations:Ljava/util/ArrayList;

    .line 79
    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/narvii/community/AffiliationsService;->affiliations()Ljava/util/List;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    iget-object p2, p0, Lcom/narvii/community/AffiliationsService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 87
    .line 88
    new-instance v0, Lcom/narvii/community/AffiliationsService$2;

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, p0, p1}, Lcom/narvii/community/AffiliationsService$2;-><init>(Lcom/narvii/community/AffiliationsService;Ljava/util/List;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 95
    .line 96
    iget-object p1, p0, Lcom/narvii/community/AffiliationsService;->affiliationChangeListeners:Lcom/narvii/util/EventDispatcher;

    .line 97
    .line 98
    new-instance p2, Lcom/narvii/community/AffiliationsService$3;

    .line 99
    .line 100
    .line 101
    invoke-direct {p2, p0}, Lcom/narvii/community/AffiliationsService$3;-><init>(Lcom/narvii/community/AffiliationsService;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 105
    :cond_2
    return-void

    .line 106
    .line 107
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    .line 110
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 111
    throw p1
.end method


# virtual methods
.method public addAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/AffiliationsService;->affiliationChangeListeners:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public affiliations()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/AffiliationsService;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/community/AffiliationsService;->affiliations:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/community/AffiliationsService;->account:Lcom/narvii/account/AccountService;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    const-string v1, "affiliations"

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    const-string v2, ","

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v2}, Lcom/narvii/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v2

    .line 45
    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    check-cast v2, Ljava/lang/String;

    .line 53
    const/4 v3, 0x0

    .line 54
    .line 55
    .line 56
    invoke-static {v2, v3}, Lcom/narvii/util/StringUtils;->parseInt(Ljava/lang/String;I)I

    .line 57
    move-result v2

    .line 58
    .line 59
    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_0
    iput-object v1, p0, Lcom/narvii/community/AffiliationsService;->affiliations:Ljava/util/ArrayList;

    .line 68
    .line 69
    :cond_1
    iget-object v0, p0, Lcom/narvii/community/AffiliationsService;->affiliations:Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 73
    move-result-object v0

    .line 74
    return-object v0

    .line 75
    .line 76
    .line 77
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 78
    move-result-object v0

    .line 79
    return-object v0
.end method

.method public contains(I)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/community/AffiliationsService;->affiliations()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/community/AffiliationsService;->timeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public opAdd(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0, p1}, Lcom/narvii/community/AffiliationsService;->op(II)V

    .line 5
    return-void
.end method

.method public opRemove(I)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0, p1}, Lcom/narvii/community/AffiliationsService;->op(II)V

    .line 5
    return-void
.end method

.method public refresh(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/community/AffiliationsService;->refresh(ZLcom/narvii/util/Callback;)V

    return-void
.end method

.method public refresh(ZLcom/narvii/util/Callback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/community/AffiliationsService$AffiliationResponse;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/community/AffiliationsService;->account:Lcom/narvii/account/AccountService;

    .line 2
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/community/AffiliationsService;->account:Lcom/narvii/account/AccountService;

    .line 3
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "affiliationsTime"

    if-nez p1, :cond_0

    const-wide/16 v2, 0x0

    .line 4
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-ltz v6, :cond_1

    sget-wide v6, Lcom/narvii/community/AffiliationsService;->EXPIRE:J

    add-long/2addr v2, v6

    cmp-long v2, v4, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/narvii/community/AffiliationsService;->refreshCallback:Lcom/narvii/util/Callback;

    .line 6
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string p2, "/account/affiliations"

    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string/jumbo p2, "type"

    const-string v2, "active"

    invoke-virtual {p1, p2, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/community/AffiliationsService;->context:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    .line 7
    invoke-interface {p2, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/http/ApiService;

    iget-object v2, p0, Lcom/narvii/community/AffiliationsService;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 8
    invoke-virtual {p2, p1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/narvii/community/AffiliationsService;->affiliations:Ljava/util/ArrayList;

    :cond_3
    :goto_1
    return-void
.end method

.method public removeAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/AffiliationsService;->affiliationChangeListeners:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/AffiliationsService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/community/AffiliationsService;->receiver:Landroid/content/BroadcastReceiver;

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
    iget-object v0, p0, Lcom/narvii/community/AffiliationsService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/community/AffiliationsService;->receiver:Landroid/content/BroadcastReceiver;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 8
    return-void
.end method
