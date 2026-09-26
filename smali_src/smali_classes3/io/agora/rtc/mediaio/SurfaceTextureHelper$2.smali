.class final Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/mediaio/SurfaceTextureHelper;->create(Ljava/lang/String;Lio/agora/rtc/gl/EglBase$Context;ZII)Lio/agora/rtc/mediaio/SurfaceTextureHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/agora/rtc/mediaio/SurfaceTextureHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$copyTo2DTexture:Z

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$height:I

.field final synthetic val$sharedContext:Lio/agora/rtc/gl/EglBase$Context;

.field final synthetic val$threadName:Ljava/lang/String;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lio/agora/rtc/gl/EglBase$Context;Landroid/os/Handler;ZIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$threadName",
            "val$height",
            "val$width",
            "val$copyTo2DTexture",
            "val$handler",
            "val$sharedContext"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;->val$sharedContext:Lio/agora/rtc/gl/EglBase$Context;

    .line 3
    .line 4
    iput-object p2, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;->val$handler:Landroid/os/Handler;

    .line 5
    .line 6
    iput-boolean p3, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;->val$copyTo2DTexture:Z

    .line 7
    .line 8
    iput p4, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;->val$width:I

    .line 9
    .line 10
    iput p5, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;->val$height:I

    .line 11
    .line 12
    iput-object p6, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;->val$threadName:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public call()Lio/agora/rtc/mediaio/SurfaceTextureHelper;
    .locals 8

    .line 2
    :try_start_0
    new-instance v7, Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    iget-object v1, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;->val$sharedContext:Lio/agora/rtc/gl/EglBase$Context;

    iget-object v2, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;->val$handler:Landroid/os/Handler;

    iget-boolean v3, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;->val$copyTo2DTexture:Z

    iget v4, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;->val$width:I

    iget v5, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;->val$height:I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;-><init>(Lio/agora/rtc/gl/EglBase$Context;Landroid/os/Handler;ZIILio/agora/rtc/mediaio/SurfaceTextureHelper$1;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;->val$threadName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " create failure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SurfaceTextureHelper"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper$2;->call()Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    move-result-object v0

    return-object v0
.end method
