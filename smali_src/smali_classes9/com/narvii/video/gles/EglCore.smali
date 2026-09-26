.class public final Lcom/narvii/video/gles/EglCore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EGL_RECORDABLE_ANDROID:I = 0x3142

.field public static final FLAG_RECORDABLE:I = 0x1

.field public static final FLAG_TRY_GLES3:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Grafika"


# instance fields
.field private mEGLConfig:Landroid/opengl/EGLConfig;

.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mGlVersion:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/narvii/video/gles/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    return-void
.end method

.method public constructor <init>(Landroid/opengl/EGLContext;I)V
    .locals 10

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/narvii/video/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 4
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v1, p0, Lcom/narvii/video/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/narvii/video/gles/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    const/4 v2, -0x1

    iput v2, p0, Lcom/narvii/video/gles/EglCore;->mGlVersion:I

    .line 5
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v2, :cond_6

    if-nez p1, :cond_0

    .line 6
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/video/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 8
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    .line 9
    invoke-static {v2, v4, v0, v4, v5}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v2

    if-eqz v2, :cond_4

    and-int/lit8 v1, p2, 0x2

    const/16 v2, 0x3038

    const/16 v4, 0x3098

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    .line 10
    invoke-direct {p0, p2, v1}, Lcom/narvii/video/gles/EglCore;->getConfig(II)Landroid/opengl/EGLConfig;

    move-result-object v6

    if-eqz v6, :cond_1

    filled-new-array {v4, v1, v2}, [I

    move-result-object v7

    iget-object v8, p0, Lcom/narvii/video/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 11
    invoke-static {v8, v6, p1, v7, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v7

    .line 12
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v8

    const/16 v9, 0x3000

    if-ne v8, v9, :cond_1

    iput-object v6, p0, Lcom/narvii/video/gles/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    iput-object v7, p0, Lcom/narvii/video/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    iput v1, p0, Lcom/narvii/video/gles/EglCore;->mGlVersion:I

    :cond_1
    iget-object v1, p0, Lcom/narvii/video/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 13
    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v1, v6, :cond_3

    .line 14
    invoke-direct {p0, p2, v3}, Lcom/narvii/video/gles/EglCore;->getConfig(II)Landroid/opengl/EGLConfig;

    move-result-object p2

    if-eqz p2, :cond_2

    filled-new-array {v4, v3, v2}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/video/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 15
    invoke-static {v2, p2, p1, v1, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p1

    const-string v1, "eglCreateContext"

    .line 16
    invoke-direct {p0, v1}, Lcom/narvii/video/gles/EglCore;->checkEglError(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/video/gles/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    iput-object p1, p0, Lcom/narvii/video/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    iput v3, p0, Lcom/narvii/video/gles/EglCore;->mGlVersion:I

    goto :goto_0

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unable to find a suitable EGLConfig"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    new-array p1, v5, [I

    iget-object p2, p0, Lcom/narvii/video/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/narvii/video/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 18
    invoke-static {p2, v1, v4, p1, v0}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EGLContext created, client version "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Grafika"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iput-object v1, p0, Lcom/narvii/video/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 20
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "unable to initialize EGL14"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "unable to get EGL14 display"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "EGL already set up"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x3000

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string p1, ": EGL error: 0x"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    throw v1
.end method

.method private getConfig(II)Landroid/opengl/EGLConfig;
    .locals 13

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    .line 4
    if-lt p2, v1, :cond_0

    .line 5
    .line 6
    const/16 v2, 0x44

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v2, v0

    .line 9
    .line 10
    :goto_0
    const/16 v3, 0xd

    .line 11
    .line 12
    new-array v5, v3, [I

    .line 13
    .line 14
    const/16 v3, 0x3024

    .line 15
    const/4 v12, 0x0

    .line 16
    .line 17
    aput v3, v5, v12

    .line 18
    const/4 v3, 0x1

    .line 19
    .line 20
    const/16 v4, 0x8

    .line 21
    .line 22
    aput v4, v5, v3

    .line 23
    const/4 v6, 0x2

    .line 24
    .line 25
    const/16 v7, 0x3023

    .line 26
    .line 27
    aput v7, v5, v6

    .line 28
    .line 29
    aput v4, v5, v1

    .line 30
    .line 31
    const/16 v1, 0x3022

    .line 32
    .line 33
    aput v1, v5, v0

    .line 34
    const/4 v0, 0x5

    .line 35
    .line 36
    aput v4, v5, v0

    .line 37
    const/4 v0, 0x6

    .line 38
    .line 39
    const/16 v1, 0x3021

    .line 40
    .line 41
    aput v1, v5, v0

    .line 42
    const/4 v0, 0x7

    .line 43
    .line 44
    aput v4, v5, v0

    .line 45
    .line 46
    const/16 v0, 0x3040

    .line 47
    .line 48
    aput v0, v5, v4

    .line 49
    .line 50
    const/16 v0, 0x9

    .line 51
    .line 52
    aput v2, v5, v0

    .line 53
    .line 54
    const/16 v0, 0xa

    .line 55
    .line 56
    const/16 v1, 0x3038

    .line 57
    .line 58
    aput v1, v5, v0

    .line 59
    .line 60
    const/16 v2, 0xb

    .line 61
    .line 62
    aput v12, v5, v2

    .line 63
    .line 64
    const/16 v4, 0xc

    .line 65
    .line 66
    aput v1, v5, v4

    .line 67
    and-int/2addr p1, v3

    .line 68
    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    const/16 p1, 0x3142

    .line 72
    .line 73
    aput p1, v5, v0

    .line 74
    .line 75
    aput v3, v5, v2

    .line 76
    :cond_1
    const/4 v9, 0x1

    .line 77
    .line 78
    new-array p1, v9, [Landroid/opengl/EGLConfig;

    .line 79
    .line 80
    new-array v10, v3, [I

    .line 81
    .line 82
    iget-object v4, p0, Lcom/narvii/video/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 83
    const/4 v6, 0x0

    .line 84
    const/4 v8, 0x0

    .line 85
    const/4 v11, 0x0

    .line 86
    move-object v7, p1

    .line 87
    .line 88
    .line 89
    invoke-static/range {v4 .. v11}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 90
    move-result v0

    .line 91
    .line 92
    if-nez v0, :cond_2

    .line 93
    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string/jumbo v0, "unable to find RGB8888 / "

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string p2, " EGLConfig"

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    const-string p2, "Grafika"

    .line 118
    .line 119
    .line 120
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 p1, 0x0

    .line 122
    return-object p1

    .line 123
    .line 124
    :cond_2
    aget-object p1, p1, v12

    .line 125
    return-object p1
.end method

.method public static logCurrent(Ljava/lang/String;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    const/16 v2, 0x3059

    .line 11
    .line 12
    .line 13
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string v4, "Current EGL ("

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string p0, "): display="

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string p0, ", context="

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string p0, ", surface="

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    .line 57
    const-string v0, "Grafika"

    .line 58
    .line 59
    .line 60
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method


# virtual methods
.method public createOffscreenSurface(II)Landroid/opengl/EGLSurface;
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0x3056

    .line 3
    .line 4
    const/16 v1, 0x3038

    .line 5
    .line 6
    const/16 v2, 0x3057

    .line 7
    .line 8
    .line 9
    filled-new-array {v2, p1, v0, p2, v1}, [I

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/video/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/video/gles/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-static {p2, v0, p1, v1}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    const-string p2, "eglCreatePbufferSurface"

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p2}, Lcom/narvii/video/gles/EglCore;->checkEglError(Ljava/lang/String;)V

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    return-object p1

    .line 28
    .line 29
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 30
    .line 31
    .line 32
    const-string/jumbo p2, "surface was null"

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p1
.end method

.method public createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;
    .locals 4

    .line 1
    .line 2
    instance-of v0, p1, Landroid/view/Surface;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    instance-of v0, p1, Landroid/graphics/SurfaceTexture;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    const-string v2, "invalid surface: "

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 32
    throw v0

    .line 33
    .line 34
    :cond_1
    :goto_0
    const/16 v0, 0x3038

    .line 35
    .line 36
    .line 37
    filled-new-array {v0}, [I

    .line 38
    move-result-object v0

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/video/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/narvii/video/gles/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 43
    const/4 v3, 0x0

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v2, p1, v0, v3}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    const-string v0, "eglCreateWindowSurface"

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v0}, Lcom/narvii/video/gles/EglCore;->checkEglError(Ljava/lang/String;)V

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    return-object p1

    .line 56
    .line 57
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 58
    .line 59
    .line 60
    const-string/jumbo v0, "surface was null"

    .line 61
    .line 62
    .line 63
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 64
    throw p1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/video/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 3
    .line 4
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const-string v0, "Grafika"

    .line 9
    .line 10
    const-string v1, "WARNING: EglCore was not explicitly released -- state may be leaked"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/video/gles/EglCore;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 23
    return-void

    .line 24
    .line 25
    .line 26
    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 27
    throw v0
.end method

.method public getGlVersion()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/gles/EglCore;->mGlVersion:I

    return v0
.end method

.method public isCurrent(Landroid/opengl/EGLSurface;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/16 v0, 0x3059

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p1

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    return p1
.end method

.method public makeCurrent(Landroid/opengl/EGLSurface;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/video/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 1
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    const-string v0, "Grafika"

    const-string v1, "NOTE: makeCurrent w/o display"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/narvii/video/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 3
    invoke-static {v0, p1, p1, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "eglMakeCurrent failed"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public makeCurrent(Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/video/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 5
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    const-string v0, "Grafika"

    const-string v1, "NOTE: makeCurrent w/o display"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/narvii/video/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 7
    invoke-static {v0, p1, p2, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "eglMakeCurrent(draw,read) failed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public makeNothingCurrent()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 3
    .line 4
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 5
    .line 6
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 16
    .line 17
    const-string v1, "eglMakeCurrent failed"

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 21
    throw v0
.end method

.method public queryString(I)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public querySurface(Landroid/opengl/EGLSurface;I)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/video/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {v1, p1, p2, v0, v2}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    .line 10
    .line 11
    aget p1, v0, v2

    .line 12
    return p1
.end method

.method public release()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 3
    .line 4
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 9
    .line 10
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/video/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/video/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/video/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 29
    .line 30
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/narvii/video/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 33
    .line 34
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/video/gles/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 37
    const/4 v0, 0x0

    .line 38
    .line 39
    iput-object v0, p0, Lcom/narvii/video/gles/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 40
    return-void
.end method

.method public releaseSurface(Landroid/opengl/EGLSurface;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 6
    return-void
.end method

.method public setPresentationTime(Landroid/opengl/EGLSurface;J)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1, p2, p3}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 6
    return-void
.end method

.method public swapBuffers(Landroid/opengl/EGLSurface;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/gles/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method
