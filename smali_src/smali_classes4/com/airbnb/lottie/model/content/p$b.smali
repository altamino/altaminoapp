.class Lcom/airbnb/lottie/model/content/p$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method static a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/content/p;
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "nm"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v4

    .line 12
    .line 13
    new-instance v6, Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    const-string v2, "c"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v1}, Lcom/airbnb/lottie/model/animatable/a$b;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/a;

    .line 26
    move-result-object v7

    .line 27
    .line 28
    .line 29
    const-string/jumbo v2, "w"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v1}, Lcom/airbnb/lottie/model/animatable/b$b;->b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/b;

    .line 37
    move-result-object v9

    .line 38
    .line 39
    .line 40
    const-string/jumbo v2, "o"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    .line 47
    invoke-static {v3, v1}, Lcom/airbnb/lottie/model/animatable/d$b;->b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/d;

    .line 48
    move-result-object v8

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/airbnb/lottie/model/content/p$c;->values()[Lcom/airbnb/lottie/model/content/p$c;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    const-string v5, "lc"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 58
    move-result v5

    .line 59
    const/4 v10, 0x1

    .line 60
    sub-int/2addr v5, v10

    .line 61
    .line 62
    aget-object v11, v3, v5

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lcom/airbnb/lottie/model/content/p$d;->values()[Lcom/airbnb/lottie/model/content/p$d;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    const-string v5, "lj"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 72
    move-result v5

    .line 73
    sub-int/2addr v5, v10

    .line 74
    .line 75
    aget-object v12, v3, v5

    .line 76
    .line 77
    const-string v3, "d"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 81
    move-result v5

    .line 82
    const/4 v13, 0x0

    .line 83
    .line 84
    if-eqz v5, :cond_4

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 88
    move-result-object v0

    .line 89
    const/4 v14, 0x0

    .line 90
    .line 91
    .line 92
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 93
    move-result v15

    .line 94
    .line 95
    if-ge v14, v15, :cond_3

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 99
    move-result-object v15

    .line 100
    .line 101
    const-string v5, "n"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    move-result-object v5

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    move-result v16

    .line 110
    .line 111
    .line 112
    const-string/jumbo v10, "v"

    .line 113
    .line 114
    if-eqz v16, :cond_0

    .line 115
    .line 116
    .line 117
    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 118
    move-result-object v5

    .line 119
    .line 120
    .line 121
    invoke-static {v5, v1}, Lcom/airbnb/lottie/model/animatable/b$b;->b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/b;

    .line 122
    move-result-object v5

    .line 123
    .line 124
    move-object/from16 v16, v0

    .line 125
    move-object v13, v5

    .line 126
    goto :goto_2

    .line 127
    .line 128
    .line 129
    :cond_0
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    move-result v16

    .line 131
    .line 132
    if-nez v16, :cond_1

    .line 133
    .line 134
    move-object/from16 v16, v0

    .line 135
    .line 136
    const-string v0, "g"

    .line 137
    .line 138
    .line 139
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    move-result v0

    .line 141
    .line 142
    if-eqz v0, :cond_2

    .line 143
    goto :goto_1

    .line 144
    .line 145
    :cond_1
    move-object/from16 v16, v0

    .line 146
    .line 147
    .line 148
    :goto_1
    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 149
    move-result-object v0

    .line 150
    .line 151
    .line 152
    invoke-static {v0, v1}, Lcom/airbnb/lottie/model/animatable/b$b;->b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/b;

    .line 153
    move-result-object v0

    .line 154
    .line 155
    .line 156
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    .line 159
    .line 160
    move-object/from16 v0, v16

    .line 161
    const/4 v10, 0x1

    .line 162
    goto :goto_0

    .line 163
    .line 164
    .line 165
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 166
    move-result v0

    .line 167
    const/4 v1, 0x1

    .line 168
    .line 169
    if-ne v0, v1, :cond_4

    .line 170
    const/4 v0, 0x0

    .line 171
    .line 172
    .line 173
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 174
    move-result-object v0

    .line 175
    .line 176
    .line 177
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_4
    move-object v5, v13

    .line 179
    .line 180
    new-instance v0, Lcom/airbnb/lottie/model/content/p;

    .line 181
    const/4 v1, 0x0

    .line 182
    move-object v3, v0

    .line 183
    move-object v10, v11

    .line 184
    move-object v11, v12

    .line 185
    move-object v12, v1

    .line 186
    .line 187
    .line 188
    invoke-direct/range {v3 .. v12}, Lcom/airbnb/lottie/model/content/p;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/b;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/a;Lcom/airbnb/lottie/model/animatable/d;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/content/p$c;Lcom/airbnb/lottie/model/content/p$d;Lcom/airbnb/lottie/model/content/p$a;)V

    .line 189
    return-object v0
.end method
