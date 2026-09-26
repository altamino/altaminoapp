.class public final Lcom/airbnb/lottie/model/animatable/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/k;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_5

    .line 4
    .line 5
    const-string v1, "a"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 9
    move-result v2

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    goto :goto_3

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    const-string v1, "fc"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-static {v1, p1}, Lcom/airbnb/lottie/model/animatable/a$b;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/a;

    .line 28
    move-result-object v1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v1, v0

    .line 31
    .line 32
    .line 33
    :goto_0
    const-string/jumbo v2, "sc"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-static {v2, p1}, Lcom/airbnb/lottie/model/animatable/a$b;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/a;

    .line 43
    move-result-object v2

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move-object v2, v0

    .line 46
    .line 47
    .line 48
    :goto_1
    const-string/jumbo v3, "sw"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    .line 57
    invoke-static {v3, p1}, Lcom/airbnb/lottie/model/animatable/b$b;->b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/b;

    .line 58
    move-result-object v3

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    move-object v3, v0

    .line 61
    .line 62
    .line 63
    :goto_2
    const-string/jumbo v4, "t"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 67
    move-result-object p0

    .line 68
    .line 69
    if-eqz p0, :cond_4

    .line 70
    .line 71
    .line 72
    invoke-static {p0, p1}, Lcom/airbnb/lottie/model/animatable/b$b;->b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/b;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    :cond_4
    new-instance p0, Lcom/airbnb/lottie/model/animatable/k;

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/airbnb/lottie/model/animatable/k;-><init>(Lcom/airbnb/lottie/model/animatable/a;Lcom/airbnb/lottie/model/animatable/a;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;)V

    .line 79
    return-object p0

    .line 80
    .line 81
    :cond_5
    :goto_3
    new-instance p0, Lcom/airbnb/lottie/model/animatable/k;

    .line 82
    .line 83
    .line 84
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/airbnb/lottie/model/animatable/k;-><init>(Lcom/airbnb/lottie/model/animatable/a;Lcom/airbnb/lottie/model/animatable/a;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;)V

    .line 85
    return-object p0
.end method
