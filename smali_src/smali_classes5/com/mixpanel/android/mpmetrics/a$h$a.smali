.class Lcom/mixpanel/android/mpmetrics/a$h$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/mpmetrics/a$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private mDbAdapter:Lcom/mixpanel/android/mpmetrics/e;

.field private mFailedRetries:I

.field private final mFlushInterval:J

.field private mTrackEngageRetryAfter:J

.field final synthetic this$1:Lcom/mixpanel/android/mpmetrics/a$h;


# direct methods
.method public constructor <init>(Lcom/mixpanel/android/mpmetrics/a$h;Landroid/os/Looper;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    const/4 p2, 0x0

    .line 7
    .line 8
    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->mDbAdapter:Lcom/mixpanel/android/mpmetrics/e;

    .line 9
    .line 10
    iget-object p2, p1, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    .line 11
    .line 12
    iget-object p2, p2, Lcom/mixpanel/android/mpmetrics/a;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Lcom/mixpanel/android/mpmetrics/l;->f(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/l;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Lcom/mixpanel/android/mpmetrics/a$h;->b(Lcom/mixpanel/android/mpmetrics/a$h;Lcom/mixpanel/android/mpmetrics/l;)Lcom/mixpanel/android/mpmetrics/l;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/mixpanel/android/mpmetrics/a;->mConfig:Lcom/mixpanel/android/mpmetrics/d;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/d;->h()I

    .line 27
    move-result p1

    .line 28
    int-to-long p1, p1

    .line 29
    .line 30
    iput-wide p1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->mFlushInterval:J

    .line 31
    return-void
.end method

.method private a()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    const-string v1, "mp_lib"

    .line 8
    .line 9
    const-string v2, "android"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    .line 14
    const-string v1, "$lib_version"

    .line 15
    .line 16
    const-string v2, "7.5.2"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    .line 21
    const-string v1, "$os"

    .line 22
    .line 23
    const-string v2, "Android"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    .line 28
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 29
    .line 30
    const-string v2, "UNKNOWN"

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    move-object v1, v2

    .line 34
    .line 35
    :cond_0
    const-string v3, "$os_version"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    .line 40
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 41
    .line 42
    if-nez v1, :cond_1

    .line 43
    move-object v1, v2

    .line 44
    .line 45
    :cond_1
    const-string v3, "$manufacturer"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    .line 50
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 51
    .line 52
    if-nez v1, :cond_2

    .line 53
    move-object v1, v2

    .line 54
    .line 55
    :cond_2
    const-string v3, "$brand"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    .line 60
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 61
    .line 62
    if-nez v1, :cond_3

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    move-object v2, v1

    .line 65
    .line 66
    :goto_0
    const-string v1, "$model"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    .line 71
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 72
    .line 73
    .line 74
    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/a$h;->a(Lcom/mixpanel/android/mpmetrics/a$h;)Lcom/mixpanel/android/mpmetrics/l;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/l;->e()Landroid/util/DisplayMetrics;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 82
    .line 83
    const-string v3, "$screen_dpi"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    .line 88
    const-string v2, "$screen_height"

    .line 89
    .line 90
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    .line 95
    const-string v2, "$screen_width"

    .line 96
    .line 97
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    .line 102
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 103
    .line 104
    .line 105
    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/a$h;->a(Lcom/mixpanel/android/mpmetrics/a$h;)Lcom/mixpanel/android/mpmetrics/l;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/l;->b()Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 111
    .line 112
    if-eqz v1, :cond_4

    .line 113
    .line 114
    const-string v2, "$app_version"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    .line 119
    const-string v2, "$app_version_string"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    .line 124
    :cond_4
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 125
    .line 126
    .line 127
    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/a$h;->a(Lcom/mixpanel/android/mpmetrics/a$h;)Lcom/mixpanel/android/mpmetrics/l;

    .line 128
    move-result-object v1

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/l;->a()Ljava/lang/Integer;

    .line 132
    move-result-object v1

    .line 133
    .line 134
    if-eqz v1, :cond_5

    .line 135
    .line 136
    .line 137
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    move-result-object v1

    .line 139
    .line 140
    const-string v2, "$app_release"

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    .line 145
    const-string v2, "$app_build_number"

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    .line 150
    :cond_5
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 151
    .line 152
    .line 153
    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/a$h;->a(Lcom/mixpanel/android/mpmetrics/a$h;)Lcom/mixpanel/android/mpmetrics/l;

    .line 154
    move-result-object v1

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/l;->g()Z

    .line 158
    move-result v1

    .line 159
    .line 160
    .line 161
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 162
    move-result-object v1

    .line 163
    .line 164
    if-eqz v1, :cond_6

    .line 165
    .line 166
    const-string v2, "$has_nfc"

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 170
    move-result v1

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 174
    .line 175
    :cond_6
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 176
    .line 177
    .line 178
    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/a$h;->a(Lcom/mixpanel/android/mpmetrics/a$h;)Lcom/mixpanel/android/mpmetrics/l;

    .line 179
    move-result-object v1

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/l;->h()Z

    .line 183
    move-result v1

    .line 184
    .line 185
    .line 186
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 187
    move-result-object v1

    .line 188
    .line 189
    if-eqz v1, :cond_7

    .line 190
    .line 191
    const-string v2, "$has_telephone"

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 195
    move-result v1

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 199
    .line 200
    :cond_7
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 201
    .line 202
    .line 203
    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/a$h;->a(Lcom/mixpanel/android/mpmetrics/a$h;)Lcom/mixpanel/android/mpmetrics/l;

    .line 204
    move-result-object v1

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/l;->d()Ljava/lang/String;

    .line 208
    move-result-object v1

    .line 209
    .line 210
    if-eqz v1, :cond_8

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 214
    move-result-object v2

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 218
    move-result v2

    .line 219
    .line 220
    if-nez v2, :cond_8

    .line 221
    .line 222
    const-string v2, "$carrier"

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    .line 227
    :cond_8
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 228
    .line 229
    .line 230
    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/a$h;->a(Lcom/mixpanel/android/mpmetrics/a$h;)Lcom/mixpanel/android/mpmetrics/l;

    .line 231
    move-result-object v1

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/l;->j()Ljava/lang/Boolean;

    .line 235
    move-result-object v1

    .line 236
    .line 237
    if-eqz v1, :cond_9

    .line 238
    .line 239
    const-string v2, "$wifi"

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 243
    move-result v1

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 247
    .line 248
    :cond_9
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 249
    .line 250
    .line 251
    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/a$h;->a(Lcom/mixpanel/android/mpmetrics/a$h;)Lcom/mixpanel/android/mpmetrics/l;

    .line 252
    move-result-object v1

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/l;->i()Ljava/lang/Boolean;

    .line 256
    move-result-object v1

    .line 257
    .line 258
    if-eqz v1, :cond_a

    .line 259
    .line 260
    const-string v2, "$bluetooth_enabled"

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    .line 265
    :cond_a
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 266
    .line 267
    .line 268
    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/a$h;->a(Lcom/mixpanel/android/mpmetrics/a$h;)Lcom/mixpanel/android/mpmetrics/l;

    .line 269
    move-result-object v1

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/l;->c()Ljava/lang/String;

    .line 273
    move-result-object v1

    .line 274
    .line 275
    if-eqz v1, :cond_b

    .line 276
    .line 277
    const-string v2, "$bluetooth_version"

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    :cond_b
    return-object v0
.end method

.method private b(Lcom/mixpanel/android/mpmetrics/a$a;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/a$a;->d()Lorg/json/JSONObject;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/a$h$a;->a()Lorg/json/JSONObject;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    const-string v3, "token"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/a$c;->a()Ljava/lang/String;

    .line 19
    move-result-object v4

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v4

    .line 33
    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    check-cast v4, Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    move-result-object v5

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_0
    const-string v1, "event"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/a$a;->c()Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    .line 59
    const-string v1, "properties"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    .line 64
    const-string v1, "$mp_metadata"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/a$a;->e()Lorg/json/JSONObject;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    return-object v0
.end method

.method private c(Lcom/mixpanel/android/mpmetrics/e;Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/a;->h()Lcom/mixpanel/android/util/g;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    .line 13
    .line 14
    iget-object v2, v1, Lcom/mixpanel/android/mpmetrics/a;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/a;->mConfig:Lcom/mixpanel/android/mpmetrics/d;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/d;->p()Lcom/mixpanel/android/util/e;

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v2, v1}, Lcom/mixpanel/android/util/g;->b(Landroid/content/Context;Lcom/mixpanel/android/util/e;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    .line 31
    .line 32
    const-string p2, "Not flushing data to Mixpanel because the device is not connected to the internet."

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p2}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V

    .line 36
    return-void

    .line 37
    .line 38
    :cond_0
    sget-object v0, Lcom/mixpanel/android/mpmetrics/e$b;->EVENTS:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    .line 43
    .line 44
    iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/a;->mConfig:Lcom/mixpanel/android/mpmetrics/d;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/d;->f()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mixpanel/android/mpmetrics/a$h$a;->d(Lcom/mixpanel/android/mpmetrics/e;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/e$b;Ljava/lang/String;)V

    .line 52
    .line 53
    sget-object v0, Lcom/mixpanel/android/mpmetrics/e$b;->PEOPLE:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 56
    .line 57
    iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    .line 58
    .line 59
    iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/a;->mConfig:Lcom/mixpanel/android/mpmetrics/d;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/d;->q()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mixpanel/android/mpmetrics/a$h$a;->d(Lcom/mixpanel/android/mpmetrics/e;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/e$b;Ljava/lang/String;)V

    .line 67
    .line 68
    sget-object v0, Lcom/mixpanel/android/mpmetrics/e$b;->GROUPS:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 71
    .line 72
    iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    .line 73
    .line 74
    iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/a;->mConfig:Lcom/mixpanel/android/mpmetrics/d;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/d;->j()Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mixpanel/android/mpmetrics/a$h$a;->d(Lcom/mixpanel/android/mpmetrics/e;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/e$b;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method private d(Lcom/mixpanel/android/mpmetrics/e;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/e$b;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const-string v6, "MixpanelAPI.Messages"

    const-string v7, "Cannot post message to "

    const-string v8, "."

    iget-object v0, v1, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 1
    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/a;->h()Lcom/mixpanel/android/util/g;

    move-result-object v9

    .line 2
    invoke-virtual {v2, v4, v3}, Lcom/mixpanel/android/mpmetrics/e;->o(Lcom/mixpanel/android/mpmetrics/e$b;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    .line 3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    if-eqz v0, :cond_0

    .line 4
    aget-object v11, v0, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    :cond_0
    :goto_0
    if-eqz v0, :cond_6

    .line 5
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lez v13, :cond_6

    .line 6
    aget-object v13, v0, v10

    const/4 v14, 0x1

    .line 7
    aget-object v0, v0, v14

    .line 8
    invoke-static {v0}, Lcom/mixpanel/android/util/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 9
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    const-string v12, "data"

    .line 10
    invoke-interface {v14, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-boolean v12, Lcom/mixpanel/android/mpmetrics/d;->DEBUG:Z

    if-eqz v12, :cond_1

    const-string v12, "verbose"

    const-string v15, "1"

    .line 12
    invoke-interface {v14, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :try_start_0
    iget-object v12, v1, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 13
    iget-object v12, v12, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    iget-object v12, v12, Lcom/mixpanel/android/mpmetrics/a;->mConfig:Lcom/mixpanel/android/mpmetrics/d;

    invoke-virtual {v12}, Lcom/mixpanel/android/mpmetrics/d;->t()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v12

    iget-object v15, v1, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 14
    iget-object v15, v15, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    iget-object v15, v15, Lcom/mixpanel/android/mpmetrics/a;->mConfig:Lcom/mixpanel/android/mpmetrics/d;

    invoke-virtual {v15}, Lcom/mixpanel/android/mpmetrics/d;->r()Lcom/mixpanel/android/util/f;

    const/4 v15, 0x0

    invoke-interface {v9, v5, v15, v14, v12}, Lcom/mixpanel/android/util/g;->a(Ljava/lang/String;Lcom/mixpanel/android/util/f;Ljava/util/Map;Ljavax/net/ssl/SSLSocketFactory;)[B

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/mixpanel/android/util/g$a; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v12, :cond_3

    :try_start_1
    iget-object v0, v1, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 15
    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Response was null, unexpected failure posting to "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/mixpanel/android/util/g$a; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    const/4 v10, 0x2

    goto/16 :goto_a

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_4

    :catch_2
    move-exception v0

    goto/16 :goto_5

    :catch_3
    move-exception v0

    goto/16 :goto_6

    :catch_4
    move-exception v0

    goto/16 :goto_7

    .line 16
    :cond_3
    :try_start_2
    new-instance v14, Ljava/lang/String;

    const-string v15, "UTF-8"

    invoke-direct {v14, v12, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/mixpanel/android/util/g$a; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget v12, v1, Lcom/mixpanel/android/mpmetrics/a$h$a;->mFailedRetries:I

    if-lez v12, :cond_4

    iput v10, v1, Lcom/mixpanel/android/mpmetrics/a$h$a;->mFailedRetries:I

    const/4 v12, 0x2

    .line 17
    invoke-virtual {v1, v12, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_2

    :catch_5
    move-exception v0

    const/4 v10, 0x1

    goto/16 :goto_6

    :catch_6
    move-exception v0

    const/4 v10, 0x1

    goto/16 :goto_7

    :cond_4
    :goto_2
    iget-object v12, v1, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 18
    iget-object v12, v12, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Successfully posted to "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": \n"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 19
    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Response was "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V

    goto/16 :goto_9

    :catch_7
    move-exception v0

    .line 20
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v12, "UTF not supported on this platform?"

    invoke-direct {v10, v12, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lcom/mixpanel/android/util/g$a; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    iget-object v2, v1, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 21
    iget-object v2, v2, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Lcom/mixpanel/android/mpmetrics/a;->b(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :goto_4
    iget-object v2, v1, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 22
    iget-object v2, v2, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Lcom/mixpanel/android/mpmetrics/a;->b(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :goto_5
    iget-object v2, v1, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 23
    iget-object v2, v2, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Lcom/mixpanel/android/mpmetrics/a;->b(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    invoke-virtual {v0}, Lcom/mixpanel/android/util/g$a;->a()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    iput-wide v4, v1, Lcom/mixpanel/android/mpmetrics/a$h$a;->mTrackEngageRetryAfter:J

    goto/16 :goto_1

    .line 25
    :goto_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot interpret "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " as a URL."

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12, v0}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 26
    :goto_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Out of memory when posting to "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12, v0}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8
    if-eqz v10, :cond_2

    :goto_9
    iget-object v0, v1, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 27
    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    const-string v10, "Not retrying this batch of events, deleting them from DB."

    invoke-static {v0, v10}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v2, v13, v4, v3}, Lcom/mixpanel/android/mpmetrics/e;->m(Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/e$b;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v2, v4, v3}, Lcom/mixpanel/android/mpmetrics/e;->o(Lcom/mixpanel/android/mpmetrics/e$b;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x2

    if-eqz v0, :cond_5

    .line 30
    aget-object v11, v0, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    :cond_5
    move v12, v10

    const/4 v10, 0x0

    goto/16 :goto_0

    .line 31
    :goto_a
    invoke-virtual {v1, v10, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget v0, v1, Lcom/mixpanel/android/mpmetrics/a$h$a;->mFailedRetries:I

    int-to-double v4, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 32
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v4, v4

    const-wide/32 v6, 0xea60

    mul-long/2addr v4, v6

    iget-wide v6, v1, Lcom/mixpanel/android/mpmetrics/a$h$a;->mTrackEngageRetryAfter:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/mixpanel/android/mpmetrics/a$h$a;->mTrackEngageRetryAfter:J

    const-wide/32 v6, 0x927c0

    .line 33
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/mixpanel/android/mpmetrics/a$h$a;->mTrackEngageRetryAfter:J

    .line 34
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x2

    .line 35
    iput v2, v0, Landroid/os/Message;->what:I

    .line 36
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-wide v2, v1, Lcom/mixpanel/android/mpmetrics/a$h$a;->mTrackEngageRetryAfter:J

    .line 37
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget v0, v1, Lcom/mixpanel/android/mpmetrics/a$h$a;->mFailedRetries:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v1, Lcom/mixpanel/android/mpmetrics/a$h$a;->mFailedRetries:I

    iget-object v0, v1, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 38
    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrying this batch of events in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/mixpanel/android/mpmetrics/a$h$a;->mTrackEngageRetryAfter:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->mDbAdapter:Lcom/mixpanel/android/mpmetrics/e;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/mixpanel/android/mpmetrics/a;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/mixpanel/android/mpmetrics/a;->k(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/e;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->mDbAdapter:Lcom/mixpanel/android/mpmetrics/e;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    move-result-wide v1

    .line 21
    .line 22
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    .line 25
    .line 26
    iget-object v3, v3, Lcom/mixpanel/android/mpmetrics/a;->mConfig:Lcom/mixpanel/android/mpmetrics/d;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/d;->b()J

    .line 30
    move-result-wide v3

    .line 31
    sub-long/2addr v1, v3

    .line 32
    .line 33
    sget-object v3, Lcom/mixpanel/android/mpmetrics/e$b;->EVENTS:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, v2, v3}, Lcom/mixpanel/android/mpmetrics/e;->l(JLcom/mixpanel/android/mpmetrics/e$b;)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->mDbAdapter:Lcom/mixpanel/android/mpmetrics/e;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    move-result-wide v1

    .line 43
    .line 44
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 45
    .line 46
    iget-object v3, v3, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    .line 47
    .line 48
    iget-object v3, v3, Lcom/mixpanel/android/mpmetrics/a;->mConfig:Lcom/mixpanel/android/mpmetrics/d;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/d;->b()J

    .line 52
    move-result-wide v3

    .line 53
    sub-long/2addr v1, v3

    .line 54
    .line 55
    sget-object v3, Lcom/mixpanel/android/mpmetrics/e$b;->PEOPLE:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1, v2, v3}, Lcom/mixpanel/android/mpmetrics/e;->l(JLcom/mixpanel/android/mpmetrics/e$b;)V

    .line 59
    :cond_0
    const/4 v0, 0x0

    .line 60
    .line 61
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 62
    const/4 v2, 0x1

    .line 63
    const/4 v3, 0x2

    .line 64
    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p1, Lcom/mixpanel/android/mpmetrics/a$e;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/a$e;->c()Z

    .line 73
    move-result v1

    .line 74
    .line 75
    if-eqz v1, :cond_1

    .line 76
    .line 77
    sget-object v1, Lcom/mixpanel/android/mpmetrics/e$b;->ANONYMOUS_PEOPLE:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception p1

    .line 80
    .line 81
    goto/16 :goto_6

    .line 82
    .line 83
    :cond_1
    sget-object v1, Lcom/mixpanel/android/mpmetrics/e$b;->PEOPLE:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 84
    .line 85
    :goto_0
    iget-object v4, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 86
    .line 87
    iget-object v4, v4, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    .line 88
    .line 89
    const-string v5, "Queuing people record for sending later"

    .line 90
    .line 91
    .line 92
    invoke-static {v4, v5}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V

    .line 93
    .line 94
    iget-object v4, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 95
    .line 96
    iget-object v4, v4, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    .line 97
    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    const-string v6, "    "

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/a$e;->toString()Ljava/lang/String;

    .line 110
    move-result-object v6

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v5

    .line 118
    .line 119
    .line 120
    invoke-static {v4, v5}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/a$c;->a()Ljava/lang/String;

    .line 124
    move-result-object v4

    .line 125
    .line 126
    iget-object v5, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->mDbAdapter:Lcom/mixpanel/android/mpmetrics/e;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/a$d;->b()Lorg/json/JSONObject;

    .line 130
    move-result-object v6

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5, v6, v4, v1}, Lcom/mixpanel/android/mpmetrics/e;->j(Lorg/json/JSONObject;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/e$b;)I

    .line 134
    move-result v1

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/a$e;->c()Z

    .line 138
    move-result p1

    .line 139
    .line 140
    if-eqz p1, :cond_c

    .line 141
    const/4 v1, 0x0

    .line 142
    .line 143
    goto/16 :goto_5

    .line 144
    :cond_2
    const/4 v4, 0x3

    .line 145
    .line 146
    if-ne v1, v4, :cond_3

    .line 147
    .line 148
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast p1, Lcom/mixpanel/android/mpmetrics/a$b;

    .line 151
    .line 152
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 153
    .line 154
    iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    .line 155
    .line 156
    const-string v4, "Queuing group record for sending later"

    .line 157
    .line 158
    .line 159
    invoke-static {v1, v4}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V

    .line 160
    .line 161
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 162
    .line 163
    iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    .line 164
    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    const-string v5, "    "

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/a$b;->toString()Ljava/lang/String;

    .line 177
    move-result-object v5

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    move-result-object v4

    .line 185
    .line 186
    .line 187
    invoke-static {v1, v4}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/a$c;->a()Ljava/lang/String;

    .line 191
    move-result-object v4

    .line 192
    .line 193
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->mDbAdapter:Lcom/mixpanel/android/mpmetrics/e;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/a$d;->b()Lorg/json/JSONObject;

    .line 197
    move-result-object p1

    .line 198
    .line 199
    sget-object v5, Lcom/mixpanel/android/mpmetrics/e$b;->GROUPS:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, p1, v4, v5}, Lcom/mixpanel/android/mpmetrics/e;->j(Lorg/json/JSONObject;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/e$b;)I

    .line 203
    move-result v1

    .line 204
    .line 205
    goto/16 :goto_5

    .line 206
    :cond_3
    const/4 v4, -0x3

    .line 207
    .line 208
    if-ne v1, v2, :cond_4

    .line 209
    .line 210
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast p1, Lcom/mixpanel/android/mpmetrics/a$a;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .line 214
    .line 215
    :try_start_1
    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/a$h$a;->b(Lcom/mixpanel/android/mpmetrics/a$a;)Lorg/json/JSONObject;

    .line 216
    move-result-object v1

    .line 217
    .line 218
    iget-object v5, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 219
    .line 220
    iget-object v5, v5, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    .line 221
    .line 222
    const-string v6, "Queuing event for sending later"

    .line 223
    .line 224
    .line 225
    invoke-static {v5, v6}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V

    .line 226
    .line 227
    iget-object v5, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 228
    .line 229
    iget-object v5, v5, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    .line 230
    .line 231
    new-instance v6, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    const-string v7, "    "

    .line 237
    .line 238
    .line 239
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 243
    move-result-object v7

    .line 244
    .line 245
    .line 246
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    move-result-object v6

    .line 251
    .line 252
    .line 253
    invoke-static {v5, v6}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/a$c;->a()Ljava/lang/String;

    .line 257
    move-result-object v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 258
    .line 259
    :try_start_2
    iget-object v6, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->mDbAdapter:Lcom/mixpanel/android/mpmetrics/e;

    .line 260
    .line 261
    sget-object v7, Lcom/mixpanel/android/mpmetrics/e$b;->EVENTS:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v6, v1, v5, v7}, Lcom/mixpanel/android/mpmetrics/e;->j(Lorg/json/JSONObject;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/e$b;)I

    .line 265
    move-result p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 266
    move v1, p1

    .line 267
    :goto_1
    move-object v4, v5

    .line 268
    .line 269
    goto/16 :goto_5

    .line 270
    :catch_1
    move-exception v1

    .line 271
    goto :goto_2

    .line 272
    :catch_2
    move-exception v1

    .line 273
    move-object v5, v0

    .line 274
    .line 275
    :goto_2
    :try_start_3
    const-string v6, "MixpanelAPI.Messages"

    .line 276
    .line 277
    new-instance v7, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .line 282
    const-string v8, "Exception tracking event "

    .line 283
    .line 284
    .line 285
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/a$a;->c()Ljava/lang/String;

    .line 289
    move-result-object p1

    .line 290
    .line 291
    .line 292
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    move-result-object p1

    .line 297
    .line 298
    .line 299
    invoke-static {v6, p1, v1}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    move v1, v4

    .line 301
    goto :goto_1

    .line 302
    :cond_4
    const/4 v5, 0x4

    .line 303
    .line 304
    if-ne v1, v5, :cond_5

    .line 305
    .line 306
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 307
    .line 308
    check-cast p1, Lcom/mixpanel/android/mpmetrics/a$f;

    .line 309
    .line 310
    .line 311
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/a$f;->b()Ljava/lang/String;

    .line 312
    move-result-object v1

    .line 313
    .line 314
    .line 315
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/a$c;->a()Ljava/lang/String;

    .line 316
    move-result-object v4

    .line 317
    .line 318
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->mDbAdapter:Lcom/mixpanel/android/mpmetrics/e;

    .line 319
    .line 320
    .line 321
    invoke-virtual {p1, v4, v1}, Lcom/mixpanel/android/mpmetrics/e;->s(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    move-result v1

    .line 323
    .line 324
    goto/16 :goto_5

    .line 325
    :cond_5
    const/4 v5, 0x7

    .line 326
    .line 327
    if-ne v1, v5, :cond_6

    .line 328
    .line 329
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 330
    .line 331
    check-cast p1, Lcom/mixpanel/android/mpmetrics/a$c;

    .line 332
    .line 333
    .line 334
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/a$c;->a()Ljava/lang/String;

    .line 335
    move-result-object p1

    .line 336
    .line 337
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->mDbAdapter:Lcom/mixpanel/android/mpmetrics/e;

    .line 338
    .line 339
    sget-object v5, Lcom/mixpanel/android/mpmetrics/e$b;->ANONYMOUS_PEOPLE:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1, v5, p1}, Lcom/mixpanel/android/mpmetrics/e;->k(Lcom/mixpanel/android/mpmetrics/e$b;Ljava/lang/String;)V

    .line 343
    :goto_3
    move v1, v4

    .line 344
    move-object v4, p1

    .line 345
    .line 346
    goto/16 :goto_5

    .line 347
    .line 348
    :cond_6
    const/16 v5, 0x8

    .line 349
    .line 350
    if-ne v1, v5, :cond_7

    .line 351
    .line 352
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 353
    .line 354
    check-cast p1, Lcom/mixpanel/android/mpmetrics/a$g;

    .line 355
    .line 356
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->mDbAdapter:Lcom/mixpanel/android/mpmetrics/e;

    .line 357
    .line 358
    .line 359
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/a$g;->b()Ljava/util/Map;

    .line 360
    move-result-object v5

    .line 361
    .line 362
    .line 363
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/a$c;->a()Ljava/lang/String;

    .line 364
    move-result-object p1

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1, v5, p1}, Lcom/mixpanel/android/mpmetrics/e;->t(Ljava/util/Map;Ljava/lang/String;)I

    .line 368
    move-result p1

    .line 369
    .line 370
    const-string v1, "MixpanelAPI.Messages"

    .line 371
    .line 372
    new-instance v5, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    const-string p1, " stored events were updated with new properties."

    .line 381
    .line 382
    .line 383
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    move-result-object p1

    .line 388
    .line 389
    .line 390
    invoke-static {v1, p1}, Lcom/mixpanel/android/util/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .line 392
    goto/16 :goto_4

    .line 393
    .line 394
    :cond_7
    if-ne v1, v3, :cond_8

    .line 395
    .line 396
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 397
    .line 398
    iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    .line 399
    .line 400
    const-string v5, "Flushing queue due to scheduled or forced flush"

    .line 401
    .line 402
    .line 403
    invoke-static {v1, v5}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V

    .line 404
    .line 405
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 406
    .line 407
    .line 408
    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/a$h;->c(Lcom/mixpanel/android/mpmetrics/a$h;)V

    .line 409
    .line 410
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 411
    .line 412
    check-cast p1, Ljava/lang/String;

    .line 413
    .line 414
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->mDbAdapter:Lcom/mixpanel/android/mpmetrics/e;

    .line 415
    .line 416
    .line 417
    invoke-direct {p0, v1, p1}, Lcom/mixpanel/android/mpmetrics/a$h$a;->c(Lcom/mixpanel/android/mpmetrics/e;Ljava/lang/String;)V

    .line 418
    goto :goto_3

    .line 419
    :cond_8
    const/4 v5, 0x6

    .line 420
    .line 421
    if-ne v1, v5, :cond_9

    .line 422
    .line 423
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 424
    .line 425
    check-cast p1, Lcom/mixpanel/android/mpmetrics/a$c;

    .line 426
    .line 427
    .line 428
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/a$c;->a()Ljava/lang/String;

    .line 429
    move-result-object p1

    .line 430
    .line 431
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->mDbAdapter:Lcom/mixpanel/android/mpmetrics/e;

    .line 432
    .line 433
    sget-object v5, Lcom/mixpanel/android/mpmetrics/e$b;->EVENTS:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v1, v5, p1}, Lcom/mixpanel/android/mpmetrics/e;->k(Lcom/mixpanel/android/mpmetrics/e$b;Ljava/lang/String;)V

    .line 437
    .line 438
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->mDbAdapter:Lcom/mixpanel/android/mpmetrics/e;

    .line 439
    .line 440
    sget-object v5, Lcom/mixpanel/android/mpmetrics/e$b;->PEOPLE:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v1, v5, p1}, Lcom/mixpanel/android/mpmetrics/e;->k(Lcom/mixpanel/android/mpmetrics/e$b;Ljava/lang/String;)V

    .line 444
    .line 445
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->mDbAdapter:Lcom/mixpanel/android/mpmetrics/e;

    .line 446
    .line 447
    sget-object v5, Lcom/mixpanel/android/mpmetrics/e$b;->GROUPS:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v1, v5, p1}, Lcom/mixpanel/android/mpmetrics/e;->k(Lcom/mixpanel/android/mpmetrics/e$b;Ljava/lang/String;)V

    .line 451
    .line 452
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->mDbAdapter:Lcom/mixpanel/android/mpmetrics/e;

    .line 453
    .line 454
    sget-object v5, Lcom/mixpanel/android/mpmetrics/e$b;->ANONYMOUS_PEOPLE:Lcom/mixpanel/android/mpmetrics/e$b;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v1, v5, p1}, Lcom/mixpanel/android/mpmetrics/e;->k(Lcom/mixpanel/android/mpmetrics/e$b;Ljava/lang/String;)V

    .line 458
    goto :goto_3

    .line 459
    :cond_9
    const/4 v5, 0x5

    .line 460
    .line 461
    if-ne v1, v5, :cond_a

    .line 462
    .line 463
    const-string p1, "MixpanelAPI.Messages"

    .line 464
    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .line 470
    const-string v5, "Worker received a hard kill. Dumping all events and force-killing. Thread id "

    .line 471
    .line 472
    .line 473
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 477
    move-result-object v5

    .line 478
    .line 479
    .line 480
    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    .line 481
    move-result-wide v5

    .line 482
    .line 483
    .line 484
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    move-result-object v1

    .line 489
    .line 490
    .line 491
    invoke-static {p1, v1}, Lcom/mixpanel/android/util/d;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    .line 493
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 494
    .line 495
    .line 496
    invoke-static {p1}, Lcom/mixpanel/android/mpmetrics/a$h;->d(Lcom/mixpanel/android/mpmetrics/a$h;)Ljava/lang/Object;

    .line 497
    move-result-object p1

    .line 498
    monitor-enter p1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 499
    .line 500
    :try_start_4
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->mDbAdapter:Lcom/mixpanel/android/mpmetrics/e;

    .line 501
    .line 502
    .line 503
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/e;->n()V

    .line 504
    .line 505
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 506
    .line 507
    .line 508
    invoke-static {v1, v0}, Lcom/mixpanel/android/mpmetrics/a$h;->e(Lcom/mixpanel/android/mpmetrics/a$h;Landroid/os/Handler;)Landroid/os/Handler;

    .line 509
    .line 510
    .line 511
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 512
    move-result-object v1

    .line 513
    .line 514
    .line 515
    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 516
    monitor-exit p1

    .line 517
    goto :goto_4

    .line 518
    :catchall_0
    move-exception v1

    .line 519
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 520
    :try_start_5
    throw v1

    .line 521
    .line 522
    :cond_a
    const/16 v5, 0x9

    .line 523
    .line 524
    if-ne v1, v5, :cond_b

    .line 525
    .line 526
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 527
    .line 528
    check-cast p1, Ljava/io/File;

    .line 529
    .line 530
    .line 531
    invoke-static {p1}, Lcom/mixpanel/android/util/c;->a(Ljava/io/File;)V

    .line 532
    goto :goto_4

    .line 533
    .line 534
    :cond_b
    const-string v1, "MixpanelAPI.Messages"

    .line 535
    .line 536
    new-instance v5, Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 540
    .line 541
    const-string v6, "Unexpected message received by Mixpanel worker: "

    .line 542
    .line 543
    .line 544
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 551
    move-result-object p1

    .line 552
    .line 553
    .line 554
    invoke-static {v1, p1}, Lcom/mixpanel/android/util/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :goto_4
    move v1, v4

    .line 556
    move-object v4, v0

    .line 557
    .line 558
    :cond_c
    :goto_5
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 559
    .line 560
    iget-object p1, p1, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    .line 561
    .line 562
    iget-object p1, p1, Lcom/mixpanel/android/mpmetrics/a;->mConfig:Lcom/mixpanel/android/mpmetrics/d;

    .line 563
    .line 564
    .line 565
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/d;->a()I

    .line 566
    move-result p1

    .line 567
    .line 568
    if-ge v1, p1, :cond_d

    .line 569
    const/4 p1, -0x2

    .line 570
    .line 571
    if-ne v1, p1, :cond_e

    .line 572
    .line 573
    :cond_d
    iget p1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->mFailedRetries:I

    .line 574
    .line 575
    if-gtz p1, :cond_e

    .line 576
    .line 577
    if-eqz v4, :cond_e

    .line 578
    .line 579
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 580
    .line 581
    iget-object p1, p1, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    .line 582
    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 587
    .line 588
    const-string v3, "Flushing queue due to bulk upload limit ("

    .line 589
    .line 590
    .line 591
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    const-string v1, ") for project "

    .line 597
    .line 598
    .line 599
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 606
    move-result-object v1

    .line 607
    .line 608
    .line 609
    invoke-static {p1, v1}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V

    .line 610
    .line 611
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 612
    .line 613
    .line 614
    invoke-static {p1}, Lcom/mixpanel/android/mpmetrics/a$h;->c(Lcom/mixpanel/android/mpmetrics/a$h;)V

    .line 615
    .line 616
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->mDbAdapter:Lcom/mixpanel/android/mpmetrics/e;

    .line 617
    .line 618
    .line 619
    invoke-direct {p0, p1, v4}, Lcom/mixpanel/android/mpmetrics/a$h$a;->c(Lcom/mixpanel/android/mpmetrics/e;Ljava/lang/String;)V

    .line 620
    goto :goto_8

    .line 621
    .line 622
    :cond_e
    if-lez v1, :cond_f

    .line 623
    .line 624
    .line 625
    invoke-virtual {p0, v3, v4}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    .line 626
    move-result p1

    .line 627
    .line 628
    if-nez p1, :cond_f

    .line 629
    .line 630
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 631
    .line 632
    iget-object p1, p1, Lcom/mixpanel/android/mpmetrics/a$h;->this$0:Lcom/mixpanel/android/mpmetrics/a;

    .line 633
    .line 634
    new-instance v5, Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 638
    .line 639
    const-string v6, "Queue depth "

    .line 640
    .line 641
    .line 642
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    const-string v1, " - Adding flush in "

    .line 648
    .line 649
    .line 650
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    iget-wide v6, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->mFlushInterval:J

    .line 653
    .line 654
    .line 655
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 659
    move-result-object v1

    .line 660
    .line 661
    .line 662
    invoke-static {p1, v1}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V

    .line 663
    .line 664
    iget-wide v5, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->mFlushInterval:J

    .line 665
    .line 666
    const-wide/16 v7, 0x0

    .line 667
    .line 668
    cmp-long p1, v5, v7

    .line 669
    .line 670
    if-ltz p1, :cond_f

    .line 671
    .line 672
    .line 673
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 674
    move-result-object p1

    .line 675
    .line 676
    iput v3, p1, Landroid/os/Message;->what:I

    .line 677
    .line 678
    iput-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 679
    .line 680
    iput v2, p1, Landroid/os/Message;->arg1:I

    .line 681
    .line 682
    iget-wide v1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->mFlushInterval:J

    .line 683
    .line 684
    .line 685
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 686
    goto :goto_8

    .line 687
    .line 688
    :goto_6
    const-string v1, "MixpanelAPI.Messages"

    .line 689
    .line 690
    const-string v2, "Worker threw an unhandled exception"

    .line 691
    .line 692
    .line 693
    invoke-static {v1, v2, p1}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 694
    .line 695
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 696
    .line 697
    .line 698
    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/a$h;->d(Lcom/mixpanel/android/mpmetrics/a$h;)Ljava/lang/Object;

    .line 699
    move-result-object v1

    .line 700
    monitor-enter v1

    .line 701
    .line 702
    :try_start_6
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/a$h$a;->this$1:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 703
    .line 704
    .line 705
    invoke-static {v2, v0}, Lcom/mixpanel/android/mpmetrics/a$h;->e(Lcom/mixpanel/android/mpmetrics/a$h;Landroid/os/Handler;)Landroid/os/Handler;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 706
    .line 707
    .line 708
    :try_start_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 709
    move-result-object v0

    .line 710
    .line 711
    .line 712
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 713
    .line 714
    const-string v0, "MixpanelAPI.Messages"

    .line 715
    .line 716
    const-string v2, "Mixpanel will not process any more analytics messages"

    .line 717
    .line 718
    .line 719
    invoke-static {v0, v2, p1}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 720
    goto :goto_7

    .line 721
    :catchall_1
    move-exception p1

    .line 722
    goto :goto_9

    .line 723
    :catch_3
    move-exception p1

    .line 724
    .line 725
    :try_start_8
    const-string v0, "MixpanelAPI.Messages"

    .line 726
    .line 727
    const-string v2, "Could not halt looper"

    .line 728
    .line 729
    .line 730
    invoke-static {v0, v2, p1}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 731
    :goto_7
    monitor-exit v1

    .line 732
    :cond_f
    :goto_8
    return-void

    .line 733
    :goto_9
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 734
    throw p1
.end method
