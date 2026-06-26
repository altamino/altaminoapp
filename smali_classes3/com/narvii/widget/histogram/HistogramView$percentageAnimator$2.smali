.class final Lcom/narvii/widget/histogram/HistogramView$percentageAnimator$2;
.super Lkotlin/jvm/internal/Lambda;
.source "HistogramView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/histogram/HistogramView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/animation/ValueAnimator;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/widget/histogram/HistogramView$percentageAnimator$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/widget/histogram/HistogramView$percentageAnimator$2;

    invoke-direct {v0}, Lcom/narvii/widget/histogram/HistogramView$percentageAnimator$2;-><init>()V

    sput-object v0, Lcom/narvii/widget/histogram/HistogramView$percentageAnimator$2;->INSTANCE:Lcom/narvii/widget/histogram/HistogramView$percentageAnimator$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/animation/ValueAnimator;
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 46
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3ca3d70a    # 0.02f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/narvii/widget/histogram/HistogramView$percentageAnimator$2;->invoke()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method
