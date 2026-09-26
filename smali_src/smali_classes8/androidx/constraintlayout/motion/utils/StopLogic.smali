.class public Landroidx/constraintlayout/motion/utils/StopLogic;
.super Landroidx/constraintlayout/motion/widget/MotionInterpolator;
.source "SourceFile"


# instance fields
.field private mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

.field private mSpringStopEngine:Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

.field private mStopLogicEngine:Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStopLogicEngine:Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    .line 13
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/constraintlayout/core/motion/utils/StopEngine;->a()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public b(FFFFFF)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentPos",
            "destination",
            "currentVelocity",
            "maxTime",
            "maxAcceleration",
            "maxVelocity"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStopLogicEngine:Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;

    .line 3
    .line 4
    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    .line 5
    move v1, p1

    .line 6
    move v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    move v5, p5

    .line 10
    move v6, p6

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine;->d(FFFFFF)V

    .line 14
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/constraintlayout/core/motion/utils/StopEngine;->b()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public d(FFFFFFFI)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentPos",
            "destination",
            "currentVelocity",
            "mass",
            "stiffness",
            "damping",
            "stopThreshold",
            "boundaryMode"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mSpringStopEngine:Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;-><init>()V

    .line 11
    .line 12
    iput-object v1, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mSpringStopEngine:Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

    .line 13
    .line 14
    :cond_0
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mSpringStopEngine:Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;

    .line 15
    .line 16
    iput-object v2, v0, Landroidx/constraintlayout/motion/utils/StopLogic;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    .line 17
    move v3, p1

    .line 18
    move v4, p2

    .line 19
    move v5, p3

    .line 20
    move v6, p4

    .line 21
    .line 22
    move/from16 v7, p5

    .line 23
    .line 24
    move/from16 v8, p6

    .line 25
    .line 26
    move/from16 v9, p7

    .line 27
    .line 28
    move/from16 v10, p8

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {v2 .. v10}, Landroidx/constraintlayout/core/motion/utils/SpringStopEngine;->d(FFFFFFFI)V

    .line 32
    return-void
.end method

.method public getInterpolation(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mEngine:Landroidx/constraintlayout/core/motion/utils/StopEngine;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/constraintlayout/core/motion/utils/StopEngine;->getInterpolation(F)F

    .line 6
    move-result p1

    .line 7
    return p1
.end method
