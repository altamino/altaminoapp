.class public final Landroidx/dynamicanimation/animation/FlingAnimation;
.super Landroidx/dynamicanimation/animation/DynamicAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/DynamicAnimation<",
        "Landroidx/dynamicanimation/animation/FlingAnimation;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    .line 2
    new-instance p1, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;-><init>()V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 3
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->c()F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->b(F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "TK;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 5
    new-instance p1, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;-><init>()V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 6
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->c()F

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->b(F)V

    return-void
.end method


# virtual methods
.method f(J)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 3
    .line 4
    iget v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 5
    .line 6
    iget v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, p1, p2}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->c(FFJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iget p2, p1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    .line 13
    .line 14
    iput p2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 15
    .line 16
    iget p1, p1, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 17
    .line 18
    iput p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 19
    .line 20
    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 21
    .line 22
    cmpg-float v1, p2, v0

    .line 23
    const/4 v2, 0x1

    .line 24
    .line 25
    if-gez v1, :cond_0

    .line 26
    .line 27
    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 28
    return v2

    .line 29
    .line 30
    :cond_0
    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 31
    .line 32
    cmpl-float v1, p2, v0

    .line 33
    .line 34
    if-lez v1, :cond_1

    .line 35
    .line 36
    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 37
    return v2

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0, p2, p1}, Landroidx/dynamicanimation/animation/FlingAnimation;->g(FF)Z

    .line 41
    move-result p1

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    return v2

    .line 45
    :cond_2
    const/4 p1, 0x0

    .line 46
    return p1
.end method

.method g(FF)Z
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 3
    .line 4
    cmpl-float v0, p1, v0

    .line 5
    .line 6
    if-gez v0, :cond_1

    .line 7
    .line 8
    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 9
    .line 10
    cmpg-float v0, p1, v0

    .line 11
    .line 12
    if-lez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->mFlingForce:Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Landroidx/dynamicanimation/animation/FlingAnimation$DragForce;->a(FF)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 25
    :goto_1
    return p1
.end method
