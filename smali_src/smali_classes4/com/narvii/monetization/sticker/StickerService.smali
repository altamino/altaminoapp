.class public Lcom/narvii/monetization/sticker/StickerService;
.super Ljava/lang/Object;
.source "SourceFile"

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

.field localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

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
    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->observers:Lcom/narvii/util/EventDispatcher;

    .line 11
    const/4 v0, -0x1

    .line 12
    .line 13
    iput v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackCount:I

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedObservers:Lcom/narvii/util/EventDispatcher;

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/monetization/sticker/StickerService$1;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/StickerService$1;-><init>(Lcom/narvii/monetization/sticker/StickerService;)V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->receiver:Landroid/content/BroadcastReceiver;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerService;->nvContext:Lcom/narvii/app/NVContext;

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerService;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 40
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/monetization/sticker/StickerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerService;->clearSharedData()V

    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/monetization/sticker/StickerService;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/StickerService;->setSharedStickerPackList(Ljava/util/List;)V

    return-void
.end method

.method private clearData()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->error:Ljava/lang/String;

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    iput-wide v1, p0, Lcom/narvii/monetization/sticker/StickerService;->lastRequestTime:J

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    iput-boolean v1, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerPackListRefreshedThisSession:Z

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->userId:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->mActiveApiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->nvContext:Lcom/narvii/app/NVContext;

    .line 21
    .line 22
    const-string v1, "api"

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerService;->mActiveApiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 34
    :cond_0
    return-void
.end method

.method private clearSharedData()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedError:Ljava/lang/String;

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    iput-wide v1, p0, Lcom/narvii/monetization/sticker/StickerService;->lastSharedRequestTime:J

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackList:Ljava/util/List;

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    iput v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackCount:I

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedRequesting:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedApiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->nvContext:Lcom/narvii/app/NVContext;

    .line 21
    .line 22
    const-string v1, "api"

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedApiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 34
    :cond_0
    return-void
.end method

.method private isCurrentUserInThisCommunity()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "config"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerService;->nvContext:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    const-string v2, "affiliations"

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/community/AffiliationsService;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 24
    move-result v2

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 30
    move-result v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x1

    .line 38
    return v0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    return v0
.end method

.method private notifyListChanged()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->observers:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/monetization/sticker/StickerService$7;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/narvii/monetization/sticker/StickerService$7;-><init>(Lcom/narvii/monetization/sticker/StickerService;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 11
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackList:Ljava/util/List;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackList:Ljava/util/List;

    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedObservers:Lcom/narvii/util/EventDispatcher;

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/monetization/sticker/StickerService$5;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/StickerService$5;-><init>(Lcom/narvii/monetization/sticker/StickerService;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 22
    return-void
.end method


# virtual methods
.method public addSharedStickerPackListObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedObservers:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public addSticker(Ljava/lang/String;Lcom/narvii/model/Sticker;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 9
    move-result p1

    .line 10
    const/4 v0, -0x1

    .line 11
    .line 12
    if-eq p1, v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 21
    .line 22
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    iput-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    .line 32
    .line 33
    :cond_1
    iget-object p1, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    .line 34
    const/4 v0, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerService;->notifyListChanged()V

    .line 41
    :cond_2
    return-void
.end method

.method public addStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    if-ge v0, v1, :cond_1

    .line 13
    return-void

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerService;->notifyListChanged()V

    .line 22
    return-void
.end method

.method public addStickerCollectionListObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->observers:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public getCustomizedCollection()Lcom/narvii/monetization/sticker/model/StickerCollection;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    .line 9
    :goto_0
    iget-object v2, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    .line 10
    .line 11
    .line 12
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 13
    move-result v2

    .line 14
    .line 15
    if-ge v0, v2, :cond_2

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isPersonal()Z

    .line 27
    move-result v3

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    return-object v2

    .line 31
    .line 32
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-object v1
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getMoodStickerCollection()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/narvii/monetization/sticker/StickerService;->nvContext:Lcom/narvii/app/NVContext;

    .line 10
    .line 11
    .line 12
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    return-object v0
.end method

.method public getSharedError()Ljava/lang/String;
    .locals 1

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackList:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackList:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    return-object v0
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

    .line 1
    invoke-virtual {p0, v0}, Lcom/narvii/monetization/sticker/StickerService;->getStickerCollectionList(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStickerCollectionList(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_1

    .line 3
    new-instance p1, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerService;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/narvii/monetization/sticker/model/MoodStickerCollection;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public isCustomizedCollectionEmpty()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/StickerService;->getCustomizedCollection()Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    .line 10
    :cond_0
    iget-object v0, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public isSharedRequesting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedRequesting:Z

    return v0
.end method

.method public isStickerPackListRefreshedThisSession()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerPackListRefreshedThisSession:Z

    return v0
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackList:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "update"

    .line 9
    .line 10
    if-ne v1, v2, :cond_1

    .line 11
    .line 12
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    instance-of v1, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 26
    move-result v0

    .line 27
    .line 28
    if-ltz v0, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackList:Ljava/util/List;

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    check-cast v1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 37
    .line 38
    .line 39
    invoke-static {v1, p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getUpdatedStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Lcom/narvii/monetization/sticker/model/StickerCollection;)Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 40
    move-result-object p1

    .line 41
    const/4 v1, 0x0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 45
    move-result v1

    .line 46
    .line 47
    if-nez v1, :cond_0

    .line 48
    .line 49
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackList:Ljava/util/List;

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 53
    .line 54
    iget p1, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackCount:I

    .line 55
    .line 56
    add-int/lit8 p1, p1, -0x1

    .line 57
    .line 58
    iput p1, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackCount:I

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackList:Ljava/util/List;

    .line 62
    .line 63
    .line 64
    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    :goto_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedObservers:Lcom/narvii/util/EventDispatcher;

    .line 67
    .line 68
    new-instance v0, Lcom/narvii/monetization/sticker/StickerService$2;

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/StickerService$2;-><init>(Lcom/narvii/monetization/sticker/StickerService;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 75
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerService;->receiver:Landroid/content/BroadcastReceiver;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 8
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerPackListRefreshedThisSession:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerService;->receiver:Landroid/content/BroadcastReceiver;

    .line 8
    .line 9
    new-instance v2, Landroid/content/IntentFilter;

    .line 10
    .line 11
    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

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

.method public onStart()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "notification"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lcom/narvii/notification/NotificationCenter;->registerListener(Lcom/narvii/notification/NotificationListener;)V

    .line 14
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "notification"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lcom/narvii/notification/NotificationCenter;->unregisterListener(Lcom/narvii/notification/NotificationListener;)V

    .line 14
    return-void
.end method

.method public refreshSharedStickerPackList(Z)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackList:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-wide v0, p0, Lcom/narvii/monetization/sticker/StickerService;->lastSharedRequestTime:J

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long p1, v0, v2

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    iget-wide v2, p0, Lcom/narvii/monetization/sticker/StickerService;->lastSharedRequestTime:J

    .line 21
    sub-long/2addr v0, v2

    .line 22
    .line 23
    .line 24
    const-wide/32 v2, 0x1d4c0

    .line 25
    .line 26
    cmp-long p1, v0, v2

    .line 27
    .line 28
    if-gez p1, :cond_0

    .line 29
    return-void

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerService;->isCurrentUserInThisCommunity()Z

    .line 33
    move-result p1

    .line 34
    .line 35
    if-nez p1, :cond_1

    .line 36
    return-void

    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerService;->nvContext:Lcom/narvii/app/NVContext;

    .line 39
    .line 40
    const-string v0, "api"

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    const-string v1, "/sticker-collection"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    const-string v1, "type"

    .line 59
    .line 60
    const-string v2, "community-shared"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedApiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 71
    .line 72
    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 74
    move-result-wide v0

    .line 75
    .line 76
    iput-wide v0, p0, Lcom/narvii/monetization/sticker/StickerService;->lastSharedRequestTime:J

    .line 77
    const/4 v0, 0x0

    .line 78
    .line 79
    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedError:Ljava/lang/String;

    .line 80
    const/4 v0, 0x1

    .line 81
    .line 82
    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedRequesting:Z

    .line 83
    .line 84
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedApiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 85
    .line 86
    new-instance v1, Lcom/narvii/monetization/sticker/StickerService$4;

    .line 87
    .line 88
    const-class v2, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;

    .line 89
    .line 90
    .line 91
    invoke-direct {v1, p0, v2}, Lcom/narvii/monetization/sticker/StickerService$4;-><init>(Lcom/narvii/monetization/sticker/StickerService;Ljava/lang/Class;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 95
    return-void
.end method

.method public refreshStickerCollection(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "api"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string v3, "sticker-collection/"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v3, "/stickers"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    new-instance v2, Lcom/narvii/monetization/sticker/StickerService$6;

    .line 47
    .line 48
    const-class v3, Lcom/narvii/monetization/sticker/picker/StickerListResponse;

    .line 49
    .line 50
    .line 51
    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/monetization/sticker/StickerService$6;-><init>(Lcom/narvii/monetization/sticker/StickerService;Ljava/lang/Class;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 55
    return-void
.end method

.method public refreshStickerCollectionInfo(Z)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->nvContext:Lcom/narvii/app/NVContext;

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
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerService;->userId:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerService;->clearData()V

    .line 26
    .line 27
    :cond_0
    if-eqz v0, :cond_3

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    iget-wide v1, p0, Lcom/narvii/monetization/sticker/StickerService;->lastRequestTime:J

    .line 32
    .line 33
    const-wide/16 v3, 0x0

    .line 34
    .line 35
    cmp-long p1, v1, v3

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 41
    move-result-wide v1

    .line 42
    .line 43
    iget-wide v3, p0, Lcom/narvii/monetization/sticker/StickerService;->lastRequestTime:J

    .line 44
    sub-long/2addr v1, v3

    .line 45
    .line 46
    .line 47
    const-wide/32 v3, 0x493e0

    .line 48
    .line 49
    cmp-long p1, v1, v3

    .line 50
    .line 51
    if-gez p1, :cond_1

    .line 52
    goto :goto_0

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerService;->isCurrentUserInThisCommunity()Z

    .line 56
    move-result p1

    .line 57
    .line 58
    if-nez p1, :cond_2

    .line 59
    .line 60
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerService;->nvContext:Lcom/narvii/app/NVContext;

    .line 61
    .line 62
    instance-of p1, p1, Lcom/narvii/app/NVApplication;

    .line 63
    .line 64
    if-nez p1, :cond_2

    .line 65
    return-void

    .line 66
    :cond_2
    const/4 p1, 0x1

    .line 67
    .line 68
    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerPackListRefreshedThisSession:Z

    .line 69
    .line 70
    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->userId:Ljava/lang/String;

    .line 71
    const/4 p1, 0x0

    .line 72
    .line 73
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerService;->error:Ljava/lang/String;

    .line 74
    .line 75
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerService;->nvContext:Lcom/narvii/app/NVContext;

    .line 76
    .line 77
    const-string v0, "api"

    .line 78
    .line 79
    .line 80
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    const-string v1, "/sticker-collection"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    const-string v1, "type"

    .line 96
    .line 97
    const-string v2, "my-active-collection"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    const-string v1, "includeStickers"

    .line 104
    .line 105
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->mActiveApiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 116
    .line 117
    .line 118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 119
    move-result-wide v0

    .line 120
    .line 121
    iput-wide v0, p0, Lcom/narvii/monetization/sticker/StickerService;->lastRequestTime:J

    .line 122
    .line 123
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->mActiveApiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 124
    .line 125
    new-instance v1, Lcom/narvii/monetization/sticker/StickerService$3;

    .line 126
    .line 127
    const-class v2, Lcom/narvii/monetization/sticker/model/StickerCollectionListResponse;

    .line 128
    .line 129
    .line 130
    invoke-direct {v1, p0, v2}, Lcom/narvii/monetization/sticker/StickerService$3;-><init>(Lcom/narvii/monetization/sticker/StickerService;Ljava/lang/Class;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 134
    :cond_3
    :goto_0
    return-void
.end method

.method public removeSharedStickerPackObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->sharedObservers:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public removeSticker(Ljava/lang/String;Lcom/narvii/model/Sticker;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 9
    move-result p1

    .line 10
    const/4 v0, -0x1

    .line 11
    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/narvii/model/Sticker;->id()Ljava/lang/String;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    .line 31
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 32
    move-result p1

    .line 33
    .line 34
    if-lez p1, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerService;->notifyListChanged()V

    .line 38
    :cond_1
    return-void
.end method

.method public removeStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 13
    move-result p1

    .line 14
    .line 15
    if-lez p1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerService;->notifyListChanged()V

    .line 19
    :cond_1
    return-void
.end method

.method public removeStickerCollectionListObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->observers:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 6
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerService;->notifyListChanged()V

    .line 15
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 9
    move-result p1

    .line 10
    const/4 v0, -0x1

    .line 11
    .line 12
    if-eq p1, v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerService;->stickerCollectionList:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    move-object p2, v0

    .line 29
    .line 30
    :cond_1
    iput-object p2, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerService;->notifyListChanged()V

    .line 34
    :cond_2
    return-void
.end method
