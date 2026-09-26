.class public final Landroidx/media3/common/util/GlProgram;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/GlProgram$Attribute;,
        Landroidx/media3/common/util/GlProgram$Uniform;
    }
.end annotation


# static fields
.field private static final GL_SAMPLER_EXTERNAL_2D_Y2Y_EXT:I = 0x8be7


# instance fields
.field private final attributeByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/common/util/GlProgram$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private final attributes:[Landroidx/media3/common/util/GlProgram$Attribute;

.field private final programId:I

.field private final uniformByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/common/util/GlProgram$Uniform;",
            ">;"
        }
    .end annotation
.end field

.field private final uniforms:[Landroidx/media3/common/util/GlProgram$Uniform;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Landroidx/media3/common/util/GlProgram;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3}, Landroidx/media3/common/util/GlProgram;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroidx/media3/common/util/GlProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    .line 4
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->d()V

    const v1, 0x8b31

    .line 5
    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/GlProgram;->d(IILjava/lang/String;)V

    const p1, 0x8b30

    .line 6
    invoke-static {v0, p1, p2}, Landroidx/media3/common/util/GlProgram;->d(IILjava/lang/String;)V

    .line 7
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p1, 0x0

    filled-new-array {p1}, [I

    move-result-object p2

    const v1, 0x8b82

    .line 8
    invoke-static {v0, v1, p2, p1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 9
    aget p2, p2, p1

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to link shader program: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {p2, v2}, Landroidx/media3/common/util/GlUtil;->e(ZLjava/lang/String;)V

    .line 12
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 13
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/util/Map;

    new-array p2, v1, [I

    const v2, 0x8b89

    .line 14
    invoke-static {v0, v2, p2, p1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v0, p2, p1

    .line 15
    new-array v0, v0, [Landroidx/media3/common/util/GlProgram$Attribute;

    iput-object v0, p0, Landroidx/media3/common/util/GlProgram;->attributes:[Landroidx/media3/common/util/GlProgram$Attribute;

    move v0, p1

    :goto_1
    aget v2, p2, p1

    if-ge v0, v2, :cond_1

    iget v2, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    .line 16
    invoke-static {v2, v0}, Landroidx/media3/common/util/GlProgram$Attribute;->a(II)Landroidx/media3/common/util/GlProgram$Attribute;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/common/util/GlProgram;->attributes:[Landroidx/media3/common/util/GlProgram$Attribute;

    .line 17
    aput-object v2, v3, v0

    iget-object v3, p0, Landroidx/media3/common/util/GlProgram;->attributeByName:Ljava/util/Map;

    .line 18
    iget-object v4, v2, Landroidx/media3/common/util/GlProgram$Attribute;->name:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 19
    :cond_1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/util/Map;

    new-array p2, v1, [I

    iget v0, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    const v1, 0x8b86

    .line 20
    invoke-static {v0, v1, p2, p1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v0, p2, p1

    .line 21
    new-array v0, v0, [Landroidx/media3/common/util/GlProgram$Uniform;

    iput-object v0, p0, Landroidx/media3/common/util/GlProgram;->uniforms:[Landroidx/media3/common/util/GlProgram$Uniform;

    move v0, p1

    :goto_2
    aget v1, p2, p1

    if-ge v0, v1, :cond_2

    iget v1, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    .line 22
    invoke-static {v1, v0}, Landroidx/media3/common/util/GlProgram$Uniform;->a(II)Landroidx/media3/common/util/GlProgram$Uniform;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/common/util/GlProgram;->uniforms:[Landroidx/media3/common/util/GlProgram$Uniform;

    .line 23
    aput-object v1, v2, v0

    iget-object v2, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/util/Map;

    .line 24
    iget-object v3, v1, Landroidx/media3/common/util/GlProgram$Uniform;->name:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 25
    :cond_2
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->d()V

    return-void
.end method

.method static synthetic a([B)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/media3/common/util/GlProgram;->h([B)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic b(ILjava/lang/String;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/media3/common/util/GlProgram;->f(ILjava/lang/String;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic c(ILjava/lang/String;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/media3/common/util/GlProgram;->i(ILjava/lang/String;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static d(IILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    filled-new-array {v0}, [I

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    const v2, 0x8b81

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v2, v1, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 22
    .line 23
    aget v1, v1, v0

    .line 24
    const/4 v2, 0x1

    .line 25
    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    move v0, v2

    .line 28
    .line 29
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v2, ", source: "

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    .line 54
    invoke-static {v0, p2}, Landroidx/media3/common/util/GlUtil;->e(ZLjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->d()V

    .line 64
    return-void
.end method

.method private static f(ILjava/lang/String;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private g(Ljava/lang/String;)I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/media3/common/util/GlProgram;->f(ILjava/lang/String;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method private static h([B)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p0

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    aget-byte v1, p0, v0

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    return v0

    .line 10
    .line 11
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    array-length p0, p0

    .line 14
    return p0
.end method

.method private static i(ILjava/lang/String;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 5
    move-result-object p0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroidx/media3/common/util/Util;->j1(Ljava/io/InputStream;)[B

    .line 13
    move-result-object p0

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Landroidx/media3/common/util/Util;->E([B)Ljava/lang/String;

    .line 17
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Landroidx/media3/common/util/Util;->n(Ljava/io/Closeable;)V

    .line 21
    return-object p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Landroidx/media3/common/util/Util;->n(Ljava/io/Closeable;)V

    .line 26
    throw p0
.end method


# virtual methods
.method public e(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/media3/common/util/GlProgram;->g(Ljava/lang/String;)I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->d()V

    .line 11
    return p1
.end method

.method public j(Ljava/lang/String;)I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/media3/common/util/GlProgram;->i(ILjava/lang/String;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method
