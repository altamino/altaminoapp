.class public Lcom/airbnb/lottie/animation/keyframe/k;
.super Lcom/airbnb/lottie/animation/keyframe/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/animation/keyframe/f<",
        "Lcom/airbnb/lottie/model/k;",
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
            "Lh0/a<",
            "Lcom/airbnb/lottie/model/k;",
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
.method public bridge synthetic h(Lh0/a;F)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/k;->k(Lh0/a;F)Lcom/airbnb/lottie/model/k;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public k(Lh0/a;F)Lcom/airbnb/lottie/model/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/a<",
            "Lcom/airbnb/lottie/model/k;",
            ">;F)",
            "Lcom/airbnb/lottie/model/k;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p1, Lh0/a;->startValue:Ljava/lang/Object;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p1, Lh0/a;->endValue:Ljava/lang/Object;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/airbnb/lottie/model/k;

    .line 11
    .line 12
    check-cast p1, Lcom/airbnb/lottie/model/k;

    .line 13
    .line 14
    new-instance v1, Lcom/airbnb/lottie/model/k;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/k;->a()F

    .line 18
    move-result v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/k;->a()F

    .line 22
    move-result v3

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v3, p2}, Lcom/airbnb/lottie/utils/e;->h(FFF)F

    .line 26
    move-result v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/k;->b()F

    .line 30
    move-result v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/k;->b()F

    .line 34
    move-result p1

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1, p2}, Lcom/airbnb/lottie/utils/e;->h(FFF)F

    .line 38
    move-result p1

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2, p1}, Lcom/airbnb/lottie/model/k;-><init>(FF)V

    .line 42
    return-object v1

    .line 43
    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p2, "Missing values for keyframe."

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p1
.end method
