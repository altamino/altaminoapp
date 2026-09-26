.class public Lcom/narvii/influencer/FanClubSubscriptionDialog;
.super Lcom/narvii/app/NVDialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/widget/PurchaseConfirmButton$SubmitConfirmListener;


# instance fields
.field private final apiService:Lcom/narvii/util/http/ApiService;

.field private final confirmButton:Lcom/narvii/widget/PurchaseConfirmButton;

.field private final dateFormat:Ljava/text/DateFormat;

.field private final earnFreeCoins:Landroid/widget/TextView;

.field private influencerUid:Ljava/lang/String;

.field private isRenewAction:Z

.field private final lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private final membershipService:Lcom/narvii/wallet/MembershipService;

.field private ndcId:I

.field private final notificationCenter:Lcom/narvii/notification/NotificationCenter;

.field private nvContext:Lcom/narvii/app/NVContext;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private source:Ljava/lang/String;

.field private final subscriptionAutoRenewHint:Landroid/widget/TextView;

.field private final subscriptionStartTime:Landroid/widget/TextView;

.field private final totalCoinCount:Landroid/widget/TextView;

.field private transactionId:Ljava/lang/String;

.field private user:Lcom/narvii/model/User;


# direct methods
.method private constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    const v0, 0x7f13015d

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->dateFormat:Ljava/text/DateFormat;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/influencer/FanClubSubscriptionDialog$1;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/narvii/influencer/FanClubSubscriptionDialog$1;-><init>(Lcom/narvii/influencer/FanClubSubscriptionDialog;)V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->receiver:Landroid/content/BroadcastReceiver;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->influencerUid:Ljava/lang/String;

    .line 29
    const/4 p2, 0x0

    .line 30
    .line 31
    iput-object p2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->transactionId:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    const p2, 0x7f0d01b1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setContentView(I)V

    .line 38
    .line 39
    const-string p2, "membership"

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    check-cast p2, Lcom/narvii/wallet/MembershipService;

    .line 46
    .line 47
    iput-object p2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 48
    .line 49
    const-string p2, "api"

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 56
    .line 57
    iput-object p2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->apiService:Lcom/narvii/util/http/ApiService;

    .line 58
    .line 59
    const-string p2, "notification"

    .line 60
    .line 61
    .line 62
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    move-result-object p2

    .line 64
    .line 65
    check-cast p2, Lcom/narvii/notification/NotificationCenter;

    .line 66
    .line 67
    iput-object p2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->notificationCenter:Lcom/narvii/notification/NotificationCenter;

    .line 68
    .line 69
    .line 70
    const p2, 0x7f0a0316

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 74
    move-result-object p2

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 81
    move-result-object p2

    .line 82
    .line 83
    .line 84
    const v0, 0x7f12073c

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 88
    move-result-object p2

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    .line 95
    const v2, 0x7f1211df

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    new-instance v2, Lcom/narvii/util/text/NVText;

    .line 102
    .line 103
    .line 104
    invoke-direct {v2, p2}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    new-array p2, v1, [Ljava/lang/CharSequence;

    .line 107
    const/4 v3, 0x0

    .line 108
    .line 109
    aput-object v0, p2, v3

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, p2}, Lcom/narvii/util/text/NVText;->format([Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    new-instance p2, Lcom/narvii/influencer/FanClubSubscriptionDialog$2;

    .line 115
    .line 116
    .line 117
    invoke-direct {p2, p0, p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog$2;-><init>(Lcom/narvii/influencer/FanClubSubscriptionDialog;Lcom/narvii/app/NVContext;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v0, p2}, Lcom/narvii/util/text/NVText;->markText(Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I

    .line 121
    .line 122
    .line 123
    const p2, 0x7f0a062b

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 127
    move-result-object p2

    .line 128
    .line 129
    const-string v0, "config"

    .line 130
    .line 131
    .line 132
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    move-result-object v0

    .line 134
    .line 135
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 136
    .line 137
    const-string v2, "themePack"

    .line 138
    .line 139
    .line 140
    invoke-interface {p1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    move-result-object v2

    .line 142
    .line 143
    check-cast v2, Lcom/narvii/theme/ThemePackService;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 147
    move-result v0

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, v0}, Lcom/narvii/theme/ThemePackService;->getThemeColor(I)I

    .line 151
    move-result v0

    .line 152
    .line 153
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    .line 154
    .line 155
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 156
    .line 157
    .line 158
    const v5, 0x66ffffff

    .line 159
    and-int/2addr v5, v0

    .line 160
    .line 161
    .line 162
    const v6, -0x33000001    # -1.3421772E8f

    .line 163
    and-int/2addr v0, v6

    .line 164
    .line 165
    .line 166
    filled-new-array {v5, v0}, [I

    .line 167
    move-result-object v0

    .line 168
    .line 169
    .line 170
    invoke-direct {v2, v4, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    .line 178
    .line 179
    const p2, 0x7f0a0eed

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 183
    move-result-object p2

    .line 184
    .line 185
    check-cast p2, Landroid/widget/TextView;

    .line 186
    .line 187
    iput-object p2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->totalCoinCount:Landroid/widget/TextView;

    .line 188
    .line 189
    .line 190
    const p2, 0x7f0a055a

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 194
    move-result-object p2

    .line 195
    .line 196
    check-cast p2, Landroid/widget/TextView;

    .line 197
    .line 198
    iput-object p2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->subscriptionStartTime:Landroid/widget/TextView;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 202
    move-result-object p2

    .line 203
    .line 204
    .line 205
    const v0, 0x7f1202b8

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 209
    move-result-object p2

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 213
    move-result-object v0

    .line 214
    .line 215
    .line 216
    const v2, 0x7f120b5a

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 220
    move-result-object v0

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 224
    move-result-object v2

    .line 225
    const/4 v4, 0x2

    .line 226
    .line 227
    new-array v4, v4, [Ljava/lang/Object;

    .line 228
    .line 229
    aput-object p2, v4, v3

    .line 230
    .line 231
    aput-object v0, v4, v1

    .line 232
    .line 233
    .line 234
    const v0, 0x7f12017c

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 238
    move-result-object v0

    .line 239
    .line 240
    new-instance v2, Lcom/narvii/util/text/NVText;

    .line 241
    .line 242
    .line 243
    invoke-direct {v2, v0}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 244
    .line 245
    new-instance v0, Lcom/narvii/influencer/FanClubSubscriptionDialog$3;

    .line 246
    .line 247
    .line 248
    invoke-direct {v0, p0, p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog$3;-><init>(Lcom/narvii/influencer/FanClubSubscriptionDialog;Lcom/narvii/app/NVContext;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2, p2, v0}, Lcom/narvii/util/text/NVText;->markText(Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I

    .line 252
    .line 253
    .line 254
    const p1, 0x7f0a0e06

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 258
    move-result-object p1

    .line 259
    .line 260
    check-cast p1, Landroid/widget/TextView;

    .line 261
    .line 262
    iput-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->subscriptionAutoRenewHint:Landroid/widget/TextView;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 266
    .line 267
    .line 268
    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    .line 269
    move-result-object p2

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    .line 277
    .line 278
    const p1, 0x7f0a038e

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 282
    move-result-object p1

    .line 283
    .line 284
    check-cast p1, Lcom/narvii/widget/PurchaseConfirmButton;

    .line 285
    .line 286
    iput-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->confirmButton:Lcom/narvii/widget/PurchaseConfirmButton;

    .line 287
    .line 288
    .line 289
    invoke-virtual {p1, p0}, Lcom/narvii/widget/PurchaseConfirmButton;->setSubmitListener(Lcom/narvii/widget/PurchaseConfirmButton$SubmitConfirmListener;)V

    .line 290
    .line 291
    .line 292
    const p1, 0x7f0a04aa

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 296
    move-result-object p1

    .line 297
    .line 298
    check-cast p1, Landroid/widget/TextView;

    .line 299
    .line 300
    iput-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->earnFreeCoins:Landroid/widget/TextView;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 304
    move-result-object p1

    .line 305
    .line 306
    .line 307
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 308
    move-result-object p1

    .line 309
    .line 310
    iput-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 311
    .line 312
    iget-object p2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->receiver:Landroid/content/BroadcastReceiver;

    .line 313
    .line 314
    new-instance v0, Landroid/content/IntentFilter;

    .line 315
    .line 316
    const-string v1, "com.narvii.action.WALLET_CHANGED"

    .line 317
    .line 318
    .line 319
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1, p2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 323
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Lcom/narvii/widget/PurchaseConfirmButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->confirmButton:Lcom/narvii/widget/PurchaseConfirmButton;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->influencerUid:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/influencer/FanClubSubscriptionDialog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->ndcId:I

    return p0
.end method

.method static bridge synthetic d(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Lcom/narvii/notification/NotificationCenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->notificationCenter:Lcom/narvii/notification/NotificationCenter;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->source:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Lcom/narvii/model/User;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->user:Lcom/narvii/model/User;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/narvii/influencer/FanClubSubscriptionDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->transactionId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic i(Lcom/narvii/influencer/FanClubSubscriptionDialog;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->user:Lcom/narvii/model/User;

    return-void
.end method

.method static bridge synthetic j(Lcom/narvii/influencer/FanClubSubscriptionDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->sendFellowRequest()V

    return-void
.end method

.method static bridge synthetic k(Lcom/narvii/influencer/FanClubSubscriptionDialog;Lcom/narvii/influencer/FanClub;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->sendNotification(Lcom/narvii/influencer/FanClub;Z)V

    return-void
.end method

.method static bridge synthetic l(Lcom/narvii/influencer/FanClubSubscriptionDialog;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->showPurchaseCoinDialog(Z)V

    return-void
.end method

.method private loadUserInfo(Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->ndcId:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string v2, "/user-profile/"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 38
    .line 39
    const-string v1, "api"

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 46
    .line 47
    new-instance v1, Lcom/narvii/influencer/FanClubSubscriptionDialog$5;

    .line 48
    .line 49
    const-class v2, Lcom/narvii/model/api/UserResponse;

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, p0, v2, p2}, Lcom/narvii/influencer/FanClubSubscriptionDialog$5;-><init>(Lcom/narvii/influencer/FanClubSubscriptionDialog;Ljava/lang/Class;Lcom/narvii/util/Callback;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 56
    return-void
.end method

.method static bridge synthetic m(Lcom/narvii/influencer/FanClubSubscriptionDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->showSuccessToast()V

    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/influencer/FanClubSubscriptionDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->updateWallet()V

    return-void
.end method

.method private sendFellowRequest()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    const-string v2, "/user-profile/"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->user:Lcom/narvii/model/User;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "/member"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->apiService:Lcom/narvii/util/http/ApiService;

    .line 47
    .line 48
    new-instance v2, Lcom/narvii/influencer/FanClubSubscriptionDialog$8;

    .line 49
    .line 50
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 51
    .line 52
    .line 53
    invoke-direct {v2, p0, v3}, Lcom/narvii/influencer/FanClubSubscriptionDialog$8;-><init>(Lcom/narvii/influencer/FanClubSubscriptionDialog;Ljava/lang/Class;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 57
    return-void
.end method

.method private sendNotification(Lcom/narvii/influencer/FanClub;Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/influencer/FanClub;

    .line 7
    .line 8
    iget v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->ndcId:I

    .line 9
    .line 10
    iput v0, p1, Lcom/narvii/influencer/FanClub;->ndcId:I

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/notification/Notification;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/narvii/notification/Notification;-><init>()V

    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->isRenewAction:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string v1, "update"

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    const-string v1, "new"

    .line 25
    .line 26
    :goto_0
    iput-object v1, v0, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p1, v0, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 29
    .line 30
    new-instance p1, Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 34
    .line 35
    iput-object p1, v0, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    .line 36
    .line 37
    xor-int/lit8 p2, p2, 0x1

    .line 38
    .line 39
    const-string v1, "subscriptionStatusChanged"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    .line 44
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->notificationCenter:Lcom/narvii/notification/NotificationCenter;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 48
    .line 49
    iget p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->ndcId:I

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    const-string p2, "notification"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 64
    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/narvii/notification/Notification;->clone()Lcom/narvii/notification/Notification;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 73
    :cond_1
    return-void
.end method

.method private sendSubscribeRequest(Z)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->transactionId:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->transactionId:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    const-string v1, "transactionId"

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->transactionId:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 26
    .line 27
    const-string v1, "isAutoRenew"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    iget v2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->ndcId:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    const-string v3, "influencer/"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    iget-object v3, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->influencerUid:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v3, "/subscribe"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    const-string v2, "paymentContext"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    iget-object v1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->apiService:Lcom/narvii/util/http/ApiService;

    .line 85
    .line 86
    new-instance v2, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;

    .line 87
    .line 88
    const-class v3, Lcom/narvii/influencer/FanClubListResponse;

    .line 89
    .line 90
    .line 91
    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;-><init>(Lcom/narvii/influencer/FanClubSubscriptionDialog;Ljava/lang/Class;Z)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 95
    return-void
.end method

.method private setIsRenew(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->isRenewAction:Z

    return-void
.end method

.method private setNdcId(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->ndcId:I

    return-void
.end method

.method private showPurchaseCoinDialog(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/wallet/PurchaseCoinFragment;->show(Lcom/narvii/app/NVContext;Z)V

    .line 6
    return-void
.end method

.method public static showSubscriptionDialog(Lcom/narvii/app/NVContext;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "FanClubSubscriptionDialog"

    const-string p1, "nvContext is null"

    .line 3
    invoke-static {p0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/util/Utils;->shouldShowLoginPage(Lcom/narvii/app/NVContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "account"

    .line 5
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 6
    invoke-virtual {v0, p2, p1}, Lcom/narvii/account/AccountService;->getFanClub(ILjava/lang/String;)Lcom/narvii/influencer/FanClub;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/narvii/influencer/FanClub;->hasSubscriptionBefore()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {p0, p1, p2, v0, p3}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->showSubscriptionDialog(Lcom/narvii/app/NVContext;Ljava/lang/String;IZLjava/lang/String;)V

    return-void
.end method

.method public static showSubscriptionDialog(Lcom/narvii/app/NVContext;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 2

    const-string v0, "FanClubSubscriptionDialog"

    if-nez p0, :cond_0

    const-string p0, "nvContext is null"

    .line 9
    invoke-static {v0, p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    invoke-static {p0}, Lcom/narvii/util/Utils;->shouldShowLoginPage(Lcom/narvii/app/NVContext;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    if-gtz p2, :cond_2

    const-string p2, "config"

    .line 11
    invoke-interface {p0, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/config/ConfigService;

    .line 12
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p2

    if-gtz p2, :cond_2

    const-string p0, "ndcId is 0"

    .line 13
    invoke-static {v0, p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_2
    new-instance v0, Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-direct {v0, p0, p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    iput-object p4, v0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->source:Ljava/lang/String;

    .line 15
    invoke-direct {v0, p2}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->setNdcId(I)V

    .line 16
    invoke-direct {v0, p3}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->setIsRenew(Z)V

    .line 17
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 19
    new-instance p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$4;

    invoke-direct {p0, p2, v0}, Lcom/narvii/influencer/FanClubSubscriptionDialog$4;-><init>(Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/influencer/FanClubSubscriptionDialog;)V

    invoke-direct {v0, p1, p0}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->loadUserInfo(Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public static showSubscriptionDialog(Lcom/narvii/app/NVContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "config"

    .line 1
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 2
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->showSubscriptionDialog(Lcom/narvii/app/NVContext;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private showSuccessToast()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    .line 9
    .line 10
    .line 11
    const v1, 0x7f121182

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 20
    move-object v2, v0

    .line 21
    .line 22
    check-cast v2, Lcom/narvii/app/NVActivity;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    const v3, 0x7f0801d7

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 38
    .line 39
    .line 40
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    move-result-object v4

    .line 46
    .line 47
    .line 48
    const v5, 0x7f01006a

    .line 49
    .line 50
    const-wide/16 v6, 0x258

    .line 51
    .line 52
    .line 53
    invoke-virtual/range {v2 .. v7}, Lcom/narvii/app/NVActivity;->toastImageWithText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IJ)V

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 60
    move-result-object v0

    .line 61
    const/4 v2, 0x1

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 69
    :goto_0
    return-void
.end method

.method private updateViews()V
    .locals 6

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0564

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->user:Lcom/narvii/model/User;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    const v0, 0x7f0a0565

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Landroid/widget/TextView;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->user:Lcom/narvii/model/User;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->user:Lcom/narvii/model/User;

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    iget-object v0, v0, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->confirmButton:Lcom/narvii/widget/PurchaseConfirmButton;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    const v2, 0x7f120b5a

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/narvii/widget/PurchaseConfirmButton;->setConfirmText(Ljava/lang/String;)V

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 63
    .line 64
    .line 65
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 66
    move-result-object v0

    .line 67
    const/4 v1, 0x1

    .line 68
    .line 69
    new-array v2, v1, [Ljava/lang/Object;

    .line 70
    .line 71
    iget-object v3, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->user:Lcom/narvii/model/User;

    .line 72
    .line 73
    iget-object v3, v3, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    .line 74
    .line 75
    iget v3, v3, Lcom/narvii/model/InfluencerInfo;->monthlyFee:I

    .line 76
    .line 77
    .line 78
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v3

    .line 80
    const/4 v4, 0x0

    .line 81
    .line 82
    aput-object v3, v2, v4

    .line 83
    .line 84
    .line 85
    const v3, 0x7f120f49

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    iget-object v2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->totalCoinCount:Landroid/widget/TextView;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->subscriptionStartTime:Landroid/widget/TextView;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 100
    move-result-object v2

    .line 101
    .line 102
    new-array v1, v1, [Ljava/lang/Object;

    .line 103
    .line 104
    iget-object v3, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->dateFormat:Ljava/text/DateFormat;

    .line 105
    .line 106
    new-instance v5, Ljava/util/Date;

    .line 107
    .line 108
    .line 109
    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 113
    move-result-object v3

    .line 114
    .line 115
    aput-object v3, v1, v4

    .line 116
    .line 117
    .line 118
    const v3, 0x7f12112a

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    move-result-object v1

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->updateWallet()V

    .line 129
    return-void
.end method

.method private updateWallet()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->walletBalance()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    new-array v2, v1, [Ljava/lang/Object;

    .line 16
    .line 17
    sget-object v3, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    .line 18
    .line 19
    iget-object v4, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4}, Lcom/narvii/wallet/MembershipService;->walletBalance()I

    .line 23
    move-result v4

    .line 24
    int-to-long v4, v4

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    const/4 v4, 0x0

    .line 30
    .line 31
    aput-object v3, v2, v4

    .line 32
    .line 33
    .line 34
    const v3, 0x7f121145

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    const v2, 0x7f121146

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    const v3, 0x7f1211bc

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v0, " "

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    new-instance v3, Lcom/narvii/util/text/NVText;

    .line 84
    .line 85
    .line 86
    invoke-direct {v3, v0}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    new-instance v0, Lcom/narvii/influencer/FanClubSubscriptionDialog$6;

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, p0}, Lcom/narvii/influencer/FanClubSubscriptionDialog$6;-><init>(Lcom/narvii/influencer/FanClubSubscriptionDialog;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v2, v0}, Lcom/narvii/util/text/NVText;->markText(Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I

    .line 95
    .line 96
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->earnFreeCoins:Landroid/widget/TextView;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 100
    .line 101
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->earnFreeCoins:Landroid/widget/TextView;

    .line 102
    .line 103
    .line 104
    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    .line 105
    move-result-object v1

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 109
    .line 110
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->earnFreeCoins:Landroid/widget/TextView;

    .line 111
    .line 112
    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 116
    return-void
.end method


# virtual methods
.method public doSubmit()V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/logging/ActSemantic;->purchase:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "PurchaseButton"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->user:Lcom/narvii/model/User;

    .line 18
    const/4 v1, 0x1

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, v0, Lcom/narvii/model/User;->influencerInfo:Lcom/narvii/model/InfluencerInfo;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget v0, v0, Lcom/narvii/model/InfluencerInfo;->monthlyFee:I

    .line 27
    .line 28
    iget-object v2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/narvii/wallet/MembershipService;->walletBalance()I

    .line 32
    move-result v2

    .line 33
    .line 34
    if-le v0, v2, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->showPurchaseCoinDialog(Z)V

    .line 38
    return-void

    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->confirmButton:Lcom/narvii/widget/PurchaseConfirmButton;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/narvii/widget/PurchaseConfirmButton;->updateSendingStatus(Z)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->sendSubscribeRequest(Z)V

    .line 47
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->receiver:Landroid/content/BroadcastReceiver;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 11
    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "fan_club_subscription"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    move-result p1

    .line 8
    .line 9
    .line 10
    const v0, 0x7f0a0316

    .line 11
    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 17
    :goto_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->updateViews()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/wallet/MembershipService;->refreshWallet(Z)V

    .line 10
    .line 11
    .line 12
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    const v1, 0x7f010059

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    const v1, 0x7f0a0563

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 36
    .line 37
    const-string v1, "statistics"

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 44
    .line 45
    const-string v1, "Join Fan Club Page Opened"

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog;->source:Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    const-string v1, "Join Fan Club Page Opened Total"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 61
    return-void
.end method
