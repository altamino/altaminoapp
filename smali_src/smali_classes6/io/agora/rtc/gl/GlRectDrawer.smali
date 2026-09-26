.class public Lio/agora/rtc/gl/GlRectDrawer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/gl/RendererCommon$GlDrawer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/gl/GlRectDrawer$Shader;
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
            "Lio/agora/rtc/gl/GlRectDrawer$Shader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    .line 4
    new-array v1, v0, [F

    .line 5
    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lio/agora/rtc/gl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    sput-object v1, Lio/agora/rtc/gl/GlRectDrawer;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    .line 14
    .line 15
    new-array v0, v0, [F

    .line 16
    .line 17
    .line 18
    fill-array-data v0, :array_1

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lio/agora/rtc/gl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    sput-object v0, Lio/agora/rtc/gl/GlRectDrawer;->FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    .line 25
    return-void

    .line 26
    nop

    .line 27
    .line 28
    .line 29
    .line 30
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    new-array v1, v0, [F

    .line 8
    .line 9
    .line 10
    fill-array-data v1, :array_0

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lio/agora/rtc/gl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    iput-object v1, p0, Lio/agora/rtc/gl/GlRectDrawer;->mTexCoordinate:Ljava/nio/FloatBuffer;

    .line 17
    .line 18
    new-array v0, v0, [F

    .line 19
    .line 20
    .line 21
    fill-array-data v0, :array_1

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lio/agora/rtc/gl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iput-object v0, p0, Lio/agora/rtc/gl/GlRectDrawer;->mPosCoordinate:Ljava/nio/FloatBuffer;

    .line 28
    .line 29
    new-instance v0, Ljava/util/IdentityHashMap;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 33
    .line 34
    iput-object v0, p0, Lio/agora/rtc/gl/GlRectDrawer;->shaders:Ljava/util/Map;

    .line 35
    return-void

    .line 36
    nop

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
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
    .line 73
    .line 74
    .line 75
    .line 76
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
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bigWidth",
            "bigHeight",
            "smallWidth",
            "smallHeight"
        }
    .end annotation

    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne p2, p4, :cond_0

    move p4, v1

    goto :goto_0

    :cond_0
    sub-int p4, p2, p4

    int-to-float p4, p4

    mul-float/2addr p4, v0

    int-to-float p2, p2

    div-float/2addr p4, p2

    sub-float/2addr p4, v2

    :goto_0
    if-ne p1, p3, :cond_1

    move p2, v2

    goto :goto_1

    :cond_1
    int-to-float p2, p3

    mul-float/2addr p2, v0

    int-to-float p1, p1

    div-float/2addr p2, p1

    sub-float/2addr p2, v2

    :goto_1
    const/16 p1, 0x8

    new-array p1, p1, [F

    const/4 p3, 0x0

    aput v1, p1, p3

    const/4 p3, 0x1

    aput p4, p1, p3

    const/4 p3, 0x2

    aput p2, p1, p3

    const/4 p3, 0x3

    aput p4, p1, p3

    const/4 p3, 0x4

    aput v1, p1, p3

    const/4 p3, 0x5

    aput v2, p1, p3

    const/4 p3, 0x6

    aput p2, p1, p3

    const/4 p2, 0x7

    aput v2, p1, p2

    return-object p1
.end method

.method private ComputeVertexAttribArray(IIII)[F
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcWidth",
            "srcHeight",
            "targetWidth",
            "targetHeight"
        }
    .end annotation

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

    cmpl-float v3, v3, v0

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

    if-ltz v3, :cond_0

    mul-float/2addr v2, v0

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "width",
            "height"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 4
    const/4 p1, 0x0

    .line 5
    const/4 p2, 0x4

    .line 6
    const/4 p3, 0x5

    .line 7
    .line 8
    .line 9
    invoke-static {p3, p1, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 10
    return-void
.end method

.method private prepareShader(Ljava/lang/String;[F)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fragmentShader",
            "texMatrix"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc/gl/GlRectDrawer;->shaders:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/gl/GlRectDrawer;->shaders:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtc/gl/GlRectDrawer$Shader;

    goto/16 :goto_1

    .line 3
    :cond_0
    new-instance v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;

    invoke-direct {v0, p1}, Lio/agora/rtc/gl/GlRectDrawer$Shader;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/agora/rtc/gl/GlRectDrawer;->shaders:Ljava/util/Map;

    .line 4
    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    .line 5
    invoke-virtual {v3}, Lio/agora/rtc/gl/GlShader;->useProgram()V

    const-string/jumbo v3, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\n\nvoid main() {\n  float y = texture2D(y_tex, interp_tc).r;\n  float u = texture2D(u_tex, interp_tc).r - 0.5;\n  float v = texture2D(v_tex, interp_tc).r - 0.5;\n  gl_FragColor = vec4(y + 1.403 * v,                       y - 0.344 * u - 0.714 * v,                       y + 1.77 * u, 1);\n}\n"

    .line 6
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    iget-object p1, v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string/jumbo v3, "y_tex"

    .line 7
    invoke-virtual {p1, v3}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object p1, v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string/jumbo v3, "u_tex"

    .line 8
    invoke-virtual {p1, v3}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object p1, v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string/jumbo v3, "v_tex"

    .line 9
    invoke-virtual {p1, v3}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D rgb_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(rgb_tex, interp_tc);\n}\n"

    .line 10
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p1, v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string/jumbo v3, "rgb_tex"

    .line 11
    invoke-virtual {p1, v3}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    :cond_2
    const-string v3, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oes_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(oes_tex, interp_tc);\n}\n"

    .line 12
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p1, v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string/jumbo v3, "oes_tex"

    .line 13
    invoke-virtual {p1, v3}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :goto_0
    const-string p1, "Initialize fragment shader uniform values."

    .line 14
    invoke-static {p1}, Lio/agora/rtc/gl/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    iget-object p1, v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string v3, "in_pos"

    sget-object v5, Lio/agora/rtc/gl/GlRectDrawer;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    .line 15
    invoke-virtual {p1, v3, v4, v5}, Lio/agora/rtc/gl/GlShader;->setVertexAttribArray(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    iget-object p1, v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string v3, "in_tc"

    sget-object v5, Lio/agora/rtc/gl/GlRectDrawer;->FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    .line 16
    invoke-virtual {p1, v3, v4, v5}, Lio/agora/rtc/gl/GlShader;->setVertexAttribArray(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    move-object p1, v0

    .line 17
    :goto_1
    iget-object v0, p1, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    invoke-virtual {v0}, Lio/agora/rtc/gl/GlShader;->useProgram()V

    .line 18
    iget p1, p1, Lio/agora/rtc/gl/GlRectDrawer$Shader;->texMatrixLocation:I

    invoke-static {p1, v1, v2, p2, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void

    .line 19
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown fragment shader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private prepareShader(Ljava/lang/String;[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fragmentShader",
            "texMatrix",
            "texCoord",
            "posCoord"
        }
    .end annotation

    iget-object v0, p0, Lio/agora/rtc/gl/GlRectDrawer;->shaders:Ljava/util/Map;

    .line 20
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/gl/GlRectDrawer;->shaders:Ljava/util/Map;

    .line 21
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtc/gl/GlRectDrawer$Shader;

    goto :goto_1

    .line 22
    :cond_0
    new-instance v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;

    invoke-direct {v0, p1}, Lio/agora/rtc/gl/GlRectDrawer$Shader;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lio/agora/rtc/gl/GlRectDrawer;->shaders:Ljava/util/Map;

    .line 23
    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    .line 24
    invoke-virtual {v4}, Lio/agora/rtc/gl/GlShader;->useProgram()V

    const-string/jumbo v4, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\n\nvoid main() {\n  float y = texture2D(y_tex, interp_tc).r;\n  float u = texture2D(u_tex, interp_tc).r - 0.5;\n  float v = texture2D(v_tex, interp_tc).r - 0.5;\n  gl_FragColor = vec4(y + 1.403 * v,                       y - 0.344 * u - 0.714 * v,                       y + 1.77 * u, 1);\n}\n"

    if-ne p1, v4, :cond_1

    iget-object p1, v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string/jumbo v4, "y_tex"

    .line 25
    invoke-virtual {p1, v4}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object p1, v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string/jumbo v4, "u_tex"

    .line 26
    invoke-virtual {p1, v4}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object p1, v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string/jumbo v4, "v_tex"

    .line 27
    invoke-virtual {p1, v4}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D rgb_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(rgb_tex, interp_tc);\n}\n"

    if-ne p1, v4, :cond_2

    iget-object p1, v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string/jumbo v4, "rgb_tex"

    .line 28
    invoke-virtual {p1, v4}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    :cond_2
    const-string v4, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oes_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(oes_tex, interp_tc);\n}\n"

    if-ne p1, v4, :cond_3

    iget-object p1, v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string/jumbo v4, "oes_tex"

    .line 29
    invoke-virtual {p1, v4}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :goto_0
    const-string p1, "Initialize fragment shader uniform values."

    .line 30
    invoke-static {p1}, Lio/agora/rtc/gl/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    move-object p1, v0

    .line 31
    :goto_1
    iget-object v0, p1, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string v4, "in_pos"

    invoke-virtual {v0, v4, v2, p4}, Lio/agora/rtc/gl/GlShader;->setVertexAttribArray(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 32
    iget-object p4, p1, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string v0, "in_tc"

    invoke-virtual {p4, v0, v2, p3}, Lio/agora/rtc/gl/GlShader;->setVertexAttribArray(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 33
    iget-object p3, p1, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    invoke-virtual {p3}, Lio/agora/rtc/gl/GlShader;->useProgram()V

    .line 34
    iget p1, p1, Lio/agora/rtc/gl/GlRectDrawer$Shader;->texMatrixLocation:I

    invoke-static {p1, v1, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void

    .line 35
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
.method public drawOes(I[FIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "oesTextureId",
            "texMatrix",
            "frameWidth",
            "frameHeight",
            "viewportX",
            "viewportY",
            "viewportWidth",
            "viewportHeight"
        }
    .end annotation

    const-string p3, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oes_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(oes_tex, interp_tc);\n}\n"

    .line 1
    invoke-direct {p0, p3, p2}, Lio/agora/rtc/gl/GlRectDrawer;->prepareShader(Ljava/lang/String;[F)V

    const p2, 0x84c0

    .line 2
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const p2, 0x8d65

    .line 3
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 4
    invoke-direct {p0, p5, p6, p7, p8}, Lio/agora/rtc/gl/GlRectDrawer;->drawRectangle(IIII)V

    const/4 p1, 0x0

    .line 5
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public drawOes(I[FIIIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "oesTextureId",
            "texMatrix",
            "srcWidth",
            "srcHeight",
            "x",
            "y",
            "dstWidth",
            "dstHeight",
            "dstWidth_ori",
            "dstHeight_ori"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p3, p4, p9, p10}, Lio/agora/rtc/gl/GlRectDrawer;->ComputeVertexAttribArray(IIII)[F

    move-result-object p3

    .line 7
    invoke-static {p3}, Lio/agora/rtc/gl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p3

    iput-object p3, p0, Lio/agora/rtc/gl/GlRectDrawer;->mTexCoordinate:Ljava/nio/FloatBuffer;

    if-ne p9, p7, :cond_1

    if-eq p10, p8, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Lio/agora/rtc/gl/GlRectDrawer;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    iput-object p3, p0, Lio/agora/rtc/gl/GlRectDrawer;->mPosCoordinate:Ljava/nio/FloatBuffer;

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    invoke-direct {p0, p7, p8, p9, p10}, Lio/agora/rtc/gl/GlRectDrawer;->ComputePosVertexAttribArray(IIII)[F

    move-result-object p3

    .line 9
    invoke-static {p3}, Lio/agora/rtc/gl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p3

    iput-object p3, p0, Lio/agora/rtc/gl/GlRectDrawer;->mPosCoordinate:Ljava/nio/FloatBuffer;

    :goto_1
    iget-object p3, p0, Lio/agora/rtc/gl/GlRectDrawer;->mTexCoordinate:Ljava/nio/FloatBuffer;

    iget-object p4, p0, Lio/agora/rtc/gl/GlRectDrawer;->mPosCoordinate:Ljava/nio/FloatBuffer;

    const-string p9, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oes_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(oes_tex, interp_tc);\n}\n"

    .line 10
    invoke-direct {p0, p9, p2, p3, p4}, Lio/agora/rtc/gl/GlRectDrawer;->prepareShader(Ljava/lang/String;[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    const p2, 0x84c0

    .line 11
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const p2, 0x8d65

    .line 12
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 13
    invoke-direct {p0, p5, p6, p7, p8}, Lio/agora/rtc/gl/GlRectDrawer;->drawRectangle(IIII)V

    const/4 p1, 0x0

    .line 14
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public drawRgb(I[FIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureId",
            "texMatrix",
            "frameWidth",
            "frameHeight",
            "viewportX",
            "viewportY",
            "viewportWidth",
            "viewportHeight"
        }
    .end annotation

    const-string/jumbo p3, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D rgb_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(rgb_tex, interp_tc);\n}\n"

    .line 1
    invoke-direct {p0, p3, p2}, Lio/agora/rtc/gl/GlRectDrawer;->prepareShader(Ljava/lang/String;[F)V

    const p2, 0x84c0

    .line 2
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 p2, 0xde1

    .line 3
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 4
    invoke-direct {p0, p5, p6, p7, p8}, Lio/agora/rtc/gl/GlRectDrawer;->drawRectangle(IIII)V

    const/4 p1, 0x0

    .line 5
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public drawRgb(I[FIIIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureId",
            "texMatrix",
            "srcWidth",
            "srcHeight",
            "x",
            "y",
            "dstWidth",
            "dstHeight",
            "dstWidth_ori",
            "dstHeight_ori"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p3, p4, p9, p10}, Lio/agora/rtc/gl/GlRectDrawer;->ComputeVertexAttribArray(IIII)[F

    move-result-object p3

    if-ne p9, p7, :cond_1

    if-eq p10, p8, :cond_0

    goto :goto_0

    :cond_0
    sget-object p4, Lio/agora/rtc/gl/GlRectDrawer;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    iput-object p4, p0, Lio/agora/rtc/gl/GlRectDrawer;->mPosCoordinate:Ljava/nio/FloatBuffer;

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    invoke-direct {p0, p7, p8, p9, p10}, Lio/agora/rtc/gl/GlRectDrawer;->ComputePosVertexAttribArray(IIII)[F

    move-result-object p4

    .line 8
    invoke-static {p4}, Lio/agora/rtc/gl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p4

    iput-object p4, p0, Lio/agora/rtc/gl/GlRectDrawer;->mPosCoordinate:Ljava/nio/FloatBuffer;

    .line 9
    :goto_1
    invoke-static {p3}, Lio/agora/rtc/gl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p3

    iput-object p3, p0, Lio/agora/rtc/gl/GlRectDrawer;->mTexCoordinate:Ljava/nio/FloatBuffer;

    const-string/jumbo p4, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D rgb_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(rgb_tex, interp_tc);\n}\n"

    iget-object p9, p0, Lio/agora/rtc/gl/GlRectDrawer;->mPosCoordinate:Ljava/nio/FloatBuffer;

    .line 10
    invoke-direct {p0, p4, p2, p3, p9}, Lio/agora/rtc/gl/GlRectDrawer;->prepareShader(Ljava/lang/String;[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    const p2, 0x84c0

    .line 11
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 p2, 0xde1

    .line 12
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 13
    invoke-direct {p0, p5, p6, p7, p8}, Lio/agora/rtc/gl/GlRectDrawer;->drawRectangle(IIII)V

    const/4 p1, 0x0

    .line 14
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public drawYuv([I[FIIIIII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "yuvTextures",
            "texMatrix",
            "frameWidth",
            "frameHeight",
            "viewportX",
            "viewportY",
            "viewportWidth",
            "viewportHeight"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo p3, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\n\nvoid main() {\n  float y = texture2D(y_tex, interp_tc).r;\n  float u = texture2D(u_tex, interp_tc).r - 0.5;\n  float v = texture2D(v_tex, interp_tc).r - 0.5;\n  gl_FragColor = vec4(y + 1.403 * v,                       y - 0.344 * u - 0.714 * v,                       y + 1.77 * u, 1);\n}\n"

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p3, p2}, Lio/agora/rtc/gl/GlRectDrawer;->prepareShader(Ljava/lang/String;[F)V

    .line 7
    const/4 p2, 0x0

    .line 8
    move p3, p2

    .line 9
    .line 10
    :goto_0
    const/16 p4, 0xde1

    .line 11
    .line 12
    .line 13
    const v0, 0x84c0

    .line 14
    const/4 v1, 0x3

    .line 15
    .line 16
    if-ge p3, v1, :cond_0

    .line 17
    add-int/2addr v0, p3

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 21
    .line 22
    aget v0, p1, p3

    .line 23
    .line 24
    .line 25
    invoke-static {p4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 26
    .line 27
    add-int/lit8 p3, p3, 0x1

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-direct {p0, p5, p6, p7, p8}, Lio/agora/rtc/gl/GlRectDrawer;->drawRectangle(IIII)V

    .line 32
    move p1, p2

    .line 33
    .line 34
    :goto_1
    if-ge p1, v1, :cond_1

    .line 35
    .line 36
    add-int p3, p1, v0

    .line 37
    .line 38
    .line 39
    invoke-static {p3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 40
    .line 41
    .line 42
    invoke-static {p4, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 43
    .line 44
    add-int/lit8 p1, p1, 0x1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/GlRectDrawer;->shaders:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lio/agora/rtc/gl/GlRectDrawer$Shader;

    .line 23
    .line 24
    iget-object v1, v1, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lio/agora/rtc/gl/GlShader;->release()V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/gl/GlRectDrawer;->shaders:Ljava/util/Map;

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 34
    return-void
.end method
