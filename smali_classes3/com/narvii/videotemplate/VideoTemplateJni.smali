.class public Lcom/narvii/videotemplate/VideoTemplateJni;
.super Ljava/lang/Object;
.source "VideoTemplateJni.java"


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

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.narvii.amino.VIDEO_TEMPLATE_COMPILE_PROGRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->progressIntent:Landroid/content/Intent;

    .line 35
    new-instance v0, Lcom/narvii/videotemplate/VideoTemplateJni$ProgressCallbackRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/videotemplate/VideoTemplateJni$ProgressCallbackRunnable;-><init>(Lcom/narvii/videotemplate/VideoTemplateJni$1;)V

    sput-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->progressCallbackRunnable:Lcom/narvii/videotemplate/VideoTemplateJni$ProgressCallbackRunnable;

    .line 56
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "arm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "x264-157"

    .line 58
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "avutil"

    .line 59
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "avcodec"

    .line 60
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "avformat"

    .line 61
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "swscale"

    .line 62
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "avresample"

    .line 63
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "postproc"

    .line 64
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "swresample"

    .line 65
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "avfilter"

    .line 66
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "avdevice"

    .line 67
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "yuv"

    .line 68
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "vtemplate"

    .line 69
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 71
    sget-object v1, Lcom/narvii/videotemplate/VideoTemplateJni;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 72
    sput-boolean v0, Lcom/narvii/videotemplate/VideoTemplateJni;->vTemplateInstalled:Z

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;
    .locals 1

    .line 18
    sget-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->videoTemplateEventCallback:Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    return-object v0
.end method

.method public static bindContext(Landroid/content/Context;)V
    .locals 0

    .line 140
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

    if-nez p0, :cond_0

    return-void

    .line 151
    :cond_0
    sget-boolean v0, Lcom/narvii/videotemplate/VideoTemplateJni;->vTemplateInstalled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/narvii/videotemplate/TemplateSegment;

    .line 152
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/narvii/videotemplate/TemplateSegment;

    invoke-static {p0}, Lcom/narvii/videotemplate/VideoTemplateJni;->nativeCreate([Lcom/narvii/videotemplate/TemplateSegment;)V

    :cond_1
    return-void
.end method

.method public static destroy()V
    .locals 1

    .line 169
    sget-boolean v0, Lcom/narvii/videotemplate/VideoTemplateJni;->vTemplateInstalled:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Lcom/narvii/videotemplate/VideoTemplateJni;->nativeDestroy()V

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

    .line 95
    sget-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->videoTemplateEventCallback:Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lcom/narvii/videotemplate/VideoTemplateJni$1;

    invoke-direct {v0, p0}, Lcom/narvii/videotemplate/VideoTemplateJni$1;-><init>(I)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 103
    :cond_0
    sget-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->CONDITION:Lcom/narvii/util/BlockingItem;

    if-eqz v0, :cond_1

    const-string v1, "ERROR"

    .line 104
    invoke-virtual {v0, v1}, Lcom/narvii/util/BlockingItem;->put(Ljava/lang/Object;)V

    .line 106
    :cond_1
    sget-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->context:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.narvii.amino.VIDEO_TEMPLATE_COMPILE_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.narvii.videotemplate.errorType"

    .line 108
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    sget-object p0, Lcom/narvii/videotemplate/VideoTemplateJni;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public static onFinishFromNative()V
    .locals 2

    .line 114
    sget-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->videoTemplateEventCallback:Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Lcom/narvii/videotemplate/VideoTemplateJni$2;

    invoke-direct {v0}, Lcom/narvii/videotemplate/VideoTemplateJni$2;-><init>()V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 122
    :cond_0
    sget-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->CONDITION:Lcom/narvii/util/BlockingItem;

    if-eqz v0, :cond_1

    const-string v1, "FINISH"

    .line 123
    invoke-virtual {v0, v1}, Lcom/narvii/util/BlockingItem;->put(Ljava/lang/Object;)V

    .line 125
    :cond_1
    sget-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->context:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.narvii.amino.VIDEO_TEMPLATE_COMPILE_FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    sget-object v1, Lcom/narvii/videotemplate/VideoTemplateJni;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public static onProgressFromNative(F)V
    .locals 2

    .line 86
    sget-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->progressCallbackRunnable:Lcom/narvii/videotemplate/VideoTemplateJni$ProgressCallbackRunnable;

    invoke-static {v0, p0}, Lcom/narvii/videotemplate/VideoTemplateJni$ProgressCallbackRunnable;->access$202(Lcom/narvii/videotemplate/VideoTemplateJni$ProgressCallbackRunnable;F)F

    .line 87
    sget-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->progressCallbackRunnable:Lcom/narvii/videotemplate/VideoTemplateJni$ProgressCallbackRunnable;

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 88
    sget-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->progressIntent:Landroid/content/Intent;

    const-string v1, "com.narvii.videotemplate.progress"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 90
    sget-object p0, Lcom/narvii/videotemplate/VideoTemplateJni;->context:Landroid/content/Context;

    sget-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->progressIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static removeVideoTemplateEventCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 136
    sput-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->videoTemplateEventCallback:Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    return-void
.end method

.method public static setVideoTemplateEventCallback(Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;)V
    .locals 0

    .line 132
    sput-object p0, Lcom/narvii/videotemplate/VideoTemplateJni;->videoTemplateEventCallback:Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    return-void
.end method

.method public static start([Ljava/lang/String;[Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;Ljava/lang/String;II)V
    .locals 1

    .line 157
    sget-boolean v0, Lcom/narvii/videotemplate/VideoTemplateJni;->vTemplateInstalled:Z

    if-eqz v0, :cond_0

    .line 158
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/videotemplate/VideoTemplateJni;->nativeStart([Ljava/lang/String;[Lcom/narvii/scene/template/data/SceneTemplateExtraInfo;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public static stop()V
    .locals 1

    .line 163
    sget-boolean v0, Lcom/narvii/videotemplate/VideoTemplateJni;->vTemplateInstalled:Z

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Lcom/narvii/videotemplate/VideoTemplateJni;->nativeStop()V

    :cond_0
    return-void
.end method

.method public static unbindContext()V
    .locals 1

    const/4 v0, 0x0

    .line 144
    sput-object v0, Lcom/narvii/videotemplate/VideoTemplateJni;->context:Landroid/content/Context;

    return-void
.end method
