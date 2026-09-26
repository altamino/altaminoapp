.class public final Lcom/airbnb/lottie/model/animatable/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method static a()Lcom/airbnb/lottie/model/animatable/d;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/airbnb/lottie/model/animatable/d;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/animatable/d;-><init>(Lcom/airbnb/lottie/model/animatable/d$a;)V

    .line 7
    return-object v0
.end method

.method public static b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/d;
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
    invoke-static {}, Lcom/airbnb/lottie/model/animatable/d$c;->b()Lcom/airbnb/lottie/model/animatable/d$c;

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
    iget-object p1, p0, Lcom/airbnb/lottie/model/animatable/n$a;->initialValue:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Ljava/lang/Integer;

    .line 35
    .line 36
    new-instance v0, Lcom/airbnb/lottie/model/animatable/d;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/airbnb/lottie/model/animatable/n$a;->keyframes:Ljava/util/List;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p0, p1}, Lcom/airbnb/lottie/model/animatable/d;-><init>(Ljava/util/List;Ljava/lang/Integer;)V

    .line 42
    return-object v0
.end method
