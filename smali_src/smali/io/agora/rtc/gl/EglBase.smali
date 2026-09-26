.class public abstract Lio/agora/rtc/gl/EglBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/gl/EglBase$Context;
    }
.end annotation


# static fields
.field public static final CONFIG_PIXEL_BUFFER:[I

.field public static final CONFIG_PIXEL_RGBA_BUFFER:[I

.field public static final CONFIG_PLAIN:[I

.field public static final CONFIG_RECORDABLE:[I

.field public static final CONFIG_RGBA:[I

.field public static final EGL_OPENGL_ES2_BIT:I = 0x4

.field public static final EGL_RECORDABLE_ANDROID:I = 0x3142

.field public static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lio/agora/rtc/gl/EglBase;->lock:Ljava/lang/Object;

    .line 8
    .line 9
    const/16 v0, 0x9

    .line 10
    .line 11
    new-array v0, v0, [I

    .line 12
    .line 13
    .line 14
    fill-array-data v0, :array_0

    .line 15
    .line 16
    sput-object v0, Lio/agora/rtc/gl/EglBase;->CONFIG_PLAIN:[I

    .line 17
    .line 18
    const/16 v0, 0xb

    .line 19
    .line 20
    new-array v1, v0, [I

    .line 21
    .line 22
    .line 23
    fill-array-data v1, :array_1

    .line 24
    .line 25
    sput-object v1, Lio/agora/rtc/gl/EglBase;->CONFIG_RGBA:[I

    .line 26
    .line 27
    new-array v1, v0, [I

    .line 28
    .line 29
    .line 30
    fill-array-data v1, :array_2

    .line 31
    .line 32
    sput-object v1, Lio/agora/rtc/gl/EglBase;->CONFIG_PIXEL_BUFFER:[I

    .line 33
    .line 34
    const/16 v1, 0xd

    .line 35
    .line 36
    new-array v1, v1, [I

    .line 37
    .line 38
    .line 39
    fill-array-data v1, :array_3

    .line 40
    .line 41
    sput-object v1, Lio/agora/rtc/gl/EglBase;->CONFIG_PIXEL_RGBA_BUFFER:[I

    .line 42
    .line 43
    new-array v0, v0, [I

    .line 44
    .line 45
    .line 46
    fill-array-data v0, :array_4

    .line 47
    .line 48
    sput-object v0, Lio/agora/rtc/gl/EglBase;->CONFIG_RECORDABLE:[I

    .line 49
    return-void

    .line 50
    nop

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3038
    .end array-data

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    :array_1
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3038
    .end array-data

    .line 99
    :array_2
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3033
        0x1
        0x3038
    .end array-data

    :array_3
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3033
        0x1
        0x3038
    .end array-data

    :array_4
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3142
        0x1
        0x3038
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lio/agora/rtc/gl/EglBase;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lio/agora/rtc/gl/EglBase;->CONFIG_PLAIN:[I

    .line 2
    invoke-static {v0, v1}, Lio/agora/rtc/gl/EglBase;->create(Lio/agora/rtc/gl/EglBase$Context;[I)Lio/agora/rtc/gl/EglBase;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lio/agora/rtc/gl/EglBase$Context;)Lio/agora/rtc/gl/EglBase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sharedContext"
        }
    .end annotation

    sget-object v0, Lio/agora/rtc/gl/EglBase;->CONFIG_PLAIN:[I

    .line 3
    invoke-static {p0, v0}, Lio/agora/rtc/gl/EglBase;->create(Lio/agora/rtc/gl/EglBase$Context;[I)Lio/agora/rtc/gl/EglBase;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lio/agora/rtc/gl/EglBase$Context;[I)Lio/agora/rtc/gl/EglBase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sharedContext",
            "configAttributes"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/agora/rtc/gl/EglBase14;->isEGL14Supported()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    instance-of v0, p0, Lio/agora/rtc/gl/EglBase14$Context;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lio/agora/rtc/gl/EglBase14;

    check-cast p0, Lio/agora/rtc/gl/EglBase14$Context;

    invoke-direct {v0, p0, p1}, Lio/agora/rtc/gl/EglBase14;-><init>(Lio/agora/rtc/gl/EglBase14$Context;[I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lio/agora/rtc/gl/EglBase10;

    check-cast p0, Lio/agora/rtc/gl/EglBase10$Context;

    invoke-direct {v0, p0, p1}, Lio/agora/rtc/gl/EglBase10;-><init>(Lio/agora/rtc/gl/EglBase10$Context;[I)V

    :goto_0
    return-object v0
.end method

.method public static createEgl10(Ljavax/microedition/khronos/egl/EGLContext;[I)Lio/agora/rtc/gl/EglBase;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sharedContext",
            "configAttributes"
        }
    .end annotation

    .line 2
    new-instance v0, Lio/agora/rtc/gl/EglBase10;

    new-instance v1, Lio/agora/rtc/gl/EglBase10$Context;

    invoke-direct {v1, p0}, Lio/agora/rtc/gl/EglBase10$Context;-><init>(Ljavax/microedition/khronos/egl/EGLContext;)V

    invoke-direct {v0, v1, p1}, Lio/agora/rtc/gl/EglBase10;-><init>(Lio/agora/rtc/gl/EglBase10$Context;[I)V

    return-object v0
.end method

.method public static createEgl10([I)Lio/agora/rtc/gl/EglBase;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configAttributes"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/agora/rtc/gl/EglBase10;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lio/agora/rtc/gl/EglBase10;-><init>(Lio/agora/rtc/gl/EglBase10$Context;[I)V

    return-object v0
.end method

.method public static createEgl14(Landroid/opengl/EGLContext;[I)Lio/agora/rtc/gl/EglBase;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sharedContext",
            "configAttributes"
        }
    .end annotation

    .line 2
    new-instance v0, Lio/agora/rtc/gl/EglBase14;

    new-instance v1, Lio/agora/rtc/gl/EglBase14$Context;

    invoke-direct {v1, p0}, Lio/agora/rtc/gl/EglBase14$Context;-><init>(Landroid/opengl/EGLContext;)V

    invoke-direct {v0, v1, p1}, Lio/agora/rtc/gl/EglBase14;-><init>(Lio/agora/rtc/gl/EglBase14$Context;[I)V

    return-object v0
.end method

.method public static createEgl14([I)Lio/agora/rtc/gl/EglBase;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configAttributes"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/agora/rtc/gl/EglBase14;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lio/agora/rtc/gl/EglBase14;-><init>(Lio/agora/rtc/gl/EglBase14$Context;[I)V

    return-object v0
.end method


# virtual methods
.method public abstract createDummyPbufferSurface()V
.end method

.method public abstract createPbufferSurface(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation
.end method

.method public abstract createSurface(Landroid/graphics/SurfaceTexture;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surfaceTexture"
        }
    .end annotation
.end method

.method public abstract createSurface(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation
.end method

.method public abstract detachCurrent()V
.end method

.method public abstract getEglBaseContext()Lio/agora/rtc/gl/EglBase$Context;
.end method

.method public abstract hasSurface()Z
.end method

.method public abstract makeCurrent()V
.end method

.method public abstract release()V
.end method

.method public abstract releaseSurface()V
.end method

.method public abstract surfaceHeight()I
.end method

.method public abstract surfaceWidth()I
.end method

.method public abstract swapBuffers()V
.end method

.method public abstract swapBuffers(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presentationTimeStampNs"
        }
    .end annotation
.end method
