.class Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/gl/EglRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EglSurfaceCreation"
.end annotation


# instance fields
.field private surface:Ljava/lang/Object;

.field final synthetic this$0:Lio/agora/rtc/gl/EglRenderer;


# direct methods
.method private constructor <init>(Lio/agora/rtc/gl/EglRenderer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/agora/rtc/gl/EglRenderer;Lio/agora/rtc/gl/EglRenderer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;-><init>(Lio/agora/rtc/gl/EglRenderer;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$000(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/EglBase;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$000(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/EglBase;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->hasSurface()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    .line 28
    .line 29
    instance-of v1, v0, Landroid/view/Surface;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$000(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/EglBase;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Landroid/view/Surface;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lio/agora/rtc/gl/EglBase;->createSurface(Landroid/view/Surface;)V

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto :goto_2

    .line 48
    .line 49
    :cond_0
    instance-of v0, v0, Landroid/graphics/SurfaceTexture;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$000(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/EglBase;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v1, Landroid/graphics/SurfaceTexture;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lio/agora/rtc/gl/EglBase;->createSurface(Landroid/graphics/SurfaceTexture;)V

    .line 65
    .line 66
    :goto_0
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$000(Lio/agora/rtc/gl/EglRenderer;)Lio/agora/rtc/gl/EglBase;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->makeCurrent()V

    .line 74
    .line 75
    const/16 v0, 0xcf5

    .line 76
    const/4 v1, 0x1

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 80
    goto :goto_1

    .line 81
    .line 82
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    const-string v2, "Invalid surface: "

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    iget-object v2, p0, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    .line 104
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 105
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_2
    :goto_1
    monitor-exit p0

    .line 107
    return-void

    .line 108
    :goto_2
    monitor-exit p0

    .line 109
    throw v0
.end method

.method public declared-synchronized setSurface(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iput-object p1, p0, Lio/agora/rtc/gl/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    .line 8
    throw p1
.end method
