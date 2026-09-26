.class final Lcom/google/android/exoplayer2/k1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/video/k;
.implements Lcom/google/android/exoplayer2/video/spherical/a;
.implements Lcom/google/android/exoplayer2/h3$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/k1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# static fields
.field public static final MSG_SET_CAMERA_MOTION_LISTENER:I = 0x8

.field public static final MSG_SET_SPHERICAL_SURFACE_VIEW:I = 0x2710

.field public static final MSG_SET_VIDEO_FRAME_METADATA_LISTENER:I = 0x7


# instance fields
.field private cameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private internalCameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private internalVideoFrameMetadataListener:Lcom/google/android/exoplayer2/video/k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private videoFrameMetadataListener:Lcom/google/android/exoplayer2/video/k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/k1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J[F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$d;->internalCameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/spherical/a;->a(J[F)V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$d;->cameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/a;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/spherical/a;->a(J[F)V

    .line 15
    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$d;->internalCameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/google/android/exoplayer2/video/spherical/a;->b()V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$d;->cameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/a;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Lcom/google/android/exoplayer2/video/spherical/a;->b()V

    .line 15
    :cond_1
    return-void
.end method

.method public f(JJLcom/google/android/exoplayer2/a2;Landroid/media/MediaFormat;)V
    .locals 8
    .param p6    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1$d;->internalVideoFrameMetadataListener:Lcom/google/android/exoplayer2/video/k;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-wide v1, p1

    .line 6
    move-wide v3, p3

    .line 7
    move-object v5, p5

    .line 8
    move-object v6, p6

    .line 9
    .line 10
    .line 11
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/video/k;->f(JJLcom/google/android/exoplayer2/a2;Landroid/media/MediaFormat;)V

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/k1$d;->videoFrameMetadataListener:Lcom/google/android/exoplayer2/video/k;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    move-wide v2, p1

    .line 17
    move-wide v4, p3

    .line 18
    move-object v6, p5

    .line 19
    move-object v7, p6

    .line 20
    .line 21
    .line 22
    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/video/k;->f(JJLcom/google/android/exoplayer2/a2;Landroid/media/MediaFormat;)V

    .line 23
    :cond_1
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x7

    .line 2
    .line 3
    if-eq p1, v0, :cond_3

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    const/16 v0, 0x2710

    .line 10
    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    check-cast p2, Lcom/google/android/exoplayer2/video/spherical/l;

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    const/4 p1, 0x0

    .line 18
    .line 19
    iput-object p1, p0, Lcom/google/android/exoplayer2/k1$d;->internalVideoFrameMetadataListener:Lcom/google/android/exoplayer2/video/k;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/google/android/exoplayer2/k1$d;->internalCameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/a;

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/video/spherical/l;->getVideoFrameMetadataListener()Lcom/google/android/exoplayer2/video/k;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iput-object p1, p0, Lcom/google/android/exoplayer2/k1$d;->internalVideoFrameMetadataListener:Lcom/google/android/exoplayer2/video/k;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/video/spherical/l;->getCameraMotionListener()Lcom/google/android/exoplayer2/video/spherical/a;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iput-object p1, p0, Lcom/google/android/exoplayer2/k1$d;->internalCameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/a;

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_2
    check-cast p2, Lcom/google/android/exoplayer2/video/spherical/a;

    .line 38
    .line 39
    iput-object p2, p0, Lcom/google/android/exoplayer2/k1$d;->cameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/a;

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_3
    check-cast p2, Lcom/google/android/exoplayer2/video/k;

    .line 43
    .line 44
    iput-object p2, p0, Lcom/google/android/exoplayer2/k1$d;->videoFrameMetadataListener:Lcom/google/android/exoplayer2/video/k;

    .line 45
    :goto_0
    return-void
.end method
