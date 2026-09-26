.class public Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;
.super Landroidx/constraintlayout/core/motion/utils/SplineSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomSet"
.end annotation


# instance fields
.field mAttributeName:Ljava/lang/String;

.field mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

.field mTempValues:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/SplineSet;-><init>()V

    .line 4
    .line 5
    const-string v0, ","

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x1

    .line 11
    .line 12
    aget-object p1, p1, v0

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mAttributeName:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

    .line 17
    return-void
.end method


# virtual methods
.method public c(IF)V
    .locals 0

    .line 1
    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 3
    .line 4
    const-string p2, "don\'t call for custom attribute call setPoint(pos, ConstraintAttribute)"

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public e(I)V
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;->c()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;->d(I)Landroidx/constraintlayout/core/motion/CustomAttribute;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/CustomAttribute;->b()I

    .line 17
    move-result v1

    .line 18
    .line 19
    new-array v3, v0, [D

    .line 20
    .line 21
    new-array v4, v1, [F

    .line 22
    .line 23
    iput-object v4, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mTempValues:[F

    .line 24
    .line 25
    .line 26
    filled-new-array {v0, v1}, [I

    .line 27
    move-result-object v1

    .line 28
    .line 29
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    check-cast v1, [[D

    .line 36
    move v4, v2

    .line 37
    .line 38
    :goto_0
    if-ge v4, v0, :cond_1

    .line 39
    .line 40
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, v4}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;->b(I)I

    .line 44
    move-result v5

    .line 45
    .line 46
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mConstraintAttributeList:Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6, v4}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomArray;->d(I)Landroidx/constraintlayout/core/motion/CustomAttribute;

    .line 50
    move-result-object v6

    .line 51
    int-to-double v7, v5

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    .line 57
    mul-double/2addr v7, v9

    .line 58
    .line 59
    aput-wide v7, v3, v4

    .line 60
    .line 61
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mTempValues:[F

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6, v5}, Landroidx/constraintlayout/core/motion/CustomAttribute;->a([F)V

    .line 65
    move v5, v2

    .line 66
    .line 67
    :goto_1
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSet;->mTempValues:[F

    .line 68
    array-length v7, v6

    .line 69
    .line 70
    if-ge v5, v7, :cond_0

    .line 71
    .line 72
    aget-object v7, v1, v4

    .line 73
    .line 74
    aget v6, v6, v5

    .line 75
    float-to-double v8, v6

    .line 76
    .line 77
    aput-wide v8, v7, v5

    .line 78
    .line 79
    add-int/lit8 v5, v5, 0x1

    .line 80
    goto :goto_1

    .line 81
    .line 82
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 83
    goto :goto_0

    .line 84
    .line 85
    .line 86
    :cond_1
    invoke-static {p1, v3, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->a(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 90
    return-void
.end method
