.class public Lio/agora/rtc/video/GlRectDrawer;
.super Ljava/lang/Object;
.source "GlRectDrawer.java"

# interfaces
.implements Lio/agora/rtc/video/RendererCommon$GlDrawer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/video/GlRectDrawer$Shader;
    }
.end annotation


# static fields
.field private static final FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

.field private static final FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

.field private static final OES_FRAGMENT_SHADER_STRING:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oes_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(oes_tex, interp_tc);\n}\n"

.field private static final RGB_FRAGMENT_SHADER_STRING:Ljava/lang/String; = "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D rgb_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(rgb_tex, interp_tc);\n}\n"

.field private static final VERTEX_SHADER_STRING:Ljava/lang/String; = "varying vec2 interp_tc;\nattribute vec4 in_pos;\nattribute vec4 in_tc;\n\nuniform mat4 texMatrix;\n\nvoid main() {\n    gl_Position = in_pos;\n    interp_tc = (texMatrix * in_tc).xy;\n}\n"

.field private static final YUV_FRAGMENT_SHADER_STRING:Ljava/lang/String; = "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\n\nvoid main() {\n  float y = texture2D(y_tex, interp_tc).r;\n  float u = texture2D(u_tex, interp_tc).r - 0.5;\n  float v = texture2D(v_tex, interp_tc).r - 0.5;\n  gl_FragColor = vec4(y + 1.403 * v,                       y - 0.344 * u - 0.714 * v,                       y + 1.77 * u, 1);\n}\n"


# instance fields
.field private mPosCoordinate:Ljava/nio/FloatBuffer;

.field private mTexCoordinate:Ljava/nio/FloatBuffer;

.field private final shaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/agora/rtc/video/GlRectDrawer$Shader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 92
    fill-array-data v1, :array_0

    .line 93
    invoke-static {v1}, Lio/agora/rtc/gl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lio/agora/rtc/video/GlRectDrawer;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    new-array v0, v0, [F

    .line 101
    fill-array-data v0, :array_1

    .line 102
    invoke-static {v0}, Lio/agora/rtc/gl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lio/agora/rtc/video/GlRectDrawer;->FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 110
    fill-array-data v1, :array_0

    .line 111
    invoke-static {v1}, Lio/agora/rtc/gl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lio/agora/rtc/video/GlRectDrawer;->mTexCoordinate:Ljava/nio/FloatBuffer;

    new-array v0, v0, [F

    .line 119
    fill-array-data v0, :array_1

    .line 120
    invoke-static {v0}, Lio/agora/rtc/gl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/video/GlRectDrawer;->mPosCoordinate:Ljava/nio/FloatBuffer;

    .line 139
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/video/GlRectDrawer;->shaders:Ljava/util/Map;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private ComputePosVertexAttribArray(IIII)[F
    .locals 2

    sub-int p4, p2, p4

    int-to-float p4, p4

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p4, p4, v0

    int-to-float p2, p2

    div-float/2addr p4, p2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p4, p2

    int-to-float p3, p3

    mul-float p3, p3, v0

    int-to-float p1, p1

    div-float/2addr p3, p1

    sub-float/2addr p3, p2

    const/16 p1, 0x8

    new-array p1, p1, [F

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    aput v0, p1, v1

    const/4 v1, 0x1

    aput p4, p1, v1

    const/4 v1, 0x2

    aput p3, p1, v1

    const/4 v1, 0x3

    aput p4, p1, v1

    const/4 p4, 0x4

    aput v0, p1, p4

    const/4 p4, 0x5

    aput p2, p1, p4

    const/4 p4, 0x6

    aput p3, p1, p4

    const/4 p3, 0x7

    aput p2, p1, p3

    return-object p1
.end method

.method private ComputeVertexAttribArray(IIII)[F
    .locals 16

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v1, p4

    int-to-float v1, v1

    div-float/2addr v0, v1

    move/from16 v1, p1

    int-to-float v1, v1

    move/from16 v2, p2

    int-to-float v2, v2

    div-float v3, v1, v2

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v0

    if-ltz v3, :cond_0

    mul-float v2, v2, v0

    sub-float v0, v1, v2

    div-float/2addr v0, v13

    div-float/2addr v0, v1

    new-array v1, v12, [F

    aput v0, v1, v11

    aput v14, v1, v10

    sub-float v2, v15, v0

    aput v2, v1, v9

    aput v14, v1, v8

    aput v0, v1, v7

    aput v15, v1, v6

    aput v2, v1, v5

    aput v15, v1, v4

    return-object v1

    :cond_0
    div-float/2addr v1, v0

    sub-float v0, v2, v1

    div-float/2addr v0, v13

    div-float/2addr v0, v2

    new-array v1, v12, [F

    aput v14, v1, v11

    aput v0, v1, v10

    aput v15, v1, v9

    aput v0, v1, v8

    aput v14, v1, v7

    sub-float v0, v15, v0

    aput v0, v1, v6

    aput v15, v1, v5

    aput v0, v1, v4

    return-object v1
.end method

.method private drawRectangle(IIII)V
    .locals 0

    .line 255
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 p1, 0x5

    const/4 p2, 0x0

    const/4 p3, 0x4

    .line 256
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method private prepareShader(Ljava/lang/String;[F)V
    .locals 1

    .line 260
    sget-object v0, Lio/agora/rtc/video/GlRectDrawer;->FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    invoke-direct {p0, p1, p2, v0}, Lio/agora/rtc/video/GlRectDrawer;->prepareShader(Ljava/lang/String;[FLjava/nio/FloatBuffer;)V

    return-void
.end method

.method private prepareShader(Ljava/lang/String;[FLjava/nio/FloatBuffer;)V
    .locals 6

    .line 265
    iget-object v0, p0, Lio/agora/rtc/video/GlRectDrawer;->shaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lio/agora/rtc/video/GlRectDrawer;->shaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtc/video/GlRectDrawer$Shader;

    goto :goto_1

    .line 269
    :cond_0
    new-instance v0, Lio/agora/rtc/video/GlRectDrawer$Shader;

    invoke-direct {v0, p1}, Lio/agora/rtc/video/GlRectDrawer$Shader;-><init>(Ljava/lang/String;)V

    .line 270
    iget-object v4, p0, Lio/agora/rtc/video/GlRectDrawer;->shaders:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v4, v0, Lio/agora/rtc/video/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    invoke-virtual {v4}, Lio/agora/rtc/gl/GlShader;->useProgram()V

    const-string v4, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\n\nvoid main() {\n  float y = texture2D(y_tex, interp_tc).r;\n  float u = texture2D(u_tex, interp_tc).r - 0.5;\n  float v = texture2D(v_tex, interp_tc).r - 0.5;\n  gl_FragColor = vec4(y + 1.403 * v,                       y - 0.344 * u - 0.714 * v,                       y + 1.77 * u, 1);\n}\n"

    if-ne p1, v4, :cond_1

    .line 274
    iget-object p1, v0, Lio/agora/rtc/video/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string v4, "y_tex"

    invoke-virtual {p1, v4}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 275
    iget-object p1, v0, Lio/agora/rtc/video/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string v4, "u_tex"

    invoke-virtual {p1, v4}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 276
    iget-object p1, v0, Lio/agora/rtc/video/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string v4, "v_tex"

    invoke-virtual {p1, v4}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    :cond_1
    const-string v4, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D rgb_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(rgb_tex, interp_tc);\n}\n"

    if-ne p1, v4, :cond_2

    .line 278
    iget-object p1, v0, Lio/agora/rtc/video/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string v4, "rgb_tex"

    invoke-virtual {p1, v4}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    :cond_2
    const-string v4, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oes_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(oes_tex, interp_tc);\n}\n"

    if-ne p1, v4, :cond_3

    .line 280
    iget-object p1, v0, Lio/agora/rtc/video/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string v4, "oes_tex"

    invoke-virtual {p1, v4}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :goto_0
    const-string p1, "Initialize fragment shader uniform values."

    .line 284
    invoke-static {p1}, Lio/agora/rtc/gl/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    move-object p1, v0

    .line 287
    :goto_1
    iget-object v0, p1, Lio/agora/rtc/video/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    sget-object v4, Lio/agora/rtc/video/GlRectDrawer;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    const-string v5, "in_pos"

    invoke-virtual {v0, v5, v2, v4}, Lio/agora/rtc/gl/GlShader;->setVertexAttribArray(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 288
    iget-object v0, p1, Lio/agora/rtc/video/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string v4, "in_tc"

    invoke-virtual {v0, v4, v2, p3}, Lio/agora/rtc/gl/GlShader;->setVertexAttribArray(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 290
    iget-object p3, p1, Lio/agora/rtc/video/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    invoke-virtual {p3}, Lio/agora/rtc/gl/GlShader;->useProgram()V

    .line 292
    iget p1, p1, Lio/agora/rtc/video/GlRectDrawer$Shader;->texMatrixLocation:I

    invoke-static {p1, v1, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void

    .line 282
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown fragment shader: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private prepareShader(Ljava/lang/String;[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 5

    .line 297
    iget-object v0, p0, Lio/agora/rtc/video/GlRectDrawer;->shaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lio/agora/rtc/video/GlRectDrawer;->shaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtc/video/GlRectDrawer$Shader;

    goto :goto_1

    .line 301
    :cond_0
    new-instance v0, Lio/agora/rtc/video/GlRectDrawer$Shader;

    invoke-direct {v0, p1}, Lio/agora/rtc/video/GlRectDrawer$Shader;-><init>(Ljava/lang/String;)V

    .line 302
    iget-object v4, p0, Lio/agora/rtc/video/GlRectDrawer;->shaders:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v4, v0, Lio/agora/rtc/video/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    invoke-virtual {v4}, Lio/agora/rtc/gl/GlShader;->useProgram()V

    const-string v4, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\n\nvoid main() {\n  float y = texture2D(y_tex, interp_tc).r;\n  float u = texture2D(u_tex, interp_tc).r - 0.5;\n  float v = texture2D(v_tex, interp_tc).r - 0.5;\n  gl_FragColor = vec4(y + 1.403 * v,                       y - 0.344 * u - 0.714 * v,                       y + 1.77 * u, 1);\n}\n"

    if-ne p1, v4, :cond_1

    .line 306
    iget-object p1, v0, Lio/agora/rtc/video/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string v4, "y_tex"

    invoke-virtual {p1, v4}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 307
    iget-object p1, v0, Lio/agora/rtc/video/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string v4, "u_tex"

    invoke-virtual {p1, v4}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 308
    iget-object p1, v0, Lio/agora/rtc/video/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string v4, "v_tex"

    invoke-virtual {p1, v4}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    :cond_1
    const-string v4, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D rgb_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(rgb_tex, interp_tc);\n}\n"

    if-ne p1, v4, :cond_2

    .line 310
    iget-object p1, v0, Lio/agora/rtc/video/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string v4, "rgb_tex"

    invoke-virtual {p1, v4}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    :cond_2
    const-string v4, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oes_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(oes_tex, interp_tc);\n}\n"

    if-ne p1, v4, :cond_3

    .line 312
    iget-object p1, v0, Lio/agora/rtc/video/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string v4, "oes_tex"

    invoke-virtual {p1, v4}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :goto_0
    const-string p1, "Initialize fragment shader uniform values."

    .line 316
    invoke-static {p1}, Lio/agora/rtc/gl/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    move-object p1, v0

    .line 319
    :goto_1
    iget-object v0, p1, Lio/agora/rtc/video/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string v4, "in_pos"

    invoke-virtual {v0, v4, v2, p4}, Lio/agora/rtc/gl/GlShader;->setVertexAttribArray(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 320
    iget-object p4, p1, Lio/agora/rtc/video/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string v0, "in_tc"

    invoke-virtual {p4, v0, v2, p3}, Lio/agora/rtc/gl/GlShader;->setVertexAttribArray(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 322
    iget-object p3, p1, Lio/agora/rtc/video/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    invoke-virtual {p3}, Lio/agora/rtc/gl/GlShader;->useProgram()V

    .line 324
    iget p1, p1, Lio/agora/rtc/video/GlRectDrawer$Shader;->texMatrixLocation:I

    invoke-static {p1, v1, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void

    .line 314
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown fragment shader: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public drawOes(I[FIIII)V
    .locals 1

    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oes_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(oes_tex, interp_tc);\n}\n"

    .line 210
    invoke-direct {p0, v0, p2}, Lio/agora/rtc/video/GlRectDrawer;->prepareShader(Ljava/lang/String;[F)V

    const p2, 0x84c0

    .line 211
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const p2, 0x8d65

    .line 214
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 215
    invoke-direct {p0, p3, p4, p5, p6}, Lio/agora/rtc/video/GlRectDrawer;->drawRectangle(IIII)V

    const/4 p1, 0x0

    .line 216
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public drawOes(I[FIIIIII)V
    .locals 0

    .line 176
    invoke-direct {p0, p5, p6, p7, p8}, Lio/agora/rtc/video/GlRectDrawer;->ComputeVertexAttribArray(IIII)[F

    move-result-object p5

    .line 177
    invoke-static {p5}, Lio/agora/rtc/gl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p5

    iput-object p5, p0, Lio/agora/rtc/video/GlRectDrawer;->mTexCoordinate:Ljava/nio/FloatBuffer;

    .line 178
    iget-object p5, p0, Lio/agora/rtc/video/GlRectDrawer;->mTexCoordinate:Ljava/nio/FloatBuffer;

    const-string p6, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oes_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(oes_tex, interp_tc);\n}\n"

    invoke-direct {p0, p6, p2, p5}, Lio/agora/rtc/video/GlRectDrawer;->prepareShader(Ljava/lang/String;[FLjava/nio/FloatBuffer;)V

    const p2, 0x84c0

    .line 179
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const p2, 0x8d65

    .line 182
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 183
    invoke-direct {p0, p3, p4, p7, p8}, Lio/agora/rtc/video/GlRectDrawer;->drawRectangle(IIII)V

    const/4 p1, 0x0

    .line 184
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public drawOes(I[FIIIIIIII)V
    .locals 0

    .line 191
    invoke-direct {p0, p5, p6, p9, p10}, Lio/agora/rtc/video/GlRectDrawer;->ComputeVertexAttribArray(IIII)[F

    move-result-object p5

    .line 192
    invoke-direct {p0, p7, p8, p9, p10}, Lio/agora/rtc/video/GlRectDrawer;->ComputePosVertexAttribArray(IIII)[F

    move-result-object p6

    .line 193
    invoke-static {p5}, Lio/agora/rtc/gl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p5

    iput-object p5, p0, Lio/agora/rtc/video/GlRectDrawer;->mTexCoordinate:Ljava/nio/FloatBuffer;

    .line 194
    invoke-static {p6}, Lio/agora/rtc/gl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p5

    iput-object p5, p0, Lio/agora/rtc/video/GlRectDrawer;->mPosCoordinate:Ljava/nio/FloatBuffer;

    .line 195
    iget-object p5, p0, Lio/agora/rtc/video/GlRectDrawer;->mTexCoordinate:Ljava/nio/FloatBuffer;

    iget-object p6, p0, Lio/agora/rtc/video/GlRectDrawer;->mPosCoordinate:Ljava/nio/FloatBuffer;

    const-string p9, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oes_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(oes_tex, interp_tc);\n}\n"

    invoke-direct {p0, p9, p2, p5, p6}, Lio/agora/rtc/video/GlRectDrawer;->prepareShader(Ljava/lang/String;[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    const p2, 0x84c0

    .line 196
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const p2, 0x8d65

    .line 199
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 200
    invoke-direct {p0, p3, p4, p7, p8}, Lio/agora/rtc/video/GlRectDrawer;->drawRectangle(IIII)V

    const/4 p1, 0x0

    .line 201
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public drawRgb(I[FIIII)V
    .locals 1

    const-string v0, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D rgb_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(rgb_tex, interp_tc);\n}\n"

    .line 225
    invoke-direct {p0, v0, p2}, Lio/agora/rtc/video/GlRectDrawer;->prepareShader(Ljava/lang/String;[F)V

    const p2, 0x84c0

    .line 226
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 p2, 0xde1

    .line 227
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 228
    invoke-direct {p0, p3, p4, p5, p6}, Lio/agora/rtc/video/GlRectDrawer;->drawRectangle(IIII)V

    const/4 p1, 0x0

    .line 230
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public drawRgb(I[FIIIIII)V
    .locals 0

    .line 144
    invoke-direct {p0, p5, p6, p7, p8}, Lio/agora/rtc/video/GlRectDrawer;->ComputeVertexAttribArray(IIII)[F

    move-result-object p5

    .line 145
    invoke-static {p5}, Lio/agora/rtc/gl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p5

    iput-object p5, p0, Lio/agora/rtc/video/GlRectDrawer;->mTexCoordinate:Ljava/nio/FloatBuffer;

    .line 146
    iget-object p5, p0, Lio/agora/rtc/video/GlRectDrawer;->mTexCoordinate:Ljava/nio/FloatBuffer;

    const-string p6, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D rgb_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(rgb_tex, interp_tc);\n}\n"

    invoke-direct {p0, p6, p2, p5}, Lio/agora/rtc/video/GlRectDrawer;->prepareShader(Ljava/lang/String;[FLjava/nio/FloatBuffer;)V

    const p2, 0x84c0

    .line 147
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 p2, 0xde1

    .line 148
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 149
    invoke-direct {p0, p3, p4, p7, p8}, Lio/agora/rtc/video/GlRectDrawer;->drawRectangle(IIII)V

    const/4 p1, 0x0

    .line 151
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public drawRgb(I[FIIIIIIII)V
    .locals 0

    .line 158
    invoke-direct {p0, p5, p6, p9, p10}, Lio/agora/rtc/video/GlRectDrawer;->ComputeVertexAttribArray(IIII)[F

    move-result-object p5

    .line 159
    invoke-direct {p0, p7, p8, p9, p10}, Lio/agora/rtc/video/GlRectDrawer;->ComputePosVertexAttribArray(IIII)[F

    move-result-object p6

    .line 160
    invoke-static {p5}, Lio/agora/rtc/gl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p5

    iput-object p5, p0, Lio/agora/rtc/video/GlRectDrawer;->mTexCoordinate:Ljava/nio/FloatBuffer;

    .line 161
    invoke-static {p6}, Lio/agora/rtc/gl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p5

    iput-object p5, p0, Lio/agora/rtc/video/GlRectDrawer;->mPosCoordinate:Ljava/nio/FloatBuffer;

    .line 163
    iget-object p5, p0, Lio/agora/rtc/video/GlRectDrawer;->mTexCoordinate:Ljava/nio/FloatBuffer;

    iget-object p6, p0, Lio/agora/rtc/video/GlRectDrawer;->mPosCoordinate:Ljava/nio/FloatBuffer;

    const-string p9, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D rgb_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(rgb_tex, interp_tc);\n}\n"

    invoke-direct {p0, p9, p2, p5, p6}, Lio/agora/rtc/video/GlRectDrawer;->prepareShader(Ljava/lang/String;[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    const p2, 0x84c0

    .line 164
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 p2, 0xde1

    .line 165
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 166
    invoke-direct {p0, p3, p4, p7, p8}, Lio/agora/rtc/video/GlRectDrawer;->drawRectangle(IIII)V

    const/4 p1, 0x0

    .line 168
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public drawYuv([I[FIIII)V
    .locals 4

    const-string v0, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\n\nvoid main() {\n  float y = texture2D(y_tex, interp_tc).r;\n  float u = texture2D(u_tex, interp_tc).r - 0.5;\n  float v = texture2D(v_tex, interp_tc).r - 0.5;\n  gl_FragColor = vec4(y + 1.403 * v,                       y - 0.344 * u - 0.714 * v,                       y + 1.77 * u, 1);\n}\n"

    .line 239
    invoke-direct {p0, v0, p2}, Lio/agora/rtc/video/GlRectDrawer;->prepareShader(Ljava/lang/String;[F)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xde1

    const v2, 0x84c0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    add-int/2addr v2, v0

    .line 242
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 243
    aget v2, p1, v0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_0
    invoke-direct {p0, p3, p4, p5, p6}, Lio/agora/rtc/video/GlRectDrawer;->drawRectangle(IIII)V

    const/4 p1, 0x0

    :goto_1
    if-ge p1, v3, :cond_1

    add-int p3, p1, v2

    .line 248
    invoke-static {p3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 249
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public release()V
    .locals 2

    .line 377
    iget-object v0, p0, Lio/agora/rtc/video/GlRectDrawer;->shaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/agora/rtc/video/GlRectDrawer$Shader;

    .line 378
    iget-object v1, v1, Lio/agora/rtc/video/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    invoke-virtual {v1}, Lio/agora/rtc/gl/GlShader;->release()V

    goto :goto_0

    .line 380
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/video/GlRectDrawer;->shaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
