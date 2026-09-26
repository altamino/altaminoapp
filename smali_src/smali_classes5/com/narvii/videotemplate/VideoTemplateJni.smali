.class public Lcom/narvii/videotemplate/VideoTemplateJni;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;,
        Lcom/narvii/videotemplate/VideoTemplateJni$ProgressCallbackRunnable;
    }
.end annotation


# static fields
.field public static CONDITION:Lcom/narvii/util/BlockingItem; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/BlockingItem<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static ERROR_ABORT:I = 0x1

.field public static ERROR_AV_MIX:I = 0x7

.field public static ERROR_EGL_INIT_FAILED:I = 0x2

.field public static ERROR_ENCODER_INIT_FAILED:I = 0x5

.field public static ERROR_ENCODE_FRAME_FAILED:I = 0x6

.field public static ERROR_FRAME_DECODE_FAILED:I = 0x3

.field public static ERROR_NONE:I = 0x0

.field public static ERROR_SWS_SCALE_FAILED:I = 0x4

.field public static ERROR_WATERMARK:I = 0x8

.field private static TAG:Ljava/lang/String; = "VIDEO_TEMPLATE"

.field private static context:Landroid/content/Context; = null

.field private static progressCallbackRunnable:Lcom/narvii/videotemplate/VideoTemplateJni$ProgressCallbackRunnable; = null

.field private static progressIntent:Landroid/content/Intent; = null

.field public static vTemplateInstalled:Z = true

.field private static videoTemplateEventCallback:Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "com.narvii.amino.VIDEO_TEMPLATE_COMPILE_PROGRESS"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->progressIntent:Landroid/content/Intent;

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/videotemplate/VideoTemplateJni$ProgressCallbackRunnable;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/narvii/videotemplate/VideoTemplateJni$ProgressCallbackRunnable;-><init>(Lcom/narvii/videotemplate/VideoTemplateJni$1;)V

    .line 16
    .line 17
    sput-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->progressCallbackRunnable:Lcom/narvii/videotemplate/VideoTemplateJni$ProgressCallbackRunnable;

    .line 18
    .line 19
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const-string v1, "arm"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    .line 32
    :try_start_0
    const-string/jumbo v0, "x264-157"

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 36
    .line 37
    const-string v0, "avutil"

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 41
    .line 42
    const-string v0, "avcodec"

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 46
    .line 47
    const-string v0, "avformat"

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string/jumbo v0, "swscale"

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 57
    .line 58
    const-string v0, "avresample"

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 62
    .line 63
    const-string v0, "postproc"

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string/jumbo v0, "swresample"

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 73
    .line 74
    const-string v0, "avfilter"

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 78
    .line 79
    const-string v0, "avdevice"

    .line 80
    .line 81
    .line 82
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string/jumbo v0, "yuv"

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string/jumbo v0, "vtemplate"

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    .line 98
    sget-object v1, Lcom/narvii/videotemplate/VideoTemplateJni;->TAG:Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    .line 105
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x0

    .line 107
    .line 108
    sput-boolean v0, Lcom/narvii/videotemplate/VideoTemplateJni;->vTemplateInstalled:Z

    .line 109
    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static synthetic access$100()Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;
    .locals 1

    sget-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->videoTemplateEventCallback:Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    return-object v0
.end method

.method public static bindContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/narvii/videotemplate/VideoTemplateJni;->context:Landroid/content/Context;

    return-void
.end method

.method public static create(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/videotemplate/TemplateSegment;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    sget-boolean v0, Lcom/narvii/videotemplate/VideoTemplateJni;->vTemplateInstalled:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    new-array v0, v0, [Lcom/narvii/videotemplate/TemplateSegment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    check-cast p0, [Lcom/narvii/videotemplate/TemplateSegment;

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lcom/narvii/videotemplate/VideoTemplateJni;->nativeCreate([Lcom/narvii/videotemplate/TemplateSegment;)V

    .line 20
    :cond_1
    return-void
.end method

.method public static destroy()V
    .locals 1

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/videotemplate/VideoTemplateJni;->vTemplateInstalled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/narvii/videotemplate/VideoTemplateJni;->nativeDestroy()V

    .line 8
    :cond_0
    return-void
.end method

.method private static native nativeCreate([Lcom/narvii/videotemplate/TemplateSegment;)V
.end method

.method private static native nativeDestroy()V
.end method

.method private static native nativeStart([Ljava/lang/String;[Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;Ljava/lang/String;II)V
.end method

.method private static native nativeStop()V
.end method

.method public static onErrorFromNative(I)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->videoTemplateEventCallback:Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/videotemplate/VideoTemplateJni$1;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/narvii/videotemplate/VideoTemplateJni$1;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    :cond_0
    sget-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->CONDITION:Lcom/narvii/util/BlockingItem;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const-string v1, "ERROR"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/narvii/util/BlockingItem;->put(Ljava/lang/Object;)V

    .line 22
    .line 23
    :cond_1
    sget-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->context:Landroid/content/Context;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    new-instance v0, Landroid/content/Intent;

    .line 28
    .line 29
    const-string v1, "com.narvii.amino.VIDEO_TEMPLATE_COMPILE_ERROR"

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    const-string v1, "com.narvii.videotemplate.errorType"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    .line 39
    sget-object p0, Lcom/narvii/videotemplate/VideoTemplateJni;->context:Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 43
    :cond_2
    return-void
.end method

.method public static onFinishFromNative()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->videoTemplateEventCallback:Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/videotemplate/VideoTemplateJni$2;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lcom/narvii/videotemplate/VideoTemplateJni$2;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    :cond_0
    sget-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->CONDITION:Lcom/narvii/util/BlockingItem;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const-string v1, "FINISH"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/narvii/util/BlockingItem;->put(Ljava/lang/Object;)V

    .line 22
    .line 23
    :cond_1
    sget-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->context:Landroid/content/Context;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    new-instance v0, Landroid/content/Intent;

    .line 28
    .line 29
    const-string v1, "com.narvii.amino.VIDEO_TEMPLATE_COMPILE_FINISH"

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    sget-object v1, Lcom/narvii/videotemplate/VideoTemplateJni;->context:Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 38
    :cond_2
    return-void
.end method

.method public static onProgressFromNative(F)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->progressCallbackRunnable:Lcom/narvii/videotemplate/VideoTemplateJni$ProgressCallbackRunnable;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Lcom/narvii/videotemplate/VideoTemplateJni$ProgressCallbackRunnable;->access$202(Lcom/narvii/videotemplate/VideoTemplateJni$ProgressCallbackRunnable;F)F

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->progressCallbackRunnable:Lcom/narvii/videotemplate/VideoTemplateJni$ProgressCallbackRunnable;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    sget-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->context:Landroid/content/Context;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->progressIntent:Landroid/content/Intent;

    .line 17
    .line 18
    const-string v1, "com.narvii.videotemplate.progress"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 22
    .line 23
    sget-object p0, Lcom/narvii/videotemplate/VideoTemplateJni;->context:Landroid/content/Context;

    .line 24
    .line 25
    sget-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->progressIntent:Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 29
    :cond_0
    return-void
.end method

.method public static removeVideoTemplateEventCallback()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->videoTemplateEventCallback:Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    return-void
.end method

.method public static setVideoTemplateEventCallback(Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;)V
    .locals 0

    sput-object p0, Lcom/narvii/videotemplate/VideoTemplateJni;->videoTemplateEventCallback:Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    return-void
.end method

.method public static start([Ljava/lang/String;[Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;Ljava/lang/String;II)V
    .locals 1

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/videotemplate/VideoTemplateJni;->vTemplateInstalled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/videotemplate/VideoTemplateJni;->nativeStart([Ljava/lang/String;[Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;Ljava/lang/String;II)V

    .line 8
    :cond_0
    return-void
.end method

.method public static stop()V
    .locals 1

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/videotemplate/VideoTemplateJni;->vTemplateInstalled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/narvii/videotemplate/VideoTemplateJni;->nativeStop()V

    .line 8
    :cond_0
    return-void
.end method

.method public static unbindContext()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->context:Landroid/content/Context;

    return-void
.end method
