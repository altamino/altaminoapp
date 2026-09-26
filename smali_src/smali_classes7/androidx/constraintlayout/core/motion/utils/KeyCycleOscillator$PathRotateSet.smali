.class public Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;
.super Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathRotateSet"
.end annotation


# instance fields
.field type:Ljava/lang/String;

.field typeId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;->type:Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/a;->a(Ljava/lang/String;)I

    .line 9
    move-result p1

    .line 10
    .line 11
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;->typeId:I

    .line 12
    return-void
.end method
