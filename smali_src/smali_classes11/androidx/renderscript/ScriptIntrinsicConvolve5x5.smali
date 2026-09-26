.class public Landroidx/renderscript/ScriptIntrinsicConvolve5x5;
.super Landroidx/renderscript/ScriptIntrinsic;
.source "SourceFile"


# static fields
.field private static final INTRINSIC_API_LEVEL:I = 0x13


# instance fields
.field private mInput:Landroidx/renderscript/Allocation;

.field private final mValues:[F


# direct methods
.method constructor <init>(JLandroidx/renderscript/RenderScript;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/ScriptIntrinsic;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 4
    .line 5
    const/16 p1, 0x19

    .line 6
    .line 7
    new-array p1, p1, [F

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/renderscript/ScriptIntrinsicConvolve5x5;->mValues:[F

    .line 10
    return-void
.end method

.method public static create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicConvolve5x5;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/renderscript/Element;->U8(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

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
    if-nez v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Landroidx/renderscript/Element;->U8_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Landroidx/renderscript/Element;->U8_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-static {p0}, Landroidx/renderscript/Element;->U8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-static {p0}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 48
    move-result v0

    .line 49
    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-static {p0}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 58
    move-result v0

    .line 59
    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    .line 63
    invoke-static {p0}, Landroidx/renderscript/Element;->F32_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 68
    move-result v0

    .line 69
    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    .line 73
    invoke-static {p0}, Landroidx/renderscript/Element;->F32_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 78
    move-result v0

    .line 79
    .line 80
    if-eqz v0, :cond_0

    .line 81
    goto :goto_0

    .line 82
    .line 83
    :cond_0
    new-instance p0, Landroidx/renderscript/RSIllegalArgumentException;

    .line 84
    .line 85
    const-string p1, "Unsupported element type."

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, p1}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 89
    throw p0

    .line 90
    .line 91
    .line 92
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->isUseNative()Z

    .line 93
    const/4 v0, 0x4

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p0}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 97
    move-result-wide v1

    .line 98
    const/4 p1, 0x0

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicCreate(IJZ)J

    .line 102
    move-result-wide v0

    .line 103
    .line 104
    new-instance v2, Landroidx/renderscript/ScriptIntrinsicConvolve5x5;

    .line 105
    .line 106
    .line 107
    invoke-direct {v2, v0, v1, p0}, Landroidx/renderscript/ScriptIntrinsicConvolve5x5;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, p1}, Landroidx/renderscript/Script;->setIncSupp(Z)V

    .line 111
    return-object v2
.end method


# virtual methods
.method public forEach(Landroidx/renderscript/Allocation;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, p1, v1}, Landroidx/renderscript/Script;->forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;)V

    return-void
.end method

.method public forEach(Landroidx/renderscript/Allocation;Landroidx/renderscript/Script$LaunchOptions;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    .line 2
    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/Script;->forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;Landroidx/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public getFieldID_Input()Landroidx/renderscript/Script$FieldID;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Landroidx/renderscript/Script;->createFieldID(ILandroidx/renderscript/Element;)Landroidx/renderscript/Script$FieldID;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getKernelID()Landroidx/renderscript/Script$KernelID;
    .locals 3

    .line 1
    const/4 v0, 0x2

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

.method public setCoefficients([F)V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/FieldPacker;

    .line 3
    .line 4
    const/16 v1, 0x64

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroidx/renderscript/FieldPacker;-><init>(I)V

    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    .line 11
    :goto_0
    iget-object v3, p0, Landroidx/renderscript/ScriptIntrinsicConvolve5x5;->mValues:[F

    .line 12
    array-length v4, v3

    .line 13
    .line 14
    if-ge v2, v4, :cond_0

    .line 15
    .line 16
    aget v4, p1, v2

    .line 17
    .line 18
    aput v4, v3, v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v4}, Landroidx/renderscript/FieldPacker;->addF32(F)V

    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0, v1, v0}, Landroidx/renderscript/Script;->setVar(ILandroidx/renderscript/FieldPacker;)V

    .line 28
    return-void
.end method

.method public setInput(Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/renderscript/ScriptIntrinsicConvolve5x5;->mInput:Landroidx/renderscript/Allocation;

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p1}, Landroidx/renderscript/Script;->setVar(ILandroidx/renderscript/BaseObj;)V

    .line 7
    return-void
.end method
