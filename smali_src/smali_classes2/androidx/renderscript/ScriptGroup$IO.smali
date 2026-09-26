.class Landroidx/renderscript/ScriptGroup$IO;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IO"
.end annotation


# instance fields
.field mAllocation:Landroidx/renderscript/Allocation;

.field mKID:Landroidx/renderscript/Script$KernelID;


# direct methods
.method constructor <init>(Landroidx/renderscript/Script$KernelID;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/renderscript/ScriptGroup$IO;->mKID:Landroidx/renderscript/Script$KernelID;

    .line 6
    return-void
.end method
