.class Lcom/airbnb/lottie/model/content/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method static a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/content/i;
    .locals 12

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "nm"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v2

    .line 8
    .line 9
    .line 10
    const-string/jumbo v0, "sy"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/airbnb/lottie/model/content/i$c;->a(I)Lcom/airbnb/lottie/model/content/i$c;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    .line 21
    const-string/jumbo v0, "pt"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-static {v0, p1, v1}, Lcom/airbnb/lottie/model/animatable/b$b;->c(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;Z)Lcom/airbnb/lottie/model/animatable/b;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    .line 33
    const-string/jumbo v0, "p"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-static {v0, p1}, Lcom/airbnb/lottie/model/animatable/e;->b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/m;

    .line 41
    move-result-object v5

    .line 42
    .line 43
    .line 44
    const-string/jumbo v0, "r"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-static {v0, p1, v1}, Lcom/airbnb/lottie/model/animatable/b$b;->c(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;Z)Lcom/airbnb/lottie/model/animatable/b;

    .line 52
    move-result-object v6

    .line 53
    .line 54
    .line 55
    const-string/jumbo v0, "or"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-static {v0, p1}, Lcom/airbnb/lottie/model/animatable/b$b;->b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/b;

    .line 63
    move-result-object v8

    .line 64
    .line 65
    .line 66
    const-string/jumbo v0, "os"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-static {v0, p1, v1}, Lcom/airbnb/lottie/model/animatable/b$b;->c(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;Z)Lcom/airbnb/lottie/model/animatable/b;

    .line 74
    move-result-object v10

    .line 75
    .line 76
    sget-object v0, Lcom/airbnb/lottie/model/content/i$c;->Star:Lcom/airbnb/lottie/model/content/i$c;

    .line 77
    .line 78
    if-ne v3, v0, :cond_0

    .line 79
    .line 80
    const-string v0, "ir"

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    invoke-static {v0, p1}, Lcom/airbnb/lottie/model/animatable/b$b;->b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/b;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    const-string v7, "is"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 94
    move-result-object p0

    .line 95
    .line 96
    .line 97
    invoke-static {p0, p1, v1}, Lcom/airbnb/lottie/model/animatable/b$b;->c(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;Z)Lcom/airbnb/lottie/model/animatable/b;

    .line 98
    move-result-object p0

    .line 99
    move-object v9, p0

    .line 100
    move-object v7, v0

    .line 101
    goto :goto_0

    .line 102
    :cond_0
    const/4 p0, 0x0

    .line 103
    move-object v7, p0

    .line 104
    move-object v9, v7

    .line 105
    .line 106
    :goto_0
    new-instance p0, Lcom/airbnb/lottie/model/content/i;

    .line 107
    const/4 v11, 0x0

    .line 108
    move-object v1, p0

    .line 109
    .line 110
    .line 111
    invoke-direct/range {v1 .. v11}, Lcom/airbnb/lottie/model/content/i;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/i$c;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/m;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/content/i$a;)V

    .line 112
    return-object p0
.end method
