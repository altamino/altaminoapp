.class Landroidx/constraintlayout/core/state/Transition$KeyPosition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/state/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyPosition"
.end annotation


# instance fields
.field frame:I

.field target:Ljava/lang/String;

.field type:I

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Ljava/lang/String;IIFF)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/constraintlayout/core/state/Transition$KeyPosition;->target:Ljava/lang/String;

    .line 6
    .line 7
    iput p2, p0, Landroidx/constraintlayout/core/state/Transition$KeyPosition;->frame:I

    .line 8
    .line 9
    iput p3, p0, Landroidx/constraintlayout/core/state/Transition$KeyPosition;->type:I

    .line 10
    .line 11
    iput p4, p0, Landroidx/constraintlayout/core/state/Transition$KeyPosition;->x:F

    .line 12
    .line 13
    iput p5, p0, Landroidx/constraintlayout/core/state/Transition$KeyPosition;->y:F

    .line 14
    return-void
.end method
