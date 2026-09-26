.class public Landroidx/renderscript/ScriptIntrinsicResize;
.super Landroidx/renderscript/ScriptIntrinsic;
.source "SourceFile"


# static fields
.field private static final INTRINSIC_API_LEVEL:I = 0x15


# instance fields
.field private mInput:Landroidx/renderscript/Allocation;


# direct methods
.method protected constructor <init>(JLandroidx/renderscript/RenderScript;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/ScriptIntrinsic;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 4
    return-void
.end method

.method public static create(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/ScriptIntrinsicResize;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->isUseNative()Z

    .line 4
    .line 5
    const/16 v0, 0xc

    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/renderscript/RenderScript;->nScriptIntrinsicCreate(IJZ)J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    new-instance v2, Landroidx/renderscript/ScriptIntrinsicResize;

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v0, v1, p0}, Landroidx/renderscript/ScriptIntrinsicResize;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v3}, Landroidx/renderscript/Script;->setIncSupp(Z)V

    .line 21
    return-object v2
.end method


# virtual methods
.method public forEach_bicubic(Landroidx/renderscript/Allocation;)V
    .locals 1

    iget-object v0, p0, Landroidx/renderscript/ScriptIntrinsicResize;->mInput:Landroidx/renderscript/Allocation;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/renderscript/ScriptIntrinsicResize;->forEach_bicubic(Landroidx/renderscript/Allocation;Landroidx/renderscript/Script$LaunchOptions;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    const-string v0, "Output cannot be same as Input."

    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forEach_bicubic(Landroidx/renderscript/Allocation;Landroidx/renderscript/Script$LaunchOptions;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    .line 3
    invoke-virtual/range {v0 .. v5}, Landroidx/renderscript/Script;->forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;Landroidx/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public getFieldID_Input()Landroidx/renderscript/Script$FieldID;
    .locals 2

    .line 1
    const/4 v0, 0x0

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

.method public getKernelID_bicubic()Landroidx/renderscript/Script$KernelID;
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

.method public setInput(Landroidx/renderscript/Allocation;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/renderscript/Allocation;->getElement()Landroidx/renderscript/Element;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Landroidx/renderscript/Element;->U8(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Landroidx/renderscript/Element;->U8_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Landroidx/renderscript/Element;->U8_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Landroidx/renderscript/Element;->U8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 50
    move-result v1

    .line 51
    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Landroidx/renderscript/Element;->F32(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 62
    move-result v1

    .line 63
    .line 64
    if-nez v1, :cond_1

    .line 65
    .line 66
    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Landroidx/renderscript/Element;->F32_2(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 74
    move-result v1

    .line 75
    .line 76
    if-nez v1, :cond_1

    .line 77
    .line 78
    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 79
    .line 80
    .line 81
    invoke-static {v1}, Landroidx/renderscript/Element;->F32_3(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 86
    move-result v1

    .line 87
    .line 88
    if-nez v1, :cond_1

    .line 89
    .line 90
    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 91
    .line 92
    .line 93
    invoke-static {v1}, Landroidx/renderscript/Element;->F32_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroidx/renderscript/Element;->isCompatible(Landroidx/renderscript/Element;)Z

    .line 98
    move-result v0

    .line 99
    .line 100
    if-eqz v0, :cond_0

    .line 101
    goto :goto_0

    .line 102
    .line 103
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 104
    .line 105
    const-string v0, "Unsupported element type."

    .line 106
    .line 107
    .line 108
    invoke-direct {p1, v0}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    throw p1

    .line 110
    .line 111
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/renderscript/ScriptIntrinsicResize;->mInput:Landroidx/renderscript/Allocation;

    .line 112
    const/4 v0, 0x0

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0, p1}, Landroidx/renderscript/Script;->setVar(ILandroidx/renderscript/BaseObj;)V

    .line 116
    return-void
.end method
