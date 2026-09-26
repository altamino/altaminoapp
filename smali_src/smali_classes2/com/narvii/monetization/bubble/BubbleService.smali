.class public Lcom/narvii/monetization/bubble/BubbleService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/bubble/BubbleService$Worker;,
        Lcom/narvii/monetization/bubble/BubbleService$DownloadEditBubbleTask;,
        Lcom/narvii/monetization/bubble/BubbleService$UploadTask;
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

.field private final lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/WeakLruCache;

    .line 6
    .line 7
    const/16 v1, 0x64

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/narvii/util/WeakLruCache;-><init>(I)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->rawObjects:Lcom/narvii/util/WeakLruCache;

    .line 13
    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->uploadSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->downloadBubbleSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 39
    .line 40
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->bubbles:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->bubbleInfoRequest:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 53
    .line 54
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    .line 56
    new-instance v0, Ljava/util/Hashtable;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 60
    .line 61
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->revs:Ljava/util/Hashtable;

    .line 62
    .line 63
    new-instance v0, Ljava/util/Hashtable;

    .line 64
    .line 65
    .line 66
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 67
    .line 68
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->bubbleInfos:Ljava/util/Hashtable;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleService;->context:Lcom/narvii/app/NVContext;

    .line 71
    .line 72
    new-instance v0, Ljava/io/File;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService;->context:Lcom/narvii/app/NVContext;

    .line 75
    .line 76
    .line 77
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    const-string v2, "bubble"

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    .line 89
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->dir:Ljava/io/File;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 93
    .line 94
    new-instance v0, Ljava/io/File;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService;->context:Lcom/narvii/app/NVContext;

    .line 97
    .line 98
    .line 99
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    .line 107
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    .line 109
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->discardedDir:Ljava/io/File;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 113
    .line 114
    new-instance v0, Ljava/io/File;

    .line 115
    .line 116
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService;->dir:Ljava/io/File;

    .line 117
    .line 118
    const-string v3, "upload"

    .line 119
    .line 120
    .line 121
    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    .line 123
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->uploadDir:Ljava/io/File;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 127
    .line 128
    new-instance v0, Ljava/io/File;

    .line 129
    .line 130
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService;->dir:Ljava/io/File;

    .line 131
    .line 132
    const-string v3, "edit"

    .line 133
    .line 134
    .line 135
    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 136
    .line 137
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->editBubbleDir:Ljava/io/File;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 141
    .line 142
    new-instance v0, Ljava/io/File;

    .line 143
    .line 144
    .line 145
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 146
    move-result-object p1

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 150
    move-result-object p1

    .line 151
    .line 152
    .line 153
    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 154
    .line 155
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->cacheDir:Ljava/io/File;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 159
    .line 160
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleService;->context:Lcom/narvii/app/NVContext;

    .line 161
    .line 162
    .line 163
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 164
    move-result-object p1

    .line 165
    .line 166
    .line 167
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 168
    move-result-object p1

    .line 169
    .line 170
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 171
    .line 172
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleService;->context:Lcom/narvii/app/NVContext;

    .line 173
    .line 174
    .line 175
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 176
    move-result-object p1

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 180
    move-result-object p1

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 184
    move-result-object p1

    .line 185
    .line 186
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 187
    .line 188
    iput p1, p0, Lcom/narvii/monetization/bubble/BubbleService;->curDensity:I

    .line 189
    int-to-float p1, p1

    .line 190
    .line 191
    const/high16 v0, 0x43a00000    # 320.0f

    .line 192
    div-float/2addr p1, v0

    .line 193
    .line 194
    iput p1, p0, Lcom/narvii/monetization/bubble/BubbleService;->scaleXY:F

    .line 195
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/monetization/bubble/BubbleService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleService;->bubbleInfoRequest:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/monetization/bubble/BubbleService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleService;->bubbles:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/monetization/bubble/BubbleService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleService;->downloadBubbleSessions:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/monetization/bubble/BubbleService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/monetization/bubble/BubbleService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/narvii/monetization/bubble/BubbleService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleService;->uploadSessions:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/narvii/monetization/bubble/BubbleService;Ljava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleService;->getDownloadedFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private getDir(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService;->dir:Ljava/io/File;

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v3, "b"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    return-object v0
.end method

.method private getDownloadedFile(Ljava/lang/String;I)Ljava/io/File;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService;->cacheDir:Ljava/io/File;

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v3, "b"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string p1, "-r"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string p1, ".d"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    return-object v0
.end method

.method static bridge synthetic h(Lcom/narvii/monetization/bubble/BubbleService;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleService;->sendBubbleReadyBroadcast(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic i(Lcom/narvii/monetization/bubble/BubbleService;Ljava/lang/String;IF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/monetization/bubble/BubbleService;->sendProgressChangeBroadCast(Ljava/lang/String;IF)V

    return-void
.end method

.method static bridge synthetic j(Lcom/narvii/monetization/bubble/BubbleService;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleService;->sendStatusChangeBroadCast(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic k()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/monetization/bubble/BubbleService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private sendBubbleReadyBroadcast(Ljava/lang/String;I)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "com.narvii.action.BUBBLE_PACKAGE_READY"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    const-string v1, "bid"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    const-string p1, "rev"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 23
    return-void
.end method

.method private sendProgressChangeBroadCast(Ljava/lang/String;IF)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "com.narvii.action.BUBBLE_PACKAGE_PROGRESS"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    const-string v1, "bid"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    const-string p1, "rev"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    .line 19
    const-string p1, "progress"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 28
    return-void
.end method

.method private sendStatusChangeBroadCast(Ljava/lang/String;I)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "com.narvii.action.BUBBLE_PACKAGE_CHANGE"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    const-string v1, "bid"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    const-string p1, "rev"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 23
    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/monetization/bubble/BubbleService$Worker;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/narvii/monetization/bubble/BubbleService$Worker;->a(Lcom/narvii/monetization/bubble/BubbleService$Worker;)V

    .line 19
    .line 20
    iget v0, v0, Lcom/narvii/monetization/bubble/BubbleService$Worker;->rev:I

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/bubble/BubbleService;->sendStatusChangeBroadCast(Ljava/lang/String;I)V

    .line 24
    :cond_0
    return-void
.end method

.method public cancelAll()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    check-cast v1, Lcom/narvii/monetization/bubble/BubbleService$Worker;

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lcom/narvii/monetization/bubble/BubbleService$Worker;->a(Lcom/narvii/monetization/bubble/BubbleService$Worker;)V

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 45
    .line 46
    new-instance v0, Landroid/content/Intent;

    .line 47
    .line 48
    const-string v1, "com.narvii.action.BUBBLE_PACKAGE_CHANGE"

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 57
    :cond_1
    return-void
.end method

.method public cancelEditDownload(Lcom/narvii/model/ChatBubble;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->downloadBubbleSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->downloadBubbleSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Lcom/narvii/monetization/bubble/BubbleService$DownloadEditBubbleTask;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/narvii/monetization/bubble/service/BubbleDownloadTask;->cancelDownload()V

    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method public cancelUpload(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->uploadSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/monetization/bubble/BubbleService$UploadTask;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/monetization/bubble/service/BubbleUploadTask;->cancelUpload()V

    .line 17
    :cond_1
    return-void
.end method

.method public cleanDiscardedBubbleCache()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->discardedDir:Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    :goto_0
    if-ge v2, v1, :cond_1

    .line 14
    .line 15
    aget-object v3, v0, v2

    .line 16
    .line 17
    .line 18
    invoke-static {v3}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->dir:Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    :goto_0
    if-ge v2, v1, :cond_1

    .line 14
    .line 15
    aget-object v3, v0, v2

    .line 16
    .line 17
    .line 18
    invoke-static {v3}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return-void
.end method

.method public clearErrors()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 14
    .line 15
    new-instance v0, Landroid/content/Intent;

    .line 16
    .line 17
    const-string v1, "com.narvii.action.BUBBLE_PACKAGE_CHANGE"

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 26
    :cond_0
    return-void
.end method

.method public downloadEditChatBubble(Lcom/narvii/model/ChatBubble;Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {p2, p1}, Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;->onDownloadFail(Ljava/lang/String;)V

    .line 9
    :cond_0
    return-void

    .line 10
    .line 11
    .line 12
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/BubbleService;->cancelEditDownload(Lcom/narvii/model/ChatBubble;)V

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleService$DownloadEditBubbleTask;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService;->context:Lcom/narvii/app/NVContext;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0, v1, p1, p2}, Lcom/narvii/monetization/bubble/BubbleService$DownloadEditBubbleTask;-><init>(Lcom/narvii/monetization/bubble/BubbleService;Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatBubble;Lcom/narvii/monetization/bubble/service/BubbleDownloadListener;)V

    .line 20
    .line 21
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService;->downloadBubbleSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const/4 p1, 0x0

    .line 30
    .line 31
    new-array p1, p1, [Ljava/lang/Void;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 35
    return-void
.end method

.method public extract(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleService;->getDownloadedFile(Ljava/lang/String;I)Ljava/io/File;

    .line 4
    move-result-object p3

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p3}, Ljava/io/File;->length()J

    .line 10
    move-result-wide v2

    .line 11
    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    cmp-long v2, v2, v4

    .line 15
    .line 16
    if-lez v2, :cond_4

    .line 17
    .line 18
    new-instance v2, Ljava/io/FileInputStream;

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    .line 23
    .line 24
    :try_start_1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleService;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    new-instance v4, Ljava/io/File;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 31
    move-result-object v5

    .line 32
    .line 33
    new-instance v6, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 40
    move-result-object v7

    .line 41
    .line 42
    .line 43
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v7, ".tmp"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v6

    .line 53
    .line 54
    .line 55
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v4}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 59
    .line 60
    .line 61
    invoke-static {v2, v4}, Lcom/narvii/util/ZipUtils;->extract(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 62
    move-result v5

    .line 63
    .line 64
    if-eqz v5, :cond_3

    .line 65
    .line 66
    .line 67
    invoke-static {v3}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 68
    .line 69
    iget-object v5, p0, Lcom/narvii/monetization/bubble/BubbleService;->revs:Ljava/util/Hashtable;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    iget-object v5, p0, Lcom/narvii/monetization/bubble/BubbleService;->bubbleInfos:Ljava/util/Hashtable;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    sget-object v5, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 80
    .line 81
    new-instance v6, Ljava/io/File;

    .line 82
    .line 83
    const-string v7, "config.json"

    .line 84
    .line 85
    .line 86
    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    .line 88
    const-class v7, Lcom/narvii/model/BubbleInfo;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v6, v7}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    .line 92
    move-result-object v5

    .line 93
    .line 94
    check-cast v5, Lcom/narvii/model/BubbleInfo;

    .line 95
    .line 96
    iget v5, v5, Lcom/narvii/model/BubbleInfo;->version:I

    .line 97
    .line 98
    if-eq v5, p2, :cond_0

    .line 99
    .line 100
    const-string v1, "version not match need re-Download"

    .line 101
    .line 102
    sget-object v5, Lcom/narvii/monetization/bubble/BubbleService;->TAG:Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    invoke-static {v5, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception p2

    .line 108
    move-object v8, v2

    .line 109
    move-object v2, v1

    .line 110
    move-object v1, v8

    .line 111
    .line 112
    goto/16 :goto_4

    .line 113
    :catch_0
    move-exception p2

    .line 114
    move-object v8, v2

    .line 115
    move-object v2, v1

    .line 116
    move-object v1, v8

    .line 117
    goto :goto_2

    .line 118
    .line 119
    .line 120
    :cond_0
    :goto_0
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 121
    move-result v5

    .line 122
    .line 123
    if-eqz v5, :cond_2

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/BubbleService;->getRevFile(Ljava/lang/String;)Ljava/io/File;

    .line 127
    move-result-object v3

    .line 128
    .line 129
    .line 130
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 131
    move-result-object v4

    .line 132
    .line 133
    .line 134
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->writeToFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleService;->sendStatusChangeBroadCast(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .line 139
    .line 140
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 141
    .line 142
    .line 143
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 144
    .line 145
    if-nez v1, :cond_1

    .line 146
    .line 147
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    goto :goto_1

    .line 152
    .line 153
    :cond_1
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :goto_1
    const/4 p1, 0x1

    .line 158
    return p1

    .line 159
    .line 160
    .line 161
    :cond_2
    :try_start_2
    invoke-static {v4}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 162
    .line 163
    .line 164
    invoke-static {v3}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 165
    .line 166
    const-string v1, "unable to move bubble file"

    .line 167
    .line 168
    sget-object v3, Lcom/narvii/monetization/bubble/BubbleService;->TAG:Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    invoke-static {v3, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleService;->sendStatusChangeBroadCast(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    .line 176
    .line 177
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 178
    .line 179
    .line 180
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 181
    .line 182
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    return v0

    .line 187
    .line 188
    .line 189
    :cond_3
    :try_start_3
    invoke-static {v4}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 190
    .line 191
    const-string v1, "unable to unzip file"

    .line 192
    .line 193
    sget-object p2, Lcom/narvii/monetization/bubble/BubbleService;->TAG:Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    invoke-static {p2, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    .line 198
    .line 199
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 200
    .line 201
    .line 202
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 203
    .line 204
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return v0

    .line 209
    :catchall_1
    move-exception p2

    .line 210
    move-object v2, v1

    .line 211
    goto :goto_4

    .line 212
    :catch_1
    move-exception p2

    .line 213
    move-object v2, v1

    .line 214
    goto :goto_2

    .line 215
    .line 216
    .line 217
    :cond_4
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 218
    .line 219
    .line 220
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 221
    .line 222
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    return v0

    .line 227
    .line 228
    .line 229
    :goto_2
    :try_start_4
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 233
    move-result-object v2

    .line 234
    .line 235
    sget-object v3, Lcom/narvii/monetization/bubble/BubbleService;->TAG:Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 239
    move-result-object p2

    .line 240
    .line 241
    .line 242
    invoke-static {v3, p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 243
    .line 244
    .line 245
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 246
    .line 247
    .line 248
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 249
    .line 250
    if-nez v2, :cond_5

    .line 251
    .line 252
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    goto :goto_3

    .line 257
    .line 258
    :cond_5
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p2, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :goto_3
    return v0

    .line 263
    :catchall_2
    move-exception p2

    .line 264
    .line 265
    .line 266
    :goto_4
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 267
    .line 268
    .line 269
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 270
    .line 271
    if-nez v2, :cond_6

    .line 272
    .line 273
    iget-object p3, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 274
    .line 275
    .line 276
    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    goto :goto_5

    .line 278
    .line 279
    :cond_6
    iget-object p3, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p3, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :goto_5
    throw p2
.end method

.method public getBackgroundDrawable(Ljava/lang/String;IZ)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    .line 2
    const-string v0, "background"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/narvii/monetization/bubble/BubbleService;->getBubbleDrawable(Ljava/lang/String;ILjava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getBubble(Ljava/lang/String;I)Lcom/narvii/model/ChatBubble;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->bubbles:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleService;->getBubbleQueryKey(Ljava/lang/String;I)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/model/ChatBubble;

    .line 17
    return-object p1
.end method

.method public getBubbleDrawable(Ljava/lang/String;ILjava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleService;->getBubbleQueryKey(Ljava/lang/String;I)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService;->bubbles:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService;->bubbles:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/model/ChatBubble;

    .line 24
    .line 25
    iget v0, v0, Lcom/narvii/model/ChatBubble;->status:I

    .line 26
    .line 27
    const/16 v1, 0x9

    .line 28
    .line 29
    if-ne v0, v1, :cond_0

    .line 30
    return-object v2

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/BubbleService;->getBubbleInfo(Ljava/lang/String;)Lcom/narvii/model/BubbleInfo;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    return-object v2

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {v0, p3}, Lcom/narvii/model/BubbleInfo;->getPath(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    if-nez v1, :cond_2

    .line 44
    return-object v2

    .line 45
    .line 46
    :cond_2
    iget-object v3, p0, Lcom/narvii/monetization/bubble/BubbleService;->revs:Ljava/util/Hashtable;

    .line 47
    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    .line 52
    move-result v3

    .line 53
    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    iget-object v3, p0, Lcom/narvii/monetization/bubble/BubbleService;->revs:Ljava/util/Hashtable;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object v3

    .line 61
    .line 62
    check-cast v3, Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 66
    move-result v3

    .line 67
    .line 68
    if-le v3, p2, :cond_3

    .line 69
    .line 70
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService;->revs:Ljava/util/Hashtable;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object p2

    .line 75
    .line 76
    check-cast p2, Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 80
    move-result p2

    .line 81
    .line 82
    :cond_3
    const-string v3, "background"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    move-result v4

    .line 87
    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    const-string v6, "b_"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v6, "_r"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v6, "_"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    if-eqz v4, :cond_5

    .line 118
    .line 119
    if-eqz p4, :cond_4

    .line 120
    .line 121
    const-string v6, "_mine"

    .line 122
    goto :goto_0

    .line 123
    .line 124
    :cond_4
    const-string v6, "_other"

    .line 125
    goto :goto_0

    .line 126
    .line 127
    :cond_5
    const-string v6, ""

    .line 128
    .line 129
    .line 130
    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v5

    .line 135
    .line 136
    iget-object v6, p0, Lcom/narvii/monetization/bubble/BubbleService;->rawObjects:Lcom/narvii/util/WeakLruCache;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6, v5}, Lcom/narvii/util/WeakLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    move-result-object v6

    .line 141
    .line 142
    if-nez v6, :cond_a

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleService;->getStatus(Ljava/lang/String;I)I

    .line 146
    move-result p2

    .line 147
    const/4 v6, 0x5

    .line 148
    .line 149
    if-eq p2, v6, :cond_6

    .line 150
    return-object v2

    .line 151
    .line 152
    :cond_6
    new-instance p2, Ljava/io/File;

    .line 153
    .line 154
    .line 155
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleService;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 156
    move-result-object p1

    .line 157
    .line 158
    .line 159
    invoke-direct {p2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 163
    move-result-object p1

    .line 164
    .line 165
    .line 166
    invoke-static {p1}, Lcom/narvii/util/Utils;->isGifInData(Ljava/lang/String;)Z

    .line 167
    move-result p1

    .line 168
    .line 169
    if-eqz p1, :cond_7

    .line 170
    .line 171
    new-instance p1, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 172
    .line 173
    .line 174
    invoke-direct {p1, p2}, Lcom/narvii/util/drawables/gif/NVGifDrawable;-><init>(Ljava/io/File;)V

    .line 175
    goto :goto_1

    .line 176
    :catch_0
    move-exception p1

    .line 177
    goto :goto_2

    .line 178
    :catch_1
    move-exception p1

    .line 179
    goto :goto_3

    .line 180
    .line 181
    .line 182
    :cond_7
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 183
    move-result-object p1

    .line 184
    .line 185
    .line 186
    invoke-static {p1}, Lcom/narvii/util/Utils;->isWebPInData(Ljava/lang/String;)Z

    .line 187
    move-result p1

    .line 188
    .line 189
    if-eqz p1, :cond_8

    .line 190
    .line 191
    .line 192
    invoke-static {p2}, Lcom/narvii/util/drawables/webp/NVWebPDrawable;->getFromFile(Ljava/io/File;)Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    .line 193
    move-result-object p1

    .line 194
    goto :goto_1

    .line 195
    .line 196
    :cond_8
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    .line 197
    .line 198
    .line 199
    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 200
    .line 201
    const/16 v1, 0x140

    .line 202
    .line 203
    iput v1, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 204
    .line 205
    iget v1, p0, Lcom/narvii/monetization/bubble/BubbleService;->curDensity:I

    .line 206
    .line 207
    iput v1, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 211
    move-result-object p2

    .line 212
    .line 213
    .line 214
    invoke-static {p2, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 215
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .line 217
    :goto_1
    if-eqz v4, :cond_9

    .line 218
    .line 219
    if-nez p4, :cond_9

    .line 220
    .line 221
    instance-of p2, p1, Landroid/graphics/Bitmap;

    .line 222
    .line 223
    if-eqz p2, :cond_9

    .line 224
    .line 225
    check-cast p1, Landroid/graphics/Bitmap;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/BubbleService;->getFlipBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 229
    move-result-object p1

    .line 230
    :cond_9
    move-object v6, p1

    .line 231
    .line 232
    if-eqz v6, :cond_a

    .line 233
    .line 234
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleService;->rawObjects:Lcom/narvii/util/WeakLruCache;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, v5, v6}, Lcom/narvii/util/WeakLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    goto :goto_4

    .line 239
    .line 240
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .line 245
    const-string p3, "OutOfMemory when read theme resource "

    .line 246
    .line 247
    .line 248
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    move-result-object p2

    .line 256
    .line 257
    .line 258
    invoke-static {p2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 262
    return-object v2

    .line 263
    .line 264
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .line 269
    const-string p3, "fail to read bubble resource "

    .line 270
    .line 271
    .line 272
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    move-result-object p2

    .line 280
    .line 281
    .line 282
    invoke-static {p2, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    return-object v2

    .line 284
    .line 285
    :cond_a
    :goto_4
    instance-of p1, v6, Landroid/graphics/Bitmap;

    .line 286
    .line 287
    if-eqz p1, :cond_10

    .line 288
    .line 289
    .line 290
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    move-result p1

    .line 292
    .line 293
    if-eqz p1, :cond_f

    .line 294
    .line 295
    check-cast v6, Landroid/graphics/Bitmap;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 299
    move-result p1

    .line 300
    const/4 p2, 0x0

    .line 301
    .line 302
    new-array p3, p2, [I

    .line 303
    .line 304
    iget-object v1, v0, Lcom/narvii/model/BubbleInfo;->zoomPoint:Ljava/util/List;

    .line 305
    .line 306
    if-eqz v1, :cond_c

    .line 307
    .line 308
    .line 309
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 310
    move-result p3

    .line 311
    .line 312
    new-array p3, p3, [I

    .line 313
    move v1, p2

    .line 314
    .line 315
    :goto_5
    iget-object v2, v0, Lcom/narvii/model/BubbleInfo;->zoomPoint:Ljava/util/List;

    .line 316
    .line 317
    .line 318
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 319
    move-result v2

    .line 320
    .line 321
    if-ge v1, v2, :cond_c

    .line 322
    .line 323
    iget-object v2, v0, Lcom/narvii/model/BubbleInfo;->zoomPoint:Ljava/util/List;

    .line 324
    .line 325
    .line 326
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 327
    move-result-object v2

    .line 328
    .line 329
    check-cast v2, Ljava/lang/Integer;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 333
    move-result v2

    .line 334
    int-to-float v2, v2

    .line 335
    .line 336
    iget v3, p0, Lcom/narvii/monetization/bubble/BubbleService;->scaleXY:F

    .line 337
    mul-float/2addr v2, v3

    .line 338
    float-to-int v2, v2

    .line 339
    .line 340
    rem-int/lit8 v3, v1, 0x2

    .line 341
    .line 342
    if-nez v3, :cond_b

    .line 343
    .line 344
    if-nez p4, :cond_b

    .line 345
    .line 346
    sub-int v2, p1, v2

    .line 347
    .line 348
    :cond_b
    aput v2, p3, v1

    .line 349
    .line 350
    add-int/lit8 v1, v1, 0x1

    .line 351
    goto :goto_5

    .line 352
    :cond_c
    const/4 p1, 0x4

    .line 353
    .line 354
    new-array v1, p1, [I

    .line 355
    .line 356
    iget-object v2, v0, Lcom/narvii/model/BubbleInfo;->contentInsets:Ljava/util/List;

    .line 357
    .line 358
    if-eqz v2, :cond_d

    .line 359
    .line 360
    :goto_6
    iget-object v2, v0, Lcom/narvii/model/BubbleInfo;->contentInsets:Ljava/util/List;

    .line 361
    .line 362
    .line 363
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 364
    move-result v2

    .line 365
    .line 366
    if-ge p2, v2, :cond_d

    .line 367
    .line 368
    if-ge p2, p1, :cond_d

    .line 369
    .line 370
    iget-object v2, v0, Lcom/narvii/model/BubbleInfo;->contentInsets:Ljava/util/List;

    .line 371
    .line 372
    .line 373
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 374
    move-result-object v2

    .line 375
    .line 376
    check-cast v2, Ljava/lang/Integer;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 380
    move-result v2

    .line 381
    int-to-float v2, v2

    .line 382
    .line 383
    iget v3, p0, Lcom/narvii/monetization/bubble/BubbleService;->scaleXY:F

    .line 384
    mul-float/2addr v2, v3

    .line 385
    float-to-int v2, v2

    .line 386
    .line 387
    aput v2, v1, p2

    .line 388
    .line 389
    add-int/lit8 p2, p2, 0x1

    .line 390
    goto :goto_6

    .line 391
    .line 392
    .line 393
    :cond_d
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 394
    move-result p1

    .line 395
    .line 396
    if-nez p1, :cond_e

    .line 397
    .line 398
    if-nez p4, :cond_e

    .line 399
    const/4 p1, 0x3

    .line 400
    .line 401
    aget p2, v1, p1

    .line 402
    const/4 p4, 0x1

    .line 403
    .line 404
    aget v0, v1, p4

    .line 405
    .line 406
    aput v0, v1, p1

    .line 407
    .line 408
    aput p2, v1, p4

    .line 409
    .line 410
    :cond_e
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleService;->context:Lcom/narvii/app/NVContext;

    .line 411
    .line 412
    .line 413
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 414
    move-result-object p1

    .line 415
    .line 416
    .line 417
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 418
    move-result-object p1

    .line 419
    .line 420
    .line 421
    invoke-static {p1, v6, p3, v1}, Lcom/narvii/monetization/bubble/NinePathDrawableWrapper;->getNinePathDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[I[I)Landroid/graphics/drawable/NinePatchDrawable;

    .line 422
    move-result-object p1

    .line 423
    return-object p1

    .line 424
    .line 425
    :cond_f
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 426
    .line 427
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService;->context:Lcom/narvii/app/NVContext;

    .line 428
    .line 429
    .line 430
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 431
    move-result-object p2

    .line 432
    .line 433
    .line 434
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 435
    move-result-object p2

    .line 436
    .line 437
    check-cast v6, Landroid/graphics/Bitmap;

    .line 438
    .line 439
    .line 440
    invoke-direct {p1, p2, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 441
    return-object p1

    .line 442
    .line 443
    :cond_10
    instance-of p1, v6, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 444
    .line 445
    if-eqz p1, :cond_11

    .line 446
    .line 447
    new-instance p1, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 448
    .line 449
    check-cast v6, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 450
    .line 451
    .line 452
    invoke-direct {p1, v6}, Lcom/narvii/util/drawables/gif/WrapGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    .line 453
    return-object p1

    .line 454
    .line 455
    :cond_11
    instance-of p1, v6, Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    .line 456
    .line 457
    if-eqz p1, :cond_12

    .line 458
    .line 459
    new-instance p1, Lcom/narvii/util/drawables/webp/WrapWebPDrawable;

    .line 460
    .line 461
    check-cast v6, Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    .line 462
    .line 463
    .line 464
    invoke-direct {p1, v6}, Lcom/narvii/util/drawables/webp/WrapWebPDrawable;-><init>(Lcom/narvii/util/drawables/webp/NVWebPDrawable;)V

    .line 465
    return-object p1

    .line 466
    :cond_12
    return-object v2
.end method

.method public getBubbleInfo(Ljava/lang/String;)Lcom/narvii/model/BubbleInfo;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->bubbleInfos:Ljava/util/Hashtable;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/model/BubbleInfo;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    return-object v0

    .line 20
    .line 21
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleService;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    const-string v3, "config.json"

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 34
    move-result-wide v2

    .line 35
    .line 36
    const-wide/16 v4, 0x0

    .line 37
    .line 38
    cmp-long v2, v2, v4

    .line 39
    .line 40
    if-lez v2, :cond_2

    .line 41
    .line 42
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 43
    .line 44
    const-class v3, Lcom/narvii/model/BubbleInfo;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    check-cast v1, Lcom/narvii/model/BubbleInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    move-object v0, v1

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .line 55
    const-string v2, "fail to open bubble package"

    .line 56
    .line 57
    .line 58
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 61
    .line 62
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService;->bubbleInfos:Ljava/util/Hashtable;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_3
    return-object v0
.end method

.method public getBubbleLinkColor(Ljava/lang/String;I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/BubbleService;->getBubbleInfo(Ljava/lang/String;)Lcom/narvii/model/BubbleInfo;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    return p2

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/BubbleInfo;->getLinkColor()I

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public getBubbleQueryKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string p1, "-"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public getBubbleTextColor(Ljava/lang/String;I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/BubbleService;->getBubbleInfo(Ljava/lang/String;)Lcom/narvii/model/BubbleInfo;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    return p2

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/BubbleInfo;->getTextColor()I

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public getFlipBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Canvas;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 9
    move-result v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 13
    move-result v2

    .line 14
    .line 15
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 23
    .line 24
    new-instance v2, Landroid/graphics/Matrix;

    .line 25
    .line 26
    .line 27
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 28
    .line 29
    const/high16 v3, -0x40800000    # -1.0f

    .line 30
    .line 31
    const/high16 v4, 0x3f800000    # 1.0f

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 38
    move-result v3

    .line 39
    int-to-float v3, v3

    .line 40
    const/4 v4, 0x0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 44
    const/4 v3, 0x0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 48
    return-object v1
.end method

.method public getProgress(Ljava/lang/String;)F
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/monetization/bubble/BubbleService$Worker;

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    return v0

    .line 13
    .line 14
    :cond_0
    iget v1, p1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->total:I

    .line 15
    .line 16
    if-gtz v1, :cond_1

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_1
    iget p1, p1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->current:I

    .line 20
    int-to-float p1, p1

    .line 21
    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    mul-float/2addr p1, v0

    .line 24
    int-to-float v0, v1

    .line 25
    .line 26
    div-float v0, p1, v0

    .line 27
    :goto_0
    return v0
.end method

.method getRevFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleService;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v1, ".rev"

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    return-object v0
.end method

.method public getSlotDrawable(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/monetization/bubble/BubbleService;->getBubbleDrawable(Ljava/lang/String;ILjava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public getStack()Lcom/narvii/util/http/ProxyStack;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->stack:Lcom/narvii/util/http/ProxyStack;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/util/http/ProxyStack;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService;->context:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->stack:Lcom/narvii/util/http/ProxyStack;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->stack:Lcom/narvii/util/http/ProxyStack;

    .line 16
    return-object v0
.end method

.method public getStatus(Ljava/lang/String;I)I
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/monetization/bubble/BubbleService$Worker;

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-nez v0, :cond_7

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->revs:Ljava/util/Hashtable;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Ljava/lang/Integer;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 25
    move-result v2

    .line 26
    .line 27
    if-ge v2, p2, :cond_0

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result v0

    .line 33
    goto :goto_2

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/BubbleService;->getRevFile(Ljava/lang/String;)Ljava/io/File;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 41
    move-result-wide v2

    .line 42
    .line 43
    const-wide/16 v4, 0x0

    .line 44
    .line 45
    cmp-long v2, v2, v4

    .line 46
    .line 47
    if-lez v2, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lcom/narvii/util/Utils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 55
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_1

    .line 57
    :catch_0
    :cond_2
    move v0, v1

    .line 58
    .line 59
    :goto_1
    iget-object v2, p0, Lcom/narvii/monetization/bubble/BubbleService;->revs:Ljava/util/Hashtable;

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v3

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    :goto_2
    sget-object v2, Lcom/narvii/monetization/bubble/BubbleService;->TAG:Ljava/lang/String;

    .line 69
    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    const-string v4, "cur rev-"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v4, " target-v "

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v3

    .line 94
    .line 95
    .line 96
    invoke-static {v2, v3}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    if-nez p2, :cond_3

    .line 99
    .line 100
    if-nez v0, :cond_4

    .line 101
    .line 102
    :cond_3
    if-eqz p2, :cond_5

    .line 103
    .line 104
    if-lt v0, p2, :cond_5

    .line 105
    :cond_4
    const/4 p1, 0x5

    .line 106
    return p1

    .line 107
    .line 108
    :cond_5
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    if-nez p1, :cond_6

    .line 115
    goto :goto_3

    .line 116
    :cond_6
    const/4 v1, -0x1

    .line 117
    :goto_3
    return v1

    .line 118
    .line 119
    :cond_7
    if-eqz p2, :cond_8

    .line 120
    .line 121
    iget p1, v0, Lcom/narvii/monetization/bubble/BubbleService$Worker;->rev:I

    .line 122
    .line 123
    if-ne p1, p2, :cond_9

    .line 124
    :cond_8
    const/4 v1, 0x1

    .line 125
    :cond_9
    return v1
.end method

.method getWritingFile(Ljava/lang/String;I)Ljava/io/File;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleService;->cacheDir:Ljava/io/File;

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v3, "b"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string p1, "-r"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string p1, ".w"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    return-object v0
.end method

.method public removeUploadDir()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->uploadDir:Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    .line 6
    return-void
.end method

.method public requireBubble(ILjava/lang/String;I)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/narvii/monetization/bubble/BubbleService;->getBubbleQueryKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->bubbles:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatBubble;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object p1

    iget p2, v0, Lcom/narvii/model/ChatBubble;->version:I

    iget-object p3, v0, Lcom/narvii/model/ChatBubble;->resourceUrl:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/monetization/bubble/BubbleService;->requireBubble(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->bubbleInfoRequest:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/narvii/monetization/bubble/BubbleService;->TAG:Ljava/lang/String;

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "request already in queue "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v0, Lcom/narvii/monetization/bubble/BubbleService;->TAG:Ljava/lang/String;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query bubble info :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
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

    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService;->context:Lcom/narvii/app/NVContext;

    const-string v0, "api"

    .line 8
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/http/ApiService;

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->bubbleInfoRequest:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    invoke-virtual {v0, p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleService$1;

    const-class v1, Lcom/narvii/monetization/bubble/ChatBubbleResponse;

    invoke-direct {v0, p0, v1, p3}, Lcom/narvii/monetization/bubble/BubbleService$1;-><init>(Lcom/narvii/monetization/bubble/BubbleService;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p2, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public requireBubble(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/monetization/bubble/BubbleService;->requireBubble(Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public requireBubble(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 3

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleService;->getStatus(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleService;->sendStatusChangeBroadCast(Ljava/lang/String;I)V

    return-void

    :cond_0
    if-lez v0, :cond_2

    if-nez p4, :cond_2

    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/bubble/BubbleService$Worker;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 15
    iput-boolean p2, p1, Lcom/narvii/monetization/bubble/BubbleService$Worker;->downloadOnly:Z

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/narvii/monetization/bubble/BubbleService;->TAG:Ljava/lang/String;

    .line 16
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

    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/BubbleService;->cancel(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/monetization/bubble/BubbleService;->extract(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "extract bubble resource for "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_5

    const-string v0, "https://"

    .line 20
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "http://"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    :cond_4
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleService$Worker;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/narvii/monetization/bubble/BubbleService$Worker;-><init>(Lcom/narvii/monetization/bubble/BubbleService;Ljava/lang/String;ILjava/lang/String;)V

    iput-boolean p4, v0, Lcom/narvii/monetization/bubble/BubbleService$Worker;->downloadOnly:Z

    const/4 p3, 0x1

    .line 22
    invoke-virtual {v0, p3}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object p3, p0, Lcom/narvii/monetization/bubble/BubbleService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    invoke-virtual {p3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleService;->sendStatusChangeBroadCast(Ljava/lang/String;I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public size()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService;->dir:Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/Utils;->getFolderSize(Ljava/io/File;)J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public uploadBubble(ILcom/narvii/model/BubbleInfo;Lcom/narvii/monetization/bubble/service/BubbleUploadListener;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/narvii/model/BubbleInfo;->getBubbleUploadId()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/monetization/bubble/BubbleService;->cancelUpload(Ljava/lang/String;)V

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleService$UploadTask;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/narvii/monetization/bubble/BubbleService;->context:Lcom/narvii/app/NVContext;

    .line 12
    move-object v1, v0

    .line 13
    move-object v2, p0

    .line 14
    move v4, p1

    .line 15
    move-object v5, p2

    .line 16
    move-object v6, p3

    .line 17
    .line 18
    .line 19
    invoke-direct/range {v1 .. v6}, Lcom/narvii/monetization/bubble/BubbleService$UploadTask;-><init>(Lcom/narvii/monetization/bubble/BubbleService;Lcom/narvii/app/NVContext;ILcom/narvii/model/BubbleInfo;Lcom/narvii/monetization/bubble/service/BubbleUploadListener;)V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleService;->uploadSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/narvii/model/BubbleInfo;->getBubbleUploadId()Ljava/lang/String;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const/4 p1, 0x0

    .line 30
    .line 31
    new-array p1, p1, [Ljava/lang/Void;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 35
    return-void
.end method
