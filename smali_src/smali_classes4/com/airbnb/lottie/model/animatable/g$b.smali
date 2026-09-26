.class final Lcom/airbnb/lottie/model/animatable/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method static a()Lcom/airbnb/lottie/model/animatable/g;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/airbnb/lottie/model/animatable/g;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/animatable/g;-><init>(Lcom/airbnb/lottie/model/animatable/g$a;)V

    .line 7
    return-object v0
.end method

.method static b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/g;
    .locals 2

    .line 1
    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    .line 4
    sget-object v1, Lcom/airbnb/lottie/model/k$a;->INSTANCE:Lcom/airbnb/lottie/model/k$a;

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0, p1, v1}, Lcom/airbnb/lottie/model/animatable/n;->b(Lorg/json/JSONObject;FLcom/airbnb/lottie/e;Lcom/airbnb/lottie/model/animatable/m$a;)Lcom/airbnb/lottie/model/animatable/n;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/n;->d()Lcom/airbnb/lottie/model/animatable/n$a;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    new-instance p1, Lcom/airbnb/lottie/model/animatable/g;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/n$a;->keyframes:Ljava/util/List;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/airbnb/lottie/model/animatable/n$a;->initialValue:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lcom/airbnb/lottie/model/k;

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, v0, p0}, Lcom/airbnb/lottie/model/animatable/g;-><init>(Ljava/util/List;Lcom/airbnb/lottie/model/k;)V

    .line 24
    return-object p1
.end method
