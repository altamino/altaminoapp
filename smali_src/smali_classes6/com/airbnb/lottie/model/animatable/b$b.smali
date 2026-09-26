.class public final Lcom/airbnb/lottie/model/animatable/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method static a()Lcom/airbnb/lottie/model/animatable/b;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/airbnb/lottie/model/animatable/b;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/animatable/b;-><init>(Lcom/airbnb/lottie/model/animatable/b$a;)V

    .line 7
    return-object v0
.end method

.method public static b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/b;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/model/animatable/b$b;->c(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;Z)Lcom/airbnb/lottie/model/animatable/b;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static c(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;Z)Lcom/airbnb/lottie/model/animatable/b;
    .locals 1

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/airbnb/lottie/e;->j()F

    .line 6
    move-result p2

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 10
    .line 11
    :goto_0
    if-eqz p0, :cond_1

    .line 12
    .line 13
    .line 14
    const-string/jumbo v0, "x"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const-string v0, "Lottie doesn\'t support expressions."

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/e;->g(Ljava/lang/String;)V

    .line 26
    .line 27
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/model/animatable/b$c;->INSTANCE:Lcom/airbnb/lottie/model/animatable/b$c;

    .line 28
    .line 29
    .line 30
    invoke-static {p0, p2, p1, v0}, Lcom/airbnb/lottie/model/animatable/n;->b(Lorg/json/JSONObject;FLcom/airbnb/lottie/e;Lcom/airbnb/lottie/model/animatable/m$a;)Lcom/airbnb/lottie/model/animatable/n;

    .line 31
    move-result-object p0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/n;->d()Lcom/airbnb/lottie/model/animatable/n$a;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    new-instance p1, Lcom/airbnb/lottie/model/animatable/b;

    .line 38
    .line 39
    iget-object p2, p0, Lcom/airbnb/lottie/model/animatable/n$a;->keyframes:Ljava/util/List;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/airbnb/lottie/model/animatable/n$a;->initialValue:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p0, Ljava/lang/Float;

    .line 44
    const/4 v0, 0x0

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, p2, p0, v0}, Lcom/airbnb/lottie/model/animatable/b;-><init>(Ljava/util/List;Ljava/lang/Float;Lcom/airbnb/lottie/model/animatable/b$a;)V

    .line 48
    return-object p1
.end method
