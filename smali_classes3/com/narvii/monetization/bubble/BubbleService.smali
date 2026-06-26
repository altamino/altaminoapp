.class public Lcom/narvii/monetization/bubble/BubbleService;
.super Ljava/lang/Object;
.source "BubbleService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/bubble/BubbleService$UploadTask;,
        Lcom/narvii/monetization/bubble/BubbleService$DownloadEditBubbleTask;,
        Lcom/narvii/monetization/bubble/BubbleService$Worker;
    }
.end annotation


# static fields
.field public static final ACTION_BUBBLE_READY:Ljava/lang/String; = "com.narvii.action.BUBBLE_PACKAGE_READY"

.field public static final ACTION_PROGRESS_CHANGED:Ljava/lang/String; = "com.narvii.action.BUBBLE_PACKAGE_PROGRESS"

.field public static final ACTION_STATUS_CHANGED:Ljava/lang/String; = "com.narvii.action.BUBBLE_PACKAGE_CHANGE"

.field public static final BUBBLE_CONFIG_FILE_NAME:Ljava/lang/String; = "config.json"

.field public static final BUBBLE_SLOT_SIZE:I = 0x2c

.field public static final CONTENT_INSET_COUNT:I = 0x4

.field public static final DEFAULT_DENSITY:I = 0x140

.field public static final DEFAULT_SCALE:I = 0x2

.field public static final STATUS_DOWNLOADING:I = 0x1

.field public static final STATUS_FAIL:I = -0x1

.field public static final STATUS_IDLE:I = 0x0

.field public static final STATUS_READY:I = 0x5

.field private static final TAG:Ljava/lang/String; = "BubbleService"


# instance fields
.field private final bubbleInfoRequest:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/util/http/ApiRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final bubbleInfos:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/BubbleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final bubbles:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/ChatBubble;",
            ">;"
        }
    .end annotation
.end field

.field public cacheDir:Ljava/io/File;

.field private context:Lcom/narvii/app/NVContext;

.field public curDensity:I

.field public dir:Ljava/io/File;

.field public discardedDir:Ljava/io/File;

.field private final downloadBubbleSessions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/monetization/bubble/BubbleService$DownloadEditBubbleTask;",
            ">;"
        }
    .end annotation
.end field

.field public editBubbleDir:Ljava/io/File;

.field private final errors:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final lbm:Landroid/support/v4/content/LocalBroadcastManager;

.field private final rawObjects:Lcom/narvii/util/WeakLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/WeakLruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final revs:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final runningSessions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/monetization/bubble/BubbleService$Worker;",
            ">;"
        }
    .end annotation
.end field

.field public scaleXY:F

.field private stack:Lcom/narvii/util/http/ProxyStack;

.field public uploadDir:Ljava/io/File;

.field private final uploadSessions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/monetization/bubble/BubbleService$UploadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 4

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/narvii/util/WeakLruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/narvii/util/WeakLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->rawObjects:Lcom/narvii/util/WeakLruCache;

    .line 90
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 91
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->uploadSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->downloadBubbleSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->bubbles:Ljava/util/concurrent/ConcurrentHashMap;

    .line 96
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->bubbleInfoRequest:Ljava/util/concurrent/ConcurrentHashMap;

    .line 98
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 99
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->revs:Ljava/util/Hashtable;

    .line 100
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->bubbleInfos:Ljava/util/Hashtable;

    .line 112
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleService;->context:Lcom/narvii/app/NVContext;

    .line 114
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "bubble"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->dir:Ljava/io/File;

    .line 115
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 117
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->discardedDir:Ljava/io/File;

    .line 118
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->discardedDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 120
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService;->dir:Ljava/io/File;

    const-string v3, "upload"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->uploadDir:Ljava/io/File;

    .line 121
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->uploadDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 123
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService;->dir:Ljava/io/File;

    const-string v3, "edit"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->editBubbleDir:Ljava/io/File;

    .line 124
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->editBubbleDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 126
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->cacheDir:Ljava/io/File;

    .line 127
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleService;->cacheDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 129
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    .line 130
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p1, p0, Lcom/narvii/monetization/bubble/BubbleService;->curDensity:I

    .line 131
    iget p1, p0, Lcom/narvii/monetization/bubble/BubbleService;->curDensity:I

    int-to-float p1, p1

    const/high16 v0, 0x43a00000    # 320.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/narvii/monetization/bubble/BubbleService;->scaleXY:F

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/bubble/BubbleService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleService;->bubbles:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/monetization/bubble/BubbleService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleService;->bubbleInfoRequest:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/monetization/bubble/BubbleService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleService;->downloadBubbleSessions:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/narvii/monetization/bubble/BubbleService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleService;->uploadSessions:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/monetization/bubble/BubbleService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/narvii/monetization/bubble/BubbleService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/narvii/monetization/bubble/BubbleService;Ljava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleService;->getDownloadedFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/monetization/bubble/BubbleService;Ljava/lang/String;IF)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/monetization/bubble/BubbleService;->sendProgressChangeBroadCast(Ljava/lang/String;IF)V

    return-void
.end method

.method static synthetic access$700(Lcom/narvii/monetization/bubble/BubbleService;Ljava/lang/String;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleService;->sendBubbleReadyBroadcast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/narvii/monetization/bubble/BubbleService;Ljava/lang/String;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleService;->sendStatusChangeBroadCast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/narvii/monetization/bubble/BubbleService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private getDir(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 547
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService;->dir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getDownloadedFile(Ljava/lang/String;I)Ljava/io/File;
    .locals 4

    .line 543
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService;->cacheDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-r"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".d"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private sendBubbleReadyBroadcast(Ljava/lang/String;I)V
    .locals 2

    .line 771
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.narvii.action.BUBBLE_PACKAGE_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "bid"

    .line 772
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "rev"

    .line 773
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 774
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private sendProgressChangeBroadCast(Ljava/lang/String;IF)V
    .locals 2

    .line 763
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.narvii.action.BUBBLE_PACKAGE_PROGRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "bid"

    .line 764
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "rev"

    .line 765
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "progress"

    .line 766
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 767
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private sendStatusChangeBroadCast(Ljava/lang/String;I)V
    .locals 2

    .line 756
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.narvii.action.BUBBLE_PACKAGE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "bid"

    .line 757
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "rev"

    .line 758
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 759
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/bubble/BubbleService$Worker;

    if-eqz v0, :cond_0

    .line 408
    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleService$Worker;->access$200(Lcom/narvii/monetization/bubble/BubbleService$Worker;)V

    .line 409
    iget v0, v0, Lcom/narvii/monetization/bubble/BubbleService$Worker;->rev:I

    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/bubble/BubbleService;->sendStatusChangeBroadCast(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public cancelAll()V
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 415
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;

    .line 417
    invoke-static {v1}, Lcom/narvii/monetization/bubble/BubbleService$Worker;->access$200(Lcom/narvii/monetization/bubble/BubbleService$Worker;)V

    goto :goto_0

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 420
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.narvii.action.BUBBLE_PACKAGE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_1
    return-void
.end method

.method public cancelEditDownload(Lcom/narvii/model/ChatBubble;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 793
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->downloadBubbleSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->downloadBubbleSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/bubble/BubbleService$DownloadEditBubbleTask;

    if-eqz p1, :cond_1

    .line 798
    invoke-virtual {p1}, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->cancelDownload()V

    :cond_1
    :goto_0
    return-void
.end method

.method public cancelUpload(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->uploadSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/bubble/BubbleService$UploadTask;

    if-eqz p1, :cond_1

    .line 827
    invoke-virtual {p1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->cancelUpload()V

    :cond_1
    return-void
.end method

.method public cleanDiscardedBubbleCache()V
    .locals 4

    .line 440
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->discardedDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 444
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 445
    invoke-static {v3}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 4

    .line 430
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 434
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 435
    invoke-static {v3}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clearErrors()V
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 452
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.narvii.action.BUBBLE_PACKAGE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 453
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public downloadEditChatBubble(Lcom/narvii/model/ChatBubble;Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;)V
    .locals 2

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 781
    invoke-interface {p2, p1}, Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;->onDownloadFail(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 786
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/BubbleService;->cancelEditDownload(Lcom/narvii/model/ChatBubble;)V

    .line 787
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleService$DownloadEditBubbleTask;

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/narvii/monetization/bubble/BubbleService$DownloadEditBubbleTask;-><init>(Lcom/narvii/monetization/bubble/BubbleService;Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatBubble;Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;)V

    .line 788
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService;->downloadBubbleSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 789
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public extract(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 9

    .line 458
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleService;->getDownloadedFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 463
    :try_start_0
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_4

    .line 464
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 469
    :try_start_1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleService;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 470
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 471
    invoke-static {v4}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 473
    invoke-static {v2, v4}, Lcom/narvii/util/ZipUtils;->extract(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 474
    invoke-static {v3}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 475
    iget-object v5, p0, Lcom/narvii/monetization/bubble/BubbleService;->revs:Ljava/util/Hashtable;

    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    iget-object v5, p0, Lcom/narvii/monetization/bubble/BubbleService;->bubbleInfos:Ljava/util/Hashtable;

    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v5, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    new-instance v6, Ljava/io/File;

    const-string v7, "config.json"

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-class v7, Lcom/narvii/model/BubbleInfo;

    invoke-virtual {v5, v6, v7}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/BubbleInfo;

    .line 479
    iget v5, v5, Lcom/narvii/model/BubbleInfo;->version:I

    if-eq v5, p2, :cond_0

    const-string v0, "version not match need re-Download"

    .line 481
    sget-object v5, Lcom/narvii/monetization/bubble/BubbleService;->TAG:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_0
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 484
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/BubbleService;->getRevFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->writeToFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 486
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleService;->sendStatusChangeBroadCast(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, 0x1

    .line 508
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 509
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    if-nez v0, :cond_1

    .line 511
    iget-object p3, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 513
    :cond_1
    iget-object p3, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return p2

    .line 489
    :cond_2
    :try_start_2
    invoke-static {v4}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 490
    invoke-static {v3}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    const-string v0, "unable to move bubble file"

    .line 492
    sget-object v3, Lcom/narvii/monetization/bubble/BubbleService;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleService;->sendStatusChangeBroadCast(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 508
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 509
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 513
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 497
    :cond_3
    :try_start_3
    invoke-static {v4}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    const-string v0, "unable to unzip file"

    .line 499
    sget-object p2, Lcom/narvii/monetization/bubble/BubbleService;->TAG:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 508
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 509
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 513
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_1

    .line 508
    :cond_4
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 509
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 511
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :catchall_1
    move-exception p2

    move-object v2, v0

    goto :goto_3

    :catch_1
    move-exception p2

    move-object v2, v0

    .line 503
    :goto_1
    :try_start_4
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 504
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 505
    sget-object v3, Lcom/narvii/monetization/bubble/BubbleService;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 508
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 509
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    if-nez v2, :cond_5

    .line 511
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 513
    :cond_5
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return v1

    :catchall_2
    move-exception p2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    .line 508
    :goto_3
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 509
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    if-nez v0, :cond_6

    .line 511
    iget-object p3, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 513
    :cond_6
    iget-object p3, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    :goto_4
    throw p2
.end method

.method public getBackgroundDrawable(Ljava/lang/String;IZ)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "background"

    .line 139
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/narvii/monetization/bubble/BubbleService;->getBubbleDrawable(Ljava/lang/String;ILjava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getBubble(Ljava/lang/String;I)Lcom/narvii/model/ChatBubble;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->bubbles:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 277
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleService;->getBubbleQueryKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatBubble;

    return-object p1
.end method

.method public getBubbleDrawable(Ljava/lang/String;ILjava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleService;->getBubbleQueryKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService;->bubbles:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService;->bubbles:Ljava/util/concurrent/ConcurrentHashMap;

    .line 147
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatBubble;

    iget v0, v0, Lcom/narvii/model/ChatBubble;->status:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    return-object v2

    .line 150
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/BubbleService;->getBubbleInfo(Ljava/lang/String;)Lcom/narvii/model/BubbleInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    .line 155
    :cond_1
    invoke-virtual {v0, p3}, Lcom/narvii/model/BubbleInfo;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v2

    .line 161
    :cond_2
    iget-object v3, p0, Lcom/narvii/monetization/bubble/BubbleService;->revs:Ljava/util/Hashtable;

    if-eqz v3, :cond_3

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/narvii/monetization/bubble/BubbleService;->revs:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, p2, :cond_3

    .line 162
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService;->revs:Ljava/util/Hashtable;

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_3
    const-string v3, "background"

    .line 164
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "b_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_r"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_5

    if-eqz p4, :cond_4

    const-string v6, "_mine"

    goto :goto_0

    :cond_4
    const-string v6, "_other"

    goto :goto_0

    :cond_5
    const-string v6, ""

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 168
    iget-object v6, p0, Lcom/narvii/monetization/bubble/BubbleService;->rawObjects:Lcom/narvii/util/WeakLruCache;

    invoke-virtual {v6, v5}, Lcom/narvii/util/WeakLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_a

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleService;->getStatus(Ljava/lang/String;I)I

    move-result p2

    const/4 v6, 0x5

    if-eq p2, v6, :cond_6

    return-object v2

    .line 173
    :cond_6
    new-instance p2, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleService;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 175
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->isGifInData(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 176
    new-instance p1, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    invoke-direct {p1, p2}, Lcom/narvii/util/drawables/gif/NVGifDrawable;-><init>(Ljava/io/File;)V

    goto :goto_1

    .line 177
    :cond_7
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->isWebPInData(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 178
    invoke-static {p2}, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->getFromFile(Ljava/io/File;)Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    move-result-object p1

    goto :goto_1

    .line 180
    :cond_8
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v1, 0x140

    .line 181
    iput v1, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 182
    iget v1, p0, Lcom/narvii/monetization/bubble/BubbleService;->curDensity:I

    iput v1, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 183
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v4, :cond_9

    if-nez p4, :cond_9

    .line 193
    instance-of p2, p1, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_9

    .line 194
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/BubbleService;->getFlipBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_9
    move-object v6, p1

    if-eqz v6, :cond_a

    .line 197
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleService;->rawObjects:Lcom/narvii/util/WeakLruCache;

    invoke-virtual {p1, v5, v6}, Lcom/narvii/util/WeakLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_0
    move-exception p1

    .line 189
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "OutOfMemory when read theme resource "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 190
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    return-object v2

    :catch_1
    move-exception p1

    .line 186
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fail to read bubble resource "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    .line 201
    :cond_a
    :goto_2
    instance-of p1, v6, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_11

    .line 202
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 205
    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    const/4 p2, 0x0

    new-array p3, p2, [I

    .line 207
    iget-object v1, v0, Lcom/narvii/model/BubbleInfo;->zoomPoint:Ljava/util/List;

    if-eqz v1, :cond_c

    .line 208
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p3

    new-array p3, p3, [I

    const/4 v1, 0x0

    .line 209
    :goto_3
    iget-object v2, v0, Lcom/narvii/model/BubbleInfo;->zoomPoint:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 210
    iget-object v2, v0, Lcom/narvii/model/BubbleInfo;->zoomPoint:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/narvii/monetization/bubble/BubbleService;->scaleXY:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 211
    rem-int/lit8 v3, v1, 0x2

    if-nez v3, :cond_b

    if-nez p4, :cond_b

    sub-int v2, p1, v2

    .line 214
    :cond_b
    aput v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 219
    iget-object v1, v0, Lcom/narvii/model/BubbleInfo;->contentInsets:Ljava/util/List;

    if-eqz v1, :cond_e

    .line 220
    :goto_4
    iget-object v1, v0, Lcom/narvii/model/BubbleInfo;->contentInsets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_e

    .line 221
    iget-object v1, v0, Lcom/narvii/model/BubbleInfo;->contentInsets:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x64

    if-ge v2, v1, :cond_d

    const v1, 0x1e

    :cond_d
    int-to-float v1, v1

    iget v2, p0, Lcom/narvii/monetization/bubble/BubbleService;->scaleXY:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    aput v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 224
    :cond_e
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p2

    if-nez p2, :cond_f

    if-nez p4, :cond_f

    const/4 p2, 0x3

    .line 225
    aget p4, p1, p2

    const/4 v0, 0x1

    .line 226
    aget v1, p1, v0

    aput v1, p1, p2

    aput p4, p1, v0

    .line 230
    :cond_f
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2, v6, p3, p1}, Lcom/narvii/monetization/bubble/NinePathDrawableWrapper;->getNinePathDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[I[I)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object p1

    return-object p1

    .line 233
    :cond_10
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-direct {p1, p2, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1

    .line 235
    :cond_11
    instance-of p1, v6, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    if-eqz p1, :cond_12

    .line 236
    new-instance p1, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    check-cast v6, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    invoke-direct {p1, v6}, Lcom/narvii/util/drawables/gif/WrapGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    return-object p1

    .line 237
    :cond_12
    instance-of p1, v6, Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    if-eqz p1, :cond_13

    .line 238
    new-instance p1, Lcom/narvii/util/drawables/webp/WrapWebPDrawable;

    check-cast v6, Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    invoke-direct {p1, v6}, Lcom/narvii/util/drawables/webp/WrapWebPDrawable;-><init>(Lcom/narvii/util/drawables/webp/NVWebPDrawable;)V

    return-object p1

    :cond_13
    return-object v2
.end method

.method public getBubbleInfo(Ljava/lang/String;)Lcom/narvii/model/BubbleInfo;
    .locals 7

    .line 519
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->bubbleInfos:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/BubbleInfo;

    if-eqz v0, :cond_1

    return-object v0

    .line 528
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleService;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "config.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 529
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 530
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v3, Lcom/narvii/model/BubbleInfo;

    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/BubbleInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "fail to open bubble package"

    .line 533
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 537
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService;->bubbleInfos:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method public getBubbleLinkColor(Ljava/lang/String;I)I
    .locals 0

    .line 266
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/BubbleService;->getBubbleInfo(Ljava/lang/String;)Lcom/narvii/model/BubbleInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 270
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/BubbleInfo;->getLinkColor()I

    move-result p1

    return p1
.end method

.method public getBubbleQueryKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBubbleTextColor(Ljava/lang/String;I)I
    .locals 0

    .line 257
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/BubbleService;->getBubbleInfo(Ljava/lang/String;)Lcom/narvii/model/BubbleInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 261
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/BubbleInfo;->getTextColor()I

    move-result p1

    return p1
.end method

.method public getFlipBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .line 245
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 246
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 247
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 246
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 248
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 249
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 250
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 251
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v3, 0x0

    .line 252
    invoke-virtual {v0, p1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object v1
.end method

.method public getProgress(Ljava/lang/String;)F
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/bubble/BubbleService$Worker;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 368
    :cond_0
    iget v1, p1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->total:I

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    iget p1, p1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->current:I

    int-to-float p1, p1

    mul-float p1, p1, v0

    int-to-float v0, v1

    div-float v0, p1, v0

    :goto_0
    return v0
.end method

.method getRevFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 552
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleService;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string v1, ".rev"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSlotDrawable(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/monetization/bubble/BubbleService;->getBubbleDrawable(Ljava/lang/String;ILjava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getStack()Lcom/narvii/util/http/ProxyStack;
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->stack:Lcom/narvii/util/http/ProxyStack;

    if-nez v0, :cond_0

    .line 562
    new-instance v0, Lcom/narvii/util/http/ProxyStack;

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->stack:Lcom/narvii/util/http/ProxyStack;

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->stack:Lcom/narvii/util/http/ProxyStack;

    return-object v0
.end method

.method public getStatus(Ljava/lang/String;I)I
    .locals 7

    .line 373
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/bubble/BubbleService$Worker;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 376
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->revs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 377
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, p2, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    .line 379
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/BubbleService;->getRevFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 381
    invoke-static {v0}, Lcom/narvii/util/Utils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_2
    const/4 v0, 0x0

    .line 389
    :goto_1
    iget-object v2, p0, Lcom/narvii/monetization/bubble/BubbleService;->revs:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :goto_2
    sget-object v2, Lcom/narvii/monetization/bubble/BubbleService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cur rev-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " target-v "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_3

    if-nez v0, :cond_4

    :cond_3
    if-eqz p2, :cond_5

    if-lt v0, p2, :cond_5

    :cond_4
    const/4 p1, 0x5

    return p1

    .line 397
    :cond_5
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, -0x1

    :goto_3
    return v1

    :cond_7
    if-eqz p2, :cond_8

    .line 400
    iget p1, v0, Lcom/narvii/monetization/bubble/BubbleService$Worker;->rev:I

    if-ne p1, p2, :cond_9

    :cond_8
    const/4 v1, 0x1

    :cond_9
    return v1
.end method

.method getWritingFile(Ljava/lang/String;I)Ljava/io/File;
    .locals 4

    .line 557
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService;->cacheDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-r"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".w"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public removeUploadDir()V
    .locals 1

    .line 818
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->uploadDir:Ljava/io/File;

    invoke-static {v0}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    return-void
.end method

.method public requireBubble(ILjava/lang/String;I)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 290
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/narvii/monetization/bubble/BubbleService;->getBubbleQueryKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    .line 291
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->bubbles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatBubble;

    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {v0}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object p1

    iget p2, v0, Lcom/narvii/model/ChatBubble;->version:I

    iget-object p3, v0, Lcom/narvii/model/ChatBubble;->resourceUrl:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/monetization/bubble/BubbleService;->requireBubble(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->bubbleInfoRequest:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 298
    sget-object p1, Lcom/narvii/monetization/bubble/BubbleService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "request already in queue "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 302
    :cond_2
    sget-object v0, Lcom/narvii/monetization/bubble/BubbleService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query bubble info :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/chat/chat-bubble/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->retry(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 304
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService;->context:Lcom/narvii/app/NVContext;

    const-string v0, "api"

    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 305
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->bubbleInfoRequest:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleService$1;

    const-class v1, Lcom/narvii/monetization/bubble/ChatBubbleResponse;

    invoke-direct {v0, p0, v1, p3}, Lcom/narvii/monetization/bubble/BubbleService$1;-><init>(Lcom/narvii/monetization/bubble/BubbleService;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p2, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public requireBubble(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 327
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/monetization/bubble/BubbleService;->requireBubble(Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public requireBubble(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 3

    .line 332
    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleService;->getStatus(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 334
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleService;->sendStatusChangeBroadCast(Ljava/lang/String;I)V

    return-void

    :cond_0
    if-lez v0, :cond_2

    if-nez p4, :cond_2

    .line 339
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/bubble/BubbleService$Worker;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 341
    iput-boolean p2, p1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->downloadOnly:Z

    :cond_1
    return-void

    .line 346
    :cond_2
    sget-object v0, Lcom/narvii/monetization/bubble/BubbleService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "require bubble resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/BubbleService;->cancel(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/monetization/bubble/BubbleService;->extract(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 351
    sget-object p2, Lcom/narvii/monetization/bubble/BubbleService;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "extract bubble resource for "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_5

    const-string v0, "https://"

    .line 352
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "http://"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 354
    :cond_4
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleService$Worker;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/narvii/monetization/bubble/BubbleService$Worker;-><init>(Lcom/narvii/monetization/bubble/BubbleService;Ljava/lang/String;ILjava/lang/String;)V

    .line 355
    iput-boolean p4, v0, Lcom/narvii/monetization/bubble/BubbleService$Worker;->downloadOnly:Z

    const/4 p3, 0x1

    .line 356
    invoke-virtual {v0, p3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 357
    iget-object p3, p0, Lcom/narvii/monetization/bubble/BubbleService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 359
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleService;->sendStatusChangeBroadCast(Ljava/lang/String;I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public size()J
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->dir:Ljava/io/File;

    invoke-static {v0}, Lcom/narvii/util/Utils;->getFolderSize(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public uploadBubble(ILcom/narvii/model/BubbleInfo;Lcom/narvii/monetization/bubble/service/BubbleUploadListener;)V
    .locals 7

    .line 832
    invoke-virtual {p2}, Lcom/narvii/model/BubbleInfo;->getBubbleUploadId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/monetization/bubble/BubbleService;->cancelUpload(Ljava/lang/String;)V

    .line 833
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleService$UploadTask;

    iget-object v3, p0, Lcom/narvii/monetization/bubble/BubbleService;->context:Lcom/narvii/app/NVContext;

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/narvii/monetization/bubble/BubbleService$UploadTask;-><init>(Lcom/narvii/monetization/bubble/BubbleService;Lcom/narvii/app/NVContext;ILcom/narvii/model/BubbleInfo;Lcom/narvii/monetization/bubble/service/BubbleUploadListener;)V

    .line 834
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleService;->uploadSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/narvii/model/BubbleInfo;->getBubbleUploadId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 835
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
