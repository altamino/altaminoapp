.class Landroidx/constraintlayout/core/state/Transition$WidgetState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/state/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WidgetState"
.end annotation


# instance fields
.field end:Landroidx/constraintlayout/core/state/WidgetFrame;

.field interpolated:Landroidx/constraintlayout/core/state/WidgetFrame;

.field motionControl:Landroidx/constraintlayout/core/motion/Motion;

.field motionWidgetEnd:Landroidx/constraintlayout/core/motion/MotionWidget;

.field motionWidgetInterpolated:Landroidx/constraintlayout/core/motion/MotionWidget;

.field motionWidgetStart:Landroidx/constraintlayout/core/motion/MotionWidget;

.field myKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

.field myParentHeight:I

.field myParentWidth:I

.field start:Landroidx/constraintlayout/core/state/WidgetFrame;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyCache;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/KeyCache;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->myKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    .line 11
    const/4 v0, -0x1

    .line 12
    .line 13
    iput v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->myParentHeight:I

    .line 14
    .line 15
    iput v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->myParentWidth:I

    .line 16
    .line 17
    new-instance v0, Landroidx/constraintlayout/core/state/WidgetFrame;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>()V

    .line 21
    .line 22
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->start:Landroidx/constraintlayout/core/state/WidgetFrame;

    .line 23
    .line 24
    new-instance v0, Landroidx/constraintlayout/core/state/WidgetFrame;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>()V

    .line 28
    .line 29
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->end:Landroidx/constraintlayout/core/state/WidgetFrame;

    .line 30
    .line 31
    new-instance v0, Landroidx/constraintlayout/core/state/WidgetFrame;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>()V

    .line 35
    .line 36
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->interpolated:Landroidx/constraintlayout/core/state/WidgetFrame;

    .line 37
    .line 38
    new-instance v0, Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->start:Landroidx/constraintlayout/core/state/WidgetFrame;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;-><init>(Landroidx/constraintlayout/core/state/WidgetFrame;)V

    .line 44
    .line 45
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->motionWidgetStart:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 46
    .line 47
    new-instance v0, Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 48
    .line 49
    iget-object v1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->end:Landroidx/constraintlayout/core/state/WidgetFrame;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;-><init>(Landroidx/constraintlayout/core/state/WidgetFrame;)V

    .line 53
    .line 54
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->motionWidgetEnd:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 55
    .line 56
    new-instance v0, Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 57
    .line 58
    iget-object v1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->interpolated:Landroidx/constraintlayout/core/state/WidgetFrame;

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;-><init>(Landroidx/constraintlayout/core/state/WidgetFrame;)V

    .line 62
    .line 63
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->motionWidgetInterpolated:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 64
    .line 65
    new-instance v0, Landroidx/constraintlayout/core/motion/Motion;

    .line 66
    .line 67
    iget-object v1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->motionWidgetStart:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/motion/Motion;-><init>(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 71
    .line 72
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->motionControl:Landroidx/constraintlayout/core/motion/Motion;

    .line 73
    .line 74
    iget-object v1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->motionWidgetStart:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/motion/Motion;->c(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 78
    .line 79
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->motionControl:Landroidx/constraintlayout/core/motion/Motion;

    .line 80
    .line 81
    iget-object v1, p0, Landroidx/constraintlayout/core/state/Transition$WidgetState;->motionWidgetEnd:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/motion/Motion;->b(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 85
    return-void
.end method
