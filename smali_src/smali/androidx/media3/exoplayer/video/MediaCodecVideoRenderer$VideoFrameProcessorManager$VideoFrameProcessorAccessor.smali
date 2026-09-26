.class final Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VideoFrameProcessorAccessor"
.end annotation


# static fields
.field private static buildScaleAndRotateTransformationMethod:Ljava/lang/reflect/Method;

.field private static buildVideoFrameProcessorFactoryMethod:Ljava/lang/reflect/Method;

.field private static scaleAndRotateTransformationBuilderConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static setRotationMethod:Ljava/lang/reflect/Method;

.field private static videoFrameProcessorFactoryBuilderConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a(F)Landroidx/media3/common/Effect;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->c()V

    .line 4
    .line 5
    sget-object v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->scaleAndRotateTransformationBuilderConstructor:Ljava/lang/reflect/Constructor;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    new-array v2, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    sget-object v2, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->setRotationMethod:Ljava/lang/reflect/Method;

    .line 15
    const/4 v3, 0x1

    .line 16
    .line 17
    new-array v3, v3, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    aput-object p0, v3, v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    sget-object p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->buildScaleAndRotateTransformationMethod:Ljava/lang/reflect/Method;

    .line 29
    .line 30
    new-array v1, v1, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 35
    .line 36
    .line 37
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object p0

    .line 39
    .line 40
    check-cast p0, Landroidx/media3/common/Effect;

    .line 41
    return-object p0
.end method

.method public static b()Landroidx/media3/common/VideoFrameProcessor$Factory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->c()V

    .line 4
    .line 5
    sget-object v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->videoFrameProcessorFactoryBuilderConstructor:Ljava/lang/reflect/Constructor;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    new-array v2, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    sget-object v2, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->buildVideoFrameProcessorFactoryMethod:Ljava/lang/reflect/Method;

    .line 15
    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Landroidx/media3/common/VideoFrameProcessor$Factory;

    .line 27
    return-object v0
.end method

.method private static c()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->scaleAndRotateTransformationBuilderConstructor:Ljava/lang/reflect/Constructor;

    .line 3
    .line 4
    const-string v1, "build"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->setRotationMethod:Ljava/lang/reflect/Method;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->buildScaleAndRotateTransformationMethod:Ljava/lang/reflect/Method;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    :cond_0
    const-string v0, "androidx.media3.effect.ScaleAndRotateTransformation$Builder"

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    new-array v3, v2, [Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    sput-object v3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->scaleAndRotateTransformationBuilderConstructor:Ljava/lang/reflect/Constructor;

    .line 30
    const/4 v3, 0x1

    .line 31
    .line 32
    new-array v3, v3, [Ljava/lang/Class;

    .line 33
    .line 34
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 35
    .line 36
    aput-object v4, v3, v2

    .line 37
    .line 38
    .line 39
    const-string/jumbo v4, "setRotationDegrees"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    sput-object v3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->setRotationMethod:Ljava/lang/reflect/Method;

    .line 46
    .line 47
    new-array v3, v2, [Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    sput-object v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->buildScaleAndRotateTransformationMethod:Ljava/lang/reflect/Method;

    .line 54
    .line 55
    :cond_1
    sget-object v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->videoFrameProcessorFactoryBuilderConstructor:Ljava/lang/reflect/Constructor;

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    sget-object v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->buildVideoFrameProcessorFactoryMethod:Ljava/lang/reflect/Method;

    .line 60
    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    :cond_2
    const-string v0, "androidx.media3.effect.DefaultVideoFrameProcessor$Factory$Builder"

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    new-array v3, v2, [Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 73
    move-result-object v3

    .line 74
    .line 75
    sput-object v3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->videoFrameProcessorFactoryBuilderConstructor:Ljava/lang/reflect/Constructor;

    .line 76
    .line 77
    new-array v2, v2, [Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    sput-object v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$VideoFrameProcessorAccessor;->buildVideoFrameProcessorFactoryMethod:Ljava/lang/reflect/Method;

    .line 84
    :cond_3
    return-void
.end method
