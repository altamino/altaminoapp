.class public final Lcom/airbnb/lottie/model/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lorg/json/JSONObject;)Lcom/airbnb/lottie/model/d;
    .locals 20

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "t"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v3

    .line 10
    .line 11
    const-string v1, "f"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v4

    .line 16
    .line 17
    .line 18
    const-string/jumbo v1, "s"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 22
    move-result v5

    .line 23
    .line 24
    const-string v1, "j"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 28
    move-result v6

    .line 29
    .line 30
    .line 31
    const-string/jumbo v1, "tr"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 35
    move-result v7

    .line 36
    .line 37
    const-string v1, "lh"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 41
    move-result-wide v8

    .line 42
    .line 43
    const-string v1, "fc"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 47
    move-result-object v1

    .line 48
    const/4 v2, 0x0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optDouble(I)D

    .line 52
    move-result-wide v10

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    const-wide v12, 0x406fe00000000000L    # 255.0

    .line 58
    mul-double/2addr v10, v12

    .line 59
    double-to-int v10, v10

    .line 60
    const/4 v11, 0x1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v11}, Lorg/json/JSONArray;->optDouble(I)D

    .line 64
    move-result-wide v14

    .line 65
    mul-double/2addr v14, v12

    .line 66
    double-to-int v14, v14

    .line 67
    const/4 v15, 0x2

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v15}, Lorg/json/JSONArray;->optDouble(I)D

    .line 71
    move-result-wide v16

    .line 72
    move-object v1, v3

    .line 73
    .line 74
    mul-double v2, v16, v12

    .line 75
    double-to-int v2, v2

    .line 76
    .line 77
    const/16 v3, 0xff

    .line 78
    .line 79
    .line 80
    invoke-static {v3, v10, v14, v2}, Landroid/graphics/Color;->argb(IIII)I

    .line 81
    move-result v10

    .line 82
    .line 83
    .line 84
    const-string/jumbo v2, "sc"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 88
    move-result-object v2

    .line 89
    .line 90
    if-eqz v2, :cond_0

    .line 91
    const/4 v14, 0x0

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v14}, Lorg/json/JSONArray;->optDouble(I)D

    .line 95
    move-result-wide v16

    .line 96
    .line 97
    move-object/from16 v18, v4

    .line 98
    .line 99
    mul-double v3, v16, v12

    .line 100
    double-to-int v3, v3

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v11}, Lorg/json/JSONArray;->optDouble(I)D

    .line 104
    move-result-wide v16

    .line 105
    .line 106
    move/from16 v19, v10

    .line 107
    .line 108
    mul-double v10, v16, v12

    .line 109
    double-to-int v4, v10

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v15}, Lorg/json/JSONArray;->optDouble(I)D

    .line 113
    move-result-wide v10

    .line 114
    mul-double/2addr v10, v12

    .line 115
    double-to-int v2, v10

    .line 116
    .line 117
    const/16 v10, 0xff

    .line 118
    .line 119
    .line 120
    invoke-static {v10, v3, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    .line 121
    move-result v2

    .line 122
    move v11, v2

    .line 123
    goto :goto_0

    .line 124
    .line 125
    :cond_0
    move-object/from16 v18, v4

    .line 126
    .line 127
    move/from16 v19, v10

    .line 128
    const/4 v14, 0x0

    .line 129
    move v11, v14

    .line 130
    .line 131
    .line 132
    :goto_0
    const-string/jumbo v2, "sw"

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 136
    move-result v12

    .line 137
    .line 138
    .line 139
    const-string/jumbo v2, "of"

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 143
    move-result v13

    .line 144
    .line 145
    new-instance v0, Lcom/airbnb/lottie/model/d;

    .line 146
    move-object v2, v0

    .line 147
    move-object v3, v1

    .line 148
    .line 149
    move-object/from16 v4, v18

    .line 150
    .line 151
    move/from16 v10, v19

    .line 152
    .line 153
    .line 154
    invoke-direct/range {v2 .. v13}, Lcom/airbnb/lottie/model/d;-><init>(Ljava/lang/String;Ljava/lang/String;IIIDIIIZ)V

    .line 155
    return-object v0
.end method
