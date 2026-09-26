.class Lio/agora/rtc/video/ViETextureView$ConfigChooser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/video/GLTextureView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/ViETextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigChooser"
.end annotation


# static fields
.field private static EGL_OPENGL_ES2_BIT:I = 0x4

.field private static s_configAttribs2:[I


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v3, 0x3023

    aput v3, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/16 v1, 0x3022

    aput v1, v0, v2

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v3, 0x3040

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3038

    aput v2, v0, v1

    sput-object v0, Lio/agora/rtc/video/ViETextureView$ConfigChooser;->s_configAttribs2:[I

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b",
            "a",
            "depth",
            "stencil"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    iput-object v0, p0, Lio/agora/rtc/video/ViETextureView$ConfigChooser;->mValue:[I

    .line 9
    .line 10
    iput p1, p0, Lio/agora/rtc/video/ViETextureView$ConfigChooser;->mRedSize:I

    .line 11
    .line 12
    iput p2, p0, Lio/agora/rtc/video/ViETextureView$ConfigChooser;->mGreenSize:I

    .line 13
    .line 14
    iput p3, p0, Lio/agora/rtc/video/ViETextureView$ConfigChooser;->mBlueSize:I

    .line 15
    .line 16
    iput p4, p0, Lio/agora/rtc/video/ViETextureView$ConfigChooser;->mAlphaSize:I

    .line 17
    .line 18
    iput p5, p0, Lio/agora/rtc/video/ViETextureView$ConfigChooser;->mDepthSize:I

    .line 19
    .line 20
    iput p6, p0, Lio/agora/rtc/video/ViETextureView$ConfigChooser;->mStencilSize:I

    .line 21
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
    iget-object v0, p0, Lio/agora/rtc/video/ViETextureView$ConfigChooser;->mValue:[I

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
    iget-object p1, p0, Lio/agora/rtc/video/ViETextureView$ConfigChooser;->mValue:[I

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

.method private printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 35
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "egl",
            "display",
            "config"
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x21

    .line 3
    .line 4
    new-array v1, v0, [I

    .line 5
    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    const-string v2, "EGL_BUFFER_SIZE"

    .line 10
    .line 11
    const-string v3, "EGL_ALPHA_SIZE"

    .line 12
    .line 13
    const-string v4, "EGL_BLUE_SIZE"

    .line 14
    .line 15
    const-string v5, "EGL_GREEN_SIZE"

    .line 16
    .line 17
    const-string v6, "EGL_RED_SIZE"

    .line 18
    .line 19
    const-string v7, "EGL_DEPTH_SIZE"

    .line 20
    .line 21
    const-string v8, "EGL_STENCIL_SIZE"

    .line 22
    .line 23
    const-string v9, "EGL_CONFIG_CAVEAT"

    .line 24
    .line 25
    const-string v10, "EGL_CONFIG_ID"

    .line 26
    .line 27
    const-string v11, "EGL_LEVEL"

    .line 28
    .line 29
    const-string v12, "EGL_MAX_PBUFFER_HEIGHT"

    .line 30
    .line 31
    const-string v13, "EGL_MAX_PBUFFER_PIXELS"

    .line 32
    .line 33
    const-string v14, "EGL_MAX_PBUFFER_WIDTH"

    .line 34
    .line 35
    const-string v15, "EGL_NATIVE_RENDERABLE"

    .line 36
    .line 37
    const-string v16, "EGL_NATIVE_VISUAL_ID"

    .line 38
    .line 39
    const-string v17, "EGL_NATIVE_VISUAL_TYPE"

    .line 40
    .line 41
    const-string v18, "EGL_PRESERVED_RESOURCES"

    .line 42
    .line 43
    const-string v19, "EGL_SAMPLES"

    .line 44
    .line 45
    const-string v20, "EGL_SAMPLE_BUFFERS"

    .line 46
    .line 47
    const-string v21, "EGL_SURFACE_TYPE"

    .line 48
    .line 49
    const-string v22, "EGL_TRANSPARENT_TYPE"

    .line 50
    .line 51
    const-string v23, "EGL_TRANSPARENT_RED_VALUE"

    .line 52
    .line 53
    const-string v24, "EGL_TRANSPARENT_GREEN_VALUE"

    .line 54
    .line 55
    const-string v25, "EGL_TRANSPARENT_BLUE_VALUE"

    .line 56
    .line 57
    const-string v26, "EGL_BIND_TO_TEXTURE_RGB"

    .line 58
    .line 59
    const-string v27, "EGL_BIND_TO_TEXTURE_RGBA"

    .line 60
    .line 61
    const-string v28, "EGL_MIN_SWAP_INTERVAL"

    .line 62
    .line 63
    const-string v29, "EGL_MAX_SWAP_INTERVAL"

    .line 64
    .line 65
    const-string v30, "EGL_LUMINANCE_SIZE"

    .line 66
    .line 67
    const-string v31, "EGL_ALPHA_MASK_SIZE"

    .line 68
    .line 69
    const-string v32, "EGL_COLOR_BUFFER_TYPE"

    .line 70
    .line 71
    const-string v33, "EGL_RENDERABLE_TYPE"

    .line 72
    .line 73
    const-string v34, "EGL_CONFORMANT"

    .line 74
    .line 75
    .line 76
    filled-new-array/range {v2 .. v34}, [Ljava/lang/String;

    .line 77
    move-result-object v2

    .line 78
    const/4 v3, 0x1

    .line 79
    .line 80
    new-array v4, v3, [I

    .line 81
    const/4 v5, 0x0

    .line 82
    move v6, v5

    .line 83
    .line 84
    :goto_0
    if-ge v6, v0, :cond_2

    .line 85
    .line 86
    aget v7, v1, v6

    .line 87
    .line 88
    aget-object v8, v2, v6

    .line 89
    .line 90
    move-object/from16 v9, p1

    .line 91
    .line 92
    move-object/from16 v10, p2

    .line 93
    .line 94
    move-object/from16 v11, p3

    .line 95
    .line 96
    .line 97
    invoke-interface {v9, v10, v11, v7, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 98
    move-result v7

    .line 99
    .line 100
    if-eqz v7, :cond_0

    .line 101
    .line 102
    .line 103
    invoke-static {}, Lio/agora/rtc/video/ViETextureView;->access$000()Ljava/lang/String;

    .line 104
    move-result-object v7

    .line 105
    const/4 v12, 0x2

    .line 106
    .line 107
    new-array v12, v12, [Ljava/lang/Object;

    .line 108
    .line 109
    aput-object v8, v12, v5

    .line 110
    .line 111
    aget v8, v4, v5

    .line 112
    .line 113
    .line 114
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    move-result-object v8

    .line 116
    .line 117
    aput-object v8, v12, v3

    .line 118
    .line 119
    const-string v8, "  %s: %d\n"

    .line 120
    .line 121
    .line 122
    invoke-static {v8, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    move-result-object v8

    .line 124
    .line 125
    .line 126
    invoke-static {v7, v8}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    goto :goto_2

    .line 128
    .line 129
    .line 130
    :cond_0
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    .line 131
    move-result v7

    .line 132
    .line 133
    const/16 v8, 0x3000

    .line 134
    .line 135
    if-eq v7, v8, :cond_1

    .line 136
    goto :goto_1

    .line 137
    .line 138
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 139
    goto :goto_0

    .line 140
    :cond_2
    return-void

    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    :array_0
    .array-data 4
        0x3020
        0x3021
        0x3022
        0x3023
        0x3024
        0x3025
        0x3026
        0x3027
        0x3028
        0x3029
        0x302a
        0x302b
        0x302c
        0x302d
        0x302e
        0x302f
        0x3030
        0x3031
        0x3032
        0x3033
        0x3034
        0x3037
        0x3036
        0x3035
        0x3039
        0x303a
        0x303b
        0x303c
        0x303d
        0x303e
        0x303f
        0x3040
        0x3042
    .end array-data
.end method

.method private printConfigs(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 7
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
    .line 3
    .line 4
    invoke-static {}, Lio/agora/rtc/video/ViETextureView;->access$000()Ljava/lang/String;

    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    new-array v3, v2, [Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v4

    .line 13
    const/4 v5, 0x0

    .line 14
    .line 15
    aput-object v4, v3, v5

    .line 16
    .line 17
    const-string v4, "%d configurations"

    .line 18
    .line 19
    .line 20
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v3}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    move v1, v5

    .line 26
    .line 27
    :goto_0
    if-ge v1, v0, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lio/agora/rtc/video/ViETextureView;->access$000()Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    new-array v4, v2, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v6

    .line 38
    .line 39
    aput-object v6, v4, v5

    .line 40
    .line 41
    const-string v6, "Configuration %d:\n"

    .line 42
    .line 43
    .line 44
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    move-result-object v4

    .line 46
    .line 47
    .line 48
    invoke-static {v3, v4}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    aget-object v3, p3, v1

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1, p2, v3}, Lio/agora/rtc/video/ViETextureView$ConfigChooser;->printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "egl",
            "display"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    sget-object v3, Lio/agora/rtc/video/ViETextureView$ConfigChooser;->s_configAttribs2:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    .line 1
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v1, 0x0

    aget v5, v0, v1

    if-gtz v5, :cond_0

    .line 2
    invoke-static {}, Lio/agora/rtc/video/ViETextureView;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "no configurations found"

    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-array v7, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v3, Lio/agora/rtc/video/ViETextureView$ConfigChooser;->s_configAttribs2:[I

    move-object v1, p1

    move-object v2, p2

    move-object v4, v7

    move-object v6, v0

    .line 4
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 5
    invoke-virtual {p0, p1, p2, v7}, Lio/agora/rtc/video/ViETextureView$ConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p1

    return-object p1
.end method

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

    .line 6
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v8, p3, v1

    const/16 v6, 0x3025

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v8

    .line 7
    invoke-direct/range {v2 .. v7}, Lio/agora/rtc/video/ViETextureView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    const/16 v6, 0x3026

    .line 8
    invoke-direct/range {v2 .. v7}, Lio/agora/rtc/video/ViETextureView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v2

    iget v3, p0, Lio/agora/rtc/video/ViETextureView$ConfigChooser;->mDepthSize:I

    if-lt v9, v3, :cond_1

    iget v3, p0, Lio/agora/rtc/video/ViETextureView$ConfigChooser;->mStencilSize:I

    if-ge v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v6, 0x3024

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v8

    .line 9
    invoke-direct/range {v2 .. v7}, Lio/agora/rtc/video/ViETextureView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    const/16 v6, 0x3023

    .line 10
    invoke-direct/range {v2 .. v7}, Lio/agora/rtc/video/ViETextureView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    const/16 v6, 0x3022

    .line 11
    invoke-direct/range {v2 .. v7}, Lio/agora/rtc/video/ViETextureView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    const/16 v6, 0x3021

    .line 12
    invoke-direct/range {v2 .. v7}, Lio/agora/rtc/video/ViETextureView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v2

    iget v3, p0, Lio/agora/rtc/video/ViETextureView$ConfigChooser;->mRedSize:I

    if-ne v9, v3, :cond_1

    iget v3, p0, Lio/agora/rtc/video/ViETextureView$ConfigChooser;->mGreenSize:I

    if-ne v10, v3, :cond_1

    iget v3, p0, Lio/agora/rtc/video/ViETextureView$ConfigChooser;->mBlueSize:I

    if-ne v11, v3, :cond_1

    iget v3, p0, Lio/agora/rtc/video/ViETextureView$ConfigChooser;->mAlphaSize:I

    if-ne v2, v3, :cond_1

    return-object v8

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
