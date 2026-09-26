.class Lcom/airbnb/lottie/model/content/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method static a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/content/d;
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
    const-string v0, "g"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v1, "k"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 21
    move-result v3

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    .line 26
    const-string/jumbo v3, "p"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 30
    move-result v4

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    :try_start_0
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :catch_0
    :cond_0
    const/4 v1, 0x0

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-static {v0, p1}, Lcom/airbnb/lottie/model/animatable/c$b;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/c;

    .line 44
    move-result-object v0

    .line 45
    move-object v5, v0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move-object v5, v1

    .line 48
    .line 49
    .line 50
    :goto_0
    const-string/jumbo v0, "o"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-static {v0, p1}, Lcom/airbnb/lottie/model/animatable/d$b;->b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/d;

    .line 60
    move-result-object v0

    .line 61
    move-object v6, v0

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    move-object v6, v1

    .line 64
    .line 65
    .line 66
    :goto_1
    const-string/jumbo v0, "r"

    .line 67
    const/4 v3, 0x1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 71
    move-result v0

    .line 72
    .line 73
    if-ne v0, v3, :cond_3

    .line 74
    .line 75
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 76
    :goto_2
    move-object v4, v0

    .line 77
    goto :goto_3

    .line 78
    .line 79
    :cond_3
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 80
    goto :goto_2

    .line 81
    .line 82
    .line 83
    :goto_3
    const-string/jumbo v0, "t"

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 87
    move-result v0

    .line 88
    .line 89
    if-ne v0, v3, :cond_4

    .line 90
    .line 91
    sget-object v0, Lcom/airbnb/lottie/model/content/f;->Linear:Lcom/airbnb/lottie/model/content/f;

    .line 92
    :goto_4
    move-object v3, v0

    .line 93
    goto :goto_5

    .line 94
    .line 95
    :cond_4
    sget-object v0, Lcom/airbnb/lottie/model/content/f;->Radial:Lcom/airbnb/lottie/model/content/f;

    .line 96
    goto :goto_4

    .line 97
    .line 98
    .line 99
    :goto_5
    const-string/jumbo v0, "s"

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    if-eqz v0, :cond_5

    .line 106
    .line 107
    .line 108
    invoke-static {v0, p1}, Lcom/airbnb/lottie/model/animatable/f$b;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/f;

    .line 109
    move-result-object v0

    .line 110
    move-object v7, v0

    .line 111
    goto :goto_6

    .line 112
    :cond_5
    move-object v7, v1

    .line 113
    .line 114
    :goto_6
    const-string v0, "e"

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 118
    move-result-object p0

    .line 119
    .line 120
    if-eqz p0, :cond_6

    .line 121
    .line 122
    .line 123
    invoke-static {p0, p1}, Lcom/airbnb/lottie/model/animatable/f$b;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/f;

    .line 124
    move-result-object p0

    .line 125
    move-object v8, p0

    .line 126
    goto :goto_7

    .line 127
    :cond_6
    move-object v8, v1

    .line 128
    .line 129
    :goto_7
    new-instance p0, Lcom/airbnb/lottie/model/content/d;

    .line 130
    const/4 v9, 0x0

    .line 131
    const/4 v10, 0x0

    .line 132
    const/4 v11, 0x0

    .line 133
    move-object v1, p0

    .line 134
    .line 135
    .line 136
    invoke-direct/range {v1 .. v11}, Lcom/airbnb/lottie/model/content/d;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/f;Landroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/c;Lcom/airbnb/lottie/model/animatable/d;Lcom/airbnb/lottie/model/animatable/f;Lcom/airbnb/lottie/model/animatable/f;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/content/d$a;)V

    .line 137
    return-object p0
.end method
