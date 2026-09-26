.class Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;",
        ">;"
    }
.end annotation


# static fields
.field static final CARTESIAN:I = 0x2

.field public static final DEBUG:Z = false

.field static final PERPENDICULAR:I = 0x1

.field public static final TAG:Ljava/lang/String; = "MotionPaths"

.field static names:[Ljava/lang/String;


# instance fields
.field private alpha:F

.field private applyElevation:Z

.field private elevation:F

.field private height:F

.field private mAnimateRelativeTo:I

.field mCustomVariable:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/CustomVariable;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawPath:I

.field private mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

.field mMode:I

.field private mPathRotate:F

.field private mPivotX:F

.field private mPivotY:F

.field private mProgress:F

.field mTempDelta:[D

.field mTempValue:[D

.field mVisibilityMode:I

.field private position:F

.field private rotation:F

.field private rotationX:F

.field public rotationY:F

.field private scaleX:F

.field private scaleY:F

.field private translationX:F

.field private translationY:F

.field private translationZ:F

.field visibility:I

.field private width:F

.field private x:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "position"

    const-string v1, "x"

    const-string v2, "y"

    const-string v3, "width"

    const-string v4, "height"

    const-string v5, "pathRotate"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->names:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    .line 7
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->alpha:F

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mVisibilityMode:I

    .line 11
    .line 12
    iput-boolean v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->applyElevation:Z

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->elevation:F

    .line 16
    .line 17
    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    .line 18
    .line 19
    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationX:F

    .line 20
    .line 21
    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationY:F

    .line 22
    .line 23
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleX:F

    .line 24
    .line 25
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleY:F

    .line 26
    .line 27
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 28
    .line 29
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    .line 30
    .line 31
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    .line 32
    .line 33
    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationX:F

    .line 34
    .line 35
    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationY:F

    .line 36
    .line 37
    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationZ:F

    .line 38
    .line 39
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mDrawPath:I

    .line 40
    .line 41
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPathRotate:F

    .line 42
    .line 43
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mProgress:F

    .line 44
    const/4 v0, -0x1

    .line 45
    .line 46
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mAnimateRelativeTo:I

    .line 47
    .line 48
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 52
    .line 53
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mCustomVariable:Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mMode:I

    .line 56
    .line 57
    const/16 v0, 0x12

    .line 58
    .line 59
    new-array v1, v0, [D

    .line 60
    .line 61
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mTempValue:[D

    .line 62
    .line 63
    new-array v0, v0, [D

    .line 64
    .line 65
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mTempDelta:[D

    .line 66
    return-void
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->q()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->q()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x4

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    const/4 v0, 0x0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->a()F

    .line 19
    move-result v0

    .line 20
    .line 21
    :goto_0
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->alpha:F

    .line 22
    const/4 v0, 0x0

    .line 23
    .line 24
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->applyElevation:Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->j()F

    .line 28
    move-result v0

    .line 29
    .line 30
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->h()F

    .line 34
    move-result v0

    .line 35
    .line 36
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationX:F

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->i()F

    .line 40
    move-result v0

    .line 41
    .line 42
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationY:F

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->k()F

    .line 46
    move-result v0

    .line 47
    .line 48
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleX:F

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->l()F

    .line 52
    move-result v0

    .line 53
    .line 54
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleY:F

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->f()F

    .line 58
    move-result v0

    .line 59
    .line 60
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->g()F

    .line 64
    move-result v0

    .line 65
    .line 66
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->n()F

    .line 70
    move-result v0

    .line 71
    .line 72
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationX:F

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->o()F

    .line 76
    move-result v0

    .line 77
    .line 78
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationY:F

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->p()F

    .line 82
    move-result v0

    .line 83
    .line 84
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationZ:F

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->c()Ljava/util/Set;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    .line 95
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    move-result v1

    .line 97
    .line 98
    if-eqz v1, :cond_2

    .line 99
    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    check-cast v1, Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->b(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 108
    move-result-object v2

    .line 109
    .line 110
    if-eqz v2, :cond_1

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/CustomVariable;->e()Z

    .line 114
    move-result v3

    .line 115
    .line 116
    if-eqz v3, :cond_1

    .line 117
    .line 118
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mCustomVariable:Ljava/util/LinkedHashMap;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    goto :goto_1

    .line 123
    :cond_2
    return-void
.end method

.method public b(Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;)I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->position:F

    .line 3
    .line 4
    iget p1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->position:F

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method c(FFFF)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->x:F

    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->y:F

    iput p3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->width:F

    iput p4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->height:F

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->b(Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public d(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->s()I

    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->t()I

    .line 9
    move-result v1

    .line 10
    int-to-float v1, v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->r()I

    .line 14
    move-result v2

    .line 15
    int-to-float v2, v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->d()I

    .line 19
    move-result v3

    .line 20
    int-to-float v3, v3

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->c(FFFF)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->a(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 27
    return-void
.end method
