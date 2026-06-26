.class public abstract Lcom/narvii/quiz/QuizMileStoneFragment$CenterLinearSmoothScroller;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "QuizMileStoneFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/quiz/QuizMileStoneFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "CenterLinearSmoothScroller"
.end annotation


# static fields
.field public static final SNAP_TO_CENTER:I = 0xa

.field private static final SPEED:F = 250.0f


# instance fields
.field final synthetic this$0:Lcom/narvii/quiz/QuizMileStoneFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/quiz/QuizMileStoneFragment;Landroid/content/Context;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$CenterLinearSmoothScroller;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 661
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .locals 0

    add-int/2addr p3, p4

    .line 677
    div-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p3, p1

    return p3
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 667
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x437a0000    # 250.0f

    div-float/2addr v0, p1

    return v0
.end method

.method protected getHorizontalSnapPreference()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method
