.class public final Lcom/google/android/exoplayer2/video/spherical/l;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/spherical/l$a;,
        Lcom/google/android/exoplayer2/video/spherical/l$b;
    }
.end annotation


# static fields
.field private static final FIELD_OF_VIEW_DEGREES:I = 0x5a

.field private static final PX_PER_DEGREES:F = 25.0f

.field static final UPRIGHT_ROLL:F = 3.1415927f

.field private static final Z_FAR:F = 100.0f

.field private static final Z_NEAR:F = 0.1f

.field public static final synthetic a:I


# instance fields
.field private isOrientationListenerRegistered:Z

.field private isStarted:Z

.field private final mainHandler:Landroid/os/Handler;

.field private final orientationListener:Lcom/google/android/exoplayer2/video/spherical/d;

.field private final orientationSensor:Landroid/hardware/Sensor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final scene:Lcom/google/android/exoplayer2/video/spherical/i;

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private surface:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final touchTracker:Lcom/google/android/exoplayer2/video/spherical/m;

.field private useSensorRotation:Z

.field private final videoSurfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/video/spherical/l$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/video/spherical/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/spherical/l;->videoSurfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/spherical/l;->mainHandler:Landroid/os/Handler;

    const-string p2, "sensor"

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/spherical/l;->sensorManager:Landroid/hardware/SensorManager;

    .line 6
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/16 v0, 0xf

    .line 7
    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/16 v0, 0xb

    .line 8
    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/l;->orientationSensor:Landroid/hardware/Sensor;

    .line 9
    new-instance p2, Lcom/google/android/exoplayer2/video/spherical/i;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/video/spherical/i;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/spherical/l;->scene:Lcom/google/android/exoplayer2/video/spherical/i;

    .line 10
    new-instance v0, Lcom/google/android/exoplayer2/video/spherical/l$a;

    invoke-direct {v0, p0, p2}, Lcom/google/android/exoplayer2/video/spherical/l$a;-><init>(Lcom/google/android/exoplayer2/video/spherical/l;Lcom/google/android/exoplayer2/video/spherical/i;)V

    .line 11
    new-instance p2, Lcom/google/android/exoplayer2/video/spherical/m;

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-direct {p2, p1, v0, v1}, Lcom/google/android/exoplayer2/video/spherical/m;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/video/spherical/m$a;F)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/spherical/l;->touchTracker:Lcom/google/android/exoplayer2/video/spherical/m;

    const-string v1, "window"

    .line 12
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 13
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 14
    new-instance v1, Lcom/google/android/exoplayer2/video/spherical/d;

    const/4 v2, 0x2

    new-array v3, v2, [Lcom/google/android/exoplayer2/video/spherical/d$a;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-direct {v1, p1, v3}, Lcom/google/android/exoplayer2/video/spherical/d;-><init>(Landroid/view/Display;[Lcom/google/android/exoplayer2/video/spherical/d$a;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/l;->orientationListener:Lcom/google/android/exoplayer2/video/spherical/d;

    iput-boolean v4, p0, Lcom/google/android/exoplayer2/video/spherical/l;->useSensorRotation:Z

    .line 15
    invoke-virtual {p0, v2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 16
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 17
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/video/spherical/l;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/spherical/l;->f(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/video/spherical/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/spherical/l;->e()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/video/spherical/l;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/spherical/l;->g(Landroid/graphics/SurfaceTexture;)V

    .line 4
    return-void
.end method

.method private synthetic e()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/l;->surface:Landroid/view/Surface;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/l;->videoSurfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    check-cast v2, Lcom/google/android/exoplayer2/video/spherical/l$b;

    .line 23
    .line 24
    .line 25
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/video/spherical/l$b;->q(Landroid/view/Surface;)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/l;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/video/spherical/l;->h(Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V

    .line 32
    const/4 v0, 0x0

    .line 33
    .line 34
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/l;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/l;->surface:Landroid/view/Surface;

    .line 37
    return-void
.end method

.method private synthetic f(Landroid/graphics/SurfaceTexture;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/l;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/l;->surface:Landroid/view/Surface;

    .line 5
    .line 6
    new-instance v2, Landroid/view/Surface;

    .line 7
    .line 8
    .line 9
    invoke-direct {v2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/l;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 12
    .line 13
    iput-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/l;->surface:Landroid/view/Surface;

    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/l;->videoSurfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v3

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    check-cast v3, Lcom/google/android/exoplayer2/video/spherical/l$b;

    .line 32
    .line 33
    .line 34
    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/video/spherical/l$b;->r(Landroid/view/Surface;)V

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/video/spherical/l;->h(Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V

    .line 39
    return-void
.end method

.method private g(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/l;->mainHandler:Landroid/os/Handler;

    .line 3
    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/video/spherical/j;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/video/spherical/j;-><init>(Lcom/google/android/exoplayer2/video/spherical/l;Landroid/graphics/SurfaceTexture;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method private static h(Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V
    .locals 0
    .param p0    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 6
    .line 7
    :cond_0
    if-eqz p1, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 11
    :cond_1
    return-void
.end method

.method private j()V
    .locals 5

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/spherical/l;->useSensorRotation:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/spherical/l;->isStarted:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v1

    .line 13
    .line 14
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/l;->orientationSensor:Landroid/hardware/Sensor;

    .line 15
    .line 16
    if-eqz v2, :cond_3

    .line 17
    .line 18
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/video/spherical/l;->isOrientationListenerRegistered:Z

    .line 19
    .line 20
    if-ne v0, v3, :cond_1

    .line 21
    goto :goto_2

    .line 22
    .line 23
    :cond_1
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/spherical/l;->sensorManager:Landroid/hardware/SensorManager;

    .line 26
    .line 27
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/spherical/l;->orientationListener:Lcom/google/android/exoplayer2/video/spherical/d;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v4, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/l;->sensorManager:Landroid/hardware/SensorManager;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/l;->orientationListener:Lcom/google/android/exoplayer2/video/spherical/d;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 39
    .line 40
    :goto_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/spherical/l;->isOrientationListenerRegistered:Z

    .line 41
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public d(Lcom/google/android/exoplayer2/video/spherical/l$b;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/l;->videoSurfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "me"    # Landroid/view/MotionEvent;

    const-string v0, "com.google.android.exoplayer"

    invoke-static {v0, p0, p1}, Lcom/safedk/android/analytics/brandsafety/DetectTouchUtils;->viewOnTouch(Ljava/lang/String;Landroid/view/View;Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getCameraMotionListener()Lcom/google/android/exoplayer2/video/spherical/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/l;->scene:Lcom/google/android/exoplayer2/video/spherical/i;

    return-object v0
.end method

.method public getVideoFrameMetadataListener()Lcom/google/android/exoplayer2/video/k;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/l;->scene:Lcom/google/android/exoplayer2/video/spherical/i;

    return-object v0
.end method

.method public getVideoSurface()Landroid/view/Surface;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/l;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public i(Lcom/google/android/exoplayer2/video/spherical/l$b;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/l;->videoSurfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/l;->mainHandler:Landroid/os/Handler;

    .line 6
    .line 7
    new-instance v1, Lcom/google/android/exoplayer2/video/spherical/k;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/video/spherical/k;-><init>(Lcom/google/android/exoplayer2/video/spherical/l;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    const-string v0, "com.google.android.exoplayer"

    const/4 v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/google/android/exoplayer2/video/spherical/l;->setMeasuredDimension(II)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onMeasure(II)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/spherical/l;->isStarted:Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/spherical/l;->j()V

    .line 7
    .line 8
    .line 9
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 10
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/spherical/l;->isStarted:Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/spherical/l;->j()V

    .line 10
    return-void
.end method

.method public setDefaultStereoMode(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/l;->scene:Lcom/google/android/exoplayer2/video/spherical/i;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/video/spherical/i;->h(I)V

    .line 6
    return-void
.end method

.method public setUseSensorRotation(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/spherical/l;->useSensorRotation:Z

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/spherical/l;->j()V

    .line 6
    return-void
.end method
