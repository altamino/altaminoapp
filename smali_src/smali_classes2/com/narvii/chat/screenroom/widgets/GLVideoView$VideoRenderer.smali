.class Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/widgets/GLVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoRenderer"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private fullFrameRect:Lcom/narvii/video/gles/FullFrameRect;

.field private mFramebuffer:I

.field private mOffscreenTexture:I

.field private offlineFrameRect:Lcom/narvii/video/gles/FullFrameRect;

.field private final sTMatrix:[F

.field private surface:Landroid/view/Surface;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private textureId:I

.field final synthetic this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

.field public volatile updateSurface:Z

.field private updateTexImageErrorReported:Z


# direct methods
.method public constructor <init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Landroid/content/Context;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    const/16 p1, 0x10

    .line 8
    .line 9
    new-array p1, p1, [F

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->sTMatrix:[F

    .line 12
    const/4 p1, 0x0

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->updateSurface:Z

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->updateTexImageErrorReported:Z

    .line 17
    .line 18
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mFramebuffer:I

    .line 19
    .line 20
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mOffscreenTexture:I

    .line 21
    .line 22
    iput-object p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->context:Landroid/content/Context;

    .line 23
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-void
.end method

.method private prepareFramebuffer(II)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    const-string v1, "prepareFramebuffer start"

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    new-array v2, v1, [I

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 15
    .line 16
    const-string v4, "glGenTextures"

    .line 17
    .line 18
    .line 19
    invoke-static {v4}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 20
    .line 21
    iget v4, v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mOffscreenTexture:I

    .line 22
    .line 23
    aget v5, v2, v3

    .line 24
    .line 25
    iput v5, v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mOffscreenTexture:I

    .line 26
    .line 27
    const/16 v6, 0xde1

    .line 28
    .line 29
    .line 30
    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 31
    .line 32
    new-instance v5, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    const-string v7, "glBindTexture "

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    iget v7, v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mOffscreenTexture:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v5

    .line 50
    .line 51
    .line 52
    invoke-static {v5}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 53
    .line 54
    if-lez v4, :cond_0

    .line 55
    .line 56
    .line 57
    filled-new-array {v4}, [I

    .line 58
    move-result-object v4

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v4, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 62
    .line 63
    :cond_0
    const/16 v7, 0xde1

    .line 64
    const/4 v8, 0x0

    .line 65
    .line 66
    const/16 v9, 0x1908

    .line 67
    const/4 v12, 0x0

    .line 68
    .line 69
    const/16 v13, 0x1908

    .line 70
    .line 71
    const/16 v14, 0x1401

    .line 72
    const/4 v15, 0x0

    .line 73
    .line 74
    move/from16 v10, p1

    .line 75
    .line 76
    move/from16 v11, p2

    .line 77
    .line 78
    .line 79
    invoke-static/range {v7 .. v15}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 80
    .line 81
    const/16 v4, 0x2801

    .line 82
    .line 83
    const/high16 v5, 0x46180000    # 9728.0f

    .line 84
    .line 85
    .line 86
    invoke-static {v6, v4, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 87
    .line 88
    const/16 v4, 0x2800

    .line 89
    .line 90
    .line 91
    const v5, 0x46180400    # 9729.0f

    .line 92
    .line 93
    .line 94
    invoke-static {v6, v4, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 95
    .line 96
    const/16 v4, 0x2802

    .line 97
    .line 98
    .line 99
    const v5, 0x812f

    .line 100
    .line 101
    .line 102
    invoke-static {v6, v4, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 103
    .line 104
    const/16 v4, 0x2803

    .line 105
    .line 106
    .line 107
    invoke-static {v6, v4, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 108
    .line 109
    const-string v4, "glTexParameter"

    .line 110
    .line 111
    .line 112
    invoke-static {v4}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 116
    .line 117
    const-string v4, "glGenFramebuffers"

    .line 118
    .line 119
    .line 120
    invoke-static {v4}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 121
    .line 122
    iget v4, v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mFramebuffer:I

    .line 123
    .line 124
    aget v2, v2, v3

    .line 125
    .line 126
    iput v2, v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mFramebuffer:I

    .line 127
    .line 128
    if-lez v4, :cond_1

    .line 129
    .line 130
    .line 131
    filled-new-array {v4}, [I

    .line 132
    move-result-object v2

    .line 133
    .line 134
    .line 135
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 136
    .line 137
    :cond_1
    iget v1, v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mFramebuffer:I

    .line 138
    .line 139
    .line 140
    const v2, 0x8d40

    .line 141
    .line 142
    .line 143
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 144
    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    const-string v4, "glBindFramebuffer "

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    iget v4, v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mFramebuffer:I

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object v1

    .line 163
    .line 164
    .line 165
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 166
    .line 167
    const-string v1, "glFramebufferRenderbuffer"

    .line 168
    .line 169
    .line 170
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const v1, 0x8ce0

    .line 174
    .line 175
    iget v4, v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mOffscreenTexture:I

    .line 176
    .line 177
    .line 178
    invoke-static {v2, v1, v6, v4, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 179
    .line 180
    const-string v1, "glFramebufferTexture2D"

    .line 181
    .line 182
    .line 183
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-static {v2}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    .line 187
    move-result v1

    .line 188
    .line 189
    .line 190
    const v4, 0x8cd5

    .line 191
    .line 192
    if-eq v1, v4, :cond_2

    .line 193
    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    const-string v5, "Framebuffer not complete, status="

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object v1

    .line 210
    .line 211
    const-string v4, "GLVideoView"

    .line 212
    .line 213
    .line 214
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    :cond_2
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 218
    .line 219
    const-string v1, "prepareFramebuffer done"

    .line 220
    .line 221
    .line 222
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 223
    return-void
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->updateSurface:Z

    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->clearSurfaceView:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    :try_start_1
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->sTMatrix:[F

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    .line 30
    goto/16 :goto_2

    .line 31
    :catch_0
    move-exception p1

    .line 32
    .line 33
    :try_start_2
    iget-boolean v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->updateTexImageErrorReported:Z

    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    const-string v2, "GLVideoView"

    .line 38
    .line 39
    .line 40
    invoke-static {v2, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->updateTexImageErrorReported:Z

    .line 43
    .line 44
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->updateSurface:Z

    .line 45
    move p1, v0

    .line 46
    goto :goto_1

    .line 47
    .line 48
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->clearSurfaceView:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 54
    move-result p1

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    const/16 p1, 0x4000

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 62
    monitor-exit p0

    .line 63
    return-void

    .line 64
    :cond_2
    move p1, v1

    .line 65
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    .line 67
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 68
    .line 69
    .line 70
    invoke-static {v2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->a(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Z

    .line 71
    move-result v2

    .line 72
    .line 73
    if-nez v2, :cond_3

    .line 74
    .line 75
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 76
    .line 77
    .line 78
    invoke-static {v2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->n(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    .line 79
    move-result v2

    .line 80
    .line 81
    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 82
    .line 83
    .line 84
    invoke-static {v3}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->m(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    .line 85
    move-result v3

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, v2, v3}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->prepareFramebuffer(II)V

    .line 89
    .line 90
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 91
    .line 92
    .line 93
    invoke-static {v2, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->s(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Z)V

    .line 94
    .line 95
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 96
    const/4 v2, 0x0

    .line 97
    .line 98
    .line 99
    invoke-static {v2, v2, v2, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 100
    .line 101
    const/16 v0, 0x4100

    .line 102
    .line 103
    .line 104
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 105
    .line 106
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 107
    .line 108
    .line 109
    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->n(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    .line 110
    move-result v0

    .line 111
    .line 112
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 113
    .line 114
    .line 115
    invoke-static {v2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->m(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    .line 116
    move-result v2

    .line 117
    .line 118
    .line 119
    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 120
    .line 121
    iget v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mFramebuffer:I

    .line 122
    .line 123
    .line 124
    const v2, 0x8d40

    .line 125
    .line 126
    .line 127
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 128
    .line 129
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->fullFrameRect:Lcom/narvii/video/gles/FullFrameRect;

    .line 130
    .line 131
    iget v3, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->textureId:I

    .line 132
    .line 133
    iget-object v4, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->sTMatrix:[F

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v3, v4}, Lcom/narvii/video/gles/FullFrameRect;->drawFrame(I[F)V

    .line 137
    .line 138
    .line 139
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 140
    .line 141
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->offlineFrameRect:Lcom/narvii/video/gles/FullFrameRect;

    .line 142
    .line 143
    iget v1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mOffscreenTexture:I

    .line 144
    .line 145
    sget-object v8, Lcom/narvii/video/gles/GlUtil;->IDENTITY_MATRIX:[F

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1, v8}, Lcom/narvii/video/gles/FullFrameRect;->drawFrame(I[F)V

    .line 149
    .line 150
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 151
    .line 152
    iget-object v2, v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mediaFrameAvailableListener:Lcom/narvii/chat/screenroom/widgets/GLVideoView$MediaFrameAvailableListener;

    .line 153
    .line 154
    if-eqz v2, :cond_4

    .line 155
    .line 156
    if-eqz p1, :cond_4

    .line 157
    .line 158
    iget v3, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mOffscreenTexture:I

    .line 159
    const/4 v4, 0x0

    .line 160
    .line 161
    iget-object v5, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 162
    .line 163
    .line 164
    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->n(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    .line 165
    move-result v6

    .line 166
    .line 167
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 168
    .line 169
    .line 170
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->m(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    .line 171
    move-result v7

    .line 172
    .line 173
    .line 174
    invoke-interface/range {v2 .. v8}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$MediaFrameAvailableListener;->onVideoFrameAvailable(IILjavax/microedition/khronos/egl/EGLContext;II[F)V

    .line 175
    :cond_4
    return-void

    .line 176
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 177
    throw p1
.end method

.method public declared-synchronized onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    const/4 p1, 0x1

    .line 3
    .line 4
    :try_start_0
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->updateSurface:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p0

    .line 9
    throw p1
.end method

.method public onPause()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 6
    const/4 v3, 0x0

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    .line 12
    .line 13
    iput-object v3, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 14
    .line 15
    :cond_0
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->fullFrameRect:Lcom/narvii/video/gles/FullFrameRect;

    .line 16
    const/4 v4, 0x0

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v4}, Lcom/narvii/video/gles/FullFrameRect;->release(Z)V

    .line 22
    .line 23
    iput-object v3, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->fullFrameRect:Lcom/narvii/video/gles/FullFrameRect;

    .line 24
    .line 25
    :cond_1
    iget v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mOffscreenTexture:I

    .line 26
    const/4 v3, -0x1

    .line 27
    .line 28
    if-lez v2, :cond_2

    .line 29
    .line 30
    aput v2, v1, v4

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 34
    .line 35
    iput v3, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mOffscreenTexture:I

    .line 36
    .line 37
    :cond_2
    iget v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mFramebuffer:I

    .line 38
    .line 39
    if-lez v2, :cond_3

    .line 40
    .line 41
    aput v2, v1, v4

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1, v4}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 45
    .line 46
    iput v3, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->mFramebuffer:I

    .line 47
    :cond_3
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->A(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p3}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->y(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 13
    const/4 p2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->s(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Z)V

    .line 17
    return-void
.end method

.method public declared-synchronized onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 4
    .line 5
    iget-boolean p1, p1, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isSurfaceInited:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/video/gles/FullFrameRect;

    .line 10
    .line 11
    new-instance p2, Lcom/narvii/video/gles/Texture2dProgram;

    .line 12
    .line 13
    sget-object v0, Lcom/narvii/video/gles/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/narvii/video/gles/Texture2dProgram$ProgramType;

    .line 14
    .line 15
    .line 16
    invoke-direct {p2, v0}, Lcom/narvii/video/gles/Texture2dProgram;-><init>(Lcom/narvii/video/gles/Texture2dProgram$ProgramType;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p2}, Lcom/narvii/video/gles/FullFrameRect;-><init>(Lcom/narvii/video/gles/Texture2dProgram;)V

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->fullFrameRect:Lcom/narvii/video/gles/FullFrameRect;

    .line 22
    .line 23
    new-instance p1, Lcom/narvii/video/gles/FullFrameRect;

    .line 24
    .line 25
    new-instance p2, Lcom/narvii/video/gles/Texture2dProgram;

    .line 26
    .line 27
    sget-object v0, Lcom/narvii/video/gles/Texture2dProgram$ProgramType;->TEXTURE_2D:Lcom/narvii/video/gles/Texture2dProgram$ProgramType;

    .line 28
    .line 29
    .line 30
    invoke-direct {p2, v0}, Lcom/narvii/video/gles/Texture2dProgram;-><init>(Lcom/narvii/video/gles/Texture2dProgram$ProgramType;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, p2}, Lcom/narvii/video/gles/FullFrameRect;-><init>(Lcom/narvii/video/gles/Texture2dProgram;)V

    .line 34
    .line 35
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->offlineFrameRect:Lcom/narvii/video/gles/FullFrameRect;

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->fullFrameRect:Lcom/narvii/video/gles/FullFrameRect;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/narvii/video/gles/FullFrameRect;->createTextureObject()I

    .line 41
    move-result p1

    .line 42
    .line 43
    iput p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->textureId:I

    .line 44
    .line 45
    new-instance p1, Landroid/graphics/SurfaceTexture;

    .line 46
    .line 47
    iget p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->textureId:I

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, p2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 51
    .line 52
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 56
    .line 57
    new-instance p1, Landroid/view/Surface;

    .line 58
    .line 59
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 60
    .line 61
    .line 62
    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 63
    .line 64
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->surface:Landroid/view/Surface;

    .line 65
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    const/4 p1, 0x0

    .line 67
    .line 68
    :try_start_1
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->updateSurface:Z

    .line 69
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    .line 71
    :try_start_2
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 72
    .line 73
    new-instance p2, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer$1;

    .line 74
    .line 75
    .line 76
    invoke-direct {p2, p0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer$1;-><init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    .line 81
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$VideoRenderer;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 82
    const/4 p2, 0x1

    .line 83
    .line 84
    iput-boolean p2, p1, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isSurfaceInited:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    goto :goto_0

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    goto :goto_1

    .line 88
    :catchall_1
    move-exception p1

    .line 89
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 90
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 91
    :cond_0
    :goto_0
    monitor-exit p0

    .line 92
    return-void

    .line 93
    :goto_1
    monitor-exit p0

    .line 94
    throw p1
.end method
