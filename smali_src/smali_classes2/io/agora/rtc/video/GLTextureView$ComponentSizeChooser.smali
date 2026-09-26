.class Lio/agora/rtc/video/GLTextureView$ComponentSizeChooser;
.super Lio/agora/rtc/video/GLTextureView$BaseConfigChooser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentSizeChooser"
.end annotation


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I

.field final synthetic this$0:Lio/agora/rtc/video/GLTextureView;


# direct methods
.method public constructor <init>(Lio/agora/rtc/video/GLTextureView;IIIIII)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "redSize",
            "greenSize",
            "blueSize",
            "alphaSize",
            "depthSize",
            "stencilSize"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/video/GLTextureView$ComponentSizeChooser;->this$0:Lio/agora/rtc/video/GLTextureView;

    .line 3
    .line 4
    const/16 v0, 0xd

    .line 5
    .line 6
    new-array v0, v0, [I

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    const/16 v2, 0x3024

    .line 10
    .line 11
    aput v2, v0, v1

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    aput p2, v0, v1

    .line 15
    const/4 v2, 0x2

    .line 16
    .line 17
    const/16 v3, 0x3023

    .line 18
    .line 19
    aput v3, v0, v2

    .line 20
    const/4 v2, 0x3

    .line 21
    .line 22
    aput p3, v0, v2

    .line 23
    const/4 v2, 0x4

    .line 24
    .line 25
    const/16 v3, 0x3022

    .line 26
    .line 27
    aput v3, v0, v2

    .line 28
    const/4 v2, 0x5

    .line 29
    .line 30
    aput p4, v0, v2

    .line 31
    const/4 v2, 0x6

    .line 32
    .line 33
    const/16 v3, 0x3021

    .line 34
    .line 35
    aput v3, v0, v2

    .line 36
    const/4 v2, 0x7

    .line 37
    .line 38
    aput p5, v0, v2

    .line 39
    .line 40
    const/16 v2, 0x8

    .line 41
    .line 42
    const/16 v3, 0x3025

    .line 43
    .line 44
    aput v3, v0, v2

    .line 45
    .line 46
    const/16 v2, 0x9

    .line 47
    .line 48
    aput p6, v0, v2

    .line 49
    .line 50
    const/16 v2, 0xa

    .line 51
    .line 52
    const/16 v3, 0x3026

    .line 53
    .line 54
    aput v3, v0, v2

    .line 55
    .line 56
    const/16 v2, 0xb

    .line 57
    .line 58
    aput p7, v0, v2

    .line 59
    .line 60
    const/16 v2, 0xc

    .line 61
    .line 62
    const/16 v3, 0x3038

    .line 63
    .line 64
    aput v3, v0, v2

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, p1, v0}, Lio/agora/rtc/video/GLTextureView$BaseConfigChooser;-><init>(Lio/agora/rtc/video/GLTextureView;[I)V

    .line 68
    .line 69
    new-array p1, v1, [I

    .line 70
    .line 71
    iput-object p1, p0, Lio/agora/rtc/video/GLTextureView$ComponentSizeChooser;->mValue:[I

    .line 72
    .line 73
    iput p2, p0, Lio/agora/rtc/video/GLTextureView$ComponentSizeChooser;->mRedSize:I

    .line 74
    .line 75
    iput p3, p0, Lio/agora/rtc/video/GLTextureView$ComponentSizeChooser;->mGreenSize:I

    .line 76
    .line 77
    iput p4, p0, Lio/agora/rtc/video/GLTextureView$ComponentSizeChooser;->mBlueSize:I

    .line 78
    .line 79
    iput p5, p0, Lio/agora/rtc/video/GLTextureView$ComponentSizeChooser;->mAlphaSize:I

    .line 80
    .line 81
    iput p6, p0, Lio/agora/rtc/video/GLTextureView$ComponentSizeChooser;->mDepthSize:I

    .line 82
    .line 83
    iput p7, p0, Lio/agora/rtc/video/GLTextureView$ComponentSizeChooser;->mStencilSize:I

    .line 84
    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "egl",
            "display",
            "config",
            "attribute",
            "defaultValue"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/GLTextureView$ComponentSizeChooser;->mValue:[I

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lio/agora/rtc/video/GLTextureView$ComponentSizeChooser;->mValue:[I

    .line 11
    const/4 p2, 0x0

    .line 12
    .line 13
    aget p1, p1, p2

    .line 14
    return p1

    .line 15
    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "egl",
            "display",
            "configs"
        }
    .end annotation

    .line 1
    array-length v0, p3

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    .line 6
    aget-object v8, p3, v1

    .line 7
    .line 8
    const/16 v6, 0x3025

    .line 9
    const/4 v7, 0x0

    .line 10
    move-object v2, p0

    .line 11
    move-object v3, p1

    .line 12
    move-object v4, p2

    .line 13
    move-object v5, v8

    .line 14
    .line 15
    .line 16
    invoke-direct/range {v2 .. v7}, Lio/agora/rtc/video/GLTextureView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    .line 17
    move-result v9

    .line 18
    .line 19
    const/16 v6, 0x3026

    .line 20
    .line 21
    .line 22
    invoke-direct/range {v2 .. v7}, Lio/agora/rtc/video/GLTextureView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    .line 23
    move-result v2

    .line 24
    .line 25
    iget v3, p0, Lio/agora/rtc/video/GLTextureView$ComponentSizeChooser;->mDepthSize:I

    .line 26
    .line 27
    if-lt v9, v3, :cond_0

    .line 28
    .line 29
    iget v3, p0, Lio/agora/rtc/video/GLTextureView$ComponentSizeChooser;->mStencilSize:I

    .line 30
    .line 31
    if-lt v2, v3, :cond_0

    .line 32
    .line 33
    const/16 v6, 0x3024

    .line 34
    const/4 v7, 0x0

    .line 35
    move-object v2, p0

    .line 36
    move-object v3, p1

    .line 37
    move-object v4, p2

    .line 38
    move-object v5, v8

    .line 39
    .line 40
    .line 41
    invoke-direct/range {v2 .. v7}, Lio/agora/rtc/video/GLTextureView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    .line 42
    move-result v9

    .line 43
    .line 44
    const/16 v6, 0x3023

    .line 45
    .line 46
    .line 47
    invoke-direct/range {v2 .. v7}, Lio/agora/rtc/video/GLTextureView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    .line 48
    move-result v10

    .line 49
    .line 50
    const/16 v6, 0x3022

    .line 51
    .line 52
    .line 53
    invoke-direct/range {v2 .. v7}, Lio/agora/rtc/video/GLTextureView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    .line 54
    move-result v11

    .line 55
    .line 56
    const/16 v6, 0x3021

    .line 57
    .line 58
    .line 59
    invoke-direct/range {v2 .. v7}, Lio/agora/rtc/video/GLTextureView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    .line 60
    move-result v2

    .line 61
    .line 62
    iget v3, p0, Lio/agora/rtc/video/GLTextureView$ComponentSizeChooser;->mRedSize:I

    .line 63
    .line 64
    if-ne v9, v3, :cond_0

    .line 65
    .line 66
    iget v3, p0, Lio/agora/rtc/video/GLTextureView$ComponentSizeChooser;->mGreenSize:I

    .line 67
    .line 68
    if-ne v10, v3, :cond_0

    .line 69
    .line 70
    iget v3, p0, Lio/agora/rtc/video/GLTextureView$ComponentSizeChooser;->mBlueSize:I

    .line 71
    .line 72
    if-ne v11, v3, :cond_0

    .line 73
    .line 74
    iget v3, p0, Lio/agora/rtc/video/GLTextureView$ComponentSizeChooser;->mAlphaSize:I

    .line 75
    .line 76
    if-ne v2, v3, :cond_0

    .line 77
    return-object v8

    .line 78
    .line 79
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    const/4 p1, 0x0

    .line 82
    return-object p1
.end method
