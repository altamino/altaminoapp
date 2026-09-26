.class public final Lcom/airbnb/lottie/model/animatable/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/j;
    .locals 2

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    .line 5
    const-string/jumbo v0, "x"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "Lottie doesn\'t support expressions."

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/e;->g(Ljava/lang/String;)V

    .line 17
    .line 18
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/airbnb/lottie/model/animatable/j$b;->b()Lcom/airbnb/lottie/model/animatable/j$b;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v0, p1, v1}, Lcom/airbnb/lottie/model/animatable/n;->b(Lorg/json/JSONObject;FLcom/airbnb/lottie/e;Lcom/airbnb/lottie/model/animatable/m$a;)Lcom/airbnb/lottie/model/animatable/n;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/n;->d()Lcom/airbnb/lottie/model/animatable/n$a;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    new-instance p1, Lcom/airbnb/lottie/model/animatable/j;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/n$a;->keyframes:Ljava/util/List;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/airbnb/lottie/model/animatable/n$a;->initialValue:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Lcom/airbnb/lottie/model/d;

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, v0, p0}, Lcom/airbnb/lottie/model/animatable/j;-><init>(Ljava/util/List;Lcom/airbnb/lottie/model/d;)V

    .line 42
    return-object p1
.end method
