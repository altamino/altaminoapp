.class public Lcom/narvii/app/ForwardActivity;
.super Lcom/narvii/app/NVActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;
    }
.end annotation


# static fields
.field public static final CLEAR_TASK:Ljava/lang/String; = "clearTask"

.field protected static final JOIN_COMMUNITY_REQUEST:I = 0x2

.field private static final PTN:Ljava/util/regex/Pattern;

.field protected static final START_REQUEST:I = 0x1


# instance fields
.field accountService:Lcom/narvii/account/AccountService;

.field affiliationsService:Lcom/narvii/community/AffiliationsService;

.field fromGlobalChat:Z

.field launchHelper:Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;

.field layoutId:I

.field navigator:Lcom/narvii/navigator/Navigator;

.field waitingForJoinCommunityId:I

.field waitingForJoinIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "[\\d\\w]{10}"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lcom/narvii/app/ForwardActivity;->PTN:Ljava/util/regex/Pattern;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVActivity;-><init>()V

    .line 4
    return-void
.end method

.method private handleForwardLink(Ljava/lang/String;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/app/ForwardActivity;->translateLinkQuery(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v5

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "from_web"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    const-string v2, "1"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v3

    .line 21
    .line 22
    const-string v1, "sharerId"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v4

    .line 27
    .line 28
    const-string v0, "api"

    .line 29
    .line 30
    const-string v1, "q"

    .line 31
    .line 32
    .line 33
    const v2, 0x7f0d029d

    .line 34
    .line 35
    if-eqz v5, :cond_0

    .line 36
    .line 37
    iput v2, p0, Lcom/narvii/app/ForwardActivity;->layoutId:I

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    const-string v2, "/link-resolution"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v1, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    move-result-object v0

    .line 64
    move-object v6, v0

    .line 65
    .line 66
    check-cast v6, Lcom/narvii/util/http/ApiService;

    .line 67
    .line 68
    new-instance v7, Lcom/narvii/app/ForwardActivity$1;

    .line 69
    .line 70
    const-class v2, Lcom/narvii/share/LinkV2TranslationResponse;

    .line 71
    move-object v0, v7

    .line 72
    move-object v1, p0

    .line 73
    .line 74
    .line 75
    invoke-direct/range {v0 .. v5}, Lcom/narvii/app/ForwardActivity$1;-><init>(Lcom/narvii/app/ForwardActivity;Ljava/lang/Class;ZLjava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6, p1, v7}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 79
    .line 80
    goto/16 :goto_2

    .line 81
    .line 82
    .line 83
    :cond_0
    invoke-static {p1}, Lcom/narvii/app/ForwardActivity;->isInviteLink(Ljava/lang/String;)Z

    .line 84
    move-result v5

    .line 85
    .line 86
    if-nez v5, :cond_7

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Lcom/narvii/app/ForwardActivity;->isCommunityLink(Ljava/lang/String;)Z

    .line 90
    move-result v5

    .line 91
    .line 92
    if-eqz v5, :cond_1

    .line 93
    .line 94
    goto/16 :goto_1

    .line 95
    .line 96
    .line 97
    :cond_1
    invoke-static {p1}, Lcom/narvii/app/ForwardActivity;->isOpenHome(Ljava/lang/String;)Z

    .line 98
    move-result v0

    .line 99
    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    new-instance p1, Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    const-class v1, Lcom/narvii/master/MasterActivity;

    .line 109
    .line 110
    .line 111
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    check-cast v0, Lcom/narvii/app/NVContext;

    .line 118
    .line 119
    .line 120
    invoke-static {v0, p1}, Lcom/narvii/master/MasterActivity;->backToMaster(Lcom/narvii/app/NVContext;Landroid/content/Intent;)Landroid/content/Intent;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    .line 124
    invoke-direct {p0, p1}, Lcom/narvii/app/ForwardActivity;->start(Landroid/content/Intent;)V

    .line 125
    .line 126
    const-string p1, "forward open home"

    .line 127
    .line 128
    .line 129
    invoke-static {p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 130
    .line 131
    goto/16 :goto_2

    .line 132
    .line 133
    :cond_2
    iget-object v0, p0, Lcom/narvii/app/ForwardActivity;->navigator:Lcom/narvii/navigator/Navigator;

    .line 134
    .line 135
    instance-of v1, v0, Lcom/narvii/app/BaseNavigator;

    .line 136
    .line 137
    if-eqz v1, :cond_3

    .line 138
    .line 139
    check-cast v0, Lcom/narvii/app/BaseNavigator;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/narvii/app/BaseNavigator;->getMyScheme()Ljava/lang/String;

    .line 143
    move-result-object v0

    .line 144
    goto :goto_0

    .line 145
    .line 146
    :cond_3
    const-string v0, "aminoapp"

    .line 147
    .line 148
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v0, "(\\d*)://x(\\d+)/user-profile/([^/]+)/fan-club"

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    move-result-object v0

    .line 164
    .line 165
    .line 166
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 167
    move-result-object v0

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 171
    move-result-object v0

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 175
    move-result v1

    .line 176
    .line 177
    if-eqz v1, :cond_4

    .line 178
    const/4 v1, 0x2

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 182
    move-result-object v1

    .line 183
    .line 184
    .line 185
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 186
    move-result v1

    .line 187
    const/4 v2, 0x3

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 191
    move-result-object v0

    .line 192
    .line 193
    .line 194
    invoke-direct {p0, v3, v4, v0, v1}, Lcom/narvii/app/ForwardActivity;->staticsForFanClub(ZLjava/lang/String;Ljava/lang/String;I)V

    .line 195
    .line 196
    .line 197
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 198
    move-result-object v0

    .line 199
    .line 200
    if-nez v0, :cond_5

    .line 201
    return-void

    .line 202
    .line 203
    :cond_5
    new-instance v0, Landroid/content/Intent;

    .line 204
    .line 205
    const-string v1, "android.intent.action.VIEW"

    .line 206
    .line 207
    .line 208
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 209
    move-result-object p1

    .line 210
    .line 211
    .line 212
    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 216
    move-result-object p1

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 220
    move-result-object p1

    .line 221
    .line 222
    if-eqz p1, :cond_6

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 226
    .line 227
    .line 228
    :cond_6
    :try_start_0
    invoke-direct {p0, v0}, Lcom/narvii/app/ForwardActivity;->start(Landroid/content/Intent;)V

    .line 229
    .line 230
    .line 231
    const p1, 0x7f010037

    .line 232
    .line 233
    .line 234
    const v1, 0x7f010038

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 238
    .line 239
    .line 240
    invoke-direct {p0, v0}, Lcom/narvii/app/ForwardActivity;->log(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    goto :goto_2

    .line 242
    .line 243
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    const-string v0, "unable to forward url "

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 255
    move-result-object v0

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 259
    move-result-object v0

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    move-result-object p1

    .line 267
    .line 268
    .line 269
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 270
    goto :goto_2

    .line 271
    .line 272
    :cond_7
    :goto_1
    iput v2, p0, Lcom/narvii/app/ForwardActivity;->layoutId:I

    .line 273
    .line 274
    .line 275
    invoke-static {p1}, Lcom/narvii/app/ForwardActivity;->isInviteLink(Ljava/lang/String;)Z

    .line 276
    move-result v2

    .line 277
    .line 278
    new-instance v3, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 279
    .line 280
    .line 281
    invoke-direct {v3}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 285
    move-result-object v3

    .line 286
    .line 287
    const-string v4, "/community/link-identify"

    .line 288
    .line 289
    .line 290
    invoke-virtual {v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 291
    move-result-object v3

    .line 292
    .line 293
    .line 294
    invoke-virtual {v3, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 295
    move-result-object v1

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 299
    move-result-object v1

    .line 300
    .line 301
    .line 302
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 303
    move-result-object v3

    .line 304
    .line 305
    .line 306
    invoke-virtual {v3, v0}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 307
    move-result-object v0

    .line 308
    .line 309
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 310
    .line 311
    new-instance v3, Lcom/narvii/app/ForwardActivity$2;

    .line 312
    .line 313
    const-class v4, Lcom/narvii/master/invitation/CommunityInviteResponse;

    .line 314
    .line 315
    .line 316
    invoke-direct {v3, p0, v4, p1, v2}, Lcom/narvii/app/ForwardActivity$2;-><init>(Lcom/narvii/app/ForwardActivity;Ljava/lang/Class;Ljava/lang/String;Z)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 320
    .line 321
    const-string v0, "pasteBoard"

    .line 322
    .line 323
    .line 324
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 325
    move-result-object v0

    .line 326
    .line 327
    check-cast v0, Lcom/narvii/master/invitation/PasteBoardService;

    .line 328
    .line 329
    if-eqz v0, :cond_8

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0, p1}, Lcom/narvii/master/invitation/PasteBoardService;->updateUrl(Ljava/lang/String;)V

    .line 333
    :cond_8
    :goto_2
    return-void
.end method

.method public static isCommunityLink(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 5
    move-result-object p0

    .line 6
    .line 7
    const-string v1, "http"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const-string v1, "https"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    new-instance v1, Lcom/narvii/util/PackageUtils;

    .line 33
    const/4 v2, 0x0

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/narvii/util/PackageUtils;->isPermalinkHost(Ljava/lang/String;)Z

    .line 44
    move-result v1

    .line 45
    .line 46
    if-nez v1, :cond_1

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 51
    move-result-object p0

    .line 52
    .line 53
    .line 54
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 55
    move-result v1

    .line 56
    const/4 v2, 0x1

    .line 57
    .line 58
    if-le v1, v2, :cond_3

    .line 59
    .line 60
    const-string v1, "c"

    .line 61
    .line 62
    .line 63
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    move-result-object v3

    .line 65
    .line 66
    check-cast v3, Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 70
    move-result v1

    .line 71
    .line 72
    if-nez v1, :cond_2

    .line 73
    .line 74
    const-string v1, "g"

    .line 75
    .line 76
    .line 77
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object p0

    .line 79
    .line 80
    check-cast p0, Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 84
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    if-eqz p0, :cond_3

    .line 87
    :cond_2
    return v2

    .line 88
    :catch_0
    :cond_3
    :goto_0
    return v0
.end method

.method public static isInviteCode(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    .line 10
    :cond_0
    sget-object v0, Lcom/narvii/app/ForwardActivity;->PTN:Ljava/util/regex/Pattern;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public static isInviteLink(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 5
    move-result-object p0

    .line 6
    .line 7
    const-string v1, "http"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const-string v1, "https"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    new-instance v1, Lcom/narvii/util/PackageUtils;

    .line 33
    const/4 v2, 0x0

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/narvii/util/PackageUtils;->isPermalinkHost(Ljava/lang/String;)Z

    .line 44
    move-result v1

    .line 45
    .line 46
    if-nez v1, :cond_1

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 51
    move-result-object p0

    .line 52
    .line 53
    .line 54
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 55
    move-result v1

    .line 56
    const/4 v2, 0x1

    .line 57
    .line 58
    if-le v1, v2, :cond_2

    .line 59
    .line 60
    const-string v1, "invite"

    .line 61
    .line 62
    .line 63
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    move-result-object v3

    .line 65
    .line 66
    check-cast v3, Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 70
    move-result v1

    .line 71
    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    sget-object v1, Lcom/narvii/app/ForwardActivity;->PTN:Ljava/util/regex/Pattern;

    .line 75
    .line 76
    .line 77
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object p0

    .line 79
    .line 80
    check-cast p0, Ljava/lang/CharSequence;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 84
    move-result-object p0

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 88
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    if-eqz p0, :cond_2

    .line 91
    return v2

    .line 92
    :catch_0
    :cond_2
    :goto_0
    return v0
.end method

.method public static isOpenHome(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 5
    move-result-object p0

    .line 6
    .line 7
    const-string v1, "http"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const-string v1, "https"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    return v0

    .line 31
    .line 32
    :cond_0
    new-instance v1, Lcom/narvii/util/PackageUtils;

    .line 33
    const/4 v2, 0x0

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/narvii/util/PackageUtils;->isPermalinkHost(Ljava/lang/String;)Z

    .line 44
    move-result v1

    .line 45
    .line 46
    if-nez v1, :cond_1

    .line 47
    return v0

    .line 48
    .line 49
    :cond_1
    const-string v1, "home"

    .line 50
    .line 51
    const-string v2, "open"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 59
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return p0

    .line 61
    :catch_0
    return v0
.end method

.method public static isPermalink(Ljava/lang/String;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/app/ForwardActivity;->translateLinkQuery(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method private synthetic lambda$onCreate$0(Lcom/narvii/util/DeepLinkManager$DynamicLinkResult;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/util/DeepLinkManager$DynamicLinkResult;->errorMsg:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    const v0, 0x7f0d029e

    .line 12
    .line 13
    iput v0, p0, Lcom/narvii/app/ForwardActivity;->layoutId:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/app/ForwardActivity;->setContentView(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget-object p1, p1, Lcom/narvii/util/DeepLinkManager$DynamicLinkResult;->errorMsg:Ljava/lang/String;

    .line 23
    const/4 v1, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p1, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 31
    return-void

    .line 32
    .line 33
    :cond_0
    iget-object v0, p1, Lcom/narvii/util/DeepLinkManager$DynamicLinkResult;->pendingDynamicLinkData:Lh4/b;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lh4/b;->c()Landroid/net/Uri;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-object p1, p1, Lcom/narvii/util/DeepLinkManager$DynamicLinkResult;->pendingDynamicLinkData:Lh4/b;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lh4/b;->c()Landroid/net/Uri;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p1}, Lcom/narvii/app/ForwardActivity;->handleForwardLink(Ljava/lang/String;)V

    .line 55
    :cond_1
    return-void
.end method

.method private log(Landroid/content/Intent;)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "fragment"

    .line 3
    .line 4
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "forward url "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, " to "

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    const-class v3, Lcom/narvii/app/FragmentWrapperActivity;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v3

    .line 49
    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    if-nez v2, :cond_0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    check-cast p1, Ljava/lang/Class;

    .line 63
    .line 64
    if-eqz p1, :cond_0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    const-string v0, "fragment "

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    goto :goto_0

    .line 90
    .line 91
    .line 92
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    goto :goto_0

    .line 94
    .line 95
    .line 96
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :catch_0
    return-void
.end method

.method static mergeIntentExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    :goto_0
    if-eqz p1, :cond_3

    .line 11
    .line 12
    new-instance v0, Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    check-cast v1, Ljava/lang/String;

    .line 39
    .line 40
    const-string v2, "__"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 44
    move-result v2

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 50
    goto :goto_1

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 54
    :cond_3
    return-void
.end method

.method public static synthetic s(Lcom/narvii/app/ForwardActivity;Lcom/narvii/util/DeepLinkManager$DynamicLinkResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/app/ForwardActivity;->lambda$onCreate$0(Lcom/narvii/util/DeepLinkManager$DynamicLinkResult;)V

    return-void
.end method

.method public static safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVActivity;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private start(Landroid/content/Intent;)V
    .locals 20

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    iget-object v2, v0, Lcom/narvii/app/ForwardActivity;->navigator:Lcom/narvii/navigator/Navigator;

    .line 7
    .line 8
    instance-of v2, v2, Lcom/narvii/app/incubator/IncubatorNavigator;

    .line 9
    .line 10
    const-string v3, "Link"

    .line 11
    .line 12
    const-string v4, "__forward"

    .line 13
    const/4 v5, 0x1

    .line 14
    .line 15
    const-string v6, "Source"

    .line 16
    .line 17
    if-eqz v2, :cond_8

    .line 18
    .line 19
    const-string v2, "__forwardCommunityId"

    .line 20
    const/4 v7, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 24
    move-result v8

    .line 25
    .line 26
    if-eqz v8, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 30
    move-result-object v9

    .line 31
    .line 32
    if-eqz v9, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 36
    move-result-object v9

    .line 37
    .line 38
    if-eqz v9, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 42
    move-result-object v9

    .line 43
    .line 44
    const-string v10, "/chat-thread/"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 48
    move-result v10

    .line 49
    .line 50
    if-eqz v10, :cond_0

    .line 51
    move v8, v7

    .line 52
    .line 53
    :cond_0
    const-string v11, "/blog/"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 57
    move-result v9

    .line 58
    .line 59
    if-eqz v9, :cond_2

    .line 60
    move v10, v5

    .line 61
    move v8, v7

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    move v10, v7

    .line 64
    .line 65
    :cond_2
    :goto_0
    if-nez v8, :cond_3

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    .line 70
    iget-object v8, v0, Lcom/narvii/app/ForwardActivity;->navigator:Lcom/narvii/navigator/Navigator;

    .line 71
    .line 72
    .line 73
    invoke-interface {v8, v1}, Lcom/narvii/navigator/Navigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 78
    move-result v8

    .line 79
    :cond_3
    move v12, v8

    .line 80
    .line 81
    if-eqz v12, :cond_6

    .line 82
    .line 83
    .line 84
    const v2, 0x7f0d029d

    .line 85
    .line 86
    iput v2, v0, Lcom/narvii/app/ForwardActivity;->layoutId:I

    .line 87
    .line 88
    new-instance v2, Landroid/content/Intent;

    .line 89
    .line 90
    const-string v4, "android.intent.action.VIEW"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 94
    move-result-object v5

    .line 95
    .line 96
    .line 97
    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 108
    move-result-object v1

    .line 109
    .line 110
    if-eqz v1, :cond_4

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 114
    move-result v1

    .line 115
    .line 116
    if-nez v1, :cond_4

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    .line 121
    :cond_4
    iget-object v1, v0, Lcom/narvii/app/ForwardActivity;->launchHelper:Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;

    .line 122
    .line 123
    if-eqz v1, :cond_5

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/narvii/community/CommunityLaunchHelper;->cancel()V

    .line 127
    .line 128
    :cond_5
    new-instance v11, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;

    .line 129
    .line 130
    .line 131
    invoke-direct {v11, v0, v12, v10, v2}, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;-><init>(Lcom/narvii/app/ForwardActivity;IZLandroid/content/Intent;)V

    .line 132
    .line 133
    iput-object v11, v0, Lcom/narvii/app/ForwardActivity;->launchHelper:Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;

    .line 134
    const/4 v13, 0x0

    .line 135
    const/4 v14, 0x0

    .line 136
    const/4 v15, 0x0

    .line 137
    .line 138
    const/16 v16, 0x0

    .line 139
    .line 140
    const/16 v17, 0x0

    .line 141
    .line 142
    const/16 v18, 0x0

    .line 143
    .line 144
    const/16 v19, 0x1

    .line 145
    .line 146
    .line 147
    invoke-virtual/range {v11 .. v19}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    .line 148
    goto :goto_1

    .line 149
    .line 150
    .line 151
    :cond_6
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 155
    move-result-object v2

    .line 156
    .line 157
    if-eqz v2, :cond_7

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 161
    move-result v2

    .line 162
    .line 163
    if-nez v2, :cond_7

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    .line 168
    .line 169
    :cond_7
    invoke-virtual {v0, v1}, Lcom/narvii/app/ForwardActivity;->startForward(Landroid/content/Intent;)V

    .line 170
    goto :goto_1

    .line 171
    .line 172
    .line 173
    :cond_8
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 174
    .line 175
    .line 176
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 177
    move-result-object v2

    .line 178
    .line 179
    if-eqz v2, :cond_9

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 183
    move-result v2

    .line 184
    .line 185
    if-nez v2, :cond_9

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    .line 190
    .line 191
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/narvii/app/ForwardActivity;->startForward(Landroid/content/Intent;)V

    .line 192
    :goto_1
    return-void
.end method

.method private staticsForFanClub(ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1
    .line 2
    const-string v0, "statistics"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 9
    .line 10
    const-string v1, "Tracking Link"

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "Target"

    .line 17
    .line 18
    const-string v2, "Fan Club"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    const-string v1, "From Web"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    const-string v0, "Share ID"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    const-string p2, "User ID"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    const-string p2, "Community ID"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2, p4}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 46
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/app/ForwardActivity;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/app/ForwardActivity;->staticsForFanClub(ZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static translateLinkQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 5
    move-result-object v1

    .line 6
    .line 7
    const-string v2, "http"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 11
    move-result-object v3

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    const-string v2, "https"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 27
    move-result v2

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    return-object v0

    .line 31
    .line 32
    :cond_0
    new-instance v2, Lcom/narvii/util/PackageUtils;

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Lcom/narvii/util/PackageUtils;->isPermalinkHost(Ljava/lang/String;)Z

    .line 43
    move-result v2

    .line 44
    .line 45
    if-nez v2, :cond_1

    .line 46
    return-object v0

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    const-string v3, "/g/page/"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 56
    move-result v3

    .line 57
    .line 58
    if-eqz v3, :cond_2

    .line 59
    return-object p0

    .line 60
    .line 61
    :cond_2
    const-string v3, "/page/"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 65
    move-result v3

    .line 66
    .line 67
    if-eqz v3, :cond_3

    .line 68
    const/4 p0, 0x6

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    .line 75
    :cond_3
    const-string v3, "/p/"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 79
    move-result v3

    .line 80
    const/4 v4, 0x3

    .line 81
    .line 82
    if-eqz v3, :cond_4

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    return-object p0

    .line 88
    .line 89
    :cond_4
    const-string v3, "/u/"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 93
    move-result v2

    .line 94
    .line 95
    if-eqz v2, :cond_5

    .line 96
    return-object p0

    .line 97
    .line 98
    .line 99
    :cond_5
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    if-nez v1, :cond_6

    .line 103
    goto :goto_0

    .line 104
    .line 105
    .line 106
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 107
    move-result v2

    .line 108
    .line 109
    if-le v2, v4, :cond_8

    .line 110
    .line 111
    const-string v2, "c"

    .line 112
    const/4 v3, 0x0

    .line 113
    .line 114
    .line 115
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    move-result-object v3

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result v2

    .line 121
    .line 122
    if-eqz v2, :cond_8

    .line 123
    .line 124
    const-string v2, "page"

    .line 125
    const/4 v3, 0x2

    .line 126
    .line 127
    .line 128
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 129
    move-result-object v4

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    move-result v2

    .line 134
    .line 135
    if-nez v2, :cond_7

    .line 136
    .line 137
    const-string v2, "market"

    .line 138
    .line 139
    .line 140
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 141
    move-result-object v1

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .line 147
    if-eqz v1, :cond_8

    .line 148
    :cond_7
    return-object p0

    .line 149
    :catch_0
    :cond_8
    :goto_0
    return-object v0
.end method


# virtual methods
.method public isModel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 10
    :cond_0
    const/4 v0, 0x2

    .line 11
    .line 12
    if-ne p1, v0, :cond_2

    .line 13
    const/4 v0, -0x1

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    if-ne p2, v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/app/ForwardActivity;->waitingForJoinIntent:Landroid/content/Intent;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    const v0, 0x7f0d029d

    .line 24
    .line 25
    iput v0, p0, Lcom/narvii/app/ForwardActivity;->layoutId:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/narvii/app/ForwardActivity;->setContentView(I)V

    .line 29
    .line 30
    new-instance v2, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;

    .line 31
    .line 32
    iget v0, p0, Lcom/narvii/app/ForwardActivity;->waitingForJoinCommunityId:I

    .line 33
    .line 34
    iget-object v3, p0, Lcom/narvii/app/ForwardActivity;->waitingForJoinIntent:Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, p0, v0, v1, v3}, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;-><init>(Lcom/narvii/app/ForwardActivity;IZLandroid/content/Intent;)V

    .line 38
    .line 39
    iput-object v2, p0, Lcom/narvii/app/ForwardActivity;->launchHelper:Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;

    .line 40
    .line 41
    iget v3, p0, Lcom/narvii/app/ForwardActivity;->waitingForJoinCommunityId:I

    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v7, 0x0

    .line 46
    const/4 v8, 0x0

    .line 47
    const/4 v9, 0x0

    .line 48
    const/4 v10, 0x1

    .line 49
    .line 50
    .line 51
    invoke-virtual/range {v2 .. v10}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    .line 52
    goto :goto_0

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 56
    .line 57
    :goto_0
    iput v1, p0, Lcom/narvii/app/ForwardActivity;->waitingForJoinCommunityId:I

    .line 58
    const/4 v0, 0x0

    .line 59
    .line 60
    iput-object v0, p0, Lcom/narvii/app/ForwardActivity;->waitingForJoinIntent:Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 64
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    .line 2
    const-string v0, "__redirectReset"

    .line 3
    .line 4
    const-string v1, "__redirectTaskId"

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    .line 8
    if-nez p1, :cond_3

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 12
    move-result-object v4

    .line 13
    .line 14
    .line 15
    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 16
    move-result v4

    .line 17
    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 22
    move-result-object v5

    .line 23
    .line 24
    .line 25
    invoke-virtual {v5, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 26
    move-result v5

    .line 27
    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-static {v3}, Lcom/narvii/app/ApplicationSessionHelper;->setNewTask(I)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    .line 36
    move-result v5

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->getTaskId()I

    .line 40
    move-result v6

    .line 41
    .line 42
    if-eq v5, v6, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    .line 46
    move-result v5

    .line 47
    .line 48
    .line 49
    invoke-static {v5}, Lcom/narvii/app/ApplicationSessionHelper;->setNewTask(I)V

    .line 50
    goto :goto_0

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    .line 54
    move-result v5

    .line 55
    .line 56
    if-nez v5, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->getTaskId()I

    .line 60
    move-result v5

    .line 61
    .line 62
    if-nez v5, :cond_2

    .line 63
    move v5, v2

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    :goto_0
    move v5, v3

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    move v4, v3

    .line 68
    move v5, v4

    .line 69
    .line 70
    .line 71
    :goto_1
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    .line 73
    .line 74
    const v6, 0x7f0d029e

    .line 75
    .line 76
    iput v6, p0, Lcom/narvii/app/ForwardActivity;->layoutId:I

    .line 77
    .line 78
    const-string v6, "navigator"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v6}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    move-result-object v6

    .line 83
    .line 84
    check-cast v6, Lcom/narvii/navigator/Navigator;

    .line 85
    .line 86
    iput-object v6, p0, Lcom/narvii/app/ForwardActivity;->navigator:Lcom/narvii/navigator/Navigator;

    .line 87
    .line 88
    const-string v6, "account"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v6}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    move-result-object v6

    .line 93
    .line 94
    check-cast v6, Lcom/narvii/account/AccountService;

    .line 95
    .line 96
    iput-object v6, p0, Lcom/narvii/app/ForwardActivity;->accountService:Lcom/narvii/account/AccountService;

    .line 97
    .line 98
    const-string v6, "affiliations"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v6}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    move-result-object v6

    .line 103
    .line 104
    check-cast v6, Lcom/narvii/community/AffiliationsService;

    .line 105
    .line 106
    iput-object v6, p0, Lcom/narvii/app/ForwardActivity;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 107
    .line 108
    const-string v6, "__fromGlobalChat"

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v6, v3}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 112
    move-result v6

    .line 113
    .line 114
    iput-boolean v6, p0, Lcom/narvii/app/ForwardActivity;->fromGlobalChat:Z

    .line 115
    .line 116
    if-nez p1, :cond_4

    .line 117
    .line 118
    const-string v6, "clearTask"

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v6}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    .line 122
    move-result v6

    .line 123
    goto :goto_2

    .line 124
    :cond_4
    move v6, v3

    .line 125
    .line 126
    :goto_2
    if-nez v5, :cond_a

    .line 127
    .line 128
    if-nez p1, :cond_5

    .line 129
    .line 130
    if-nez v4, :cond_5

    .line 131
    .line 132
    if-nez v6, :cond_a

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    .line 136
    move-result v4

    .line 137
    .line 138
    if-nez v4, :cond_5

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    .line 142
    move-result v4

    .line 143
    .line 144
    .line 145
    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->getTaskId()I

    .line 146
    move-result v7

    .line 147
    .line 148
    if-eq v4, v7, :cond_5

    .line 149
    goto :goto_5

    .line 150
    .line 151
    .line 152
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 153
    move-result-object v0

    .line 154
    .line 155
    if-eqz v0, :cond_9

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 159
    move-result-object v1

    .line 160
    .line 161
    if-eqz v1, :cond_9

    .line 162
    .line 163
    const-string v1, "__forward"

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 167
    move-result v1

    .line 168
    .line 169
    if-nez v1, :cond_9

    .line 170
    .line 171
    if-eqz p1, :cond_6

    .line 172
    .line 173
    const-string v1, "waitingForJoinCommunityId"

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 177
    move-result v1

    .line 178
    .line 179
    iput v1, p0, Lcom/narvii/app/ForwardActivity;->waitingForJoinCommunityId:I

    .line 180
    .line 181
    if-eqz v1, :cond_6

    .line 182
    .line 183
    const-string v0, "waitingForJoinIntent"

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 187
    move-result-object p1

    .line 188
    .line 189
    check-cast p1, Landroid/content/Intent;

    .line 190
    .line 191
    iput-object p1, p0, Lcom/narvii/app/ForwardActivity;->waitingForJoinIntent:Landroid/content/Intent;

    .line 192
    return-void

    .line 193
    .line 194
    .line 195
    :cond_6
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 196
    move-result-object p1

    .line 197
    .line 198
    if-nez p1, :cond_7

    .line 199
    const/4 v0, 0x0

    .line 200
    goto :goto_3

    .line 201
    .line 202
    .line 203
    :cond_7
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 204
    move-result-object v0

    .line 205
    .line 206
    :goto_3
    if-eqz v0, :cond_8

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 210
    move-result-object v1

    .line 211
    .line 212
    if-eqz v1, :cond_8

    .line 213
    .line 214
    .line 215
    const v1, 0x7f12076b

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 219
    move-result-object v1

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 223
    move-result-object v0

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    move-result v0

    .line 228
    .line 229
    if-eqz v0, :cond_8

    .line 230
    .line 231
    .line 232
    const p1, 0x7f0d029d

    .line 233
    .line 234
    iput p1, p0, Lcom/narvii/app/ForwardActivity;->layoutId:I

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0, p1}, Lcom/narvii/app/ForwardActivity;->setContentView(I)V

    .line 238
    .line 239
    new-instance p1, Lcom/narvii/app/c;

    .line 240
    .line 241
    .line 242
    invoke-direct {p1, p0}, Lcom/narvii/app/c;-><init>(Lcom/narvii/app/ForwardActivity;)V

    .line 243
    .line 244
    .line 245
    invoke-static {p0, v3, p1}, Lcom/narvii/util/DeepLinkManager;->handleDynamicLink(Lcom/narvii/app/NVActivity;ZLcom/narvii/util/Callback;)V

    .line 246
    goto :goto_4

    .line 247
    .line 248
    .line 249
    :cond_8
    invoke-static {p0, p1}, Lcom/narvii/util/DeepLinkManager;->logDeepLinkFromForwardActivity(Lcom/narvii/app/NVActivity;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-direct {p0, p1}, Lcom/narvii/app/ForwardActivity;->handleForwardLink(Ljava/lang/String;)V

    .line 253
    :cond_9
    :goto_4
    return-void

    .line 254
    .line 255
    :cond_a
    :goto_5
    new-instance p1, Landroid/content/Intent;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    move-result-object v4

    .line 260
    .line 261
    .line 262
    invoke-direct {p1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 266
    move-result-object v4

    .line 267
    .line 268
    .line 269
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 270
    move-result-object v4

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 277
    move-result-object v4

    .line 278
    .line 279
    .line 280
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 281
    move-result-object v4

    .line 282
    .line 283
    if-eqz v4, :cond_b

    .line 284
    .line 285
    .line 286
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 287
    move-result-object v4

    .line 288
    .line 289
    .line 290
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 291
    move-result-object v4

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 295
    .line 296
    .line 297
    :cond_b
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 298
    .line 299
    const/high16 v1, 0x10000000

    .line 300
    .line 301
    .line 302
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 303
    .line 304
    if-nez v5, :cond_d

    .line 305
    .line 306
    if-eqz v6, :cond_c

    .line 307
    goto :goto_6

    .line 308
    .line 309
    :cond_c
    const-string v0, "ForwardActivity redirect for taskId"

    .line 310
    .line 311
    .line 312
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 313
    goto :goto_7

    .line 314
    .line 315
    .line 316
    :cond_d
    :goto_6
    const v1, 0x8000

    .line 317
    .line 318
    .line 319
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 323
    .line 324
    const-string v0, "ForwardActivity reset for taskId"

    .line 325
    .line 326
    .line 327
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    :goto_7
    invoke-static {p0, p1}, Lcom/narvii/app/ForwardActivity;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 337
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/ForwardActivity;->launchHelper:Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/community/CommunityLaunchHelper;->cancel()V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/app/ForwardActivity;->launchHelper:Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onDestroy()V

    .line 14
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onResume()V

    .line 4
    .line 5
    iget v0, p0, Lcom/narvii/app/ForwardActivity;->layoutId:I

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/app/ForwardActivity;->setContentView(I)V

    .line 11
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "waitingForJoinCommunityId"

    .line 6
    .line 7
    iget v1, p0, Lcom/narvii/app/ForwardActivity;->waitingForJoinCommunityId:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    .line 12
    const-string v0, "waitingForJoinIntent"

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/app/ForwardActivity;->waitingForJoinIntent:Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 18
    return-void
.end method

.method protected openCommunityInvite(Ljava/lang/String;Lcom/narvii/master/invitation/CommunityInviteResponse;Z)V
    .locals 5

    .line 1
    .line 2
    new-instance p3, Lcom/narvii/util/PackageUtils;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-direct {p3, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    const-string p3, "config"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p3}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object p3

    .line 16
    .line 17
    check-cast p3, Lcom/narvii/config/ConfigService;

    .line 18
    .line 19
    iget-boolean p3, p2, Lcom/narvii/master/invitation/CommunityInviteResponse;->isCurrentUserJoined:Z

    .line 20
    .line 21
    const-string v0, "ndc://"

    .line 22
    .line 23
    const-string v1, "android.intent.action.VIEW"

    .line 24
    const/4 v2, 0x0

    .line 25
    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    iget-object p3, p2, Lcom/narvii/master/invitation/CommunityInviteResponse;->path:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result p3

    .line 33
    .line 34
    if-eqz p3, :cond_0

    .line 35
    .line 36
    .line 37
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    const/16 p3, 0x2f

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(I)I

    .line 48
    move-result v0

    .line 49
    .line 50
    add-int/lit8 v3, v0, 0x1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p3, v3}, Ljava/lang/String;->indexOf(II)I

    .line 54
    move-result v3

    .line 55
    .line 56
    add-int/lit8 v4, v3, 0x1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p3, v4}, Ljava/lang/String;->indexOf(II)I

    .line 60
    move-result p3

    .line 61
    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    if-le v3, v0, :cond_2

    .line 65
    .line 66
    if-le p3, v3, :cond_2

    .line 67
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    const-string v3, "ndc://x"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    iget-object v3, p2, Lcom/narvii/master/invitation/CommunityInviteResponse;->community:Lcom/narvii/model/Community;

    .line 79
    .line 80
    iget v3, v3, Lcom/narvii/model/Community;->id:I

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    new-instance p3, Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-direct {p3, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 104
    .line 105
    iget-object p1, p0, Lcom/narvii/app/ForwardActivity;->navigator:Lcom/narvii/navigator/Navigator;

    .line 106
    .line 107
    .line 108
    invoke-interface {p1, p3}, Lcom/narvii/navigator/Navigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 113
    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    if-eqz p3, :cond_2

    .line 116
    goto :goto_0

    .line 117
    .line 118
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 119
    .line 120
    new-instance p3, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    iget-object v0, p2, Lcom/narvii/master/invitation/CommunityInviteResponse;->path:Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object p3

    .line 136
    .line 137
    .line 138
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 139
    move-result-object p3

    .line 140
    .line 141
    .line 142
    invoke-direct {p1, v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 143
    .line 144
    iget-object p3, p0, Lcom/narvii/app/ForwardActivity;->navigator:Lcom/narvii/navigator/Navigator;

    .line 145
    .line 146
    .line 147
    invoke-interface {p3, p1}, Lcom/narvii/navigator/Navigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    .line 148
    move-result-object p1

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 152
    move-result-object p3

    .line 153
    .line 154
    if-eqz p3, :cond_2

    .line 155
    goto :goto_0

    .line 156
    .line 157
    :cond_1
    iget-object p1, p2, Lcom/narvii/master/invitation/CommunityInviteResponse;->path:Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 161
    move-result p1

    .line 162
    .line 163
    if-nez p1, :cond_2

    .line 164
    .line 165
    iget-object p1, p2, Lcom/narvii/master/invitation/CommunityInviteResponse;->community:Lcom/narvii/model/Community;

    .line 166
    .line 167
    if-nez p1, :cond_2

    .line 168
    .line 169
    new-instance p1, Landroid/content/Intent;

    .line 170
    .line 171
    new-instance p3, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    iget-object v0, p2, Lcom/narvii/master/invitation/CommunityInviteResponse;->path:Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object p3

    .line 187
    .line 188
    .line 189
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 190
    move-result-object p3

    .line 191
    .line 192
    .line 193
    invoke-direct {p1, v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 194
    .line 195
    iget-object p3, p0, Lcom/narvii/app/ForwardActivity;->navigator:Lcom/narvii/navigator/Navigator;

    .line 196
    .line 197
    .line 198
    invoke-interface {p3, p1}, Lcom/narvii/navigator/Navigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    .line 199
    move-result-object p1

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 203
    move-result-object p3

    .line 204
    .line 205
    if-eqz p3, :cond_2

    .line 206
    goto :goto_0

    .line 207
    :catch_0
    :cond_2
    move-object p1, v2

    .line 208
    .line 209
    :goto_0
    if-nez p1, :cond_3

    .line 210
    .line 211
    .line 212
    invoke-static {p2}, Lcom/narvii/master/invitation/InvitationWelcomeActivity;->launchCommunity(Lcom/narvii/master/invitation/CommunityInviteResponse;)Landroid/content/Intent;

    .line 213
    move-result-object p1

    .line 214
    .line 215
    :cond_3
    const-string p2, "Source"

    .line 216
    .line 217
    const-string p3, "Invite Code"

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 224
    move-result-object p2

    .line 225
    .line 226
    .line 227
    invoke-static {p1, p2}, Lcom/narvii/app/ForwardActivity;->mergeIntentExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 228
    .line 229
    sget-object p2, Lcom/narvii/master/invitation/PasteBoardService;->SKIP:Lcom/narvii/util/statistics/TmpValue;

    .line 230
    .line 231
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 232
    .line 233
    const-wide/16 v0, 0x3a98

    .line 234
    .line 235
    .line 236
    invoke-virtual {p2, p3, v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;J)V

    .line 237
    .line 238
    sget-object p2, Lcom/narvii/account/LoginActivity;->instance:Ljava/lang/ref/WeakReference;

    .line 239
    .line 240
    if-nez p2, :cond_4

    .line 241
    goto :goto_1

    .line 242
    .line 243
    .line 244
    :cond_4
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 245
    move-result-object p2

    .line 246
    move-object v2, p2

    .line 247
    .line 248
    check-cast v2, Lcom/narvii/account/LoginActivity;

    .line 249
    .line 250
    :goto_1
    if-eqz v2, :cond_5

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2}, Lcom/narvii/account/LoginActivity;->finish()V

    .line 254
    .line 255
    .line 256
    invoke-static {v2, p1}, Lcom/narvii/app/ForwardActivity;->safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;Landroid/content/Intent;)V

    .line 257
    const/4 p1, 0x0

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->finish()V

    .line 264
    goto :goto_2

    .line 265
    .line 266
    .line 267
    :cond_5
    invoke-virtual {p0, p1}, Lcom/narvii/app/ForwardActivity;->startForward(Landroid/content/Intent;)V

    .line 268
    :goto_2
    return-void
.end method

.method protected openLinkTranslation(Lcom/narvii/share/LinkInfoV2;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/ForwardActivity;->accountService:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/share/LinkInfoV2;->getInnerLinkInfo()Lcom/narvii/share/LinkInfo;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget v0, v0, Lcom/narvii/share/LinkInfo;->ndcId:I

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/share/LinkInfoV2;->getInnerLinkInfo()Lcom/narvii/share/LinkInfo;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iget p1, p1, Lcom/narvii/share/LinkInfo;->ndcId:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/narvii/app/ForwardActivity;->openWebView(I)V

    .line 26
    return-void

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/share/LinkInfoV2;->getInnerLinkInfo()Lcom/narvii/share/LinkInfo;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    return-void

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/share/LinkInfoV2;->getInnerLinkInfo()Lcom/narvii/share/LinkInfo;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/app/ForwardActivity;->navigator:Lcom/narvii/navigator/Navigator;

    .line 40
    .line 41
    instance-of v2, v1, Lcom/narvii/app/incubator/IncubatorNavigator;

    .line 42
    .line 43
    const-string v3, "config"

    .line 44
    .line 45
    const-string v4, "android.intent.action.VIEW"

    .line 46
    .line 47
    const-string v5, "ndc://"

    .line 48
    .line 49
    if-eqz v2, :cond_7

    .line 50
    .line 51
    iget-object v2, p1, Lcom/narvii/share/LinkInfoV2;->path:Ljava/lang/String;

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/narvii/share/LinkInfoV2;->path:Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    new-instance v1, Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    invoke-direct {v1, v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 80
    .line 81
    iget-object p1, p0, Lcom/narvii/app/ForwardActivity;->navigator:Lcom/narvii/navigator/Navigator;

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, v1}, Lcom/narvii/navigator/Navigator;->intentMapping(Landroid/content/Intent;)Landroid/content/Intent;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    if-nez v1, :cond_3

    .line 92
    const/4 p1, 0x0

    .line 93
    goto :goto_0

    .line 94
    .line 95
    :cond_2
    check-cast v1, Lcom/narvii/app/incubator/IncubatorNavigator;

    .line 96
    .line 97
    iget p1, v0, Lcom/narvii/share/LinkInfo;->ndcId:I

    .line 98
    .line 99
    iget v2, v0, Lcom/narvii/share/LinkInfo;->objectType:I

    .line 100
    .line 101
    .line 102
    invoke-static {v2}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    .line 103
    move-result-object v2

    .line 104
    .line 105
    iget-object v4, v0, Lcom/narvii/share/LinkInfo;->objectId:Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, p1, v2, v4}, Lcom/narvii/app/incubator/IncubatorNavigator;->rawHttpMapping(ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    :cond_3
    :goto_0
    if-eqz p1, :cond_6

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    .line 118
    invoke-static {p1, v1}, Lcom/narvii/app/ForwardActivity;->mergeIntentExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    move-result-object v1

    .line 123
    .line 124
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 128
    move-result v1

    .line 129
    .line 130
    iget v2, v0, Lcom/narvii/share/LinkInfo;->ndcId:I

    .line 131
    .line 132
    if-eq v1, v2, :cond_4

    .line 133
    .line 134
    const-string v0, "__forwardCommunityId"

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    goto :goto_1

    .line 139
    .line 140
    :cond_4
    iget-boolean v1, p0, Lcom/narvii/app/ForwardActivity;->fromGlobalChat:Z

    .line 141
    .line 142
    if-eqz v1, :cond_5

    .line 143
    .line 144
    iget-object v1, p0, Lcom/narvii/app/ForwardActivity;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v2}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 148
    move-result v1

    .line 149
    .line 150
    if-nez v1, :cond_5

    .line 151
    .line 152
    iget p1, v0, Lcom/narvii/share/LinkInfo;->ndcId:I

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, p1}, Lcom/narvii/app/ForwardActivity;->openWebView(I)V

    .line 156
    return-void

    .line 157
    .line 158
    .line 159
    :cond_5
    :goto_1
    invoke-direct {p0, p1}, Lcom/narvii/app/ForwardActivity;->start(Landroid/content/Intent;)V

    .line 160
    .line 161
    goto/16 :goto_3

    .line 162
    .line 163
    :cond_6
    iget p1, v0, Lcom/narvii/share/LinkInfo;->ndcId:I

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, p1}, Lcom/narvii/app/ForwardActivity;->openWebView(I)V

    .line 167
    .line 168
    goto/16 :goto_3

    .line 169
    .line 170
    :cond_7
    new-instance p1, Landroid/content/Intent;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 174
    move-result-object v1

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 178
    move-result-object v1

    .line 179
    .line 180
    .line 181
    invoke-direct {p1, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 185
    move-result-object v1

    .line 186
    .line 187
    .line 188
    invoke-static {p1, v1}, Lcom/narvii/app/ForwardActivity;->mergeIntentExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    move-result-object v1

    .line 193
    .line 194
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 198
    move-result v1

    .line 199
    .line 200
    iget v2, v0, Lcom/narvii/share/LinkInfo;->ndcId:I

    .line 201
    const/4 v3, 0x1

    .line 202
    .line 203
    if-ne v1, v2, :cond_9

    .line 204
    .line 205
    iget-boolean v1, p0, Lcom/narvii/app/ForwardActivity;->fromGlobalChat:Z

    .line 206
    .line 207
    if-eqz v1, :cond_8

    .line 208
    .line 209
    iget-object v1, p0, Lcom/narvii/app/ForwardActivity;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v2}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 213
    move-result v1

    .line 214
    .line 215
    if-nez v1, :cond_8

    .line 216
    .line 217
    iget p1, v0, Lcom/narvii/share/LinkInfo;->ndcId:I

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, p1}, Lcom/narvii/app/ForwardActivity;->openWebView(I)V

    .line 221
    return-void

    .line 222
    .line 223
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    iget v2, v0, Lcom/narvii/share/LinkInfo;->objectType:I

    .line 232
    .line 233
    .line 234
    invoke-static {v2}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    .line 235
    move-result-object v2

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    const-string v2, "/"

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    iget-object v2, v0, Lcom/narvii/share/LinkInfo;->objectId:Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    move-result-object v1

    .line 253
    .line 254
    .line 255
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 256
    move-result-object v1

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 260
    .line 261
    const-string v1, "__forward"

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 265
    goto :goto_2

    .line 266
    .line 267
    :cond_9
    new-instance v1, Lcom/narvii/util/PackageUtils;

    .line 268
    .line 269
    .line 270
    invoke-direct {v1, p0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 271
    .line 272
    iget v2, v0, Lcom/narvii/share/LinkInfo;->ndcId:I

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1, v2}, Lcom/narvii/util/PackageUtils;->isCommunityInstalled(I)Z

    .line 276
    move-result v2

    .line 277
    .line 278
    const-string v4, "clearTask"

    .line 279
    .line 280
    if-eqz v2, :cond_a

    .line 281
    .line 282
    iget v2, v0, Lcom/narvii/share/LinkInfo;->ndcId:I

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1, v2}, Lcom/narvii/util/PackageUtils;->getPackageName(I)Ljava/lang/String;

    .line 286
    move-result-object v1

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    move-result-object v2

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 294
    move-result-object v2

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 301
    goto :goto_2

    .line 302
    .line 303
    .line 304
    :cond_a
    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->isMasterInstalled()Z

    .line 305
    move-result v2

    .line 306
    .line 307
    if-eqz v2, :cond_b

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getMasterPackageName()Ljava/lang/String;

    .line 311
    move-result-object v1

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    move-result-object v2

    .line 316
    .line 317
    .line 318
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 319
    move-result-object v2

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    .line 324
    .line 325
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 326
    .line 327
    .line 328
    :goto_2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/narvii/app/ForwardActivity;->log(Landroid/content/Intent;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0, p1}, Lcom/narvii/app/ForwardActivity;->startForward(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    goto :goto_3

    .line 333
    .line 334
    :catch_0
    iget p1, v0, Lcom/narvii/share/LinkInfo;->ndcId:I

    .line 335
    .line 336
    .line 337
    invoke-virtual {p0, p1}, Lcom/narvii/app/ForwardActivity;->openWebView(I)V

    .line 338
    :goto_3
    return-void

    .line 339
    .line 340
    :cond_b
    iget p1, v0, Lcom/narvii/share/LinkInfo;->ndcId:I

    .line 341
    .line 342
    .line 343
    invoke-virtual {p0, p1}, Lcom/narvii/app/ForwardActivity;->openWebView(I)V

    .line 344
    return-void
.end method

.method openWebView(I)V
    .locals 3

    .line 1
    .line 2
    const-string v0, "url"

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-class p1, Lcom/narvii/app/AminoWebViewFragment;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    const-class v1, Lcom/narvii/community/PreviewWebViewFragment;

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    .line 41
    const-string v0, "communityId"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    move-object p1, v1

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v0}, Lcom/narvii/app/ForwardActivity;->mergeIntentExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lcom/narvii/app/ForwardActivity;->startForward(Landroid/content/Intent;)V

    .line 56
    .line 57
    .line 58
    const p1, 0x7f010037

    .line 59
    .line 60
    .line 61
    const v0, 0x7f010038

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 65
    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0d029e

    .line 7
    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    .line 11
    const p1, 0x7f0a05fb

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Landroid/widget/TextView;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    const/16 v0, 0x8

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v1, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :cond_1
    :goto_0
    return-void
.end method

.method protected startForward(Landroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "__forwardInitTaskActivity"

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/narvii/app/NVActivity;->initTaskActivity:Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1, v0}, Lcom/narvii/app/ForwardActivity;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 12
    return-void
.end method
