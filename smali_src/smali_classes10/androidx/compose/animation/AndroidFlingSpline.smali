.class public final Landroidx/compose/animation/AndroidFlingSpline;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/AndroidFlingSpline$FlingResult;
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/animation/AndroidFlingSpline;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final NbSamples:I = 0x64

.field private static final SplinePositions:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SplineTimes:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/animation/AndroidFlingSpline;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/compose/animation/AndroidFlingSpline;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/compose/animation/AndroidFlingSpline;->INSTANCE:Landroidx/compose/animation/AndroidFlingSpline;

    .line 8
    .line 9
    const/16 v0, 0x65

    .line 10
    .line 11
    new-array v1, v0, [F

    .line 12
    .line 13
    sput-object v1, Landroidx/compose/animation/AndroidFlingSpline;->SplinePositions:[F

    .line 14
    .line 15
    new-array v0, v0, [F

    .line 16
    .line 17
    sput-object v0, Landroidx/compose/animation/AndroidFlingSpline;->SplineTimes:[F

    .line 18
    .line 19
    const/16 v2, 0x64

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v0, v2}, Landroidx/compose/animation/SplineBasedDecayKt;->a([F[FI)V

    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(FF)D
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, 0x3eb33333    # 0.35f

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 7
    move-result p1

    .line 8
    mul-float/2addr p1, v0

    .line 9
    float-to-double v0, p1

    .line 10
    float-to-double p1, p2

    .line 11
    div-double/2addr v0, p1

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 15
    move-result-wide p1

    .line 16
    return-wide p1
.end method

.method public final b(F)Landroidx/compose/animation/AndroidFlingSpline$FlingResult;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x64

    .line 3
    int-to-float v1, v0

    .line 4
    .line 5
    mul-float v2, v1, p1

    .line 6
    float-to-int v2, v2

    .line 7
    .line 8
    if-ge v2, v0, :cond_0

    .line 9
    int-to-float v0, v2

    .line 10
    div-float/2addr v0, v1

    .line 11
    .line 12
    add-int/lit8 v3, v2, 0x1

    .line 13
    int-to-float v4, v3

    .line 14
    div-float/2addr v4, v1

    .line 15
    .line 16
    sget-object v1, Landroidx/compose/animation/AndroidFlingSpline;->SplinePositions:[F

    .line 17
    .line 18
    aget v2, v1, v2

    .line 19
    .line 20
    aget v1, v1, v3

    .line 21
    sub-float/2addr v1, v2

    .line 22
    sub-float/2addr v4, v0

    .line 23
    div-float/2addr v1, v4

    .line 24
    sub-float/2addr p1, v0

    .line 25
    mul-float/2addr p1, v1

    .line 26
    add-float/2addr v2, p1

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 30
    const/4 v1, 0x0

    .line 31
    .line 32
    :goto_0
    new-instance p1, Landroidx/compose/animation/AndroidFlingSpline$FlingResult;

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, v2, v1}, Landroidx/compose/animation/AndroidFlingSpline$FlingResult;-><init>(FF)V

    .line 36
    return-object p1
.end method
