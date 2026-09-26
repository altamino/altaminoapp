.class public Landroidx/renderscript/Type;
.super Landroidx/renderscript/BaseObj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/renderscript/Type$Builder;,
        Landroidx/renderscript/Type$CubemapFace;
    }
.end annotation


# instance fields
.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimYuv:I

.field mDimZ:I

.field mElement:Landroidx/renderscript/Element;

.field mElementCount:I


# direct methods
.method constructor <init>(JLandroidx/renderscript/RenderScript;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/BaseObj;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 4
    return-void
.end method

.method public static createX(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;I)Landroidx/renderscript/Type;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-lt p2, v0, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 7
    move-result-wide v2

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v8, 0x0

    .line 12
    const/4 v9, 0x0

    .line 13
    move-object v1, p0

    .line 14
    move v4, p2

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {v1 .. v9}, Landroidx/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    new-instance v2, Landroidx/renderscript/Type;

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v0, v1, p0}, Landroidx/renderscript/Type;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 24
    .line 25
    iput-object p1, v2, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    .line 26
    .line 27
    iput p2, v2, Landroidx/renderscript/Type;->mDimX:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Landroidx/renderscript/Type;->calcElementCount()V

    .line 31
    return-object v2

    .line 32
    .line 33
    :cond_0
    new-instance p0, Landroidx/renderscript/RSInvalidStateException;

    .line 34
    .line 35
    const-string p1, "Dimension must be >= 1."

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 39
    throw p0
.end method

.method public static createXY(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;II)Landroidx/renderscript/Type;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-lt p2, v0, :cond_0

    .line 4
    .line 5
    if-lt p3, v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 9
    move-result-wide v2

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v9, 0x0

    .line 14
    move-object v1, p0

    .line 15
    move v4, p2

    .line 16
    move v5, p3

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {v1 .. v9}, Landroidx/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    .line 20
    move-result-wide v0

    .line 21
    .line 22
    new-instance v2, Landroidx/renderscript/Type;

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v0, v1, p0}, Landroidx/renderscript/Type;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 26
    .line 27
    iput-object p1, v2, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    .line 28
    .line 29
    iput p2, v2, Landroidx/renderscript/Type;->mDimX:I

    .line 30
    .line 31
    iput p3, v2, Landroidx/renderscript/Type;->mDimY:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Landroidx/renderscript/Type;->calcElementCount()V

    .line 35
    return-object v2

    .line 36
    .line 37
    :cond_0
    new-instance p0, Landroidx/renderscript/RSInvalidStateException;

    .line 38
    .line 39
    const-string p1, "Dimension must be >= 1."

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 43
    throw p0
.end method

.method public static createXYZ(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;III)Landroidx/renderscript/Type;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-lt p2, v0, :cond_0

    .line 4
    .line 5
    if-lt p3, v0, :cond_0

    .line 6
    .line 7
    if-lt p4, v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 11
    move-result-wide v2

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x0

    .line 14
    const/4 v9, 0x0

    .line 15
    move-object v1, p0

    .line 16
    move v4, p2

    .line 17
    move v5, p3

    .line 18
    move v6, p4

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {v1 .. v9}, Landroidx/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    .line 22
    move-result-wide v0

    .line 23
    .line 24
    new-instance v2, Landroidx/renderscript/Type;

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, v0, v1, p0}, Landroidx/renderscript/Type;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 28
    .line 29
    iput-object p1, v2, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    .line 30
    .line 31
    iput p2, v2, Landroidx/renderscript/Type;->mDimX:I

    .line 32
    .line 33
    iput p3, v2, Landroidx/renderscript/Type;->mDimY:I

    .line 34
    .line 35
    iput p4, v2, Landroidx/renderscript/Type;->mDimZ:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Landroidx/renderscript/Type;->calcElementCount()V

    .line 39
    return-object v2

    .line 40
    .line 41
    :cond_0
    new-instance p0, Landroidx/renderscript/RSInvalidStateException;

    .line 42
    .line 43
    const-string p1, "Dimension must be >= 1."

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1}, Landroidx/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 47
    throw p0
.end method


# virtual methods
.method calcElementCount()V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/Type;->hasMipmaps()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getX()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getY()I

    .line 12
    move-result v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/renderscript/Type;->getZ()I

    .line 16
    move-result v3

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/renderscript/Type;->hasFaces()Z

    .line 20
    move-result v4

    .line 21
    const/4 v5, 0x1

    .line 22
    .line 23
    if-eqz v4, :cond_0

    .line 24
    const/4 v4, 0x6

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v4, v5

    .line 27
    .line 28
    :goto_0
    if-nez v1, :cond_1

    .line 29
    move v1, v5

    .line 30
    .line 31
    :cond_1
    if-nez v2, :cond_2

    .line 32
    move v2, v5

    .line 33
    .line 34
    :cond_2
    if-nez v3, :cond_3

    .line 35
    move v3, v5

    .line 36
    .line 37
    :cond_3
    mul-int v6, v1, v2

    .line 38
    mul-int/2addr v6, v3

    .line 39
    mul-int/2addr v6, v4

    .line 40
    .line 41
    :goto_1
    if-eqz v0, :cond_8

    .line 42
    .line 43
    if-gt v1, v5, :cond_4

    .line 44
    .line 45
    if-gt v2, v5, :cond_4

    .line 46
    .line 47
    if-le v3, v5, :cond_8

    .line 48
    .line 49
    :cond_4
    if-le v1, v5, :cond_5

    .line 50
    .line 51
    shr-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    :cond_5
    if-le v2, v5, :cond_6

    .line 54
    .line 55
    shr-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    :cond_6
    if-le v3, v5, :cond_7

    .line 58
    .line 59
    shr-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    :cond_7
    mul-int v7, v1, v2

    .line 62
    mul-int/2addr v7, v3

    .line 63
    mul-int/2addr v7, v4

    .line 64
    add-int/2addr v6, v7

    .line 65
    goto :goto_1

    .line 66
    .line 67
    :cond_8
    iput v6, p0, Landroidx/renderscript/Type;->mElementCount:I

    .line 68
    return-void
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Landroidx/renderscript/Type;->mElementCount:I

    return v0
.end method

.method public getDummyType(Landroidx/renderscript/RenderScript;J)J
    .locals 9

    .line 1
    .line 2
    iget v3, p0, Landroidx/renderscript/Type;->mDimX:I

    .line 3
    .line 4
    iget v4, p0, Landroidx/renderscript/Type;->mDimY:I

    .line 5
    .line 6
    iget v5, p0, Landroidx/renderscript/Type;->mDimZ:I

    .line 7
    .line 8
    iget-boolean v6, p0, Landroidx/renderscript/Type;->mDimMipmaps:Z

    .line 9
    .line 10
    iget-boolean v7, p0, Landroidx/renderscript/Type;->mDimFaces:Z

    .line 11
    .line 12
    iget v8, p0, Landroidx/renderscript/Type;->mDimYuv:I

    .line 13
    move-object v0, p1

    .line 14
    move-wide v1, p2

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {v0 .. v8}, Landroidx/renderscript/RenderScript;->nIncTypeCreate(JIIIZZI)J

    .line 18
    move-result-wide p1

    .line 19
    return-wide p1
.end method

.method public getElement()Landroidx/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroidx/renderscript/Type;->mElement:Landroidx/renderscript/Element;

    return-object v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Landroidx/renderscript/Type;->mDimX:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Landroidx/renderscript/Type;->mDimY:I

    return v0
.end method

.method public getYuv()I
    .locals 1

    iget v0, p0, Landroidx/renderscript/Type;->mDimYuv:I

    return v0
.end method

.method public getZ()I
    .locals 1

    iget v0, p0, Landroidx/renderscript/Type;->mDimZ:I

    return v0
.end method

.method public hasFaces()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/renderscript/Type;->mDimFaces:Z

    return v0
.end method

.method public hasMipmaps()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/renderscript/Type;->mDimMipmaps:Z

    return v0
.end method
