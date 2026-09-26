.class public Lcom/airbnb/lottie/animation/keyframe/d;
.super Lcom/airbnb/lottie/animation/keyframe/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/animation/keyframe/f<",
        "Lcom/airbnb/lottie/model/content/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final gradientColor:Lcom/airbnb/lottie/model/content/c;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lh0/a<",
            "Lcom/airbnb/lottie/model/content/c;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/f;-><init>(Ljava/util/List;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Lh0/a;

    .line 11
    .line 12
    iget-object p1, p1, Lh0/a;->startValue:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Lcom/airbnb/lottie/model/content/c;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/c;->c()I

    .line 21
    move-result v0

    .line 22
    .line 23
    :goto_0
    new-instance p1, Lcom/airbnb/lottie/model/content/c;

    .line 24
    .line 25
    new-array v1, v0, [F

    .line 26
    .line 27
    new-array v0, v0, [I

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, v1, v0}, Lcom/airbnb/lottie/model/content/c;-><init>([F[I)V

    .line 31
    .line 32
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/d;->gradientColor:Lcom/airbnb/lottie/model/content/c;

    .line 33
    return-void
.end method


# virtual methods
.method bridge synthetic h(Lh0/a;F)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/d;->k(Lh0/a;F)Lcom/airbnb/lottie/model/content/c;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method k(Lh0/a;F)Lcom/airbnb/lottie/model/content/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/a<",
            "Lcom/airbnb/lottie/model/content/c;",
            ">;F)",
            "Lcom/airbnb/lottie/model/content/c;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/d;->gradientColor:Lcom/airbnb/lottie/model/content/c;

    .line 3
    .line 4
    iget-object v1, p1, Lh0/a;->startValue:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Lcom/airbnb/lottie/model/content/c;

    .line 7
    .line 8
    iget-object p1, p1, Lh0/a;->endValue:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Lcom/airbnb/lottie/model/content/c;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, p1, p2}, Lcom/airbnb/lottie/model/content/c;->d(Lcom/airbnb/lottie/model/content/c;Lcom/airbnb/lottie/model/content/c;F)V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/d;->gradientColor:Lcom/airbnb/lottie/model/content/c;

    .line 16
    return-object p1
.end method
