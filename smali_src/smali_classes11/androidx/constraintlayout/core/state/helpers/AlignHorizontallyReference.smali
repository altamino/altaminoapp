.class public Landroidx/constraintlayout/core/state/helpers/AlignHorizontallyReference;
.super Landroidx/constraintlayout/core/state/HelperReference;
.source "SourceFile"


# instance fields
.field private mBias:F


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/state/State;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/constraintlayout/core/state/State$Helper;->ALIGN_VERTICALLY:Landroidx/constraintlayout/core/state/State$Helper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/state/HelperReference;-><init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V

    .line 6
    .line 7
    const/high16 p1, 0x3f000000    # 0.5f

    .line 8
    .line 9
    iput p1, p0, Landroidx/constraintlayout/core/state/helpers/AlignHorizontallyReference;->mBias:F

    .line 10
    return-void
.end method
