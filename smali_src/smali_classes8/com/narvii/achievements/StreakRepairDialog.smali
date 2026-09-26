.class public Lcom/narvii/achievements/StreakRepairDialog;
.super Lcom/narvii/app/NVDialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/achievements/StreakRepairDialog$StreakRepairListener;
    }
.end annotation


# static fields
.field private static final CHOICE_1:I = 0x1

.field private static final CHOICE_2:I = 0x2

.field private static final REPAIR_METHOD_COIN:I = 0x1

.field private static final REPAIR_METHOD_MEMBERSHIP:I = 0x2


# instance fields
.field anyFixed:Z

.field apiService:Lcom/narvii/util/http/ApiService;

.field private btnClose:Landroid/view/View;

.field private btnFixRepair:Landroid/view/View;

.field checkInHistory:Lcom/narvii/model/CheckInHistory;

.field private choice1Container:Landroid/view/View;

.field private choice2Container:Landroid/view/View;

.field private chxChoice1:Landroid/widget/CheckBox;

.field private chxChoice2:Landroid/widget/CheckBox;

.field private content:Landroid/view/View;

.field private ctx:Lcom/narvii/app/NVContext;

.field private curChoice:I

.field private earnFreeCoins:Landroid/widget/TextView;

.field private fixContainer1:Landroid/view/View;

.field private fixContainerFixing:Landroid/view/View;

.field private isFixing:Z

.field private isStrikeRepairFinished:Z

.field localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field membershipService:Lcom/narvii/wallet/MembershipService;

.field private ongoingContainer:Landroid/view/View;

.field receiver:Landroid/content/BroadcastReceiver;

.field private repairDoneContainer:Landroid/view/View;

.field repairStreakRequest:Lcom/narvii/util/http/ApiRequest;

.field private root:Landroid/view/View;

.field private semiProgressDrawable:Lcom/narvii/widget/SemiProgressDrawable;

.field private showingFixAnimation:Z

.field public source:Ljava/lang/String;

.field streakRepairLayout:Lcom/narvii/checkin/CheckInStreakRepairLayout;

.field streakRepairListener:Lcom/narvii/achievements/StreakRepairDialog$StreakRepairListener;

.field tvChoiceHint2:Landroid/widget/TextView;

.field private tvLearnMore:Landroid/widget/TextView;

.field walletChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/CheckInHistory;)V
    .locals 3
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const v0, 0x7f13015d

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    iput v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->curChoice:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 20
    .line 21
    new-instance v0, Lcom/narvii/achievements/StreakRepairDialog$2;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/narvii/achievements/StreakRepairDialog$2;-><init>(Lcom/narvii/achievements/StreakRepairDialog;)V

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->receiver:Landroid/content/BroadcastReceiver;

    .line 27
    .line 28
    new-instance v0, Lcom/narvii/achievements/StreakRepairDialog$3;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/narvii/achievements/StreakRepairDialog$3;-><init>(Lcom/narvii/achievements/StreakRepairDialog;)V

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->walletChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog;->ctx:Lcom/narvii/app/NVContext;

    .line 36
    .line 37
    iput-object p2, p0, Lcom/narvii/achievements/StreakRepairDialog;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    .line 38
    .line 39
    .line 40
    const v0, 0x7f0d01dc

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 44
    .line 45
    const-string v0, "membership"

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 54
    .line 55
    const-string v0, "api"

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->apiService:Lcom/narvii/util/http/ApiService;

    .line 64
    .line 65
    .line 66
    const v0, 0x7f0a0c4c

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    const v1, 0x7f0a039d

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 80
    move-result-object v2

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    const v2, 0x7f0a02f6

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object v2

    .line 91
    .line 92
    iput-object v2, p0, Lcom/narvii/achievements/StreakRepairDialog;->choice1Container:Landroid/view/View;

    .line 93
    .line 94
    .line 95
    const v2, 0x7f0a02f9

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 99
    move-result-object v2

    .line 100
    .line 101
    iput-object v2, p0, Lcom/narvii/achievements/StreakRepairDialog;->choice2Container:Landroid/view/View;

    .line 102
    .line 103
    iget-object v2, p0, Lcom/narvii/achievements/StreakRepairDialog;->choice1Container:Landroid/view/View;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    iget-object v2, p0, Lcom/narvii/achievements/StreakRepairDialog;->choice2Container:Landroid/view/View;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    .line 113
    .line 114
    const v2, 0x7f0a02f7

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 118
    move-result-object v2

    .line 119
    .line 120
    check-cast v2, Landroid/widget/CheckBox;

    .line 121
    .line 122
    iput-object v2, p0, Lcom/narvii/achievements/StreakRepairDialog;->chxChoice1:Landroid/widget/CheckBox;

    .line 123
    .line 124
    .line 125
    const v2, 0x7f0a02fa

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 129
    move-result-object v2

    .line 130
    .line 131
    check-cast v2, Landroid/widget/CheckBox;

    .line 132
    .line 133
    iput-object v2, p0, Lcom/narvii/achievements/StreakRepairDialog;->chxChoice2:Landroid/widget/CheckBox;

    .line 134
    .line 135
    .line 136
    const v2, 0x7f0a02fb

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 140
    move-result-object v2

    .line 141
    .line 142
    check-cast v2, Landroid/widget/TextView;

    .line 143
    .line 144
    iput-object v2, p0, Lcom/narvii/achievements/StreakRepairDialog;->tvChoiceHint2:Landroid/widget/TextView;

    .line 145
    .line 146
    .line 147
    const v2, 0x7f0a07d1

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 151
    move-result-object v2

    .line 152
    .line 153
    check-cast v2, Landroid/widget/TextView;

    .line 154
    .line 155
    iput-object v2, p0, Lcom/narvii/achievements/StreakRepairDialog;->tvLearnMore:Landroid/widget/TextView;

    .line 156
    .line 157
    .line 158
    const v2, 0x7f0a05b2

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 162
    move-result-object v2

    .line 163
    .line 164
    iput-object v2, p0, Lcom/narvii/achievements/StreakRepairDialog;->btnFixRepair:Landroid/view/View;

    .line 165
    .line 166
    .line 167
    const v2, 0x7f0a04aa

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 171
    move-result-object v2

    .line 172
    .line 173
    check-cast v2, Landroid/widget/TextView;

    .line 174
    .line 175
    iput-object v2, p0, Lcom/narvii/achievements/StreakRepairDialog;->earnFreeCoins:Landroid/widget/TextView;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 179
    move-result-object v0

    .line 180
    .line 181
    iput-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->root:Landroid/view/View;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 185
    move-result-object v0

    .line 186
    .line 187
    iput-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->content:Landroid/view/View;

    .line 188
    .line 189
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->btnFixRepair:Landroid/view/View;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    .line 194
    .line 195
    const v0, 0x7f0a0321

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 199
    move-result-object v0

    .line 200
    .line 201
    iput-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->btnClose:Landroid/view/View;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    .line 206
    .line 207
    const v0, 0x7f0a0a50

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 211
    move-result-object v0

    .line 212
    .line 213
    iput-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->ongoingContainer:Landroid/view/View;

    .line 214
    .line 215
    .line 216
    const v0, 0x7f0a0c13

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 220
    move-result-object v0

    .line 221
    .line 222
    iput-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->repairDoneContainer:Landroid/view/View;

    .line 223
    .line 224
    .line 225
    const v0, 0x7f0a02d9

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 229
    move-result-object v0

    .line 230
    .line 231
    check-cast v0, Lcom/narvii/checkin/CheckInStreakRepairLayout;

    .line 232
    .line 233
    iput-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->streakRepairLayout:Lcom/narvii/checkin/CheckInStreakRepairLayout;

    .line 234
    .line 235
    new-instance v0, Lcom/narvii/checkin/CheckInHelper;

    .line 236
    .line 237
    .line 238
    invoke-direct {v0, p1}, Lcom/narvii/checkin/CheckInHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, p2}, Lcom/narvii/checkin/CheckInHelper;->getStreakRepairCellList(Lcom/narvii/model/CheckInHistory;)Ljava/util/List;

    .line 242
    move-result-object p1

    .line 243
    .line 244
    iget-object p2, p0, Lcom/narvii/achievements/StreakRepairDialog;->streakRepairLayout:Lcom/narvii/checkin/CheckInStreakRepairLayout;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p2, p1}, Lcom/narvii/checkin/CheckInStreakRepairLayout;->updateCells(Ljava/util/List;)V

    .line 248
    .line 249
    new-instance p1, Lcom/narvii/widget/SemiProgressDrawable;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 253
    move-result-object p2

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 257
    move-result-object v0

    .line 258
    .line 259
    const/high16 v1, 0x40000000    # 2.0f

    .line 260
    .line 261
    .line 262
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 263
    move-result v0

    .line 264
    const/4 v1, -0x1

    .line 265
    .line 266
    .line 267
    invoke-direct {p1, p2, v1, v0}, Lcom/narvii/widget/SemiProgressDrawable;-><init>(Landroid/content/Context;II)V

    .line 268
    .line 269
    iput-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog;->semiProgressDrawable:Lcom/narvii/widget/SemiProgressDrawable;

    .line 270
    .line 271
    .line 272
    const p1, 0x7f0a05b0

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 276
    move-result-object p1

    .line 277
    .line 278
    iput-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog;->fixContainer1:Landroid/view/View;

    .line 279
    .line 280
    .line 281
    const p1, 0x7f0a05b1

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 285
    move-result-object p1

    .line 286
    .line 287
    iput-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog;->fixContainerFixing:Landroid/view/View;

    .line 288
    .line 289
    .line 290
    const p1, 0x7f0a05b6

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 294
    move-result-object p1

    .line 295
    .line 296
    check-cast p1, Landroid/widget/ImageView;

    .line 297
    .line 298
    iget-object p2, p0, Lcom/narvii/achievements/StreakRepairDialog;->semiProgressDrawable:Lcom/narvii/widget/SemiProgressDrawable;

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    .line 303
    new-instance p1, Lcom/narvii/achievements/StreakRepairDialog$1;

    .line 304
    .line 305
    .line 306
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 307
    move-result-object p2

    .line 308
    .line 309
    .line 310
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 311
    move-result-object p2

    .line 312
    .line 313
    .line 314
    const v0, 0x7f0600a2

    .line 315
    .line 316
    .line 317
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 318
    move-result p2

    .line 319
    .line 320
    .line 321
    invoke-direct {p1, p0, p2}, Lcom/narvii/achievements/StreakRepairDialog$1;-><init>(Lcom/narvii/achievements/StreakRepairDialog;I)V

    .line 322
    .line 323
    new-instance p2, Landroid/text/SpannableString;

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 327
    move-result-object v0

    .line 328
    .line 329
    .line 330
    const v1, 0x7f120b7f

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 334
    move-result-object v0

    .line 335
    .line 336
    .line 337
    invoke-direct {p2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    .line 341
    move-result v0

    .line 342
    .line 343
    const/16 v1, 0x21

    .line 344
    const/4 v2, 0x0

    .line 345
    .line 346
    .line 347
    invoke-virtual {p2, p1, v2, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 348
    .line 349
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog;->tvLearnMore:Landroid/widget/TextView;

    .line 350
    .line 351
    .line 352
    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    .line 353
    move-result-object v0

    .line 354
    .line 355
    .line 356
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 357
    .line 358
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog;->tvLearnMore:Landroid/widget/TextView;

    .line 359
    .line 360
    .line 361
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    .line 363
    .line 364
    invoke-direct {p0}, Lcom/narvii/achievements/StreakRepairDialog;->updateViewsWhenCheckBoxChange()V

    .line 365
    .line 366
    .line 367
    invoke-direct {p0}, Lcom/narvii/achievements/StreakRepairDialog;->updateContainers()V

    .line 368
    .line 369
    .line 370
    invoke-direct {p0}, Lcom/narvii/achievements/StreakRepairDialog;->updateEarnFreeCoinsContent()V

    .line 371
    .line 372
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 373
    .line 374
    iget-object p2, p0, Lcom/narvii/achievements/StreakRepairDialog;->receiver:Landroid/content/BroadcastReceiver;

    .line 375
    .line 376
    new-instance v0, Landroid/content/IntentFilter;

    .line 377
    .line 378
    const-string v1, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 379
    .line 380
    .line 381
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {p1, p2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 385
    .line 386
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 387
    .line 388
    iget-object p2, p0, Lcom/narvii/achievements/StreakRepairDialog;->walletChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 389
    .line 390
    new-instance v0, Landroid/content/IntentFilter;

    .line 391
    .line 392
    const-string v1, "com.narvii.action.WALLET_CHANGED"

    .line 393
    .line 394
    .line 395
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {p1, p2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 399
    return-void
.end method

.method public static synthetic a(Lcom/narvii/achievements/StreakRepairDialog;Landroid/view/View;Lcom/narvii/util/text/NVText;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/achievements/StreakRepairDialog;->lambda$updateEarnFreeCoinsContent$0(Landroid/view/View;Lcom/narvii/util/text/NVText;ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/achievements/StreakRepairDialog;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/achievements/StreakRepairDialog;->ctx:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/achievements/StreakRepairDialog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/achievements/StreakRepairDialog;->curChoice:I

    return p0
.end method

.method static bridge synthetic d(Lcom/narvii/achievements/StreakRepairDialog;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/achievements/StreakRepairDialog;->isFixing:Z

    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/achievements/StreakRepairDialog;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/achievements/StreakRepairDialog;->showingFixAnimation:Z

    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/achievements/StreakRepairDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/achievements/StreakRepairDialog;->showCoinNotEnoughDialog()V

    return-void
.end method

.method private fixStreak()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->repairStreakRequest:Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    if-nez v0, :cond_3

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->showingFixAnimation:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/narvii/logging/ActSemantic;->purchase:Lcom/narvii/logging/ActSemantic;

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    const-string v1, "PurchaseButton"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iget v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->curChoice:I

    .line 24
    const/4 v2, 0x1

    .line 25
    .line 26
    if-ne v1, v2, :cond_1

    .line 27
    .line 28
    const-string v1, "free"

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_1
    const-string v1, "useCoins"

    .line 32
    .line 33
    :goto_0
    const-string v3, "purchaseType"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v3, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 41
    .line 42
    iput-boolean v2, p0, Lcom/narvii/achievements/StreakRepairDialog;->isFixing:Z

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/narvii/achievements/StreakRepairDialog;->updateViewsWhenCheckBoxChange()V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/narvii/util/Utils;->getTimeZoneInMin()I

    .line 49
    move-result v0

    .line 50
    .line 51
    iget v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->curChoice:I

    .line 52
    .line 53
    if-ne v1, v2, :cond_2

    .line 54
    const/4 v2, 0x2

    .line 55
    .line 56
    :cond_2
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 57
    .line 58
    .line 59
    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 60
    .line 61
    const-string v3, "/check-in/repair"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 65
    move-result-object v3

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 72
    move-result-object v3

    .line 73
    .line 74
    const-string v4, "timezone"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v4, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 78
    .line 79
    const-string v0, "repairMethod"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v0, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    iput-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->repairStreakRequest:Lcom/narvii/util/http/ApiRequest;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->apiService:Lcom/narvii/util/http/ApiService;

    .line 94
    .line 95
    new-instance v2, Lcom/narvii/achievements/StreakRepairDialog$4;

    .line 96
    .line 97
    const-class v3, Lcom/narvii/checkin/CheckInHistoryResponse;

    .line 98
    .line 99
    .line 100
    invoke-direct {v2, p0, v3}, Lcom/narvii/achievements/StreakRepairDialog$4;-><init>(Lcom/narvii/achievements/StreakRepairDialog;Ljava/lang/Class;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 104
    :cond_3
    :goto_1
    return-void
.end method

.method static bridge synthetic g(Lcom/narvii/achievements/StreakRepairDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/achievements/StreakRepairDialog;->updateContainers()V

    return-void
.end method

.method static bridge synthetic h(Lcom/narvii/achievements/StreakRepairDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/achievements/StreakRepairDialog;->updateEarnFreeCoinsContent()V

    return-void
.end method

.method static bridge synthetic i(Lcom/narvii/achievements/StreakRepairDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/achievements/StreakRepairDialog;->updateViewsWhenCheckBoxChange()V

    return-void
.end method

.method private synthetic lambda$updateEarnFreeCoinsContent$0(Landroid/view/View;Lcom/narvii/util/text/NVText;ILjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string p2, "GetCoinsButton"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog;->ctx:Lcom/narvii/app/NVContext;

    .line 18
    const/4 p2, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p2}, Lcom/narvii/wallet/PurchaseCoinFragment;->show(Lcom/narvii/app/NVContext;Z)V

    .line 22
    return-void
.end method

.method private showCoinNotEnoughDialog()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/narvii/wallet/PurchaseCoinFragment;->show(Lcom/narvii/app/NVContext;Z)V

    .line 7
    return-void
.end method

.method private skipDetachNextPause()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    instance-of v1, v0, Lcom/narvii/app/DrawerActivity;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/app/DrawerActivity;

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/narvii/app/DrawerActivity;->setSkipDetachNextPause(Z)V

    .line 20
    :cond_1
    return-void
.end method

.method private updateContainers()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/achievements/StreakRepairDialog;->updatePrice()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/checkin/CheckInHelper;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->ctx:Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/narvii/checkin/CheckInHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/checkin/CheckInHelper;->shouldShowStrikeLost(Lcom/narvii/model/CheckInHistory;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    xor-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->isStrikeRepairFinished:Z

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->repairDoneContainer:Landroid/view/View;

    .line 23
    const/4 v2, 0x4

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    move v0, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v0, v2

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->ongoingContainer:Landroid/view/View;

    .line 35
    .line 36
    iget-boolean v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->isStrikeRepairFinished:Z

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    move v2, v3

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    return-void
.end method

.method private updateEarnFreeCoinsContent()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    new-array v2, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    sget-object v3, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    .line 12
    .line 13
    iget-object v4, p0, Lcom/narvii/achievements/StreakRepairDialog;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4}, Lcom/narvii/wallet/MembershipService;->walletBalance()I

    .line 17
    move-result v4

    .line 18
    int-to-long v4, v4

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 23
    const/4 v4, 0x0

    .line 24
    .line 25
    aput-object v3, v2, v4

    .line 26
    .line 27
    .line 28
    const v3, 0x7f120c6c

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iget-object v2, p0, Lcom/narvii/achievements/StreakRepairDialog;->ctx:Lcom/narvii/app/NVContext;

    .line 35
    .line 36
    .line 37
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    .line 41
    const v3, 0x7f1211bc

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v0, " "

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    new-instance v3, Lcom/narvii/util/text/NVText;

    .line 68
    .line 69
    .line 70
    invoke-direct {v3, v0}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    new-instance v0, Lcom/narvii/achievements/a;

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, p0}, Lcom/narvii/achievements/a;-><init>(Lcom/narvii/achievements/StreakRepairDialog;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v2, v0}, Lcom/narvii/util/text/NVText;->markText(Ljava/lang/String;Lcom/narvii/util/text/OnTagClickListener;)I

    .line 79
    .line 80
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->earnFreeCoins:Landroid/widget/TextView;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 84
    .line 85
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->earnFreeCoins:Landroid/widget/TextView;

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 93
    .line 94
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->earnFreeCoins:Landroid/widget/TextView;

    .line 95
    .line 96
    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 100
    return-void
.end method

.method private updatePrice()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->tvChoiceHint2:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    const-string v2, ""

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/achievements/StreakRepairDialog;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    .line 22
    .line 23
    iget v2, v2, Lcom/narvii/model/CheckInHistory;->streakRepairCoinCost:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method private updateViewsWhenCheckBoxChange()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->chxChoice1:Landroid/widget/CheckBox;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->curChoice:I

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    .line 8
    if-ne v1, v3, :cond_0

    .line 9
    move v1, v3

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v2

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->chxChoice2:Landroid/widget/CheckBox;

    .line 17
    .line 18
    iget v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->curChoice:I

    .line 19
    const/4 v4, 0x2

    .line 20
    .line 21
    if-ne v1, v4, :cond_1

    .line 22
    move v1, v3

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v1, v2

    .line 25
    .line 26
    .line 27
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->choice1Container:Landroid/view/View;

    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->isFixing:Z

    .line 32
    xor-int/2addr v1, v3

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->choice2Container:Landroid/view/View;

    .line 38
    .line 39
    iget-boolean v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->isFixing:Z

    .line 40
    xor-int/2addr v1, v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 44
    .line 45
    iget-boolean v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->isFixing:Z

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->semiProgressDrawable:Lcom/narvii/widget/SemiProgressDrawable;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/narvii/widget/SemiProgressDrawable;->start()V

    .line 53
    goto :goto_2

    .line 54
    .line 55
    :cond_2
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->semiProgressDrawable:Lcom/narvii/widget/SemiProgressDrawable;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/narvii/widget/SemiProgressDrawable;->stop()V

    .line 59
    .line 60
    :goto_2
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->fixContainerFixing:Landroid/view/View;

    .line 61
    .line 62
    iget-boolean v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->isFixing:Z

    .line 63
    const/4 v3, 0x4

    .line 64
    .line 65
    if-eqz v1, :cond_3

    .line 66
    move v1, v2

    .line 67
    goto :goto_3

    .line 68
    :cond_3
    move v1, v3

    .line 69
    .line 70
    .line 71
    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->fixContainer1:Landroid/view/View;

    .line 74
    .line 75
    iget-boolean v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->isFixing:Z

    .line 76
    .line 77
    if-nez v1, :cond_4

    .line 78
    goto :goto_4

    .line 79
    :cond_4
    move v2, v3

    .line 80
    .line 81
    .line 82
    :goto_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->anyFixed:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    new-instance v1, Landroid/content/Intent;

    .line 15
    .line 16
    const-string v2, "com.narvii.action.ACTION_STREAK_REPAIR_CHANGED"

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/achievements/StreakRepairDialog;->ctx:Lcom/narvii/app/NVContext;

    .line 22
    .line 23
    const-string v3, "config"

    .line 24
    .line 25
    .line 26
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    check-cast v2, Lcom/narvii/config/ConfigService;

    .line 30
    .line 31
    const-string v3, "cid"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 35
    move-result v2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    const v1, 0x7f01005e

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    iget-object v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->content:Landroid/view/View;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 58
    .line 59
    .line 60
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 61
    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "check_in_streak_fix"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    .line 8
    sparse-switch p1, :sswitch_data_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :sswitch_0
    iget p1, p0, Lcom/narvii/achievements/StreakRepairDialog;->curChoice:I

    .line 12
    .line 13
    if-ne p1, v0, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/narvii/achievements/StreakRepairDialog;->fixStreak()V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    new-instance p1, Lcom/narvii/membership/MembershipHelper;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->ctx:Lcom/narvii/app/NVContext;

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, v0}, Lcom/narvii/membership/MembershipHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    const v1, 0x7f120b55

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    const/4 v1, 0x0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0, v1}, Lcom/narvii/membership/MembershipHelper;->showJoinAminoPlusDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-direct {p0}, Lcom/narvii/achievements/StreakRepairDialog;->fixStreak()V

    .line 52
    goto :goto_0

    .line 53
    .line 54
    .line 55
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 56
    goto :goto_0

    .line 57
    :sswitch_2
    const/4 p1, 0x2

    .line 58
    .line 59
    iput p1, p0, Lcom/narvii/achievements/StreakRepairDialog;->curChoice:I

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lcom/narvii/achievements/StreakRepairDialog;->updateViewsWhenCheckBoxChange()V

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :sswitch_3
    iput v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->curChoice:I

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/narvii/achievements/StreakRepairDialog;->updateViewsWhenCheckBoxChange()V

    .line 69
    :goto_0
    return-void

    .line 70
    nop

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    :sswitch_data_0
    .sparse-switch
        0x7f0a02f6 -> :sswitch_3
        0x7f0a02f8 -> :sswitch_3
        0x7f0a02f9 -> :sswitch_2
        0x7f0a0321 -> :sswitch_1
        0x7f0a05b2 -> :sswitch_0
        0x7f0a0c4c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onStop()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->receiver:Landroid/content/BroadcastReceiver;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/achievements/StreakRepairDialog;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->walletChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 18
    return-void
.end method

.method public setStreakRepairListener(Lcom/narvii/achievements/StreakRepairDialog$StreakRepairListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/achievements/StreakRepairDialog;->streakRepairListener:Lcom/narvii/achievements/StreakRepairDialog$StreakRepairListener;

    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    const v1, 0x7f010059

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->content:Landroid/view/View;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    const-string v1, "statistics"

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 36
    .line 37
    const-string v1, "Streak Repair Modal"

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/achievements/StreakRepairDialog;->source:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    const-string v1, "Streak Repair Modal Total"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 53
    return-void
.end method
