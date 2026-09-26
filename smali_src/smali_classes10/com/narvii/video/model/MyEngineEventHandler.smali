.class public Lcom/narvii/video/model/MyEngineEventHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyEngineEventHandler"


# instance fields
.field private final mConfig:Lcom/narvii/video/model/EngineConfig;

.field private final mContext:Landroid/content/Context;

.field private final mEventHandlerList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/narvii/video/model/RtcEventHandler;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mRtcEventHandler:Lio/agora/rtc/IRtcEngineEventHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/narvii/video/model/EngineConfig;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler;->mEventHandlerList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/video/model/MyEngineEventHandler$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/video/model/MyEngineEventHandler$1;-><init>(Lcom/narvii/video/model/MyEngineEventHandler;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler;->mRtcEventHandler:Lio/agora/rtc/IRtcEngineEventHandler;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/video/model/MyEngineEventHandler;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/narvii/video/model/MyEngineEventHandler;->mConfig:Lcom/narvii/video/model/EngineConfig;

    .line 22
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/narvii/video/model/MyEngineEventHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/narvii/video/model/MyEngineEventHandler;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/model/MyEngineEventHandler;->mEventHandlerList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/video/model/MyEngineEventHandler;)Lcom/narvii/video/model/EngineConfig;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/model/MyEngineEventHandler;->mConfig:Lcom/narvii/video/model/EngineConfig;

    .line 3
    return-object p0
.end method


# virtual methods
.method public addEventHandler(Lcom/narvii/video/model/RtcEventHandler;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler;->mEventHandlerList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    return-void
.end method

.method public containeHandle(Lcom/narvii/video/model/RtcEventHandler;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler;->mEventHandlerList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public removeEventHandler(Lcom/narvii/video/model/RtcEventHandler;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/model/MyEngineEventHandler;->mEventHandlerList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method
