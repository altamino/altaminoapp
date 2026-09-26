.class public abstract Landroidx/renderscript/ScriptIntrinsic;
.super Landroidx/renderscript/Script;
.source "SourceFile"


# direct methods
.method constructor <init>(JLandroidx/renderscript/RenderScript;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/Script;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long p1, p1, v0

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    .line 13
    .line 14
    const-string p2, "Loading of ScriptIntrinsic failed."

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, p2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p1
.end method
