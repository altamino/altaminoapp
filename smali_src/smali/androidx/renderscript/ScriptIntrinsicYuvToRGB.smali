.class public Landroidx/renderscript/ScriptIntrinsicYuvToRGB;
.super Landroidx/renderscript/ScriptIntrinsic;
.source "SourceFile"


# static fields
.field private static final INTRINSIC_API_LEVEL:I = 0x13


# instance fields
.field private mInput:Landroidx/renderscript/Allocation;


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

.method public static create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicYuvToRGB;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->isUseNative()Z

    .line 4
    const/4 v0, 0x6

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
    new-instance v2, Landroidx/renderscript/ScriptIntrinsicYuvToRGB;

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v0, v1, p0}, Landroidx/renderscript/ScriptIntrinsicYuvToRGB;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p1}, Landroidx/renderscript/Script;->setIncSupp(Z)V

    .line 22
    return-object v2
.end method


# virtual methods
.method public forEach(Landroidx/renderscript/Allocation;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, p1, v1}, Landroidx/renderscript/Script;->forEach(ILandroidx/renderscript/Allocation;Landroidx/renderscript/Allocation;Landroidx/renderscript/FieldPacker;)V

    .line 6
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

.method public setInput(Landroidx/renderscript/Allocation;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/renderscript/ScriptIntrinsicYuvToRGB;->mInput:Landroidx/renderscript/Allocation;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p1}, Landroidx/renderscript/Script;->setVar(ILandroidx/renderscript/BaseObj;)V

    .line 7
    return-void
.end method
