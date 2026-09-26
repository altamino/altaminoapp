.class public Lcom/airbnb/lottie/model/animatable/l$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public static a()Lcom/airbnb/lottie/model/animatable/l;
    .locals 10

    .line 1
    .line 2
    new-instance v1, Lcom/airbnb/lottie/model/animatable/e;

    .line 3
    .line 4
    .line 5
    invoke-direct {v1}, Lcom/airbnb/lottie/model/animatable/e;-><init>()V

    .line 6
    .line 7
    new-instance v2, Lcom/airbnb/lottie/model/animatable/e;

    .line 8
    .line 9
    .line 10
    invoke-direct {v2}, Lcom/airbnb/lottie/model/animatable/e;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/airbnb/lottie/model/animatable/g$b;->a()Lcom/airbnb/lottie/model/animatable/g;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/airbnb/lottie/model/animatable/b$b;->a()Lcom/airbnb/lottie/model/animatable/b;

    .line 18
    move-result-object v4

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/airbnb/lottie/model/animatable/d$b;->a()Lcom/airbnb/lottie/model/animatable/d;

    .line 22
    move-result-object v5

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/airbnb/lottie/model/animatable/b$b;->a()Lcom/airbnb/lottie/model/animatable/b;

    .line 26
    move-result-object v6

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/airbnb/lottie/model/animatable/b$b;->a()Lcom/airbnb/lottie/model/animatable/b;

    .line 30
    move-result-object v7

    .line 31
    .line 32
    new-instance v9, Lcom/airbnb/lottie/model/animatable/l;

    .line 33
    const/4 v8, 0x0

    .line 34
    move-object v0, v9

    .line 35
    .line 36
    .line 37
    invoke-direct/range {v0 .. v8}, Lcom/airbnb/lottie/model/animatable/l;-><init>(Lcom/airbnb/lottie/model/animatable/e;Lcom/airbnb/lottie/model/animatable/m;Lcom/airbnb/lottie/model/animatable/g;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/d;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/l$a;)V

    .line 38
    return-object v9
.end method

.method public static b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/l;
    .locals 11

    .line 1
    .line 2
    const-string v0, "a"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v1, Lcom/airbnb/lottie/model/animatable/e;

    .line 11
    .line 12
    const-string v2, "k"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v0, p1}, Lcom/airbnb/lottie/model/animatable/e;-><init>(Ljava/lang/Object;Lcom/airbnb/lottie/e;)V

    .line 20
    :goto_0
    move-object v3, v1

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_0
    const-string v0, "LOTTIE"

    .line 24
    .line 25
    const-string v1, "Layer has no transform property. You may be using an unsupported layer type such as a camera."

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    new-instance v1, Lcom/airbnb/lottie/model/animatable/e;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1}, Lcom/airbnb/lottie/model/animatable/e;-><init>()V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :goto_1
    const-string/jumbo v0, "p"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 41
    move-result-object v0

    .line 42
    const/4 v1, 0x0

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p1}, Lcom/airbnb/lottie/model/animatable/e;->b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/m;

    .line 48
    move-result-object v0

    .line 49
    move-object v4, v0

    .line 50
    goto :goto_2

    .line 51
    .line 52
    .line 53
    :cond_1
    const-string/jumbo v0, "position"

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lcom/airbnb/lottie/model/animatable/l$b;->c(Ljava/lang/String;)V

    .line 57
    move-object v4, v1

    .line 58
    .line 59
    .line 60
    :goto_2
    const-string/jumbo v0, "s"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    .line 69
    invoke-static {v0, p1}, Lcom/airbnb/lottie/model/animatable/g$b;->b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/g;

    .line 70
    move-result-object v0

    .line 71
    :goto_3
    move-object v5, v0

    .line 72
    goto :goto_4

    .line 73
    .line 74
    :cond_2
    new-instance v0, Lcom/airbnb/lottie/model/animatable/g;

    .line 75
    .line 76
    .line 77
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    new-instance v5, Lcom/airbnb/lottie/model/k;

    .line 81
    .line 82
    .line 83
    invoke-direct {v5}, Lcom/airbnb/lottie/model/k;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, v2, v5}, Lcom/airbnb/lottie/model/animatable/g;-><init>(Ljava/util/List;Lcom/airbnb/lottie/model/k;)V

    .line 87
    goto :goto_3

    .line 88
    .line 89
    .line 90
    :goto_4
    const-string/jumbo v0, "r"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    if-nez v0, :cond_3

    .line 97
    .line 98
    .line 99
    const-string/jumbo v0, "rz"

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 103
    move-result-object v0

    .line 104
    :cond_3
    const/4 v2, 0x0

    .line 105
    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    .line 109
    invoke-static {v0, p1, v2}, Lcom/airbnb/lottie/model/animatable/b$b;->c(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;Z)Lcom/airbnb/lottie/model/animatable/b;

    .line 110
    move-result-object v0

    .line 111
    move-object v6, v0

    .line 112
    goto :goto_5

    .line 113
    .line 114
    .line 115
    :cond_4
    const-string/jumbo v0, "rotation"

    .line 116
    .line 117
    .line 118
    invoke-static {v0}, Lcom/airbnb/lottie/model/animatable/l$b;->c(Ljava/lang/String;)V

    .line 119
    move-object v6, v1

    .line 120
    .line 121
    .line 122
    :goto_5
    const-string/jumbo v0, "o"

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    if-eqz v0, :cond_5

    .line 129
    .line 130
    .line 131
    invoke-static {v0, p1}, Lcom/airbnb/lottie/model/animatable/d$b;->b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/d;

    .line 132
    move-result-object v0

    .line 133
    :goto_6
    move-object v7, v0

    .line 134
    goto :goto_7

    .line 135
    .line 136
    :cond_5
    new-instance v0, Lcom/airbnb/lottie/model/animatable/d;

    .line 137
    .line 138
    .line 139
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 140
    move-result-object v7

    .line 141
    .line 142
    const/16 v8, 0x64

    .line 143
    .line 144
    .line 145
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    move-result-object v8

    .line 147
    .line 148
    .line 149
    invoke-direct {v0, v7, v8}, Lcom/airbnb/lottie/model/animatable/d;-><init>(Ljava/util/List;Ljava/lang/Integer;)V

    .line 150
    goto :goto_6

    .line 151
    .line 152
    .line 153
    :goto_7
    const-string/jumbo v0, "so"

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    if-eqz v0, :cond_6

    .line 160
    .line 161
    .line 162
    invoke-static {v0, p1, v2}, Lcom/airbnb/lottie/model/animatable/b$b;->c(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;Z)Lcom/airbnb/lottie/model/animatable/b;

    .line 163
    move-result-object v0

    .line 164
    move-object v8, v0

    .line 165
    goto :goto_8

    .line 166
    :cond_6
    move-object v8, v1

    .line 167
    .line 168
    :goto_8
    const-string v0, "eo"

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 172
    move-result-object p0

    .line 173
    .line 174
    if-eqz p0, :cond_7

    .line 175
    .line 176
    .line 177
    invoke-static {p0, p1, v2}, Lcom/airbnb/lottie/model/animatable/b$b;->c(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;Z)Lcom/airbnb/lottie/model/animatable/b;

    .line 178
    move-result-object p0

    .line 179
    move-object v9, p0

    .line 180
    goto :goto_9

    .line 181
    :cond_7
    move-object v9, v1

    .line 182
    .line 183
    :goto_9
    new-instance p0, Lcom/airbnb/lottie/model/animatable/l;

    .line 184
    const/4 v10, 0x0

    .line 185
    move-object v2, p0

    .line 186
    .line 187
    .line 188
    invoke-direct/range {v2 .. v10}, Lcom/airbnb/lottie/model/animatable/l;-><init>(Lcom/airbnb/lottie/model/animatable/e;Lcom/airbnb/lottie/model/animatable/m;Lcom/airbnb/lottie/model/animatable/g;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/d;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/l$a;)V

    .line 189
    return-object p0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "Missing transform for "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    throw v0
.end method
