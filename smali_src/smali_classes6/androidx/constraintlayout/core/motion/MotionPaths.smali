.class public Landroidx/constraintlayout/core/motion/MotionPaths;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/constraintlayout/core/motion/MotionPaths;",
        ">;"
    }
.end annotation


# static fields
.field public static final CARTESIAN:I = 0x0

.field public static final DEBUG:Z = false

.field static final OFF_HEIGHT:I = 0x4

.field static final OFF_PATH_ROTATE:I = 0x5

.field static final OFF_POSITION:I = 0x0

.field static final OFF_WIDTH:I = 0x3

.field static final OFF_X:I = 0x1

.field static final OFF_Y:I = 0x2

.field public static final OLD_WAY:Z = false

.field public static final PERPENDICULAR:I = 0x1

.field public static final SCREEN:I = 0x2

.field public static final TAG:Ljava/lang/String; = "MotionPaths"

.field static names:[Ljava/lang/String;


# instance fields
.field customAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/CustomVariable;",
            ">;"
        }
    .end annotation
.end field

.field height:F

.field mAnimateCircleAngleTo:I

.field mAnimateRelativeTo:I

.field mDrawPath:I

.field mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

.field mMode:I

.field mPathMotionArc:I

.field mPathRotate:F

.field mProgress:F

.field mRelativeAngle:F

.field mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

.field mTempDelta:[D

.field mTempValue:[D

.field position:F

.field time:F

.field width:F

.field x:F

.field y:F


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

    sput-object v0, Landroidx/constraintlayout/core/motion/MotionPaths;->names:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathRotate:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mProgress:F

    const/4 v2, -0x1

    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeAngle:F

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

    const/16 v0, 0x12

    new-array v1, v0, [D

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    new-array v0, v0, [D

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempDelta:[D

    return-void
.end method

.method public constructor <init>(IILandroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathRotate:F

    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mProgress:F

    const/4 v2, -0x1

    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeAngle:F

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

    const/16 v0, 0x12

    new-array v1, v0, [D

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    new-array v0, v0, [D

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempDelta:[D

    .line 5
    iget v0, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    if-eq v0, v2, :cond_0

    .line 6
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/core/motion/MotionPaths;->e(IILandroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    return-void

    .line 7
    :cond_0
    iget v0, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPositionType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 8
    invoke-virtual {p0, p3, p4, p5}, Landroidx/constraintlayout/core/motion/MotionPaths;->c(Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    return-void

    .line 9
    :cond_1
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/core/motion/MotionPaths;->f(IILandroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    return-void

    .line 10
    :cond_2
    invoke-virtual {p0, p3, p4, p5}, Landroidx/constraintlayout/core/motion/MotionPaths;->d(Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mTransitionEasing:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/constraintlayout/core/motion/utils/Easing;->c(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 11
    .line 12
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/MotionWidget;->motion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    .line 13
    .line 14
    iget v1, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mPathMotionArc:I

    .line 15
    .line 16
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    .line 17
    .line 18
    iget v1, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mAnimateRelativeTo:I

    .line 19
    .line 20
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    .line 21
    .line 22
    iget v1, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mPathRotate:F

    .line 23
    .line 24
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathRotate:F

    .line 25
    .line 26
    iget v1, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mDrawPath:I

    .line 27
    .line 28
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    .line 29
    .line 30
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mAnimateCircleAngleTo:I

    .line 31
    .line 32
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateCircleAngleTo:I

    .line 33
    .line 34
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/MotionWidget;->propertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    .line 35
    .line 36
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;->mProgress:F

    .line 37
    .line 38
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mProgress:F

    .line 39
    const/4 v0, 0x0

    .line 40
    .line 41
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeAngle:F

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->c()Ljava/util/Set;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v1

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    check-cast v1, Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->b(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    if-eqz v2, :cond_0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/CustomVariable;->e()Z

    .line 71
    move-result v3

    .line 72
    .line 73
    if-eqz v3, :cond_0

    .line 74
    .line 75
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    return-void
.end method

.method public b(Landroidx/constraintlayout/core/motion/MotionPaths;)I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    .line 3
    .line 4
    iget p1, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method c(Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    move-object/from16 v3, p3

    .line 9
    .line 10
    iget v4, v1, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    .line 11
    int-to-float v4, v4

    .line 12
    .line 13
    const/high16 v5, 0x42c80000    # 100.0f

    .line 14
    div-float/2addr v4, v5

    .line 15
    .line 16
    iput v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 17
    .line 18
    iget v5, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mDrawPath:I

    .line 19
    .line 20
    iput v5, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    .line 21
    .line 22
    iget v5, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    .line 23
    .line 24
    .line 25
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 26
    move-result v5

    .line 27
    .line 28
    if-eqz v5, :cond_0

    .line 29
    move v5, v4

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    iget v5, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    .line 33
    .line 34
    :goto_0
    iget v6, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    .line 35
    .line 36
    .line 37
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 38
    move-result v6

    .line 39
    .line 40
    if-eqz v6, :cond_1

    .line 41
    move v6, v4

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_1
    iget v6, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    .line 45
    .line 46
    :goto_1
    iget v7, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 47
    .line 48
    iget v8, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 49
    .line 50
    sub-float v9, v7, v8

    .line 51
    .line 52
    iget v10, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    .line 53
    .line 54
    iget v11, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    .line 55
    .line 56
    sub-float v12, v10, v11

    .line 57
    .line 58
    iget v13, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 59
    .line 60
    iput v13, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    .line 61
    .line 62
    iget v13, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 63
    .line 64
    const/high16 v14, 0x40000000    # 2.0f

    .line 65
    .line 66
    div-float v15, v8, v14

    .line 67
    add-float/2addr v15, v13

    .line 68
    .line 69
    iget v1, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 70
    .line 71
    div-float v16, v11, v14

    .line 72
    .line 73
    add-float v16, v1, v16

    .line 74
    .line 75
    iget v2, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 76
    div-float/2addr v7, v14

    .line 77
    add-float/2addr v2, v7

    .line 78
    .line 79
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 80
    div-float/2addr v10, v14

    .line 81
    add-float/2addr v3, v10

    .line 82
    sub-float/2addr v2, v15

    .line 83
    .line 84
    sub-float v3, v3, v16

    .line 85
    .line 86
    mul-float v7, v2, v4

    .line 87
    add-float/2addr v13, v7

    .line 88
    mul-float/2addr v9, v5

    .line 89
    .line 90
    div-float v5, v9, v14

    .line 91
    sub-float/2addr v13, v5

    .line 92
    float-to-int v7, v13

    .line 93
    int-to-float v7, v7

    .line 94
    .line 95
    iput v7, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 96
    .line 97
    mul-float v7, v3, v4

    .line 98
    add-float/2addr v1, v7

    .line 99
    mul-float/2addr v12, v6

    .line 100
    .line 101
    div-float v6, v12, v14

    .line 102
    sub-float/2addr v1, v6

    .line 103
    float-to-int v1, v1

    .line 104
    int-to-float v1, v1

    .line 105
    .line 106
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 107
    add-float/2addr v8, v9

    .line 108
    float-to-int v1, v8

    .line 109
    int-to-float v1, v1

    .line 110
    .line 111
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 112
    add-float/2addr v11, v12

    .line 113
    float-to-int v1, v11

    .line 114
    int-to-float v1, v1

    .line 115
    .line 116
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    .line 117
    .line 118
    move-object/from16 v1, p1

    .line 119
    .line 120
    iget v7, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    .line 121
    .line 122
    .line 123
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    .line 124
    move-result v7

    .line 125
    .line 126
    if-eqz v7, :cond_2

    .line 127
    move v7, v4

    .line 128
    goto :goto_2

    .line 129
    .line 130
    :cond_2
    iget v7, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    .line 131
    .line 132
    :goto_2
    iget v8, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentY:F

    .line 133
    .line 134
    .line 135
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    .line 136
    move-result v8

    .line 137
    const/4 v9, 0x0

    .line 138
    .line 139
    if-eqz v8, :cond_3

    .line 140
    move v8, v9

    .line 141
    goto :goto_3

    .line 142
    .line 143
    :cond_3
    iget v8, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentY:F

    .line 144
    .line 145
    :goto_3
    iget v10, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    .line 146
    .line 147
    .line 148
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    .line 149
    move-result v10

    .line 150
    .line 151
    if-eqz v10, :cond_4

    .line 152
    goto :goto_4

    .line 153
    .line 154
    :cond_4
    iget v4, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    .line 155
    .line 156
    :goto_4
    iget v10, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentX:F

    .line 157
    .line 158
    .line 159
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    .line 160
    move-result v10

    .line 161
    .line 162
    if-eqz v10, :cond_5

    .line 163
    goto :goto_5

    .line 164
    .line 165
    :cond_5
    iget v9, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentX:F

    .line 166
    :goto_5
    const/4 v10, 0x0

    .line 167
    .line 168
    iput v10, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

    .line 169
    .line 170
    move-object/from16 v10, p2

    .line 171
    .line 172
    iget v11, v10, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 173
    mul-float/2addr v7, v2

    .line 174
    add-float/2addr v11, v7

    .line 175
    mul-float/2addr v9, v3

    .line 176
    add-float/2addr v11, v9

    .line 177
    sub-float/2addr v11, v5

    .line 178
    float-to-int v5, v11

    .line 179
    int-to-float v5, v5

    .line 180
    .line 181
    iput v5, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 182
    .line 183
    iget v5, v10, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 184
    mul-float/2addr v2, v8

    .line 185
    add-float/2addr v5, v2

    .line 186
    mul-float/2addr v3, v4

    .line 187
    add-float/2addr v5, v3

    .line 188
    sub-float/2addr v5, v6

    .line 189
    float-to-int v2, v5

    .line 190
    int-to-float v2, v2

    .line 191
    .line 192
    iput v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 193
    .line 194
    iget-object v2, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    invoke-static {v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->c(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 198
    move-result-object v2

    .line 199
    .line 200
    iput-object v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 201
    .line 202
    iget v1, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPathMotionArc:I

    .line 203
    .line 204
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    .line 205
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/MotionPaths;->b(Landroidx/constraintlayout/core/motion/MotionPaths;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method d(Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    move-object/from16 v3, p3

    .line 9
    .line 10
    iget v4, v1, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    .line 11
    int-to-float v4, v4

    .line 12
    .line 13
    const/high16 v5, 0x42c80000    # 100.0f

    .line 14
    div-float/2addr v4, v5

    .line 15
    .line 16
    iput v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 17
    .line 18
    iget v5, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mDrawPath:I

    .line 19
    .line 20
    iput v5, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    .line 21
    .line 22
    iget v5, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    .line 23
    .line 24
    .line 25
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 26
    move-result v5

    .line 27
    .line 28
    if-eqz v5, :cond_0

    .line 29
    move v5, v4

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    iget v5, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    .line 33
    .line 34
    :goto_0
    iget v6, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    .line 35
    .line 36
    .line 37
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 38
    move-result v6

    .line 39
    .line 40
    if-eqz v6, :cond_1

    .line 41
    move v6, v4

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_1
    iget v6, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    .line 45
    .line 46
    :goto_1
    iget v7, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 47
    .line 48
    iget v8, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 49
    sub-float/2addr v7, v8

    .line 50
    .line 51
    iget v8, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    .line 52
    .line 53
    iget v9, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    .line 54
    sub-float/2addr v8, v9

    .line 55
    .line 56
    iget v9, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 57
    .line 58
    iput v9, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    .line 59
    .line 60
    iget v9, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    .line 61
    .line 62
    .line 63
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    .line 64
    move-result v9

    .line 65
    .line 66
    if-eqz v9, :cond_2

    .line 67
    goto :goto_2

    .line 68
    .line 69
    :cond_2
    iget v4, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    .line 70
    .line 71
    :goto_2
    iget v9, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 72
    .line 73
    iget v10, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 74
    .line 75
    const/high16 v11, 0x40000000    # 2.0f

    .line 76
    .line 77
    div-float v12, v10, v11

    .line 78
    add-float/2addr v12, v9

    .line 79
    .line 80
    iget v13, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 81
    .line 82
    iget v14, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    .line 83
    .line 84
    div-float v15, v14, v11

    .line 85
    add-float/2addr v15, v13

    .line 86
    .line 87
    iget v2, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 88
    .line 89
    iget v1, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 90
    div-float/2addr v1, v11

    .line 91
    add-float/2addr v2, v1

    .line 92
    .line 93
    iget v1, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 94
    .line 95
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    .line 96
    div-float/2addr v3, v11

    .line 97
    add-float/2addr v1, v3

    .line 98
    sub-float/2addr v2, v12

    .line 99
    sub-float/2addr v1, v15

    .line 100
    .line 101
    mul-float v3, v2, v4

    .line 102
    add-float/2addr v9, v3

    .line 103
    mul-float/2addr v7, v5

    .line 104
    .line 105
    div-float v5, v7, v11

    .line 106
    sub-float/2addr v9, v5

    .line 107
    float-to-int v9, v9

    .line 108
    int-to-float v9, v9

    .line 109
    .line 110
    iput v9, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 111
    mul-float/2addr v4, v1

    .line 112
    add-float/2addr v13, v4

    .line 113
    mul-float/2addr v8, v6

    .line 114
    .line 115
    div-float v6, v8, v11

    .line 116
    sub-float/2addr v13, v6

    .line 117
    float-to-int v9, v13

    .line 118
    int-to-float v9, v9

    .line 119
    .line 120
    iput v9, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 121
    add-float/2addr v10, v7

    .line 122
    float-to-int v7, v10

    .line 123
    int-to-float v7, v7

    .line 124
    .line 125
    iput v7, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 126
    add-float/2addr v14, v8

    .line 127
    float-to-int v7, v14

    .line 128
    int-to-float v7, v7

    .line 129
    .line 130
    iput v7, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    .line 131
    .line 132
    move-object/from16 v7, p1

    .line 133
    .line 134
    iget v8, v7, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    .line 135
    .line 136
    .line 137
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    .line 138
    move-result v8

    .line 139
    .line 140
    if-eqz v8, :cond_3

    .line 141
    const/4 v8, 0x0

    .line 142
    goto :goto_3

    .line 143
    .line 144
    :cond_3
    iget v8, v7, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    .line 145
    :goto_3
    neg-float v1, v1

    .line 146
    mul-float/2addr v1, v8

    .line 147
    mul-float/2addr v2, v8

    .line 148
    const/4 v8, 0x1

    .line 149
    .line 150
    iput v8, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

    .line 151
    .line 152
    move-object/from16 v8, p2

    .line 153
    .line 154
    iget v9, v8, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 155
    add-float/2addr v9, v3

    .line 156
    sub-float/2addr v9, v5

    .line 157
    float-to-int v3, v9

    .line 158
    int-to-float v3, v3

    .line 159
    .line 160
    iget v5, v8, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 161
    add-float/2addr v5, v4

    .line 162
    sub-float/2addr v5, v6

    .line 163
    float-to-int v4, v5

    .line 164
    int-to-float v4, v4

    .line 165
    add-float/2addr v3, v1

    .line 166
    .line 167
    iput v3, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 168
    add-float/2addr v4, v2

    .line 169
    .line 170
    iput v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 171
    .line 172
    iget v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    .line 173
    .line 174
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    .line 175
    .line 176
    iget-object v1, v7, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Easing;->c(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 180
    move-result-object v1

    .line 181
    .line 182
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 183
    .line 184
    iget v1, v7, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPathMotionArc:I

    .line 185
    .line 186
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    .line 187
    return-void
.end method

.method e(IILandroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .locals 6

    .line 1
    .line 2
    iget p1, p3, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    .line 3
    int-to-float p1, p1

    .line 4
    .line 5
    const/high16 p2, 0x42c80000    # 100.0f

    .line 6
    div-float/2addr p1, p2

    .line 7
    .line 8
    iput p1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 9
    .line 10
    iget p2, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mDrawPath:I

    .line 11
    .line 12
    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    .line 13
    .line 14
    iget p2, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPositionType:I

    .line 15
    .line 16
    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

    .line 17
    .line 18
    iget p2, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    .line 19
    .line 20
    .line 21
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 22
    move-result p2

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    move p2, p1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    iget p2, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    .line 29
    .line 30
    :goto_0
    iget v0, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    move v0, p1

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_1
    iget v0, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    .line 41
    .line 42
    :goto_1
    iget v1, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 43
    .line 44
    iget v2, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 45
    sub-float/2addr v1, v2

    .line 46
    .line 47
    iget v3, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    .line 48
    .line 49
    iget v4, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    .line 50
    sub-float/2addr v3, v4

    .line 51
    .line 52
    iget v5, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 53
    .line 54
    iput v5, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    .line 55
    mul-float/2addr v1, p2

    .line 56
    add-float/2addr v2, v1

    .line 57
    float-to-int v1, v2

    .line 58
    int-to-float v1, v1

    .line 59
    .line 60
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 61
    mul-float/2addr v3, v0

    .line 62
    add-float/2addr v4, v3

    .line 63
    float-to-int v1, v4

    .line 64
    int-to-float v1, v1

    .line 65
    .line 66
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    .line 67
    .line 68
    iget v1, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPositionType:I

    .line 69
    const/4 v2, 0x1

    .line 70
    .line 71
    if-eq v1, v2, :cond_7

    .line 72
    const/4 v2, 0x2

    .line 73
    .line 74
    if-eq v1, v2, :cond_4

    .line 75
    .line 76
    iget p2, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    .line 77
    .line 78
    .line 79
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 80
    move-result p2

    .line 81
    .line 82
    if-eqz p2, :cond_2

    .line 83
    move p2, p1

    .line 84
    goto :goto_2

    .line 85
    .line 86
    :cond_2
    iget p2, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    .line 87
    .line 88
    :goto_2
    iget v0, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 89
    .line 90
    iget v1, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 91
    sub-float/2addr v0, v1

    .line 92
    mul-float/2addr p2, v0

    .line 93
    add-float/2addr p2, v1

    .line 94
    .line 95
    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 96
    .line 97
    iget p2, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    .line 98
    .line 99
    .line 100
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 101
    move-result p2

    .line 102
    .line 103
    if-eqz p2, :cond_3

    .line 104
    goto :goto_3

    .line 105
    .line 106
    :cond_3
    iget p1, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    .line 107
    .line 108
    :goto_3
    iget p2, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 109
    .line 110
    iget p5, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 111
    sub-float/2addr p2, p5

    .line 112
    mul-float/2addr p1, p2

    .line 113
    add-float/2addr p1, p5

    .line 114
    .line 115
    iput p1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 116
    goto :goto_8

    .line 117
    .line 118
    :cond_4
    iget v1, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    .line 119
    .line 120
    .line 121
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 122
    move-result v1

    .line 123
    .line 124
    if-eqz v1, :cond_5

    .line 125
    .line 126
    iget p2, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 127
    .line 128
    iget v0, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 129
    sub-float/2addr p2, v0

    .line 130
    mul-float/2addr p2, p1

    .line 131
    add-float/2addr p2, v0

    .line 132
    goto :goto_4

    .line 133
    .line 134
    :cond_5
    iget v1, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    .line 135
    .line 136
    .line 137
    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    .line 138
    move-result p2

    .line 139
    mul-float/2addr p2, v1

    .line 140
    .line 141
    :goto_4
    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 142
    .line 143
    iget p2, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    .line 144
    .line 145
    .line 146
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 147
    move-result p2

    .line 148
    .line 149
    if-eqz p2, :cond_6

    .line 150
    .line 151
    iget p2, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 152
    .line 153
    iget p5, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 154
    sub-float/2addr p2, p5

    .line 155
    mul-float/2addr p1, p2

    .line 156
    add-float/2addr p1, p5

    .line 157
    goto :goto_5

    .line 158
    .line 159
    :cond_6
    iget p1, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    .line 160
    .line 161
    :goto_5
    iput p1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 162
    goto :goto_8

    .line 163
    .line 164
    :cond_7
    iget p2, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    .line 165
    .line 166
    .line 167
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 168
    move-result p2

    .line 169
    .line 170
    if-eqz p2, :cond_8

    .line 171
    move p2, p1

    .line 172
    goto :goto_6

    .line 173
    .line 174
    :cond_8
    iget p2, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    .line 175
    .line 176
    :goto_6
    iget v0, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 177
    .line 178
    iget v1, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 179
    sub-float/2addr v0, v1

    .line 180
    mul-float/2addr p2, v0

    .line 181
    add-float/2addr p2, v1

    .line 182
    .line 183
    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 184
    .line 185
    iget p2, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    .line 186
    .line 187
    .line 188
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 189
    move-result p2

    .line 190
    .line 191
    if-eqz p2, :cond_9

    .line 192
    goto :goto_7

    .line 193
    .line 194
    :cond_9
    iget p1, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    .line 195
    .line 196
    :goto_7
    iget p2, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 197
    .line 198
    iget p5, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 199
    sub-float/2addr p2, p5

    .line 200
    mul-float/2addr p1, p2

    .line 201
    add-float/2addr p1, p5

    .line 202
    .line 203
    iput p1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 204
    .line 205
    :goto_8
    iget p1, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    .line 206
    .line 207
    iput p1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    .line 208
    .line 209
    iget-object p1, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/Easing;->c(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 213
    move-result-object p1

    .line 214
    .line 215
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 216
    .line 217
    iget p1, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPathMotionArc:I

    .line 218
    .line 219
    iput p1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    .line 220
    return-void
.end method

.method f(IILandroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p3

    .line 5
    .line 6
    move-object/from16 v2, p4

    .line 7
    .line 8
    move-object/from16 v3, p5

    .line 9
    .line 10
    iget v4, v1, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    .line 11
    int-to-float v4, v4

    .line 12
    .line 13
    const/high16 v5, 0x42c80000    # 100.0f

    .line 14
    div-float/2addr v4, v5

    .line 15
    .line 16
    iput v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 17
    .line 18
    iget v5, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mDrawPath:I

    .line 19
    .line 20
    iput v5, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    .line 21
    .line 22
    iget v5, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    .line 23
    .line 24
    .line 25
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 26
    move-result v5

    .line 27
    .line 28
    if-eqz v5, :cond_0

    .line 29
    move v5, v4

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    iget v5, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    .line 33
    .line 34
    :goto_0
    iget v6, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    .line 35
    .line 36
    .line 37
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 38
    move-result v6

    .line 39
    .line 40
    if-eqz v6, :cond_1

    .line 41
    move v6, v4

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_1
    iget v6, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    .line 45
    .line 46
    :goto_1
    iget v7, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 47
    .line 48
    iget v8, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 49
    .line 50
    sub-float v9, v7, v8

    .line 51
    .line 52
    iget v10, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    .line 53
    .line 54
    iget v11, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    .line 55
    .line 56
    sub-float v12, v10, v11

    .line 57
    .line 58
    iget v13, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 59
    .line 60
    iput v13, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    .line 61
    .line 62
    iget v13, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 63
    .line 64
    const/high16 v14, 0x40000000    # 2.0f

    .line 65
    .line 66
    div-float v15, v8, v14

    .line 67
    add-float/2addr v15, v13

    .line 68
    .line 69
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 70
    .line 71
    div-float v16, v11, v14

    .line 72
    .line 73
    add-float v16, v2, v16

    .line 74
    .line 75
    iget v1, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 76
    div-float/2addr v7, v14

    .line 77
    add-float/2addr v1, v7

    .line 78
    .line 79
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 80
    div-float/2addr v10, v14

    .line 81
    add-float/2addr v3, v10

    .line 82
    sub-float/2addr v1, v15

    .line 83
    .line 84
    sub-float v3, v3, v16

    .line 85
    mul-float/2addr v1, v4

    .line 86
    add-float/2addr v13, v1

    .line 87
    mul-float/2addr v9, v5

    .line 88
    .line 89
    div-float v1, v9, v14

    .line 90
    sub-float/2addr v13, v1

    .line 91
    float-to-int v1, v13

    .line 92
    int-to-float v1, v1

    .line 93
    .line 94
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 95
    mul-float/2addr v3, v4

    .line 96
    add-float/2addr v2, v3

    .line 97
    mul-float/2addr v12, v6

    .line 98
    .line 99
    div-float v1, v12, v14

    .line 100
    sub-float/2addr v2, v1

    .line 101
    float-to-int v1, v2

    .line 102
    int-to-float v1, v1

    .line 103
    .line 104
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 105
    add-float/2addr v8, v9

    .line 106
    float-to-int v1, v8

    .line 107
    int-to-float v1, v1

    .line 108
    .line 109
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 110
    add-float/2addr v11, v12

    .line 111
    float-to-int v1, v11

    .line 112
    int-to-float v1, v1

    .line 113
    .line 114
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    .line 115
    const/4 v1, 0x2

    .line 116
    .line 117
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

    .line 118
    .line 119
    move-object/from16 v1, p3

    .line 120
    .line 121
    iget v2, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    .line 122
    .line 123
    .line 124
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 125
    move-result v2

    .line 126
    .line 127
    if-nez v2, :cond_2

    .line 128
    .line 129
    move/from16 v2, p1

    .line 130
    int-to-float v2, v2

    .line 131
    .line 132
    iget v3, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 133
    sub-float/2addr v2, v3

    .line 134
    float-to-int v2, v2

    .line 135
    .line 136
    iget v3, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    .line 137
    int-to-float v2, v2

    .line 138
    mul-float/2addr v3, v2

    .line 139
    float-to-int v2, v3

    .line 140
    int-to-float v2, v2

    .line 141
    .line 142
    iput v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 143
    .line 144
    :cond_2
    iget v2, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    .line 145
    .line 146
    .line 147
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 148
    move-result v2

    .line 149
    .line 150
    if-nez v2, :cond_3

    .line 151
    .line 152
    move/from16 v2, p2

    .line 153
    int-to-float v2, v2

    .line 154
    .line 155
    iget v3, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    .line 156
    sub-float/2addr v2, v3

    .line 157
    float-to-int v2, v2

    .line 158
    .line 159
    iget v3, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    .line 160
    int-to-float v2, v2

    .line 161
    mul-float/2addr v3, v2

    .line 162
    float-to-int v2, v3

    .line 163
    int-to-float v2, v2

    .line 164
    .line 165
    iput v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 166
    .line 167
    :cond_3
    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    .line 168
    .line 169
    iput v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    .line 170
    .line 171
    iget-object v2, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    invoke-static {v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->c(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 175
    move-result-object v2

    .line 176
    .line 177
    iput-object v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 178
    .line 179
    iget v1, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPathMotionArc:I

    .line 180
    .line 181
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    .line 182
    return-void
.end method

.method h(FFFF)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    iput p3, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    iput p4, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    return-void
.end method
