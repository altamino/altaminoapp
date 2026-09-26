.class public Landroidx/renderscript/ScriptIntrinsicBlend;
.super Landroidx/renderscript/ScriptIntrinsic;
.source "SourceFile"


# static fields
.field private static final INTRINSIC_API_LEVEL:I = 0x13


# direct methods
.method constructor <init>(JLandroidx/renderscript/RenderScript;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/ScriptIntrinsic;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 4
    return-void
.end method

.method private blend(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Landroidx/renderscript/Element;->U8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Landroidx/renderscript/Element;->U8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/renderscript/Script;->forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;)V

    .line 37
    return-void

    .line 38
    .line 39
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 40
    .line 41
    const-string p2, "Output is not of expected format."

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p1

    .line 46
    .line 47
    :cond_1
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 48
    .line 49
    const-string p2, "Input is not of expected format."

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p1
.end method

.method public static create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicBlend;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->isUseNative()Z

    .line 4
    const/4 v0, 0x7

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
    new-instance v2, Landroidx/renderscript/ScriptIntrinsicBlend;

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v0, v1, p0}, Landroidx/renderscript/ScriptIntrinsicBlend;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p1}, Landroidx/renderscript/Script;->setIncSupp(Z)V

    .line 22
    return-object v2
.end method


# virtual methods
.method public forEachAdd(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x22

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicBlend;->blend(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 6
    return-void
.end method

.method public forEachClear(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicBlend;->blend(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 5
    return-void
.end method

.method public forEachDst(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 0

    return-void
.end method

.method public forEachDstAtop(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0xa

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicBlend;->blend(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 6
    return-void
.end method

.method public forEachDstIn(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicBlend;->blend(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 5
    return-void
.end method

.method public forEachDstOut(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicBlend;->blend(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 6
    return-void
.end method

.method public forEachDstOver(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicBlend;->blend(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 5
    return-void
.end method

.method public forEachMultiply(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0xe

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicBlend;->blend(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 6
    return-void
.end method

.method public forEachSrc(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicBlend;->blend(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 5
    return-void
.end method

.method public forEachSrcAtop(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x9

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicBlend;->blend(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 6
    return-void
.end method

.method public forEachSrcIn(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicBlend;->blend(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 5
    return-void
.end method

.method public forEachSrcOut(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicBlend;->blend(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 5
    return-void
.end method

.method public forEachSrcOver(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicBlend;->blend(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 5
    return-void
.end method

.method public forEachSubtract(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x23

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicBlend;->blend(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 6
    return-void
.end method

.method public forEachXor(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0xb

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0, p1, p2}, Landroidx/renderscript/ScriptIntrinsicBlend;->blend(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V

    .line 6
    return-void
.end method

.method public getKernelIDAdd()Landroidx/renderscript/Script$KernelID;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    const/16 v2, 0x22

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v2, v0, v1, v1}, Landroidx/renderscript/Script;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getKernelIDClear()Landroidx/renderscript/Script$KernelID;
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

.method public getKernelIDDst()Landroidx/renderscript/Script$KernelID;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v2, v0, v1, v1}, Landroidx/renderscript/Script;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public getKernelIDDstAtop()Landroidx/renderscript/Script$KernelID;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    const/16 v2, 0xa

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v2, v0, v1, v1}, Landroidx/renderscript/Script;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getKernelIDDstIn()Landroidx/renderscript/Script$KernelID;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x6

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v2, v0, v1, v1}, Landroidx/renderscript/Script;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public getKernelIDDstOut()Landroidx/renderscript/Script$KernelID;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v2, v0, v1, v1}, Landroidx/renderscript/Script;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getKernelIDDstOver()Landroidx/renderscript/Script$KernelID;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x4

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v2, v0, v1, v1}, Landroidx/renderscript/Script;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public getKernelIDMultiply()Landroidx/renderscript/Script$KernelID;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    const/16 v2, 0xe

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v2, v0, v1, v1}, Landroidx/renderscript/Script;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getKernelIDSrc()Landroidx/renderscript/Script$KernelID;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v2, v0, v1, v1}, Landroidx/renderscript/Script;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public getKernelIDSrcAtop()Landroidx/renderscript/Script$KernelID;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    const/16 v2, 0x9

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v2, v0, v1, v1}, Landroidx/renderscript/Script;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getKernelIDSrcIn()Landroidx/renderscript/Script$KernelID;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x5

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v2, v0, v1, v1}, Landroidx/renderscript/Script;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public getKernelIDSrcOut()Landroidx/renderscript/Script$KernelID;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x7

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v2, v0, v1, v1}, Landroidx/renderscript/Script;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public getKernelIDSrcOver()Landroidx/renderscript/Script$KernelID;
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, v0, v1, v1}, Landroidx/renderscript/Script;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getKernelIDSubtract()Landroidx/renderscript/Script$KernelID;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    const/16 v2, 0x23

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v2, v0, v1, v1}, Landroidx/renderscript/Script;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getKernelIDXor()Landroidx/renderscript/Script$KernelID;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    const/16 v2, 0xb

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v2, v0, v1, v1}, Landroidx/renderscript/Script;->createKernelID(IILandroidx/renderscript/Element;Landroidx/renderscript/Element;)Landroidx/renderscript/Script$KernelID;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
