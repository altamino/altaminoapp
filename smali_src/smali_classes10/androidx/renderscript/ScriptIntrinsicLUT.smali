.class public Landroidx/renderscript/ScriptIntrinsicLUT;
.super Landroidx/renderscript/ScriptIntrinsic;
.source "SourceFile"


# static fields
.field private static final INTRINSIC_API_LEVEL:I = 0x13


# instance fields
.field private final mCache:[B

.field private mDirty:Z

.field private final mMatrix:Landroidx/renderscript/Matrix4f;

.field private mTables:Landroidx/renderscript/Allocation;


# direct methods
.method protected constructor <init>(JLandroidx/renderscript/RenderScript;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/ScriptIntrinsic;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 4
    .line 5
    new-instance p1, Landroidx/renderscript/Matrix4f;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Landroidx/renderscript/Matrix4f;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/renderscript/ScriptIntrinsicLUT;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 11
    .line 12
    const/16 p1, 0x400

    .line 13
    .line 14
    new-array p1, p1, [B

    .line 15
    .line 16
    iput-object p1, p0, Landroidx/renderscript/ScriptIntrinsicLUT;->mCache:[B

    .line 17
    const/4 p1, 0x1

    .line 18
    .line 19
    iput-boolean p1, p0, Landroidx/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 20
    return-void
.end method

.method public static create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicLUT;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->isUseNative()Z

    .line 4
    const/4 v0, 0x3

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 8
    move-result-wide v1

    .line 9
    const/4 p1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicCreate(IJZ)J

    .line 13
    move-result-wide v0

    .line 14
    .line 15
    new-instance v2, Landroidx/renderscript/ScriptIntrinsicLUT;

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v0, v1, p0}, Landroidx/renderscript/ScriptIntrinsicLUT;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p1}, Landroidx/renderscript/Script;->setIncSupp(Z)V

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Landroidx/renderscript/Element;->U8(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const/16 v1, 0x400

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0, v1}, Landroidx/renderscript/Allocation;->createSized(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;I)Landroidx/renderscript/Allocation;

    .line 31
    move-result-object p0

    .line 32
    .line 33
    iput-object p0, v2, Landroidx/renderscript/ScriptIntrinsicLUT;->mTables:Landroidx/renderscript/Allocation;

    .line 34
    move p0, p1

    .line 35
    .line 36
    :goto_0
    const/16 v0, 0x100

    .line 37
    .line 38
    if-ge p0, v0, :cond_0

    .line 39
    .line 40
    iget-object v0, v2, Landroidx/renderscript/ScriptIntrinsicLUT;->mCache:[B

    .line 41
    int-to-byte v1, p0

    .line 42
    .line 43
    aput-byte v1, v0, p0

    .line 44
    .line 45
    add-int/lit16 v3, p0, 0x100

    .line 46
    .line 47
    aput-byte v1, v0, v3

    .line 48
    .line 49
    add-int/lit16 v3, p0, 0x200

    .line 50
    .line 51
    aput-byte v1, v0, v3

    .line 52
    .line 53
    add-int/lit16 v3, p0, 0x300

    .line 54
    .line 55
    aput-byte v1, v0, v3

    .line 56
    .line 57
    add-int/lit8 p0, p0, 0x1

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_0
    iget-object p0, v2, Landroidx/renderscript/ScriptIntrinsicLUT;->mTables:Landroidx/renderscript/Allocation;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, p1, p0}, Landroidx/renderscript/Script;->setVar(ILandroidx/renderscript/BaseObj;)V

    .line 64
    return-object v2
.end method

.method private validate(II)V
    .locals 1

    .line 1
    .line 2
    if-ltz p1, :cond_1

    .line 3
    .line 4
    const/16 v0, 0xff

    .line 5
    .line 6
    if-gt p1, v0, :cond_1

    .line 7
    .line 8
    if-ltz p2, :cond_0

    .line 9
    .line 10
    if-gt p2, v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 14
    .line 15
    const-string p2, "Value out of range (0-255)."

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p1

    .line 20
    .line 21
    :cond_1
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 22
    .line 23
    const-string p2, "Index out of range (0-255)."

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p1
.end method


# virtual methods
.method public forEach(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-boolean v1, p0, Landroidx/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicLUT;->mTables:Landroidx/renderscript/Allocation;

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/renderscript/ScriptIntrinsicLUT;->mCache:[B

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroidx/renderscript/Allocation;->copyFromUnchecked([B)V

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1, p1, p2, v0}, Landroidx/renderscript/Script;->forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;)V

    .line 19
    return-void
.end method

.method public getKernelID()Landroidx/renderscript/Script$KernelID;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v2, v0, v1, v1}, Landroidx/renderscript/Script;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public setAlpha(II)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicLUT;->validate(II)V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicLUT;->mCache:[B

    .line 6
    .line 7
    add-int/lit16 p1, p1, 0x300

    .line 8
    int-to-byte p2, p2

    .line 9
    .line 10
    aput-byte p2, v0, p1

    .line 11
    const/4 p1, 0x1

    .line 12
    .line 13
    iput-boolean p1, p0, Landroidx/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 14
    return-void
.end method

.method public setBlue(II)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicLUT;->validate(II)V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicLUT;->mCache:[B

    .line 6
    .line 7
    add-int/lit16 p1, p1, 0x200

    .line 8
    int-to-byte p2, p2

    .line 9
    .line 10
    aput-byte p2, v0, p1

    .line 11
    const/4 p1, 0x1

    .line 12
    .line 13
    iput-boolean p1, p0, Landroidx/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 14
    return-void
.end method

.method public setGreen(II)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicLUT;->validate(II)V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicLUT;->mCache:[B

    .line 6
    .line 7
    add-int/lit16 p1, p1, 0x100

    .line 8
    int-to-byte p2, p2

    .line 9
    .line 10
    aput-byte p2, v0, p1

    .line 11
    const/4 p1, 0x1

    .line 12
    .line 13
    iput-boolean p1, p0, Landroidx/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 14
    return-void
.end method

.method public setRed(II)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicLUT;->validate(II)V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicLUT;->mCache:[B

    .line 6
    int-to-byte p2, p2

    .line 7
    .line 8
    aput-byte p2, v0, p1

    .line 9
    const/4 p1, 0x1

    .line 10
    .line 11
    iput-boolean p1, p0, Landroidx/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 12
    return-void
.end method
