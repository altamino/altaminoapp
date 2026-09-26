.class public Landroidx/renderscript/ScriptIntrinsicColorMatrix;
.super Landroidx/renderscript/ScriptIntrinsic;
.source "SourceFile"


# static fields
.field private static final INTRINSIC_API_LEVEL:I = 0x13


# instance fields
.field private final mAdd:Landroidx/renderscript/Float4;

.field private mInput:Landroidx/renderscript/Allocation;

.field private final mMatrix:Landroidx/renderscript/Matrix4f;


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
    iput-object p1, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 11
    .line 12
    new-instance p1, Landroidx/renderscript/Float4;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Landroidx/renderscript/Float4;-><init>()V

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroidx/renderscript/Float4;

    .line 18
    return-void
.end method

.method public static create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicColorMatrix;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/renderscript/Element;->U8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->isUseNative()Z

    .line 14
    const/4 v0, 0x2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 18
    move-result-wide v1

    .line 19
    const/4 p1, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicCreate(IJZ)J

    .line 23
    move-result-wide v0

    .line 24
    .line 25
    new-instance v2, Landroidx/renderscript/ScriptIntrinsicColorMatrix;

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, v0, v1, p0}, Landroidx/renderscript/ScriptIntrinsicColorMatrix;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Landroidx/renderscript/Script;->setIncSupp(Z)V

    .line 32
    return-object v2

    .line 33
    .line 34
    :cond_0
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 35
    .line 36
    const-string p1, "Unsupported element type."

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p0
.end method

.method private setMatrix()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/FieldPacker;

    .line 3
    .line 4
    const/16 v1, 0x40

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/renderscript/FieldPacker;->addMatrix(Landroidx/renderscript/Matrix4f;)V

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1, v0}, Landroidx/renderscript/Script;->setVar(ILandroidx/renderscript/FieldPacker;)V

    .line 17
    return-void
.end method


# virtual methods
.method public forEach(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2, v1}, Landroidx/renderscript/Script;->forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;)V

    return-void
.end method

.method public forEach(Landroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/Script$LaunchOptions;)V
    .locals 8

    .line 2
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v1}, Landroidx/renderscript/Element;->U8(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    const-string v1, "Unsupported element type."

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->U8_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->U8_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->U8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F32_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F32_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    invoke-direct {p1, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->U8(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->U8_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 13
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->U8_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->U8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 15
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F32_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 18
    invoke-virtual {p2}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    invoke-static {v2}, Landroidx/renderscript/Element;->F32_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 19
    :cond_2
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    invoke-direct {p1, v1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    .line 20
    invoke-virtual/range {v2 .. v7}, Landroidx/renderscript/Script;->forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;Landroidx/renderscript/Script$LaunchOptions;)V

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

.method public setAdd(FFFF)V
    .locals 1

    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroidx/renderscript/Float4;

    .line 11
    iput p1, v0, Landroidx/renderscript/Float4;->x:F

    .line 12
    iput p2, v0, Landroidx/renderscript/Float4;->y:F

    .line 13
    iput p3, v0, Landroidx/renderscript/Float4;->z:F

    .line 14
    iput p4, v0, Landroidx/renderscript/Float4;->w:F

    .line 15
    new-instance p1, Landroidx/renderscript/FieldPacker;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    iget-object p2, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroidx/renderscript/Float4;

    .line 16
    iget p2, p2, Landroidx/renderscript/Float4;->x:F

    invoke-virtual {p1, p2}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    iget-object p2, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroidx/renderscript/Float4;

    .line 17
    iget p2, p2, Landroidx/renderscript/Float4;->y:F

    invoke-virtual {p1, p2}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    iget-object p2, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroidx/renderscript/Float4;

    .line 18
    iget p2, p2, Landroidx/renderscript/Float4;->z:F

    invoke-virtual {p1, p2}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    iget-object p2, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroidx/renderscript/Float4;

    .line 19
    iget p2, p2, Landroidx/renderscript/Float4;->w:F

    invoke-virtual {p1, p2}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    const/4 p2, 0x1

    .line 20
    invoke-virtual {p0, p2, p1}, Landroidx/renderscript/Script;->setVar(ILandroidx/renderscript/FieldPacker;)V

    return-void
.end method

.method public setAdd(Landroidx/renderscript/Float4;)V
    .locals 2

    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroidx/renderscript/Float4;

    .line 1
    iget v1, p1, Landroidx/renderscript/Float4;->x:F

    iput v1, v0, Landroidx/renderscript/Float4;->x:F

    .line 2
    iget v1, p1, Landroidx/renderscript/Float4;->y:F

    iput v1, v0, Landroidx/renderscript/Float4;->y:F

    .line 3
    iget v1, p1, Landroidx/renderscript/Float4;->z:F

    iput v1, v0, Landroidx/renderscript/Float4;->z:F

    .line 4
    iget v1, p1, Landroidx/renderscript/Float4;->w:F

    iput v1, v0, Landroidx/renderscript/Float4;->w:F

    .line 5
    new-instance v0, Landroidx/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    .line 6
    iget v1, p1, Landroidx/renderscript/Float4;->x:F

    invoke-virtual {v0, v1}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 7
    iget v1, p1, Landroidx/renderscript/Float4;->y:F

    invoke-virtual {v0, v1}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 8
    iget v1, p1, Landroidx/renderscript/Float4;->z:F

    invoke-virtual {v0, v1}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 9
    iget p1, p1, Landroidx/renderscript/Float4;->w:F

    invoke-virtual {v0, p1}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1, v0}, Landroidx/renderscript/Script;->setVar(ILandroidx/renderscript/FieldPacker;)V

    return-void
.end method

.method public setColorMatrix(Landroidx/renderscript/Matrix3f;)V
    .locals 1

    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/renderscript/Matrix4f;->load(Landroidx/renderscript/Matrix3f;)V

    .line 4
    invoke-direct {p0}, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    return-void
.end method

.method public setColorMatrix(Landroidx/renderscript/Matrix4f;)V
    .locals 1

    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 1
    invoke-virtual {v0, p1}, Landroidx/renderscript/Matrix4f;->load(Landroidx/renderscript/Matrix4f;)V

    .line 2
    invoke-direct {p0}, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    return-void
.end method

.method public setGreyscale()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/renderscript/Matrix4f;->loadIdentity()V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    const v2, 0x3e991687    # 0.299f

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v1, v2}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 17
    const/4 v3, 0x1

    .line 18
    .line 19
    .line 20
    const v4, 0x3f1645a2    # 0.587f

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v3, v1, v4}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 26
    const/4 v5, 0x2

    .line 27
    .line 28
    .line 29
    const v6, 0x3de978d5    # 0.114f

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v5, v1, v6}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1, v3, v2}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 38
    .line 39
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v3, v3, v4}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v5, v3, v6}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 48
    .line 49
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1, v5, v2}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 53
    .line 54
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v3, v5, v4}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 58
    .line 59
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v5, v5, v6}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    .line 66
    return-void
.end method

.method public setRGBtoYUV()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/renderscript/Matrix4f;->loadIdentity()V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 8
    .line 9
    .line 10
    const v1, 0x3e991687    # 0.299f

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2, v2, v1}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 17
    .line 18
    .line 19
    const v1, 0x3f1645a2    # 0.587f

    .line 20
    const/4 v3, 0x1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v3, v2, v1}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 26
    .line 27
    .line 28
    const v1, 0x3de978d5    # 0.114f

    .line 29
    const/4 v4, 0x2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v4, v2, v1}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 35
    .line 36
    .line 37
    const v1, -0x41e956c1    # -0.14713f

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2, v3, v1}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 41
    .line 42
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 43
    .line 44
    .line 45
    const v1, -0x416c1a8b    # -0.28886f

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3, v3, v1}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 49
    .line 50
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 51
    .line 52
    .line 53
    const v1, 0x3edf3b64    # 0.436f

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v4, v3, v1}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 57
    .line 58
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 59
    .line 60
    .line 61
    const v1, 0x3f1d70a4    # 0.615f

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2, v4, v1}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 65
    .line 66
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 67
    .line 68
    .line 69
    const v1, -0x40fc299e

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v3, v4, v1}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 73
    .line 74
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 75
    .line 76
    .line 77
    const v1, -0x42332df5    # -0.10001f

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v4, v4, v1}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0}, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    .line 84
    return-void
.end method

.method public setYUVtoRGB()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/renderscript/Matrix4f;->loadIdentity()V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    const/high16 v2, 0x3f800000    # 1.0f

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v1, v2}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v3, v1, v4}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 23
    .line 24
    .line 25
    const v5, 0x3f91e5f3    # 1.13983f

    .line 26
    const/4 v6, 0x2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v6, v1, v5}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v3, v2}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 37
    .line 38
    .line 39
    const v5, -0x4135f06f

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v3, v3, v5}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 45
    .line 46
    .line 47
    const v5, -0x40eb5dcc    # -0.5806f

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v6, v3, v5}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1, v6, v2}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 56
    .line 57
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 58
    .line 59
    .line 60
    const v1, 0x40020e17

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v3, v6, v1}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 64
    .line 65
    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroidx/renderscript/Matrix4f;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v6, v6, v4}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0}, Landroidx/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    .line 72
    return-void
.end method
