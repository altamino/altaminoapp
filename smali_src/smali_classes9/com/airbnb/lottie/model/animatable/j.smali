.class public Lcom/airbnb/lottie/model/animatable/j;
.super Lcom/airbnb/lottie/model/animatable/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/animatable/j$b;,
        Lcom/airbnb/lottie/model/animatable/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/model/animatable/o<",
        "Lcom/airbnb/lottie/model/d;",
        "Lcom/airbnb/lottie/model/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/model/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh0/a<",
            "Lcom/airbnb/lottie/model/d;",
            ">;>;",
            "Lcom/airbnb/lottie/model/d;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/animatable/o;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/airbnb/lottie/animation/keyframe/a;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/j;->e()Lcom/airbnb/lottie/animation/keyframe/o;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public e()Lcom/airbnb/lottie/animation/keyframe/o;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/o;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/o;->keyframes:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/keyframe/o;-><init>(Ljava/util/List;)V

    .line 8
    return-object v0
.end method
