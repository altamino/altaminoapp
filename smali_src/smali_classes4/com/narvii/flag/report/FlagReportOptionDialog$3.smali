.class Lcom/narvii/flag/report/FlagReportOptionDialog$3;
.super Lcom/narvii/flag/report/FlagRequestDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/report/FlagReportOptionDialog;->sendRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/flag/report/FlagRequestDialog<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

.field final synthetic val$config:Lcom/narvii/config/ConfigService;


# direct methods
.method constructor <init>(Lcom/narvii/flag/report/FlagReportOptionDialog;Landroid/content/Context;Ljava/lang/Class;Lcom/narvii/config/ConfigService;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 3
    .line 4
    iput-object p4, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->val$config:Lcom/narvii/config/ConfigService;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2, p3}, Lcom/narvii/flag/report/FlagRequestDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    return-void
.end method

.method public static synthetic b(Lcom/narvii/flag/report/FlagReportOptionDialog$3;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->lambda$execPreBlockRequest$0(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/flag/report/FlagReportOptionDialog$3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->lambda$execPreBlockRequest$1()V

    return-void
.end method

.method private synthetic lambda$execPreBlockRequest$0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/flag/report/FlagRequestDialog;->sendFlagRequest()V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/flag/report/FlagRequestDialog;->screenshotFailed()V

    .line 20
    :goto_0
    return-void
.end method

.method private synthetic lambda$execPreBlockRequest$1()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/flag/report/f;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/narvii/flag/report/f;-><init>(Lcom/narvii/flag/report/FlagReportOptionDialog$3;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->O(Lcom/narvii/flag/report/FlagReportOptionDialog;Lcom/narvii/util/Callback;)V

    .line 11
    return-void
.end method


# virtual methods
.method public createApiRequestBuilder(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->val$config:Lcom/narvii/config/ConfigService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    new-instance v1, Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 14
    .line 15
    .line 16
    invoke-static {v2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->g(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/model/NVObject;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    instance-of v2, v2, Lcom/narvii/model/Community;

    .line 20
    .line 21
    const-string v3, "message"

    .line 22
    .line 23
    const-string v4, "type"

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->g(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/model/NVObject;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Lcom/narvii/model/Community;

    .line 34
    .line 35
    iget v0, v0, Lcom/narvii/model/Community;->id:I

    .line 36
    .line 37
    const-string v2, "community_id"

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 41
    move-result-object v5

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    const-string v2, "community"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 52
    .line 53
    .line 54
    invoke-static {v2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->g(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/model/NVObject;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    check-cast v2, Lcom/narvii/model/Community;

    .line 58
    .line 59
    iget-object v2, v2, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 60
    .line 61
    const-string v4, "community_name"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :cond_0
    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 69
    .line 70
    .line 71
    invoke-static {v2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->g(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/model/NVObject;

    .line 72
    move-result-object v2

    .line 73
    .line 74
    instance-of v2, v2, Lcom/narvii/model/Feed;

    .line 75
    .line 76
    if-eqz v2, :cond_1

    .line 77
    .line 78
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->g(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/model/NVObject;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    check-cast v0, Lcom/narvii/model/Feed;

    .line 85
    .line 86
    iget v0, v0, Lcom/narvii/model/Feed;->ndcId:I

    .line 87
    .line 88
    const-string v2, "post_id"

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 92
    move-result-object v5

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    const-string v2, "blog"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 103
    .line 104
    .line 105
    invoke-static {v2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->g(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/model/NVObject;

    .line 106
    move-result-object v2

    .line 107
    .line 108
    check-cast v2, Lcom/narvii/model/Feed;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    .line 112
    move-result-object v2

    .line 113
    .line 114
    const-string v4, "feed_name"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    goto/16 :goto_0

    .line 120
    .line 121
    :cond_1
    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 122
    .line 123
    .line 124
    invoke-static {v2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->g(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/model/NVObject;

    .line 125
    move-result-object v2

    .line 126
    .line 127
    instance-of v2, v2, Lcom/narvii/model/User;

    .line 128
    .line 129
    if-eqz v2, :cond_3

    .line 130
    .line 131
    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 132
    .line 133
    .line 134
    invoke-static {v2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->g(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/model/NVObject;

    .line 135
    move-result-object v2

    .line 136
    .line 137
    check-cast v2, Lcom/narvii/model/User;

    .line 138
    .line 139
    iget-boolean v2, v2, Lcom/narvii/model/User;->isGlobal:Z

    .line 140
    .line 141
    if-eqz v2, :cond_2

    .line 142
    const/4 v0, 0x0

    .line 143
    .line 144
    :cond_2
    const-string v2, "user_id"

    .line 145
    .line 146
    .line 147
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 148
    move-result-object v5

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v2, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    const-string v2, "user"

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 159
    .line 160
    .line 161
    invoke-static {v2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->g(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/model/NVObject;

    .line 162
    move-result-object v2

    .line 163
    .line 164
    check-cast v2, Lcom/narvii/model/User;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 168
    move-result-object v2

    .line 169
    .line 170
    const-string v4, "user_name"

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    goto :goto_0

    .line 175
    .line 176
    :cond_3
    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 177
    .line 178
    .line 179
    invoke-static {v2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->g(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/model/NVObject;

    .line 180
    move-result-object v2

    .line 181
    .line 182
    instance-of v2, v2, Lcom/narvii/model/ChatThread;

    .line 183
    .line 184
    const-string v5, "chat_id"

    .line 185
    .line 186
    if-eqz v2, :cond_4

    .line 187
    .line 188
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 189
    .line 190
    .line 191
    invoke-static {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->g(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/model/NVObject;

    .line 192
    move-result-object v0

    .line 193
    .line 194
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 195
    .line 196
    iget v0, v0, Lcom/narvii/model/ChatThread;->ndcId:I

    .line 197
    .line 198
    .line 199
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 200
    move-result-object v2

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    const-string v2, "chat"

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 211
    .line 212
    .line 213
    invoke-static {v2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->g(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/model/NVObject;

    .line 214
    move-result-object v2

    .line 215
    .line 216
    check-cast v2, Lcom/narvii/model/ChatThread;

    .line 217
    .line 218
    iget-object v2, v2, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    .line 219
    .line 220
    const-string v4, "chat_name"

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    goto :goto_0

    .line 225
    .line 226
    :cond_4
    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 227
    .line 228
    .line 229
    invoke-static {v2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->g(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/model/NVObject;

    .line 230
    move-result-object v2

    .line 231
    .line 232
    instance-of v2, v2, Lcom/narvii/model/ChatMessage;

    .line 233
    .line 234
    if-eqz v2, :cond_5

    .line 235
    .line 236
    .line 237
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 238
    move-result-object v2

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 247
    .line 248
    .line 249
    invoke-static {v2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->g(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/model/NVObject;

    .line 250
    move-result-object v2

    .line 251
    .line 252
    check-cast v2, Lcom/narvii/model/ChatMessage;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2}, Lcom/narvii/model/ChatMessage;->getAuthor()Lcom/narvii/model/User;

    .line 256
    move-result-object v2

    .line 257
    .line 258
    iget-object v2, v2, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 259
    .line 260
    const-string v4, "author_nickname"

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 266
    .line 267
    .line 268
    invoke-static {v2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->j(Lcom/narvii/flag/report/FlagReportOptionDialog;)I

    .line 269
    move-result v2

    .line 270
    .line 271
    .line 272
    invoke-static {v2}, Lcom/narvii/flag/model/Flag;->getFlagTypeString(I)Ljava/lang/String;

    .line 273
    move-result-object v2

    .line 274
    .line 275
    const-string v4, "reason"

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 282
    move-result-object v2

    .line 283
    .line 284
    .line 285
    invoke-static {v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 286
    move-result-object v2

    .line 287
    .line 288
    const-string v4, "add_flag"

    .line 289
    .line 290
    .line 291
    invoke-virtual {v2, v4, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 292
    .line 293
    .line 294
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 295
    move-result-object v1

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 299
    move-result-object v1

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 303
    move-result-object v0

    .line 304
    .line 305
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 306
    .line 307
    .line 308
    invoke-static {v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->e(Lcom/narvii/flag/report/FlagReportOptionDialog;)Z

    .line 309
    move-result v1

    .line 310
    .line 311
    if-eqz v1, :cond_6

    .line 312
    .line 313
    const-string v1, "/g-flag"

    .line 314
    goto :goto_1

    .line 315
    .line 316
    :cond_6
    const-string v1, "/flag"

    .line 317
    .line 318
    .line 319
    :goto_1
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 320
    move-result-object v0

    .line 321
    .line 322
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 323
    .line 324
    .line 325
    invoke-static {v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->k(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;

    .line 326
    move-result-object v1

    .line 327
    .line 328
    const-string v2, "objectId"

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 332
    move-result-object v0

    .line 333
    .line 334
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 335
    .line 336
    .line 337
    invoke-static {v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->l(Lcom/narvii/flag/report/FlagReportOptionDialog;)I

    .line 338
    move-result v1

    .line 339
    .line 340
    .line 341
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 342
    move-result-object v1

    .line 343
    .line 344
    const-string v2, "objectType"

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 348
    move-result-object v0

    .line 349
    .line 350
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 351
    .line 352
    .line 353
    invoke-static {v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->j(Lcom/narvii/flag/report/FlagReportOptionDialog;)I

    .line 354
    move-result v1

    .line 355
    .line 356
    .line 357
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 358
    move-result-object v1

    .line 359
    .line 360
    const-string v2, "flagType"

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 364
    move-result-object v0

    .line 365
    .line 366
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 367
    .line 368
    .line 369
    invoke-static {v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->m(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;

    .line 370
    move-result-object v1

    .line 371
    .line 372
    if-eqz v1, :cond_7

    .line 373
    .line 374
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 375
    .line 376
    .line 377
    invoke-static {v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->m(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;

    .line 378
    move-result-object v1

    .line 379
    .line 380
    const-string v2, "parentId"

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 384
    .line 385
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 386
    .line 387
    .line 388
    invoke-static {v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->n(Lcom/narvii/flag/report/FlagReportOptionDialog;)I

    .line 389
    move-result v1

    .line 390
    .line 391
    .line 392
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 393
    move-result-object v1

    .line 394
    .line 395
    const-string v2, "parentType"

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 399
    .line 400
    .line 401
    :cond_7
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 402
    move-result-object v1

    .line 403
    .line 404
    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 405
    .line 406
    .line 407
    invoke-static {v2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->h(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;

    .line 408
    move-result-object v2

    .line 409
    .line 410
    if-eqz v2, :cond_8

    .line 411
    .line 412
    new-instance v2, Ljava/util/ArrayList;

    .line 413
    .line 414
    .line 415
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .line 417
    new-instance v4, Lcom/narvii/model/Media;

    .line 418
    .line 419
    .line 420
    invoke-direct {v4}, Lcom/narvii/model/Media;-><init>()V

    .line 421
    .line 422
    const/16 v5, 0x64

    .line 423
    .line 424
    iput v5, v4, Lcom/narvii/model/Media;->type:I

    .line 425
    .line 426
    iget-object v5, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 427
    .line 428
    .line 429
    invoke-static {v5}, Lcom/narvii/flag/report/FlagReportOptionDialog;->h(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;

    .line 430
    move-result-object v5

    .line 431
    .line 432
    iput-object v5, v4, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 433
    const/4 v5, 0x0

    .line 434
    .line 435
    iput-object v5, v4, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 442
    move-result-object v2

    .line 443
    .line 444
    .line 445
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->createArrayNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 446
    move-result-object v2

    .line 447
    .line 448
    const-string v4, "mediaList"

    .line 449
    .line 450
    .line 451
    invoke-virtual {v1, v4, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 452
    .line 453
    :cond_8
    const-string v2, "refObject"

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v0, v3, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 460
    .line 461
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 462
    .line 463
    .line 464
    invoke-static {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->i(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;

    .line 465
    move-result-object p1

    .line 466
    .line 467
    .line 468
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 469
    move-result p1

    .line 470
    .line 471
    if-nez p1, :cond_9

    .line 472
    .line 473
    iget-object p1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 474
    .line 475
    .line 476
    invoke-static {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->i(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;

    .line 477
    move-result-object p1

    .line 478
    .line 479
    const-string v1, "refMediaUrl"

    .line 480
    .line 481
    .line 482
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 483
    :cond_9
    return-object v0
.end method

.method public execPreBlockRequest()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/flag/report/FlagRequestDialog;->execPreBlockRequest()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/flag/report/e;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/flag/report/e;-><init>(Lcom/narvii/flag/report/FlagReportOptionDialog$3;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 19
    return-void
.end method

.method protected getFlagPreview()Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->c(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/flag/report/FlagReportOptionDialog$FlagPreview;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public hasPreBlockRequest()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onSendRequest()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/flag/report/FlagRequestDialog;->onSendRequest()V

    .line 4
    .line 5
    const-string v0, "value"

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->j(Lcom/narvii/flag/report/FlagReportOptionDialog;)I

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lcom/narvii/flag/model/Flag;->getFlagTypeString(I)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    const-string v2, "source"

    .line 18
    .line 19
    iget-object v3, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 20
    .line 21
    .line 22
    invoke-static {v3}, Lcom/narvii/flag/report/FlagReportOptionDialog;->g(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/model/NVObject;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    iget-object v4, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 26
    .line 27
    .line 28
    invoke-static {v4}, Lcom/narvii/flag/report/FlagReportOptionDialog;->l(Lcom/narvii/flag/report/FlagReportOptionDialog;)I

    .line 29
    move-result v4

    .line 30
    .line 31
    .line 32
    invoke-static {p0, v3, v4}, Lcom/narvii/util/StatisticHelper;->getStatisticSource(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    const-string v4, "item_id"

    .line 36
    .line 37
    iget-object v5, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 38
    .line 39
    .line 40
    invoke-static {v5}, Lcom/narvii/flag/report/FlagReportOptionDialog;->k(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;

    .line 41
    move-result-object v5

    .line 42
    .line 43
    .line 44
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/narvii/util/statistics/FirebaseLogManager;->createParams([Ljava/lang/String;)[Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    const-string v1, "flag for review"

    .line 52
    .line 53
    .line 54
    invoke-static {p0, v1, v0}, Lcom/narvii/util/statistics/FirebaseLogManager;->logEvent(Lcom/narvii/app/NVContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->f(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/app/NVContext;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    const-string v1, "statistics"

    .line 63
    .line 64
    .line 65
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 69
    .line 70
    const-string v1, "User Flags Post"

    .line 71
    .line 72
    .line 73
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    const-string v1, "Flagged Posts Total"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 83
    .line 84
    .line 85
    invoke-static {v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->f(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/app/NVContext;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    iget-object v2, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 89
    .line 90
    .line 91
    invoke-static {v2}, Lcom/narvii/flag/report/FlagReportOptionDialog;->g(Lcom/narvii/flag/report/FlagReportOptionDialog;)Lcom/narvii/model/NVObject;

    .line 92
    move-result-object v2

    .line 93
    .line 94
    iget-object v3, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 95
    .line 96
    .line 97
    invoke-static {v3}, Lcom/narvii/flag/report/FlagReportOptionDialog;->l(Lcom/narvii/flag/report/FlagReportOptionDialog;)I

    .line 98
    move-result v3

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v2, v3}, Lcom/narvii/util/StatisticHelper;->getStatisticSource(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 109
    .line 110
    .line 111
    invoke-static {v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->d(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;

    .line 112
    move-result-object v1

    .line 113
    .line 114
    .line 115
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 116
    move-result v1

    .line 117
    .line 118
    if-eqz v1, :cond_0

    .line 119
    .line 120
    const-string v1, "Others"

    .line 121
    goto :goto_0

    .line 122
    .line 123
    :cond_0
    iget-object v1, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 124
    .line 125
    .line 126
    invoke-static {v1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->d(Lcom/narvii/flag/report/FlagReportOptionDialog;)Ljava/lang/String;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    :goto_0
    const-string v2, "Reason"

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 133
    return-void
.end method

.method public showBlockUser()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/report/FlagReportOptionDialog$3;->this$0:Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/flag/report/FlagReportOptionDialog;->o(Lcom/narvii/flag/report/FlagReportOptionDialog;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method
