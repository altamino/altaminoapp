.class public Landroidx/constraintlayout/motion/utils/ViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bottom:I

.field public left:I

.field public right:I

.field public rotation:F

.field public top:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/utils/ViewState;->bottom:I

    iget v1, p0, Landroidx/constraintlayout/motion/utils/ViewState;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public b()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/utils/ViewState;->right:I

    iget v1, p0, Landroidx/constraintlayout/motion/utils/ViewState;->left:I

    sub-int/2addr v0, v1

    return v0
.end method
