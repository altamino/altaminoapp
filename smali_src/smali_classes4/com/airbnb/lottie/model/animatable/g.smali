.class public Lcom/airbnb/lottie/model/animatable/g;
.super Lcom/airbnb/lottie/model/animatable/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/animatable/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/model/animatable/o<",
        "Lcom/airbnb/lottie/model/k;",
        "Lcom/airbnb/lottie/model/k;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Lcom/airbnb/lottie/model/k;

    invoke-direct {v0}, Lcom/airbnb/lottie/model/k;-><init>()V

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/model/animatable/o;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/model/animatable/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/model/animatable/g;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/model/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh0/a<",
            "Lcom/airbnb/lottie/model/k;",
            ">;>;",
            "Lcom/airbnb/lottie/model/k;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/animatable/o;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/airbnb/lottie/animation/keyframe/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "Lcom/airbnb/lottie/model/k;",
            "Lcom/airbnb/lottie/model/k;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/o;->d()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/n;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/o;->initialValue:Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/keyframe/n;-><init>(Ljava/lang/Object;)V

    .line 14
    return-object v0

    .line 15
    .line 16
    :cond_0
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/k;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/o;->keyframes:Ljava/util/List;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/keyframe/k;-><init>(Ljava/util/List;)V

    .line 22
    return-object v0
.end method
