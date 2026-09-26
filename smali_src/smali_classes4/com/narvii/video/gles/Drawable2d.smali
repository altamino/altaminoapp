.class public Lcom/narvii/video/gles/Drawable2d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/gles/Drawable2d$Prefab;
    }
.end annotation


# static fields
.field private static final FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

.field private static final FULL_RECTANGLE_COORDS:[F

.field private static final FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

.field private static final FULL_RECTANGLE_TEX_COORDS:[F

.field private static final RECTANGLE_BUF:Ljava/nio/FloatBuffer;

.field private static final RECTANGLE_COORDS:[F

.field private static final RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

.field private static final RECTANGLE_TEX_COORDS:[F

.field private static final SIZEOF_FLOAT:I = 0x4

.field private static final TRIANGLE_BUF:Ljava/nio/FloatBuffer;

.field private static final TRIANGLE_COORDS:[F

.field private static final TRIANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

.field private static final TRIANGLE_TEX_COORDS:[F


# instance fields
.field private mCoordsPerVertex:I

.field private mPrefab:Lcom/narvii/video/gles/Drawable2d$Prefab;

.field private mTexCoordArray:Ljava/nio/FloatBuffer;

.field private mTexCoordStride:I

.field private mVertexArray:Ljava/nio/FloatBuffer;

.field private mVertexCount:I

.field private mVertexStride:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    .line 3
    new-array v1, v0, [F

    .line 4
    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    sput-object v1, Lcom/narvii/video/gles/Drawable2d;->TRIANGLE_COORDS:[F

    .line 9
    .line 10
    new-array v0, v0, [F

    .line 11
    .line 12
    .line 13
    fill-array-data v0, :array_1

    .line 14
    .line 15
    sput-object v0, Lcom/narvii/video/gles/Drawable2d;->TRIANGLE_TEX_COORDS:[F

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    sput-object v1, Lcom/narvii/video/gles/Drawable2d;->TRIANGLE_BUF:Ljava/nio/FloatBuffer;

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/narvii/video/gles/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    sput-object v0, Lcom/narvii/video/gles/Drawable2d;->TRIANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    .line 28
    .line 29
    const/16 v0, 0x8

    .line 30
    .line 31
    new-array v1, v0, [F

    .line 32
    .line 33
    .line 34
    fill-array-data v1, :array_2

    .line 35
    .line 36
    sput-object v1, Lcom/narvii/video/gles/Drawable2d;->RECTANGLE_COORDS:[F

    .line 37
    .line 38
    new-array v2, v0, [F

    .line 39
    .line 40
    .line 41
    fill-array-data v2, :array_3

    .line 42
    .line 43
    sput-object v2, Lcom/narvii/video/gles/Drawable2d;->RECTANGLE_TEX_COORDS:[F

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    sput-object v1, Lcom/narvii/video/gles/Drawable2d;->RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    .line 50
    .line 51
    .line 52
    invoke-static {v2}, Lcom/narvii/video/gles/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    sput-object v1, Lcom/narvii/video/gles/Drawable2d;->RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    .line 56
    .line 57
    new-array v1, v0, [F

    .line 58
    .line 59
    .line 60
    fill-array-data v1, :array_4

    .line 61
    .line 62
    sput-object v1, Lcom/narvii/video/gles/Drawable2d;->FULL_RECTANGLE_COORDS:[F

    .line 63
    .line 64
    new-array v0, v0, [F

    .line 65
    .line 66
    .line 67
    fill-array-data v0, :array_5

    .line 68
    .line 69
    sput-object v0, Lcom/narvii/video/gles/Drawable2d;->FULL_RECTANGLE_TEX_COORDS:[F

    .line 70
    .line 71
    .line 72
    invoke-static {v1}, Lcom/narvii/video/gles/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    sput-object v1, Lcom/narvii/video/gles/Drawable2d;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Lcom/narvii/video/gles/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    sput-object v0, Lcom/narvii/video/gles/Drawable2d;->FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    .line 82
    return-void

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
    :array_0
    .array-data 4
        0x0
        0x3f13cd3a
        -0x41000000    # -0.5f
        -0x416c32c6
        0x3f000000    # 0.5f
        -0x416c32c6
    .end array-data

    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
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

    :array_5
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

.method public constructor <init>(Lcom/narvii/video/gles/Drawable2d$Prefab;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/video/gles/Drawable2d$1;->$SwitchMap$com$narvii$video$gles$Drawable2d$Prefab:[I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    move-result v1

    .line 10
    .line 11
    aget v0, v0, v1

    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x2

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    if-eq v0, v2, :cond_1

    .line 18
    const/4 v1, 0x3

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    sget-object v0, Lcom/narvii/video/gles/Drawable2d;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/video/gles/Drawable2d;->mVertexArray:Ljava/nio/FloatBuffer;

    .line 25
    .line 26
    sget-object v0, Lcom/narvii/video/gles/Drawable2d;->FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/video/gles/Drawable2d;->mTexCoordArray:Ljava/nio/FloatBuffer;

    .line 29
    .line 30
    iput v2, p0, Lcom/narvii/video/gles/Drawable2d;->mCoordsPerVertex:I

    .line 31
    .line 32
    mul-int/lit8 v0, v2, 0x4

    .line 33
    .line 34
    iput v0, p0, Lcom/narvii/video/gles/Drawable2d;->mVertexStride:I

    .line 35
    .line 36
    sget-object v0, Lcom/narvii/video/gles/Drawable2d;->FULL_RECTANGLE_COORDS:[F

    .line 37
    array-length v0, v0

    .line 38
    div-int/2addr v0, v2

    .line 39
    .line 40
    iput v0, p0, Lcom/narvii/video/gles/Drawable2d;->mVertexCount:I

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    const-string v2, "Unknown shape "

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 64
    throw v0

    .line 65
    .line 66
    :cond_1
    sget-object v0, Lcom/narvii/video/gles/Drawable2d;->RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    .line 67
    .line 68
    iput-object v0, p0, Lcom/narvii/video/gles/Drawable2d;->mVertexArray:Ljava/nio/FloatBuffer;

    .line 69
    .line 70
    sget-object v0, Lcom/narvii/video/gles/Drawable2d;->RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/narvii/video/gles/Drawable2d;->mTexCoordArray:Ljava/nio/FloatBuffer;

    .line 73
    .line 74
    iput v2, p0, Lcom/narvii/video/gles/Drawable2d;->mCoordsPerVertex:I

    .line 75
    .line 76
    mul-int/lit8 v0, v2, 0x4

    .line 77
    .line 78
    iput v0, p0, Lcom/narvii/video/gles/Drawable2d;->mVertexStride:I

    .line 79
    .line 80
    sget-object v0, Lcom/narvii/video/gles/Drawable2d;->RECTANGLE_COORDS:[F

    .line 81
    array-length v0, v0

    .line 82
    div-int/2addr v0, v2

    .line 83
    .line 84
    iput v0, p0, Lcom/narvii/video/gles/Drawable2d;->mVertexCount:I

    .line 85
    goto :goto_0

    .line 86
    .line 87
    :cond_2
    sget-object v0, Lcom/narvii/video/gles/Drawable2d;->TRIANGLE_BUF:Ljava/nio/FloatBuffer;

    .line 88
    .line 89
    iput-object v0, p0, Lcom/narvii/video/gles/Drawable2d;->mVertexArray:Ljava/nio/FloatBuffer;

    .line 90
    .line 91
    sget-object v0, Lcom/narvii/video/gles/Drawable2d;->TRIANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    .line 92
    .line 93
    iput-object v0, p0, Lcom/narvii/video/gles/Drawable2d;->mTexCoordArray:Ljava/nio/FloatBuffer;

    .line 94
    .line 95
    iput v2, p0, Lcom/narvii/video/gles/Drawable2d;->mCoordsPerVertex:I

    .line 96
    .line 97
    mul-int/lit8 v0, v2, 0x4

    .line 98
    .line 99
    iput v0, p0, Lcom/narvii/video/gles/Drawable2d;->mVertexStride:I

    .line 100
    .line 101
    sget-object v0, Lcom/narvii/video/gles/Drawable2d;->TRIANGLE_COORDS:[F

    .line 102
    array-length v0, v0

    .line 103
    div-int/2addr v0, v2

    .line 104
    .line 105
    iput v0, p0, Lcom/narvii/video/gles/Drawable2d;->mVertexCount:I

    .line 106
    .line 107
    :goto_0
    const/16 v0, 0x8

    .line 108
    .line 109
    iput v0, p0, Lcom/narvii/video/gles/Drawable2d;->mTexCoordStride:I

    .line 110
    .line 111
    iput-object p1, p0, Lcom/narvii/video/gles/Drawable2d;->mPrefab:Lcom/narvii/video/gles/Drawable2d$Prefab;

    .line 112
    return-void
.end method


# virtual methods
.method public getCoordsPerVertex()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/gles/Drawable2d;->mCoordsPerVertex:I

    return v0
.end method

.method public getTexCoordArray()Ljava/nio/FloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/gles/Drawable2d;->mTexCoordArray:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getTexCoordStride()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/gles/Drawable2d;->mTexCoordStride:I

    return v0
.end method

.method public getVertexArray()Ljava/nio/FloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/gles/Drawable2d;->mVertexArray:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getVertexCount()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/gles/Drawable2d;->mVertexCount:I

    return v0
.end method

.method public getVertexStride()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/gles/Drawable2d;->mVertexStride:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/gles/Drawable2d;->mPrefab:Lcom/narvii/video/gles/Drawable2d$Prefab;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v1, "[Drawable2d: "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/video/gles/Drawable2d;->mPrefab:Lcom/narvii/video/gles/Drawable2d$Prefab;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "]"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    .line 31
    :cond_0
    const-string v0, "[Drawable2d: ...]"

    .line 32
    return-object v0
.end method
