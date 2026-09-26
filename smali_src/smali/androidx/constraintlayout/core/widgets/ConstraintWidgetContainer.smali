.class public Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
.super Landroidx/constraintlayout/core/widgets/WidgetContainer;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field static final DEBUG_GRAPH:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final MAX_ITERATIONS:I = 0x8

.field static myCounter:I


# instance fields
.field private horizontalWrapMax:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private horizontalWrapMin:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

.field mDebugSolverPassCount:I

.field public mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

.field public mGroupsWrapOptimized:Z

.field private mHeightMeasuredTooSmall:Z

.field mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

.field public mHorizontalChainsSize:I

.field public mHorizontalWrapOptimized:Z

.field private mIsRtl:Z

.field public mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

.field protected mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

.field public mMetrics:Landroidx/constraintlayout/core/Metrics;

.field private mOptimizationLevel:I

.field mPaddingBottom:I

.field mPaddingLeft:I

.field mPaddingRight:I

.field mPaddingTop:I

.field public mSkipSolver:Z

.field protected mSystem:Landroidx/constraintlayout/core/LinearSystem;

.field mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

.field public mVerticalChainsSize:I

.field public mVerticalWrapOptimized:Z

.field private mWidthMeasuredTooSmall:Z

.field public mWrapFixedHeight:I

.field public mWrapFixedWidth:I

.field private pass:I

.field private verticalWrapMax:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private verticalWrapMin:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field widgetsToAdd:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/WidgetContainer;-><init>()V

    .line 2
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    .line 3
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 4
    new-instance v2, Landroidx/constraintlayout/core/LinearSystem;

    invoke-direct {v2}, Landroidx/constraintlayout/core/LinearSystem;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    const/4 v2, 0x4

    new-array v3, v2, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    new-array v2, v2, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    const/16 v2, 0x101

    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDebugSolverPassCount:I

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    .line 6
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 13
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/WidgetContainer;-><init>(II)V

    .line 14
    new-instance p1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    .line 15
    new-instance p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 16
    new-instance v0, Landroidx/constraintlayout/core/LinearSystem;

    invoke-direct {v0}, Landroidx/constraintlayout/core/LinearSystem;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    const/4 v0, 0x4

    new-array v1, v0, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    new-array v0, v0, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    const/16 v0, 0x101

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDebugSolverPassCount:I

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 17
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    .line 18
    new-instance p1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/core/widgets/WidgetContainer;-><init>(IIII)V

    .line 8
    new-instance p1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    .line 9
    new-instance p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 10
    new-instance p3, Landroidx/constraintlayout/core/LinearSystem;

    invoke-direct {p3}, Landroidx/constraintlayout/core/LinearSystem;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    const/4 p3, 0x4

    new-array p4, p3, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object p4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    new-array p3, p3, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    const/16 p3, 0x101

    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDebugSolverPassCount:I

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 11
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    .line 12
    new-instance p1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .line 19
    invoke-direct {p0, p2, p3}, Landroidx/constraintlayout/core/widgets/WidgetContainer;-><init>(II)V

    .line 20
    new-instance p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    invoke-direct {p2, p0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    .line 21
    new-instance p2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    invoke-direct {p2, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    const/4 p2, 0x0

    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    const/4 p3, 0x0

    iput-boolean p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 22
    new-instance v0, Landroidx/constraintlayout/core/LinearSystem;

    invoke-direct {v0}, Landroidx/constraintlayout/core/LinearSystem;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    const/4 v0, 0x4

    new-array v1, v0, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    new-array v0, v0, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-boolean p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    iput-boolean p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    iput-boolean p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    const/16 v0, 0x101

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    iput-boolean p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    iput-boolean p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    iput-boolean p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDebugSolverPassCount:I

    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 23
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    .line 24
    new-instance p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {p2}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 25
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G0(Ljava/lang/String;)V

    return-void
.end method

.method private B1(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 7
    array-length v2, v1

    .line 8
    .line 9
    if-lt v0, v2, :cond_0

    .line 10
    array-length v0, v1

    .line 11
    .line 12
    mul-int/lit8 v0, v0, 0x2

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, [Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 23
    .line 24
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 25
    .line 26
    new-instance v2, Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 27
    const/4 v3, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->U1()Z

    .line 31
    move-result v4

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, p1, v3, v4}, Landroidx/constraintlayout/core/widgets/ChainHead;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    .line 35
    .line 36
    aput-object v2, v0, v1

    .line 37
    .line 38
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 39
    .line 40
    add-int/lit8 p1, p1, 0x1

    .line 41
    .line 42
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 43
    return-void
.end method

.method private E1(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/LinearSystem;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x5

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2, p1, v1, v2}, Landroidx/constraintlayout/core/LinearSystem;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 14
    return-void
.end method

.method private F1(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/LinearSystem;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x5

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, p2, v1, v2}, Landroidx/constraintlayout/core/LinearSystem;->h(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 14
    return-void
.end method

.method private G1(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 7
    array-length v3, v2

    .line 8
    .line 9
    if-lt v0, v3, :cond_0

    .line 10
    array-length v0, v2

    .line 11
    .line 12
    mul-int/lit8 v0, v0, 0x2

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, [Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 23
    .line 24
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 25
    .line 26
    new-instance v3, Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->U1()Z

    .line 30
    move-result v4

    .line 31
    .line 32
    .line 33
    invoke-direct {v3, p1, v1, v4}, Landroidx/constraintlayout/core/widgets/ChainHead;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    .line 34
    .line 35
    aput-object v3, v0, v2

    .line 36
    .line 37
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 38
    add-int/2addr p1, v1

    .line 39
    .line 40
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 41
    return-void
.end method

.method public static X1(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z
    .locals 5

    .line 1
    const/4 p0, 0x0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    return p0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X()I

    .line 8
    move-result v0

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    if-eq v0, v1, :cond_13

    .line 13
    .line 14
    instance-of v0, p1, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 15
    .line 16
    if-nez v0, :cond_13

    .line 17
    .line 18
    instance-of v0, p1, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto/16 :goto_8

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iput-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iput-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y()I

    .line 38
    move-result v0

    .line 39
    .line 40
    iput v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()I

    .line 44
    move-result v0

    .line 45
    .line 46
    iput v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 47
    .line 48
    iput-boolean p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 49
    .line 50
    iput p4, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 51
    .line 52
    iget-object p4, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 53
    .line 54
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 55
    const/4 v1, 0x1

    .line 56
    .line 57
    if-ne p4, v0, :cond_2

    .line 58
    move p4, v1

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move p4, p0

    .line 61
    .line 62
    :goto_0
    iget-object v2, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 63
    .line 64
    if-ne v2, v0, :cond_3

    .line 65
    move v0, v1

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    move v0, p0

    .line 68
    :goto_1
    const/4 v2, 0x0

    .line 69
    .line 70
    if-eqz p4, :cond_4

    .line 71
    .line 72
    iget v3, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 73
    .line 74
    cmpl-float v3, v3, v2

    .line 75
    .line 76
    if-lez v3, :cond_4

    .line 77
    move v3, v1

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    move v3, p0

    .line 80
    .line 81
    :goto_2
    if-eqz v0, :cond_5

    .line 82
    .line 83
    iget v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 84
    .line 85
    cmpl-float v2, v4, v2

    .line 86
    .line 87
    if-lez v2, :cond_5

    .line 88
    move v2, v1

    .line 89
    goto :goto_3

    .line 90
    :cond_5
    move v2, p0

    .line 91
    .line 92
    :goto_3
    if-eqz p4, :cond_7

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0(I)Z

    .line 96
    move-result v4

    .line 97
    .line 98
    if-eqz v4, :cond_7

    .line 99
    .line 100
    iget v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 101
    .line 102
    if-nez v4, :cond_7

    .line 103
    .line 104
    if-nez v3, :cond_7

    .line 105
    .line 106
    sget-object p4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 107
    .line 108
    iput-object p4, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 109
    .line 110
    if-eqz v0, :cond_6

    .line 111
    .line 112
    iget p4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 113
    .line 114
    if-nez p4, :cond_6

    .line 115
    .line 116
    sget-object p4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 117
    .line 118
    iput-object p4, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 119
    :cond_6
    move p4, p0

    .line 120
    .line 121
    :cond_7
    if-eqz v0, :cond_9

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0(I)Z

    .line 125
    move-result v4

    .line 126
    .line 127
    if-eqz v4, :cond_9

    .line 128
    .line 129
    iget v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 130
    .line 131
    if-nez v4, :cond_9

    .line 132
    .line 133
    if-nez v2, :cond_9

    .line 134
    .line 135
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 136
    .line 137
    iput-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 138
    .line 139
    if-eqz p4, :cond_8

    .line 140
    .line 141
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 142
    .line 143
    if-nez v0, :cond_8

    .line 144
    .line 145
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 146
    .line 147
    iput-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 148
    :cond_8
    move v0, p0

    .line 149
    .line 150
    .line 151
    :cond_9
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p0()Z

    .line 152
    move-result v4

    .line 153
    .line 154
    if-eqz v4, :cond_a

    .line 155
    .line 156
    sget-object p4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 157
    .line 158
    iput-object p4, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 159
    move p4, p0

    .line 160
    .line 161
    .line 162
    :cond_a
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q0()Z

    .line 163
    move-result v4

    .line 164
    .line 165
    if-eqz v4, :cond_b

    .line 166
    .line 167
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 168
    .line 169
    iput-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 170
    move v0, p0

    .line 171
    :cond_b
    const/4 v4, 0x4

    .line 172
    .line 173
    if-eqz v3, :cond_e

    .line 174
    .line 175
    iget-object v3, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 176
    .line 177
    aget p0, v3, p0

    .line 178
    .line 179
    if-ne p0, v4, :cond_c

    .line 180
    .line 181
    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 182
    .line 183
    iput-object p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 184
    goto :goto_5

    .line 185
    .line 186
    :cond_c
    if-nez v0, :cond_e

    .line 187
    .line 188
    iget-object p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 189
    .line 190
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 191
    .line 192
    if-ne p0, v0, :cond_d

    .line 193
    .line 194
    iget p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 195
    goto :goto_4

    .line 196
    .line 197
    :cond_d
    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 198
    .line 199
    iput-object p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 200
    .line 201
    .line 202
    invoke-interface {p2, p1, p3}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 203
    .line 204
    iget p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 205
    .line 206
    :goto_4
    iput-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()F

    .line 210
    move-result v0

    .line 211
    int-to-float p0, p0

    .line 212
    mul-float/2addr v0, p0

    .line 213
    float-to-int p0, v0

    .line 214
    .line 215
    iput p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 216
    .line 217
    :cond_e
    :goto_5
    if-eqz v2, :cond_12

    .line 218
    .line 219
    iget-object p0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 220
    .line 221
    aget p0, p0, v1

    .line 222
    .line 223
    if-ne p0, v4, :cond_f

    .line 224
    .line 225
    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 226
    .line 227
    iput-object p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 228
    goto :goto_7

    .line 229
    .line 230
    :cond_f
    if-nez p4, :cond_12

    .line 231
    .line 232
    iget-object p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 233
    .line 234
    sget-object p4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 235
    .line 236
    if-ne p0, p4, :cond_10

    .line 237
    .line 238
    iget p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 239
    goto :goto_6

    .line 240
    .line 241
    :cond_10
    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 242
    .line 243
    iput-object p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 244
    .line 245
    .line 246
    invoke-interface {p2, p1, p3}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 247
    .line 248
    iget p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 249
    .line 250
    :goto_6
    iput-object p4, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y()I

    .line 254
    move-result p4

    .line 255
    const/4 v0, -0x1

    .line 256
    .line 257
    if-ne p4, v0, :cond_11

    .line 258
    int-to-float p0, p0

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()F

    .line 262
    move-result p4

    .line 263
    div-float/2addr p0, p4

    .line 264
    float-to-int p0, p0

    .line 265
    .line 266
    iput p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 267
    goto :goto_7

    .line 268
    .line 269
    .line 270
    :cond_11
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x()F

    .line 271
    move-result p4

    .line 272
    int-to-float p0, p0

    .line 273
    mul-float/2addr p4, p0

    .line 274
    float-to-int p0, p4

    .line 275
    .line 276
    iput p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 277
    .line 278
    .line 279
    :cond_12
    :goto_7
    invoke-interface {p2, p1, p3}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 280
    .line 281
    iget p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o1(I)V

    .line 285
    .line 286
    iget p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 287
    .line 288
    .line 289
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->P0(I)V

    .line 290
    .line 291
    iget-boolean p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O0(Z)V

    .line 295
    .line 296
    iget p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->E0(I)V

    .line 300
    .line 301
    sget p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    .line 302
    .line 303
    iput p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 304
    .line 305
    iget-boolean p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 306
    return p0

    .line 307
    .line 308
    :cond_13
    :goto_8
    iput p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 309
    .line 310
    iput p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 311
    return p0
.end method

.method private Z1()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    return-void
.end method


# virtual methods
.method public A1(Landroidx/constraintlayout/core/LinearSystem;)Z
    .locals 12

    .line 1
    .line 2
    const/16 v0, 0x40

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->Y1(I)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    move v4, v3

    .line 19
    :goto_0
    const/4 v5, 0x1

    .line 20
    .line 21
    if-ge v3, v1, :cond_1

    .line 22
    .line 23
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v6

    .line 28
    .line 29
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v6, v2, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W0(IZ)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v6, v5, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W0(IZ)V

    .line 36
    .line 37
    instance-of v6, v6, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 38
    .line 39
    if-eqz v6, :cond_0

    .line 40
    move v4, v5

    .line 41
    .line 42
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_1
    if-eqz v4, :cond_3

    .line 46
    move v3, v2

    .line 47
    .line 48
    :goto_1
    if-ge v3, v1, :cond_3

    .line 49
    .line 50
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v4

    .line 55
    .line 56
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 57
    .line 58
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 59
    .line 60
    if-eqz v6, :cond_2

    .line 61
    .line 62
    check-cast v4, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/Barrier;->C1()V

    .line 66
    .line 67
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_3
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 74
    move v3, v2

    .line 75
    .line 76
    :goto_2
    if-ge v3, v1, :cond_6

    .line 77
    .line 78
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object v4

    .line 83
    .line 84
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f()Z

    .line 88
    move-result v6

    .line 89
    .line 90
    if-eqz v6, :cond_5

    .line 91
    .line 92
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 93
    .line 94
    if-eqz v6, :cond_4

    .line 95
    .line 96
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 100
    goto :goto_3

    .line 101
    .line 102
    .line 103
    :cond_4
    invoke-virtual {v4, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 104
    .line 105
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 106
    goto :goto_2

    .line 107
    .line 108
    :cond_6
    :goto_4
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 112
    move-result v3

    .line 113
    .line 114
    if-lez v3, :cond_a

    .line 115
    .line 116
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 120
    move-result v3

    .line 121
    .line 122
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 126
    move-result-object v4

    .line 127
    .line 128
    .line 129
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    move-result v6

    .line 131
    .line 132
    if-eqz v6, :cond_8

    .line 133
    .line 134
    .line 135
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    move-result-object v6

    .line 137
    .line 138
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 139
    .line 140
    check-cast v6, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 141
    .line 142
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->z1(Ljava/util/HashSet;)Z

    .line 146
    move-result v7

    .line 147
    .line 148
    if-eqz v7, :cond_7

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 152
    .line 153
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 157
    .line 158
    :cond_8
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    .line 162
    move-result v4

    .line 163
    .line 164
    if-ne v3, v4, :cond_6

    .line 165
    .line 166
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 170
    move-result-object v3

    .line 171
    .line 172
    .line 173
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    move-result v4

    .line 175
    .line 176
    if-eqz v4, :cond_9

    .line 177
    .line 178
    .line 179
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    move-result-object v4

    .line 181
    .line 182
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 186
    goto :goto_5

    .line 187
    .line 188
    :cond_9
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 192
    goto :goto_4

    .line 193
    .line 194
    :cond_a
    sget-boolean v3, Landroidx/constraintlayout/core/LinearSystem;->USE_DEPENDENCY_ORDERING:Z

    .line 195
    .line 196
    if-eqz v3, :cond_e

    .line 197
    .line 198
    new-instance v3, Ljava/util/HashSet;

    .line 199
    .line 200
    .line 201
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 202
    move v4, v2

    .line 203
    .line 204
    :goto_6
    if-ge v4, v1, :cond_c

    .line 205
    .line 206
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 210
    move-result-object v6

    .line 211
    .line 212
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f()Z

    .line 216
    move-result v7

    .line 217
    .line 218
    if-nez v7, :cond_b

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 224
    goto :goto_6

    .line 225
    .line 226
    .line 227
    :cond_c
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 228
    move-result-object v1

    .line 229
    .line 230
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 231
    .line 232
    if-ne v1, v4, :cond_d

    .line 233
    move v10, v2

    .line 234
    goto :goto_7

    .line 235
    :cond_d
    move v10, v5

    .line 236
    :goto_7
    const/4 v11, 0x0

    .line 237
    move-object v6, p0

    .line 238
    move-object v7, p0

    .line 239
    move-object v8, p1

    .line 240
    move-object v9, v3

    .line 241
    .line 242
    .line 243
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 247
    move-result-object v1

    .line 248
    .line 249
    .line 250
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    move-result v3

    .line 252
    .line 253
    if-eqz v3, :cond_14

    .line 254
    .line 255
    .line 256
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    move-result-object v3

    .line 258
    .line 259
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 260
    .line 261
    .line 262
    invoke-static {p0, p1, v3}, Landroidx/constraintlayout/core/widgets/Optimizer;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v3, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 266
    goto :goto_8

    .line 267
    :cond_e
    move v3, v2

    .line 268
    .line 269
    :goto_9
    if-ge v3, v1, :cond_14

    .line 270
    .line 271
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 275
    move-result-object v4

    .line 276
    .line 277
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 278
    .line 279
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 280
    .line 281
    if-eqz v6, :cond_12

    .line 282
    .line 283
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 284
    .line 285
    aget-object v7, v6, v2

    .line 286
    .line 287
    aget-object v6, v6, v5

    .line 288
    .line 289
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 290
    .line 291
    if-ne v7, v8, :cond_f

    .line 292
    .line 293
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v4, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T0(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 297
    .line 298
    :cond_f
    if-ne v6, v8, :cond_10

    .line 299
    .line 300
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v4, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k1(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 304
    .line 305
    .line 306
    :cond_10
    invoke-virtual {v4, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 307
    .line 308
    if-ne v7, v8, :cond_11

    .line 309
    .line 310
    .line 311
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T0(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 312
    .line 313
    :cond_11
    if-ne v6, v8, :cond_13

    .line 314
    .line 315
    .line 316
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k1(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 317
    goto :goto_a

    .line 318
    .line 319
    .line 320
    :cond_12
    invoke-static {p0, p1, v4}, Landroidx/constraintlayout/core/widgets/Optimizer;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f()Z

    .line 324
    move-result v6

    .line 325
    .line 326
    if-nez v6, :cond_13

    .line 327
    .line 328
    .line 329
    invoke-virtual {v4, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 330
    .line 331
    :cond_13
    :goto_a
    add-int/lit8 v3, v3, 0x1

    .line 332
    goto :goto_9

    .line 333
    .line 334
    :cond_14
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 335
    const/4 v1, 0x0

    .line 336
    .line 337
    if-lez v0, :cond_15

    .line 338
    .line 339
    .line 340
    invoke-static {p0, p1, v1, v2}, Landroidx/constraintlayout/core/widgets/Chain;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V

    .line 341
    .line 342
    :cond_15
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 343
    .line 344
    if-lez v0, :cond_16

    .line 345
    .line 346
    .line 347
    invoke-static {p0, p1, v1, v5}, Landroidx/constraintlayout/core/widgets/Chain;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V

    .line 348
    :cond_16
    return v5
.end method

.method public C1(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 14
    move-result v0

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 26
    move-result v1

    .line 27
    .line 28
    if-le v0, v1, :cond_1

    .line 29
    .line 30
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 34
    .line 35
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 36
    :cond_1
    return-void
.end method

.method public D1(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 14
    move-result v0

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 26
    move-result v1

    .line 27
    .line 28
    if-le v0, v1, :cond_1

    .line 29
    .line 30
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 34
    .line 35
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    .line 36
    :cond_1
    return-void
.end method

.method H1(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 14
    move-result v0

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 26
    move-result v1

    .line 27
    .line 28
    if-le v0, v1, :cond_1

    .line 29
    .line 30
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 34
    .line 35
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    .line 36
    :cond_1
    return-void
.end method

.method I1(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 14
    move-result v0

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 26
    move-result v1

    .line 27
    .line 28
    if-le v0, v1, :cond_1

    .line 29
    .line 30
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 34
    .line 35
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    .line 36
    :cond_1
    return-void
.end method

.method public J1(Z)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->f(Z)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public K1(Z)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->g(Z)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public L1(ZI)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->h(ZI)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public M1(Landroidx/constraintlayout/core/Metrics;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/LinearSystem;->v(Landroidx/constraintlayout/core/Metrics;)V

    .line 8
    return-void
.end method

.method public N1()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    return-object v0
.end method

.method public O1()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    return v0
.end method

.method public P1()Landroidx/constraintlayout/core/LinearSystem;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    return-object v0
.end method

.method public Q(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, ":{\n"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    const-string v1, "  actualWidth:"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v0, "\n"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    const-string v2, "  actualHeight:"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->v1()Ljava/util/ArrayList;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    .line 85
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    move-result v1

    .line 87
    .line 88
    if-eqz v1, :cond_0

    .line 89
    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Q(Ljava/lang/StringBuilder;)V

    .line 98
    .line 99
    const-string v1, ",\n"

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    goto :goto_0

    .line 104
    .line 105
    :cond_0
    const-string/jumbo v0, "}"

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    return-void
.end method

.method public Q1()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public R1()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->j()V

    .line 6
    return-void
.end method

.method public S1()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->k()V

    .line 6
    return-void
.end method

.method public T1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    return v0
.end method

.method public U1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    return v0
.end method

.method public V1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    return v0
.end method

.method public W1(IIIIIIIII)J
    .locals 12

    .line 1
    move-object v11, p0

    .line 2
    .line 3
    move/from16 v3, p8

    .line 4
    .line 5
    iput v3, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    .line 6
    .line 7
    move/from16 v4, p9

    .line 8
    .line 9
    iput v4, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    .line 10
    .line 11
    iget-object v0, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    .line 12
    move-object v1, p0

    .line 13
    move v2, p1

    .line 14
    move v5, p2

    .line 15
    move v6, p3

    .line 16
    .line 17
    move/from16 v7, p4

    .line 18
    .line 19
    move/from16 v8, p5

    .line 20
    .line 21
    move/from16 v9, p6

    .line 22
    .line 23
    move/from16 v10, p7

    .line 24
    .line 25
    .line 26
    invoke-virtual/range {v0 .. v10}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->d(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;IIIIIIIII)J

    .line 27
    move-result-wide v0

    .line 28
    return-wide v0
.end method

.method public Y1(I)Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a2(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->n(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 8
    return-void
.end method

.method public b2(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 3
    .line 4
    const/16 p1, 0x200

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->Y1(I)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    sput-boolean p1, Landroidx/constraintlayout/core/LinearSystem;->USE_DEPENDENCY_ORDERING:Z

    .line 11
    return-void
.end method

.method public c2(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->pass:I

    return-void
.end method

.method public d2(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    return-void
.end method

.method public e2(Landroidx/constraintlayout/core/LinearSystem;[Z)Z
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    aput-boolean v1, p2, v0

    .line 5
    .line 6
    const/16 p2, 0x40

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->Y1(I)Z

    .line 10
    move-result p2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u1(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v0

    .line 20
    move v2, v1

    .line 21
    .line 22
    :goto_0
    if-ge v1, v0, :cond_1

    .line 23
    .line 24
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u1(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0()Z

    .line 37
    move-result v3

    .line 38
    .line 39
    if-eqz v3, :cond_0

    .line 40
    const/4 v2, 0x1

    .line 41
    .line 42
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return v2
.end method

.method public f2()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->e(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 6
    return-void
.end method

.method public t1(ZZ)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t1(ZZ)V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    :goto_0
    if-ge v1, v0, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t1(ZZ)V

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public v0()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/constraintlayout/core/LinearSystem;->E()V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    .line 9
    .line 10
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingRight:I

    .line 11
    .line 12
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    .line 13
    .line 14
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingBottom:I

    .line 15
    .line 16
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    .line 17
    .line 18
    .line 19
    invoke-super {p0}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->v0()V

    .line 20
    return-void
.end method

.method public w1()V
    .locals 18

    move-object/from16 v1, p0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x1

    .line 4
    aget-object v7, v5, v6

    .line 5
    aget-object v5, v5, v2

    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v8, :cond_0

    .line 6
    iget-wide v9, v8, Landroidx/constraintlayout/core/Metrics;->layouts:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v8, Landroidx/constraintlayout/core/Metrics;->layouts:J

    :cond_0
    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->pass:I

    if-nez v8, :cond_3

    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 7
    invoke-static {v8, v6}, Landroidx/constraintlayout/core/widgets/Optimizer;->b(II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->N1()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v8

    invoke-static {v1, v8}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->h(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    move v8, v2

    :goto_0
    if-ge v8, v3, :cond_3

    iget-object v9, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 10
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o0()Z

    move-result v10

    if-eqz v10, :cond_2

    instance-of v10, v9, Landroidx/constraintlayout/core/widgets/Guideline;

    if-nez v10, :cond_2

    instance-of v10, v9, Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v10, :cond_2

    instance-of v10, v9, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-nez v10, :cond_2

    .line 11
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->n0()Z

    move-result v10

    if-nez v10, :cond_2

    .line 12
    invoke-virtual {v9, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    .line 13
    invoke-virtual {v9, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v11

    .line 14
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v12, :cond_1

    iget v10, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eq v10, v6, :cond_1

    if-ne v11, v12, :cond_1

    iget v10, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eq v10, v6, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    new-instance v10, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v10}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 16
    sget v12, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    invoke-static {v2, v9, v11, v10, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->X1(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    :cond_2
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    const/4 v8, 0x2

    if-le v3, v8, :cond_9

    .line 17
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v9, :cond_4

    if-ne v7, v9, :cond_9

    :cond_4
    iget v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    const/16 v11, 0x400

    .line 18
    invoke-static {v10, v11}, Landroidx/constraintlayout/core/widgets/Optimizer;->b(II)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->N1()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v10

    invoke-static {v1, v10}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->c(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)Z

    move-result v10

    if-eqz v10, :cond_9

    if-ne v5, v9, :cond_6

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y()I

    move-result v10

    if-ge v0, v10, :cond_5

    if-lez v0, :cond_5

    .line 21
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o1(I)V

    iput-boolean v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    goto :goto_2

    .line 22
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y()I

    move-result v0

    :cond_6
    :goto_2
    if-ne v7, v9, :cond_8

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()I

    move-result v9

    if-ge v4, v9, :cond_7

    if-lez v4, :cond_7

    .line 24
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->P0(I)V

    iput-boolean v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    goto :goto_3

    .line 25
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()I

    move-result v4

    :cond_8
    :goto_3
    move v9, v4

    move v4, v0

    move v0, v6

    goto :goto_4

    :cond_9
    move v9, v4

    move v4, v0

    move v0, v2

    :goto_4
    const/16 v10, 0x40

    .line 26
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->Y1(I)Z

    move-result v11

    if-nez v11, :cond_b

    const/16 v11, 0x80

    invoke-virtual {v1, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->Y1(I)Z

    move-result v11

    if-eqz v11, :cond_a

    goto :goto_5

    :cond_a
    move v11, v2

    goto :goto_6

    :cond_b
    :goto_5
    move v11, v6

    :goto_6
    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 27
    iput-boolean v2, v12, Landroidx/constraintlayout/core/LinearSystem;->graphOptimizer:Z

    .line 28
    iput-boolean v2, v12, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    iget v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    if-eqz v13, :cond_c

    if-eqz v11, :cond_c

    .line 29
    iput-boolean v6, v12, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    :cond_c
    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 30
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v12

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v12, v13, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v12

    if-ne v12, v13, :cond_d

    goto :goto_7

    :cond_d
    move v12, v2

    goto :goto_8

    :cond_e
    :goto_7
    move v12, v6

    .line 31
    :goto_8
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->Z1()V

    move v13, v2

    :goto_9
    if-ge v13, v3, :cond_10

    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 33
    instance-of v15, v14, Landroidx/constraintlayout/core/widgets/WidgetContainer;

    if-eqz v15, :cond_f

    .line 34
    check-cast v14, Landroidx/constraintlayout/core/widgets/WidgetContainer;

    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->w1()V

    :cond_f
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 35
    :cond_10
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->Y1(I)Z

    move-result v10

    move v13, v0

    move v0, v2

    move v14, v6

    :goto_a
    if-eqz v14, :cond_22

    add-int/lit8 v15, v0, 0x1

    :try_start_0
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 36
    invoke-virtual {v0}, Landroidx/constraintlayout/core/LinearSystem;->E()V

    .line 37
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->Z1()V

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 38
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o(Landroidx/constraintlayout/core/LinearSystem;)V

    move v0, v2

    :goto_b
    if-ge v0, v3, :cond_11

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 40
    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o(Landroidx/constraintlayout/core/LinearSystem;)V

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x1

    goto :goto_b

    :catch_0
    move-exception v0

    goto/16 :goto_c

    :cond_11
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 41
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->A1(Landroidx/constraintlayout/core/LinearSystem;)Z

    move-result v14

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    .line 42
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    .line 43
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/LinearSystem;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->F1(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/SolverVariable;)V

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    :cond_12
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_13

    .line 44
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    .line 45
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/LinearSystem;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->E1(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/SolverVariable;)V

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    :cond_13
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_14

    .line 46
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    .line 47
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/LinearSystem;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->F1(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/SolverVariable;)V

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    :cond_14
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_15

    .line 48
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    .line 49
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/LinearSystem;->q(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->E1(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/SolverVariable;)V

    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    :cond_15
    if-eqz v14, :cond_16

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 50
    invoke-virtual {v0}, Landroidx/constraintlayout/core/LinearSystem;->A()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    .line 51
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 52
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EXCEPTION : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_16
    :goto_d
    if-eqz v14, :cond_17

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 53
    sget-object v2, Landroidx/constraintlayout/core/widgets/Optimizer;->flags:[Z

    invoke-virtual {v1, v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->e2(Landroidx/constraintlayout/core/LinearSystem;[Z)Z

    move-result v0

    goto :goto_f

    :cond_17
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 54
    invoke-virtual {v1, v0, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u1(Landroidx/constraintlayout/core/LinearSystem;Z)V

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v3, :cond_18

    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 56
    invoke-virtual {v2, v6, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u1(Landroidx/constraintlayout/core/LinearSystem;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_18
    const/4 v0, 0x0

    :goto_f
    const/16 v2, 0x8

    if-eqz v12, :cond_1b

    if-ge v15, v2, :cond_1b

    .line 57
    sget-object v6, Landroidx/constraintlayout/core/widgets/Optimizer;->flags:[Z

    const/4 v8, 0x2

    aget-boolean v6, v6, v8

    if-eqz v6, :cond_1b

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    :goto_10
    if-ge v6, v3, :cond_19

    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move/from16 v16, v0

    .line 59
    iget v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y()I

    move-result v17

    add-int v0, v0, v17

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 60
    iget v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v16

    const/16 v2, 0x8

    goto :goto_10

    :cond_19
    move/from16 v16, v0

    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    .line 61
    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    .line 62
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 63
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_1a

    .line 64
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y()I

    move-result v8

    if-ge v8, v0, :cond_1a

    .line 65
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o1(I)V

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x0

    .line 66
    aput-object v6, v0, v8

    const/4 v13, 0x1

    const/16 v16, 0x1

    :cond_1a
    if-ne v7, v6, :cond_1c

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()I

    move-result v0

    if-ge v0, v2, :cond_1c

    .line 68
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->P0(I)V

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    .line 69
    aput-object v6, v0, v2

    const/4 v13, 0x1

    const/16 v16, 0x1

    goto :goto_11

    :cond_1b
    move/from16 v16, v0

    :cond_1c
    :goto_11
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    .line 70
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y()I

    move-result v2

    if-le v0, v2, :cond_1d

    .line 72
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o1(I)V

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 73
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x0

    aput-object v2, v0, v6

    const/4 v13, 0x1

    const/16 v16, 0x1

    :cond_1d
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    .line 74
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()I

    move-result v2

    if-le v0, v2, :cond_1e

    .line 76
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->P0(I)V

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 77
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x1

    aput-object v2, v0, v6

    move v2, v6

    move/from16 v16, v2

    goto :goto_12

    :cond_1e
    const/4 v6, 0x1

    move v2, v13

    :goto_12
    if-nez v2, :cond_20

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x0

    .line 78
    aget-object v0, v0, v8

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v13, :cond_1f

    if-lez v4, :cond_1f

    .line 79
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y()I

    move-result v0

    if-le v0, v4, :cond_1f

    iput-boolean v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 80
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v2, v0, v8

    .line 81
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o1(I)V

    move v2, v6

    move/from16 v16, v2

    :cond_1f
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 82
    aget-object v0, v0, v6

    if-ne v0, v13, :cond_20

    if-lez v9, :cond_20

    .line 83
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()I

    move-result v0

    if-le v0, v9, :cond_20

    iput-boolean v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 84
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v2, v0, v6

    .line 85
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->P0(I)V

    const/16 v0, 0x8

    const/4 v2, 0x1

    const/4 v13, 0x1

    goto :goto_13

    :cond_20
    move v13, v2

    move/from16 v2, v16

    const/16 v0, 0x8

    :goto_13
    if-le v15, v0, :cond_21

    const/4 v14, 0x0

    goto :goto_14

    :cond_21
    move v14, v2

    :goto_14
    move v0, v15

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x2

    goto/16 :goto_a

    :cond_22
    iput-object v11, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    if-eqz v13, :cond_23

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    .line 86
    aput-object v5, v0, v2

    const/4 v2, 0x1

    .line 87
    aput-object v7, v0, v2

    :cond_23
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    .line 88
    invoke-virtual {v0}, Landroidx/constraintlayout/core/LinearSystem;->w()Landroidx/constraintlayout/core/Cache;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->z0(Landroidx/constraintlayout/core/Cache;)V

    return-void
.end method

.method z1(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V
    .locals 1

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->B1(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    .line 9
    if-ne p2, v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->G1(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 13
    :cond_1
    :goto_0
    return-void
.end method
