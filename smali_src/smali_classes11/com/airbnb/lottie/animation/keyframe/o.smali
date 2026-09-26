.class public Lcom/airbnb/lottie/animation/keyframe/o;
.super Lcom/airbnb/lottie/animation/keyframe/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/animation/keyframe/f<",
        "Lcom/airbnb/lottie/model/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lh0/a<",
            "Lcom/airbnb/lottie/model/d;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/f;-><init>(Ljava/util/List;)V

    .line 4
    return-void
.end method


# virtual methods
.method bridge synthetic h(Lh0/a;F)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/o;->k(Lh0/a;F)Lcom/airbnb/lottie/model/d;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method k(Lh0/a;F)Lcom/airbnb/lottie/model/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/a<",
            "Lcom/airbnb/lottie/model/d;",
            ">;F)",
            "Lcom/airbnb/lottie/model/d;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p1, Lh0/a;->startValue:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast p1, Lcom/airbnb/lottie/model/d;

    .line 5
    return-object p1
.end method
