.class public Lcom/narvii/app/AminoReferrerReceiver;
.super Lcom/narvii/util/googleplay/ReferrerReceiver;
.source "SourceFile"


# instance fields
.field protected final deferredStarted:Lcom/narvii/util/statistics/TmpValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/util/googleplay/ReferrerReceiver;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/app/AminoReferrerReceiver;->deferredStarted:Lcom/narvii/util/statistics/TmpValue;

    .line 11
    return-void
.end method

.method public static safedk_NVApplication_startActivity_0436549e7ef2b5ea6610484b360f1419(Lcom/narvii/app/NVApplication;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVApplication;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVApplication;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVApplication;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/util/googleplay/ReferrerReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 4
    .line 5
    const-string p1, "referrer"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    const-string p2, "deferred_link"

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p2}, Lcom/narvii/util/googleplay/ReferrerReceiver;->query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    const-string v1, "statistics"

    .line 25
    .line 26
    if-nez v0, :cond_5

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    const-string v2, "prefs"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Landroid/content/SharedPreferences;

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    const-string v2, "deferredLink"

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, p2, p1}, Lcom/narvii/util/statistics/StatisticsService;->setDeviceProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    .line 66
    const-string p2, "ndc://"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 70
    move-result p2

    .line 71
    .line 72
    if-eqz p2, :cond_1

    .line 73
    .line 74
    const-string p2, "native"

    .line 75
    goto :goto_0

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-static {p1}, Lcom/narvii/app/ForwardActivity;->isPermalink(Ljava/lang/String;)Z

    .line 79
    move-result p2

    .line 80
    .line 81
    if-eqz p2, :cond_2

    .line 82
    .line 83
    const-string p2, "permalink"

    .line 84
    goto :goto_0

    .line 85
    .line 86
    .line 87
    :cond_2
    invoke-static {p1}, Lcom/narvii/app/ForwardActivity;->isCommunityLink(Ljava/lang/String;)Z

    .line 88
    move-result p2

    .line 89
    .line 90
    if-eqz p2, :cond_3

    .line 91
    .line 92
    const-string p2, "communitylink"

    .line 93
    goto :goto_0

    .line 94
    .line 95
    .line 96
    :cond_3
    invoke-static {p1}, Lcom/narvii/app/ForwardActivity;->isInviteLink(Ljava/lang/String;)Z

    .line 97
    move-result p2

    .line 98
    .line 99
    if-eqz p2, :cond_4

    .line 100
    .line 101
    const-string p2, "invitelink"

    .line 102
    goto :goto_0

    .line 103
    .line 104
    :cond_4
    const-string p2, "others"

    .line 105
    .line 106
    :goto_0
    const-string v2, "deferred_link_type"

    .line 107
    .line 108
    .line 109
    invoke-interface {v0, v2, p2}, Lcom/narvii/util/statistics/StatisticsService;->setDeviceProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    .line 111
    :cond_5
    if-eqz p1, :cond_9

    .line 112
    .line 113
    .line 114
    invoke-static {p1}, Lcom/narvii/app/ForwardActivity;->isInviteLink(Ljava/lang/String;)Z

    .line 115
    move-result p2

    .line 116
    .line 117
    if-nez p2, :cond_6

    .line 118
    .line 119
    .line 120
    invoke-static {p1}, Lcom/narvii/app/ForwardActivity;->isCommunityLink(Ljava/lang/String;)Z

    .line 121
    move-result p2

    .line 122
    .line 123
    if-eqz p2, :cond_9

    .line 124
    .line 125
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    const-string v0, "open deferred invite link "

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object p2

    .line 141
    .line 142
    .line 143
    invoke-static {p2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-static {p1}, Lcom/narvii/app/ForwardActivity;->isInviteLink(Ljava/lang/String;)Z

    .line 147
    move-result p2

    .line 148
    .line 149
    sget-object v0, Lcom/narvii/master/invitation/PasteBoardService;->SKIP:Lcom/narvii/util/statistics/TmpValue;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/narvii/util/statistics/TmpValue;->peek()Ljava/lang/Object;

    .line 153
    move-result-object v1

    .line 154
    .line 155
    if-eqz v1, :cond_7

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/narvii/util/statistics/TmpValue;->peek()Ljava/lang/Object;

    .line 159
    move-result-object v0

    .line 160
    .line 161
    check-cast v0, Ljava/lang/Boolean;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 165
    move-result v0

    .line 166
    const/4 v1, 0x1

    .line 167
    xor-int/2addr v0, v1

    .line 168
    .line 169
    if-ne v0, v1, :cond_a

    .line 170
    .line 171
    .line 172
    :cond_7
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 173
    move-result-object v0

    .line 174
    .line 175
    const-string v1, "pasteBoard"

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    move-result-object v0

    .line 180
    .line 181
    check-cast v0, Lcom/narvii/master/invitation/PasteBoardService;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, p1}, Lcom/narvii/master/invitation/PasteBoardService;->canCheckUrl(Ljava/lang/String;)Z

    .line 185
    move-result v1

    .line 186
    .line 187
    if-nez v1, :cond_8

    .line 188
    return-void

    .line 189
    .line 190
    .line 191
    :cond_8
    invoke-virtual {v0, p1}, Lcom/narvii/master/invitation/PasteBoardService;->updateUrl(Ljava/lang/String;)V

    .line 192
    .line 193
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 194
    .line 195
    .line 196
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 200
    move-result-object v0

    .line 201
    .line 202
    const-string v1, "/community/link-identify"

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 206
    move-result-object v0

    .line 207
    .line 208
    const-string v1, "q"

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 212
    move-result-object p1

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 216
    move-result-object p1

    .line 217
    .line 218
    .line 219
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 220
    move-result-object v0

    .line 221
    .line 222
    const-string v1, "api"

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 226
    move-result-object v0

    .line 227
    .line 228
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 229
    .line 230
    new-instance v1, Lcom/narvii/app/AminoReferrerReceiver$1;

    .line 231
    .line 232
    const-class v2, Lcom/narvii/master/invitation/CommunityInviteResponse;

    .line 233
    .line 234
    .line 235
    invoke-direct {v1, p0, v2, p2}, Lcom/narvii/app/AminoReferrerReceiver$1;-><init>(Lcom/narvii/app/AminoReferrerReceiver;Ljava/lang/Class;Z)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 239
    .line 240
    iget-object p1, p0, Lcom/narvii/app/AminoReferrerReceiver;->deferredStarted:Lcom/narvii/util/statistics/TmpValue;

    .line 241
    .line 242
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 246
    goto :goto_1

    .line 247
    .line 248
    :cond_9
    if-eqz p1, :cond_a

    .line 249
    .line 250
    new-instance p2, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .line 255
    const-string v0, "open deferred link "

    .line 256
    .line 257
    .line 258
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    move-result-object p2

    .line 266
    .line 267
    .line 268
    invoke-static {p2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 269
    .line 270
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    .line 271
    .line 272
    const-string v0, "android.intent.action.VIEW"

    .line 273
    .line 274
    .line 275
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 276
    move-result-object v2

    .line 277
    .line 278
    .line 279
    invoke-direct {p2, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 280
    .line 281
    const/high16 v0, 0x10000000

    .line 282
    .line 283
    .line 284
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 285
    .line 286
    .line 287
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 288
    move-result-object v0

    .line 289
    .line 290
    .line 291
    invoke-static {v0, p2}, Lcom/narvii/app/AminoReferrerReceiver;->safedk_NVApplication_startActivity_0436549e7ef2b5ea6610484b360f1419(Lcom/narvii/app/NVApplication;Landroid/content/Intent;)V

    .line 292
    .line 293
    iget-object p2, p0, Lcom/narvii/app/AminoReferrerReceiver;->deferredStarted:Lcom/narvii/util/statistics/TmpValue;

    .line 294
    .line 295
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 296
    .line 297
    .line 298
    invoke-virtual {p2, v0}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 302
    move-result-object p2

    .line 303
    .line 304
    .line 305
    invoke-virtual {p2, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 306
    move-result-object p2

    .line 307
    .line 308
    check-cast p2, Lcom/narvii/util/statistics/StatisticsService;

    .line 309
    .line 310
    const-string v0, "Deferred Deep Linking"

    .line 311
    .line 312
    .line 313
    invoke-interface {p2, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 314
    move-result-object p2

    .line 315
    .line 316
    const-string v0, "Type"

    .line 317
    .line 318
    const-string v1, "Native Link"

    .line 319
    .line 320
    .line 321
    invoke-virtual {p2, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    goto :goto_1

    .line 323
    .line 324
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .line 329
    const-string v0, "unable to open deferred deep link "

    .line 330
    .line 331
    .line 332
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    move-result-object p1

    .line 340
    .line 341
    .line 342
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 343
    :cond_a
    :goto_1
    return-void
.end method
