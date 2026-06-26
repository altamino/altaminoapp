.class public Lcom/narvii/monetization/sticker/StickerService;
.super Ljava/lang/Object;
.source "StickerService.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;
    }
.end annotation


# static fields
.field public static final REQUEST_INTERVAL:J = 0x493e0L

.field public static final SHARED_REQUEST_INTERVAL:J = 0x1d4c0L


# instance fields
.field error:Ljava/lang/String;

.field lastRequestTime:J

.field lastSharedRequestTime:J

.field localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private mActiveApiRequest:Lcom/narvii/util/http/ApiRequest;

.field nvContext:Lcom/narvii/app/NVContext;

.field final observers:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;",
            ">;"
        }
    .end annotation
.end field

.field final receiver:Landroid/content/BroadcastReceiver;

.field private sharedApiRequest:Lcom/narvii/util/http/ApiRequest;

.field sharedError:Ljava/lang/String;

.field final sharedObservers:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;",
            ">;"
        }
    .end annotation
.end field

.field sharedRequesting:Z

.field public sharedStickerPackCount:I

.field private sharedStickerPackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
            ">;"
        }
    .end annotation
.end field

.field private stickerCollectionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
            ">;"
        }
    .end annotation
.end field

.field private stickerPackListRefreshedThisSession:Z

.field userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->observers:Lcom/narvii/util/EventDispatcher;

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackCount:I

    .line 52
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedObservers:Lcom/narvii/util/EventDispatcher;

    .line 66
    new-instance v0, Lcom/narvii/monetization/sticker/StickerService$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/StickerService$1;-><init>(Lcom/narvii/monetization/sticker/StickerService;)V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->receiver:Landroid/content/BroadcastReceiver;

    .line 206
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerService;->nvContext:Lcom/narvii/app/NVContext;

    .line 207
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerService;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/sticker/StickerService;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerService;->clearSharedData()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/monetization/sticker/StickerService;Ljava/util/List;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/StickerService;->setSharedStickerPackList(Ljava/util/List;)V

    return-void
.end method

.method private clearData()V
    .locals 3

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->error:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 117
    iput-wide v1, p0, Lcom/narvii/monetization/sticker/StickerService;->lastRequestTime:J

    const/4 v1, 0x0

    .line 118
    iput-boolean v1, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerPackListRefreshedThisSession:Z

    .line 119
    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    .line 120
    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->userId:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->mActiveApiRequest:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 123
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerService;->mActiveApiRequest:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    :cond_0
    return-void
.end method

.method private clearSharedData()V
    .locals 3

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedError:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 129
    iput-wide v1, p0, Lcom/narvii/monetization/sticker/StickerService;->lastSharedRequestTime:J

    .line 130
    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackList:Ljava/util/List;

    const/4 v0, 0x0

    .line 131
    iput v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackCount:I

    .line 132
    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedRequesting:Z

    .line 133
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedApiRequest:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 135
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedApiRequest:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    :cond_0
    return-void
.end method

.method private isCurrentUserInThisCommunity()Z
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "config"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 267
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerService;->nvContext:Lcom/narvii/app/NVContext;

    const-string v2, "affiliations"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/community/AffiliationsService;

    .line 268
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private notifyListChanged()V
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->observers:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/monetization/sticker/StickerService$7;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/sticker/StickerService$7;-><init>(Lcom/narvii/monetization/sticker/StickerService;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private setSharedStickerPackList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
            ">;)V"
        }
    .end annotation

    .line 333
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackList:Ljava/util/List;

    .line 334
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackList:Ljava/util/List;

    if-nez p1, :cond_0

    .line 335
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackList:Ljava/util/List;

    .line 337
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedObservers:Lcom/narvii/util/EventDispatcher;

    new-instance v0, Lcom/narvii/monetization/sticker/StickerService$5;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/StickerService$5;-><init>(Lcom/narvii/monetization/sticker/StickerService;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method


# virtual methods
.method public addSharedStickerPackListObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedObservers:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public addSticker(Ljava/lang/String;Lcom/narvii/model/Sticker;)V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 365
    :cond_0
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 367
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 368
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    .line 371
    :cond_1
    iget-object p1, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 372
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerService;->notifyListChanged()V

    :cond_2
    return-void
.end method

.method public addStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 461
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    return-void

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 466
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerService;->notifyListChanged()V

    return-void
.end method

.method public addStickerCollectionListObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->observers:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public getCustomizedCollection()Lcom/narvii/monetization/sticker/model/StickerCollection;
    .locals 4

    .line 415
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 419
    :goto_0
    iget-object v2, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 420
    iget-object v2, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 421
    invoke-virtual {v2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isPersonal()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getMoodStickerCollection()Ljava/util/List;
    .locals 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedError()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedError:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedStickerPackList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 184
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getStickerCollectionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 176
    invoke-virtual {p0, v0}, Lcom/narvii/monetization/sticker/StickerService;->getStickerCollectionList(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStickerCollectionList(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 192
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 194
    new-instance v0, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    iget-object v2, p0, Lcom/narvii/monetization/sticker/StickerService;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method public isCustomizedCollectionEmpty()Z
    .locals 1

    .line 429
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/StickerService;->getCustomizedCollection()Lcom/narvii/monetization/sticker/model/StickerCollection;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 433
    :cond_0
    iget-object v0, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public isSharedRequesting()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedRequesting:Z

    return v0
.end method

.method public isStickerPackListRefreshedThisSession()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerPackListRefreshedThisSession:Z

    return v0
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string/jumbo v2, "update"

    if-ne v1, v2, :cond_1

    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v1, :cond_1

    .line 83
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 84
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 86
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-static {v1, p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getUpdatedStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Lcom/narvii/monetization/sticker/model/StickerCollection;)Lcom/narvii/monetization/sticker/model/StickerCollection;

    move-result-object p1

    const/4 v1, 0x0

    .line 87
    invoke-virtual {p1, v1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 89
    iget p1, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackCount:I

    goto :goto_0

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 93
    :goto_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedObservers:Lcom/narvii/util/EventDispatcher;

    new-instance v0, Lcom/narvii/monetization/sticker/StickerService$2;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/StickerService$2;-><init>(Lcom/narvii/monetization/sticker/StickerService;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerPackListRefreshedThisSession:Z

    .line 141
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "notification"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 151
    invoke-virtual {v0, p0}, Lcom/narvii/notification/NotificationCenter;->registerListener(Lcom/narvii/notification/NotificationListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "notification"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 156
    invoke-virtual {v0, p0}, Lcom/narvii/notification/NotificationCenter;->unregisterListener(Lcom/narvii/notification/NotificationListener;)V

    return-void
.end method

.method public refreshSharedStickerPackList(Z)V
    .locals 4

    .line 275
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackList:Ljava/util/List;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-wide v0, p0, Lcom/narvii/monetization/sticker/StickerService;->lastSharedRequestTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/monetization/sticker/StickerService;->lastSharedRequestTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    return-void

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerService;->isCurrentUserInThisCommunity()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 283
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerService;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "api"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 284
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/sticker-collection"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string/jumbo v1, "type"

    const-string v2, "community-shared"

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedApiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/monetization/sticker/StickerService;->lastSharedRequestTime:J

    const/4 v0, 0x0

    .line 286
    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedError:Ljava/lang/String;

    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedRequesting:Z

    .line 288
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedApiRequest:Lcom/narvii/util/http/ApiRequest;

    new-instance v1, Lcom/narvii/monetization/sticker/StickerService$4;

    const-class v2, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;

    invoke-direct {v1, p0, v2}, Lcom/narvii/monetization/sticker/StickerService$4;-><init>(Lcom/narvii/monetization/sticker/StickerService;Ljava/lang/Class;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public refreshStickerCollection(Ljava/lang/String;)V
    .locals 4

    .line 377
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 378
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sticker-collection/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/stickers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 379
    new-instance v2, Lcom/narvii/monetization/sticker/StickerService$6;

    const-class v3, Lcom/narvii/monetization/sticker/picker/StickerListResponse;

    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/monetization/sticker/StickerService$6;-><init>(Lcom/narvii/monetization/sticker/StickerService;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public refreshStickerCollectionInfo(Z)V
    .locals 5

    .line 223
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 224
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerService;->userId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerService;->clearData()V

    :cond_0
    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    .line 228
    iget-wide v1, p0, Lcom/narvii/monetization/sticker/StickerService;->lastRequestTime:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/narvii/monetization/sticker/StickerService;->lastRequestTime:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x493e0

    cmp-long p1, v1, v3

    if-gez p1, :cond_1

    goto :goto_0

    .line 232
    :cond_1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerService;->isCurrentUserInThisCommunity()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerService;->nvContext:Lcom/narvii/app/NVContext;

    instance-of p1, p1, Lcom/narvii/app/NVApplication;

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 236
    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerPackListRefreshedThisSession:Z

    .line 237
    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->userId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->error:Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 240
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/sticker-collection"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string/jumbo v2, "type"

    const-string v3, "my-active-collection"

    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "includeStickers"

    invoke-virtual {v1, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerService;->mActiveApiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/narvii/monetization/sticker/StickerService;->lastRequestTime:J

    .line 242
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerService;->mActiveApiRequest:Lcom/narvii/util/http/ApiRequest;

    new-instance v1, Lcom/narvii/monetization/sticker/StickerService$3;

    const-class v2, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;

    invoke-direct {v1, p0, v2}, Lcom/narvii/monetization/sticker/StickerService$3;-><init>(Lcom/narvii/monetization/sticker/StickerService;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public removeSharedStickerPackObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedObservers:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public removeSticker(Ljava/lang/String;Lcom/narvii/model/Sticker;)V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 402
    :cond_0
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 405
    iget-object p1, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 406
    invoke-virtual {p2}, Lcom/narvii/model/Sticker;->id()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    .line 408
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerService;->notifyListChanged()V

    :cond_1
    return-void
.end method

.method public removeStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 449
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 451
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerService;->notifyListChanged()V

    :cond_2
    return-void
.end method

.method public removeStickerCollectionListObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->observers:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public setStickerCollectionList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
            ">;)V"
        }
    .end annotation

    .line 325
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    .line 326
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    if-nez p1, :cond_0

    .line 327
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerService;->notifyListChanged()V

    return-void
.end method

.method public setStickerList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/Sticker;",
            ">;)V"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 350
    :cond_0
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz p2, :cond_1

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p2, v0

    .line 356
    :cond_1
    iput-object p2, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    .line 357
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerService;->notifyListChanged()V

    :cond_2
    return-void
.end method
