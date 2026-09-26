.class public Lcom/narvii/nested/utils/AnimationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/nested/utils/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 8
    .line 9
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/narvii/nested/utils/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 15
    .line 16
    new-instance v0, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    .line 20
    .line 21
    sput-object v0, Lcom/narvii/nested/utils/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 22
    .line 23
    new-instance v0, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    .line 27
    .line 28
    sput-object v0, Lcom/narvii/nested/utils/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 29
    .line 30
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 34
    .line 35
    sput-object v0, Lcom/narvii/nested/utils/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static lerp(FFF)F
    .locals 0

    .line 1
    sub-float/2addr p1, p0

    mul-float/2addr p2, p1

    add-float/2addr p0, p2

    return p0
.end method

.method static lerp(IIF)I
    .locals 0

    sub-int/2addr p1, p0

    int-to-float p1, p1

    mul-float/2addr p2, p1

    .line 2
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method
