.class public Lcom/airbnb/lottie/animation/keyframe/h;
.super Lh0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/animation/keyframe/h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh0/a<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private path:Landroid/graphics/Path;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/e;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .locals 0
    .param p2    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct/range {p0 .. p6}, Lh0/a;-><init>(Lcom/airbnb/lottie/e;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/e;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;FLjava/lang/Float;Lcom/airbnb/lottie/animation/keyframe/h$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/airbnb/lottie/animation/keyframe/h;-><init>(Lcom/airbnb/lottie/e;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    return-void
.end method

.method static synthetic g(Lcom/airbnb/lottie/animation/keyframe/h;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/h;->path:Landroid/graphics/Path;

    .line 3
    return-object p1
.end method


# virtual methods
.method h()Landroid/graphics/Path;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/h;->path:Landroid/graphics/Path;

    return-object v0
.end method
