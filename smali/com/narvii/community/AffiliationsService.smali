.class public Lcom/narvii/community/AffiliationsService;
.super Ljava/lang/Object;
.source "AffiliationsService.java"


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

.field private lbm:Landroid/support/v4/content/LocalBroadcastManager;

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

    .line 35
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x7530

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x36ee80

    :goto_0
    sput-wide v0, Lcom/narvii/community/AffiliationsService;->EXPIRE:J

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/narvii/community/AffiliationsService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 42
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/narvii/community/AffiliationsService;->affiliationChangeListeners:Lcom/narvii/util/EventDispatcher;

    .line 74
    new-instance v0, Lcom/narvii/community/AffiliationsService$1;

    invoke-direct {v0, p0}, Lcom/narvii/community/AffiliationsService$1;-><init>(Lcom/narvii/community/AffiliationsService;)V

    iput-object v0, p0, Lcom/narvii/community/AffiliationsService;->receiver:Landroid/content/BroadcastReceiver;

    .line 174
    new-instance v0, Lcom/narvii/community/AffiliationsService$4;

    const-class v1, Lcom/narvii/community/AffiliationsService$AffiliationResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/community/AffiliationsService$4;-><init>(Lcom/narvii/community/AffiliationsService;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/community/AffiliationsService;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 52
    iput-object p1, p0, Lcom/narvii/community/AffiliationsService;->context:Lcom/narvii/app/NVContext;

    const-string v0, "account"

    .line 53
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/community/AffiliationsService;->account:Lcom/narvii/account/AccountService;

    .line 54
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/community/AffiliationsService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/community/AffiliationsService;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/narvii/community/AffiliationsService;->account:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static synthetic access$102(Lcom/narvii/community/AffiliationsService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/narvii/community/AffiliationsService;->timeStamp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/narvii/community/AffiliationsService;)Lcom/narvii/util/Callback;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/narvii/community/AffiliationsService;->refreshCallback:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method static synthetic access$302(Lcom/narvii/community/AffiliationsService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/narvii/community/AffiliationsService;->affiliations:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/narvii/community/AffiliationsService;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/narvii/community/AffiliationsService;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method private op(II)V
    .locals 3

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/narvii/community/AffiliationsService;->affiliations()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    .line 114
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 115
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    .line 119
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    const-string p1, ","

    .line 124
    invoke-static {v0, p1}, Lcom/narvii/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 125
    iget-object p2, p0, Lcom/narvii/community/AffiliationsService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p2

    .line 126
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "affiliations"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "affiliationsTime"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Lcom/narvii/community/AffiliationsService;->affiliations:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 130
    invoke-virtual {p0}, Lcom/narvii/community/AffiliationsService;->affiliations()Ljava/util/List;

    move-result-object p1

    .line 131
    iget-object p2, p0, Lcom/narvii/community/AffiliationsService;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance v0, Lcom/narvii/community/AffiliationsService$2;

    invoke-direct {v0, p0, p1}, Lcom/narvii/community/AffiliationsService$2;-><init>(Lcom/narvii/community/AffiliationsService;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 137
    iget-object p1, p0, Lcom/narvii/community/AffiliationsService;->affiliationChangeListeners:Lcom/narvii/util/EventDispatcher;

    new-instance p2, Lcom/narvii/community/AffiliationsService$3;

    invoke-direct {p2, p0}, Lcom/narvii/community/AffiliationsService$3;-><init>(Lcom/narvii/community/AffiliationsService;)V

    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_2
    return-void

    .line 121
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public addAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/narvii/community/AffiliationsService;->affiliationChangeListeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

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

    .line 82
    iget-object v0, p0, Lcom/narvii/community/AffiliationsService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/narvii/community/AffiliationsService;->affiliations:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/narvii/community/AffiliationsService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "affiliations"

    .line 85
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ","

    .line 87
    invoke-static {v0, v2}, Lcom/narvii/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 88
    invoke-static {v2, v3}, Lcom/narvii/util/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :cond_0
    iput-object v1, p0, Lcom/narvii/community/AffiliationsService;->affiliations:Ljava/util/ArrayList;

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/narvii/community/AffiliationsService;->affiliations:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 94
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public contains(I)Z
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/narvii/community/AffiliationsService;->affiliations()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/narvii/community/AffiliationsService;->timeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public opAdd(I)V
    .locals 1

    const/4 v0, 0x1

    .line 103
    invoke-direct {p0, v0, p1}, Lcom/narvii/community/AffiliationsService;->op(II)V

    return-void
.end method

.method public opRemove(I)V
    .locals 1

    const/4 v0, -0x1

    .line 107
    invoke-direct {p0, v0, p1}, Lcom/narvii/community/AffiliationsService;->op(II)V

    return-void
.end method

.method public refresh(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 147
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

    .line 151
    iget-object v0, p0, Lcom/narvii/community/AffiliationsService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/narvii/community/AffiliationsService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "affiliationsTime"

    if-nez p1, :cond_1

    const-wide/16 v2, 0x0

    .line 155
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-ltz v6, :cond_0

    .line 157
    sget-wide v6, Lcom/narvii/community/AffiliationsService;->EXPIRE:J

    add-long/2addr v2, v6

    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    :cond_0
    const/4 p1, 0x1

    :cond_1
    if-eqz p1, :cond_3

    .line 162
    iput-object p2, p0, Lcom/narvii/community/AffiliationsService;->refreshCallback:Lcom/narvii/util/Callback;

    .line 163
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

    .line 164
    iget-object p2, p0, Lcom/narvii/community/AffiliationsService;->context:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {p2, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 165
    iget-object v2, p0, Lcom/narvii/community/AffiliationsService;->listener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p2, p1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 167
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 170
    iput-object p1, p0, Lcom/narvii/community/AffiliationsService;->affiliations:Ljava/util/ArrayList;

    :cond_3
    :goto_0
    return-void
.end method

.method public removeAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/narvii/community/AffiliationsService;->affiliationChangeListeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public start()V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/narvii/community/AffiliationsService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/community/AffiliationsService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/narvii/community/AffiliationsService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/community/AffiliationsService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
