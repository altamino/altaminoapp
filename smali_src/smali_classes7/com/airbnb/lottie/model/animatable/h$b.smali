.class public final Lcom/airbnb/lottie/model/animatable/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public static a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/h;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/airbnb/lottie/e;->j()F

    .line 4
    move-result v0

    .line 5
    .line 6
    sget-object v1, Lcom/airbnb/lottie/model/content/l$b;->INSTANCE:Lcom/airbnb/lottie/model/content/l$b;

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0, p1, v1}, Lcom/airbnb/lottie/model/animatable/n;->b(Lorg/json/JSONObject;FLcom/airbnb/lottie/e;Lcom/airbnb/lottie/model/animatable/m$a;)Lcom/airbnb/lottie/model/animatable/n;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/n;->d()Lcom/airbnb/lottie/model/animatable/n$a;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    new-instance p1, Lcom/airbnb/lottie/model/animatable/h;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/n$a;->keyframes:Ljava/util/List;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/airbnb/lottie/model/animatable/n$a;->initialValue:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Lcom/airbnb/lottie/model/content/l;

    .line 23
    const/4 v1, 0x0

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, v0, p0, v1}, Lcom/airbnb/lottie/model/animatable/h;-><init>(Ljava/util/List;Lcom/airbnb/lottie/model/content/l;Lcom/airbnb/lottie/model/animatable/h$a;)V

    .line 27
    return-object p1
.end method
