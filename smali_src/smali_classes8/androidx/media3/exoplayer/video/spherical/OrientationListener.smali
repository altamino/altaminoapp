.class final Landroidx/media3/exoplayer/video/spherical/OrientationListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/spherical/OrientationListener$Listener;
    }
.end annotation


# instance fields
.field private final angles:[F

.field private final deviceOrientationMatrix4x4:[F

.field private final display:Landroid/view/Display;

.field private final listeners:[Landroidx/media3/exoplayer/video/spherical/OrientationListener$Listener;

.field private final recenterMatrix4x4:[F

.field private recenterMatrixComputed:Z

.field private final tempMatrix4x4:[F


# direct methods
.method public varargs constructor <init>(Landroid/view/Display;[Landroidx/media3/exoplayer/video/spherical/OrientationListener$Listener;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0x10

    .line 6
    .line 7
    new-array v1, v0, [F

    .line 8
    .line 9
    iput-object v1, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    .line 10
    .line 11
    new-array v1, v0, [F

    .line 12
    .line 13
    iput-object v1, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->tempMatrix4x4:[F

    .line 14
    .line 15
    new-array v0, v0, [F

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->recenterMatrix4x4:[F

    .line 18
    const/4 v0, 0x3

    .line 19
    .line 20
    new-array v0, v0, [F

    .line 21
    .line 22
    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->angles:[F

    .line 23
    .line 24
    iput-object p1, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->display:Landroid/view/Display;

    .line 25
    .line 26
    iput-object p2, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->listeners:[Landroidx/media3/exoplayer/video/spherical/OrientationListener$Listener;

    .line 27
    return-void
.end method

.method private a([F)F
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0x83

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->tempMatrix4x4:[F

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v2, v0, v1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->tempMatrix4x4:[F

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->angles:[F

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->angles:[F

    .line 18
    const/4 v0, 0x2

    .line 19
    .line 20
    aget p1, p1, v0

    .line 21
    return p1
.end method

.method private b([FF)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->listeners:[Landroidx/media3/exoplayer/video/spherical/OrientationListener$Listener;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    :goto_0
    if-ge v2, v1, :cond_0

    .line 7
    .line 8
    aget-object v3, v0, v2

    .line 9
    .line 10
    .line 11
    invoke-interface {v3, p1, p2}, Landroidx/media3/exoplayer/video/spherical/OrientationListener$Listener;->a([FF)V

    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method private c([F)V
    .locals 9

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->recenterMatrixComputed:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->recenterMatrix4x4:[F

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->a([F[F)V

    .line 10
    const/4 v0, 0x1

    .line 11
    .line 12
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->recenterMatrixComputed:Z

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->tempMatrix4x4:[F

    .line 15
    array-length v1, v0

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    const/4 v4, 0x0

    .line 21
    .line 22
    iget-object v5, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->tempMatrix4x4:[F

    .line 23
    const/4 v6, 0x0

    .line 24
    .line 25
    iget-object v7, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->recenterMatrix4x4:[F

    .line 26
    const/4 v8, 0x0

    .line 27
    move-object v3, p1

    .line 28
    .line 29
    .line 30
    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 31
    return-void
.end method

.method private d([FI)V
    .locals 4

    .line 1
    .line 2
    if-eqz p2, :cond_3

    .line 3
    .line 4
    const/16 v0, 0x81

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    if-eq p2, v2, :cond_2

    .line 9
    .line 10
    const/16 v3, 0x82

    .line 11
    .line 12
    if-eq p2, v1, :cond_1

    .line 13
    const/4 v0, 0x3

    .line 14
    .line 15
    if-ne p2, v0, :cond_0

    .line 16
    move v0, v3

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 23
    throw p1

    .line 24
    :cond_1
    move v2, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    move v2, v0

    .line 27
    move v0, v1

    .line 28
    .line 29
    :goto_0
    iget-object p2, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->tempMatrix4x4:[F

    .line 30
    array-length v1, p2

    .line 31
    const/4 v3, 0x0

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v3, p2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    iget-object p2, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->tempMatrix4x4:[F

    .line 37
    .line 38
    .line 39
    invoke-static {p2, v0, v2, p1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 40
    :cond_3
    return-void
.end method

.method private static e([F)V
    .locals 6

    .line 1
    const/4 v1, 0x0

    .line 2
    .line 3
    const/high16 v2, 0x42b40000    # 90.0f

    .line 4
    .line 5
    const/high16 v3, 0x3f800000    # 1.0f

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    move-object v0, p0

    .line 9
    .line 10
    .line 11
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 12
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    .line 3
    .line 4
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->display:Landroid/view/Display;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->d([FI)V

    .line 19
    .line 20
    iget-object p1, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->a([F)F

    .line 24
    move-result p1

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->e([F)V

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->c([F)V

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/video/spherical/OrientationListener;->b([FF)V

    .line 40
    return-void
.end method
