.class Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;
.super Landroidx/constraintlayout/core/motion/utils/CurveFit;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/CurveFit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Constant"
.end annotation


# instance fields
.field mTime:D

.field mValue:[D


# direct methods
.method constructor <init>(D[D)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;->mTime:D

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;->mValue:[D

    .line 8
    return-void
.end method


# virtual methods
.method public c(DI)D
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;->mValue:[D

    .line 3
    .line 4
    aget-wide p2, p1, p3

    .line 5
    return-wide p2
.end method

.method public d(D[D)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;->mValue:[D

    .line 3
    const/4 p2, 0x0

    .line 4
    array-length v0, p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2, p3, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    return-void
.end method

.method public e(D[F)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;->mValue:[D

    .line 4
    array-length v0, p2

    .line 5
    .line 6
    if-ge p1, v0, :cond_0

    .line 7
    .line 8
    aget-wide v0, p2, p1

    .line 9
    double-to-float p2, v0

    .line 10
    .line 11
    aput p2, p3, p1

    .line 12
    .line 13
    add-int/lit8 p1, p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public f(DI)D
    .locals 0

    .line 1
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public g(D[D)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;->mValue:[D

    .line 4
    array-length p2, p2

    .line 5
    .line 6
    if-ge p1, p2, :cond_0

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    aput-wide v0, p3, p1

    .line 11
    .line 12
    add-int/lit8 p1, p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-void
.end method

.method public h()[D
    .locals 4

    .line 1
    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v1, 0x0

    iget-wide v2, p0, Landroidx/constraintlayout/core/motion/utils/CurveFit$Constant;->mTime:D

    aput-wide v2, v0, v1

    return-object v0
.end method
