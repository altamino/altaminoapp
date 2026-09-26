.class public Lo6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo6/a$a;
    }
.end annotation


# direct methods
.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    goto :goto_1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    const/16 v1, 0x3f

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 25
    move-result v0

    .line 26
    .line 27
    if-gez v0, :cond_1

    .line 28
    .line 29
    const-string v0, "?"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    const-string v0, "&"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string p1, "="

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    if-eqz p3, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :cond_3
    :goto_1
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    .line 1
    .line 2
    const-string v0, "ActiveUser"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    const/4 p1, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    .line 12
    :try_start_1
    const-string v4, "build_serial"

    .line 13
    .line 14
    sget-object v5, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {v2, v4, v5, v3}, Lo6/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/ss/android/tea/common/deviceregister/a;->q()Z

    .line 21
    move-result v4

    .line 22
    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Lr6/a;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 27
    move-result-object v4

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    .line 31
    goto/16 :goto_2

    .line 32
    :cond_0
    move-object v4, p1

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-static {v4}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 36
    move-result v5

    .line 37
    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/ss/android/tea/common/deviceregister/c;->a()Ljava/lang/String;

    .line 42
    move-result-object v4

    .line 43
    .line 44
    :cond_1
    const-string v5, "google_aid"

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v5, v4, v3}, Lo6/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 51
    move-result-object v4

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    .line 55
    move-result v4

    .line 56
    .line 57
    .line 58
    const v5, 0x36ee80

    .line 59
    div-int/2addr v4, v5

    .line 60
    .line 61
    const/16 v5, -0xc

    .line 62
    .line 63
    if-ge v4, v5, :cond_2

    .line 64
    move v4, v5

    .line 65
    .line 66
    :cond_2
    const/16 v5, 0xc

    .line 67
    .line 68
    if-le v4, v5, :cond_3

    .line 69
    move v4, v5

    .line 70
    .line 71
    .line 72
    :cond_3
    const-string/jumbo v5, "timezone"

    .line 73
    .line 74
    new-instance v6, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v4, ""

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v4

    .line 90
    .line 91
    .line 92
    invoke-static {v2, v5, v4, v1}, Lo6/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 93
    .line 94
    const-string v4, "phone"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    move-result-object v4

    .line 99
    .line 100
    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 101
    .line 102
    const-string v5, "carrier"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    .line 106
    move-result-object v6

    .line 107
    .line 108
    .line 109
    invoke-static {v2, v5, v6, v3}, Lo6/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 110
    .line 111
    const-string v5, "mcc_mnc"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    .line 115
    move-result-object v6

    .line 116
    .line 117
    .line 118
    invoke-static {v2, v5, v6, v3}, Lo6/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 119
    .line 120
    const-string v5, "sim_region"

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    .line 124
    move-result-object v4

    .line 125
    .line 126
    .line 127
    invoke-static {v2, v5, v4, v3}, Lo6/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 128
    .line 129
    .line 130
    invoke-static {p0}, Lq6/b;->a(Landroid/content/Context;)Lq6/c;

    .line 131
    move-result-object p0

    .line 132
    .line 133
    .line 134
    invoke-interface {p0}, Lq6/c;->a()[Ljava/lang/String;

    .line 135
    move-result-object p0

    .line 136
    .line 137
    if-eqz p0, :cond_5

    .line 138
    array-length v4, p0

    .line 139
    .line 140
    if-lez v4, :cond_5

    .line 141
    .line 142
    aget-object v4, p0, v1

    .line 143
    move v5, v3

    .line 144
    :goto_1
    array-length v6, p0

    .line 145
    .line 146
    if-ge v5, v6, :cond_4

    .line 147
    .line 148
    new-instance v6, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v4, ","

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    aget-object v4, p0, v5

    .line 162
    .line 163
    .line 164
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object v4

    .line 169
    .line 170
    add-int/lit8 v5, v5, 0x1

    .line 171
    goto :goto_1

    .line 172
    .line 173
    :cond_4
    const-string p0, "sim_serial_number"

    .line 174
    .line 175
    .line 176
    invoke-static {v2, p0, v4, v3}, Lo6/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 177
    goto :goto_3

    .line 178
    .line 179
    :goto_2
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    const-string v5, "prepare app_alert param exception: "

    .line 185
    .line 186
    .line 187
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    move-result-object p0

    .line 195
    .line 196
    .line 197
    invoke-static {v0, p0}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :cond_5
    :goto_3
    invoke-static {v2, v3}, Lcom/ss/android/tea/common/applog/y;->b(Ljava/lang/StringBuilder;Z)V

    .line 201
    .line 202
    .line 203
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 204
    move-result p0

    .line 205
    .line 206
    if-eqz p0, :cond_6

    .line 207
    .line 208
    new-instance p0, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    const-string v4, "request : "

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object v4

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    move-result-object p0

    .line 228
    .line 229
    .line 230
    invoke-static {v0, p0}, Lcom/bytedance/tea/common/utility/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    goto :goto_4

    .line 232
    :catch_1
    move-exception p0

    .line 233
    goto :goto_5

    .line 234
    .line 235
    .line 236
    :cond_6
    :goto_4
    invoke-static {}, Lcom/bytedance/tea/common/utility/NetworkClient;->getDefault()Lcom/bytedance/tea/common/utility/NetworkClient;

    .line 237
    move-result-object p0

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    move-result-object v2

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0, v2, p1, p1}, Lcom/bytedance/tea/common/utility/NetworkClient;->get(Ljava/lang/String;Ljava/util/Map;Lcom/bytedance/tea/common/utility/NetworkClient$a;)Ljava/lang/String;

    .line 245
    move-result-object p0

    .line 246
    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    const-string v2, "NetworkClient.getDefault().get response:"

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    move-result-object p1

    .line 263
    .line 264
    .line 265
    invoke-static {v0, p1}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-static {p0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 269
    move-result p1

    .line 270
    .line 271
    if-nez p1, :cond_7

    .line 272
    .line 273
    new-instance p1, Lorg/json/JSONObject;

    .line 274
    .line 275
    .line 276
    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    const-string/jumbo p0, "success"

    .line 280
    .line 281
    const-string v2, "message"

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 285
    move-result-object p1

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 290
    .line 291
    if-eqz p0, :cond_7

    .line 292
    return v3

    .line 293
    .line 294
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .line 299
    const-string v2, "NetworkClient.getDefault().get exception:"

    .line 300
    .line 301
    .line 302
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    move-result-object p0

    .line 310
    .line 311
    .line 312
    invoke-static {v0, p0}, Lcom/bytedance/tea/common/utility/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_7
    return v1
.end method
