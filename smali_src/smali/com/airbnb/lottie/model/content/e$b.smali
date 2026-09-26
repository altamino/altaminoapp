.class Lcom/airbnb/lottie/model/content/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method static a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/content/e;
    .locals 22

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
    const-string v2, "g"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    const-string v5, "k"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 25
    move-result v6

    .line 26
    .line 27
    if-eqz v6, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    :cond_0
    if-eqz v3, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-static {v3, v1}, Lcom/airbnb/lottie/model/animatable/c$b;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/c;

    .line 37
    move-result-object v3

    .line 38
    move-object v6, v3

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v6, 0x0

    .line 41
    .line 42
    .line 43
    :goto_0
    const-string/jumbo v3, "o"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 47
    move-result-object v7

    .line 48
    .line 49
    if-eqz v7, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-static {v7, v1}, Lcom/airbnb/lottie/model/animatable/d$b;->b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/d;

    .line 53
    move-result-object v7

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const/4 v7, 0x0

    .line 56
    .line 57
    .line 58
    :goto_1
    const-string/jumbo v8, "t"

    .line 59
    const/4 v9, 0x1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 63
    move-result v8

    .line 64
    .line 65
    if-ne v8, v9, :cond_3

    .line 66
    .line 67
    sget-object v8, Lcom/airbnb/lottie/model/content/f;->Linear:Lcom/airbnb/lottie/model/content/f;

    .line 68
    goto :goto_2

    .line 69
    .line 70
    :cond_3
    sget-object v8, Lcom/airbnb/lottie/model/content/f;->Radial:Lcom/airbnb/lottie/model/content/f;

    .line 71
    .line 72
    .line 73
    :goto_2
    const-string/jumbo v10, "s"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 77
    move-result-object v10

    .line 78
    .line 79
    if-eqz v10, :cond_4

    .line 80
    .line 81
    .line 82
    invoke-static {v10, v1}, Lcom/airbnb/lottie/model/animatable/f$b;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/f;

    .line 83
    move-result-object v10

    .line 84
    goto :goto_3

    .line 85
    :cond_4
    const/4 v10, 0x0

    .line 86
    .line 87
    :goto_3
    const-string v11, "e"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 91
    move-result-object v11

    .line 92
    .line 93
    if-eqz v11, :cond_5

    .line 94
    .line 95
    .line 96
    invoke-static {v11, v1}, Lcom/airbnb/lottie/model/animatable/f$b;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/f;

    .line 97
    move-result-object v11

    .line 98
    goto :goto_4

    .line 99
    :cond_5
    const/4 v11, 0x0

    .line 100
    .line 101
    .line 102
    :goto_4
    const-string/jumbo v12, "w"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 106
    move-result-object v12

    .line 107
    .line 108
    .line 109
    invoke-static {v12, v1}, Lcom/airbnb/lottie/model/animatable/b$b;->b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/b;

    .line 110
    move-result-object v12

    .line 111
    .line 112
    .line 113
    invoke-static {}, Lcom/airbnb/lottie/model/content/p$c;->values()[Lcom/airbnb/lottie/model/content/p$c;

    .line 114
    move-result-object v13

    .line 115
    .line 116
    const-string v14, "lc"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 120
    move-result v14

    .line 121
    sub-int/2addr v14, v9

    .line 122
    .line 123
    aget-object v13, v13, v14

    .line 124
    .line 125
    .line 126
    invoke-static {}, Lcom/airbnb/lottie/model/content/p$d;->values()[Lcom/airbnb/lottie/model/content/p$d;

    .line 127
    move-result-object v14

    .line 128
    .line 129
    const-string v15, "lj"

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 133
    move-result v15

    .line 134
    sub-int/2addr v15, v9

    .line 135
    .line 136
    aget-object v14, v14, v15

    .line 137
    .line 138
    new-instance v15, Ljava/util/ArrayList;

    .line 139
    .line 140
    .line 141
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .line 143
    const-string v5, "d"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 147
    move-result v17

    .line 148
    .line 149
    if-eqz v17, :cond_b

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 153
    move-result-object v0

    .line 154
    .line 155
    move-object/from16 v18, v14

    .line 156
    const/4 v9, 0x0

    .line 157
    .line 158
    const/16 v16, 0x0

    .line 159
    .line 160
    .line 161
    :goto_5
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 162
    move-result v14

    .line 163
    .line 164
    if-ge v9, v14, :cond_9

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 168
    move-result-object v14

    .line 169
    .line 170
    move-object/from16 v19, v0

    .line 171
    .line 172
    const-string v0, "n"

    .line 173
    .line 174
    .line 175
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    move-result-object v0

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    move-result v20

    .line 181
    .line 182
    move-object/from16 v21, v3

    .line 183
    .line 184
    .line 185
    const-string/jumbo v3, "v"

    .line 186
    .line 187
    if-eqz v20, :cond_6

    .line 188
    .line 189
    .line 190
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 191
    move-result-object v0

    .line 192
    .line 193
    .line 194
    invoke-static {v0, v1}, Lcom/airbnb/lottie/model/animatable/b$b;->b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/b;

    .line 195
    move-result-object v0

    .line 196
    .line 197
    move-object/from16 v16, v0

    .line 198
    goto :goto_6

    .line 199
    .line 200
    .line 201
    :cond_6
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    move-result v20

    .line 203
    .line 204
    if-nez v20, :cond_7

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    move-result v0

    .line 209
    .line 210
    if-eqz v0, :cond_8

    .line 211
    .line 212
    .line 213
    :cond_7
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 214
    move-result-object v0

    .line 215
    .line 216
    .line 217
    invoke-static {v0, v1}, Lcom/airbnb/lottie/model/animatable/b$b;->b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/b;

    .line 218
    move-result-object v0

    .line 219
    .line 220
    .line 221
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    :cond_8
    :goto_6
    add-int/lit8 v9, v9, 0x1

    .line 224
    .line 225
    move-object/from16 v0, v19

    .line 226
    .line 227
    move-object/from16 v3, v21

    .line 228
    goto :goto_5

    .line 229
    .line 230
    .line 231
    :cond_9
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 232
    move-result v0

    .line 233
    const/4 v1, 0x1

    .line 234
    .line 235
    if-ne v0, v1, :cond_a

    .line 236
    const/4 v0, 0x0

    .line 237
    .line 238
    .line 239
    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 240
    move-result-object v0

    .line 241
    .line 242
    .line 243
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    :cond_a
    move-object/from16 v14, v16

    .line 246
    goto :goto_7

    .line 247
    .line 248
    :cond_b
    move-object/from16 v18, v14

    .line 249
    const/4 v14, 0x0

    .line 250
    .line 251
    :goto_7
    new-instance v0, Lcom/airbnb/lottie/model/content/e;

    .line 252
    const/4 v1, 0x0

    .line 253
    move-object v3, v0

    .line 254
    move-object v5, v8

    .line 255
    move-object v8, v10

    .line 256
    move-object v9, v11

    .line 257
    move-object v10, v12

    .line 258
    move-object v11, v13

    .line 259
    .line 260
    move-object/from16 v12, v18

    .line 261
    move-object v13, v15

    .line 262
    move-object v15, v1

    .line 263
    .line 264
    .line 265
    invoke-direct/range {v3 .. v15}, Lcom/airbnb/lottie/model/content/e;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/f;Lcom/airbnb/lottie/model/animatable/c;Lcom/airbnb/lottie/model/animatable/d;Lcom/airbnb/lottie/model/animatable/f;Lcom/airbnb/lottie/model/animatable/f;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/content/p$c;Lcom/airbnb/lottie/model/content/p$d;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/content/e$a;)V

    .line 266
    return-object v0
.end method
