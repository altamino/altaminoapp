.class public Lcom/airbnb/lottie/model/animatable/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/model/animatable/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/model/animatable/m<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final animatableXDimension:Lcom/airbnb/lottie/model/animatable/b;

.field private final animatableYDimension:Lcom/airbnb/lottie/model/animatable/b;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/airbnb/lottie/model/animatable/i;->animatableXDimension:Lcom/airbnb/lottie/model/animatable/b;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/airbnb/lottie/model/animatable/i;->animatableYDimension:Lcom/airbnb/lottie/model/animatable/b;

    .line 8
    return-void
.end method


# virtual methods
.method public a()Lcom/airbnb/lottie/animation/keyframe/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/m;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/i;->animatableXDimension:Lcom/airbnb/lottie/model/animatable/b;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/b;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/airbnb/lottie/model/animatable/i;->animatableYDimension:Lcom/airbnb/lottie/model/animatable/b;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/animatable/b;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/animation/keyframe/m;-><init>(Lcom/airbnb/lottie/animation/keyframe/a;Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 18
    return-object v0
.end method
