.class public Lcom/narvii/monetization/store/TippingConfirmDialog;
.super Lcom/narvii/app/NVDialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/narvii/widget/PurchaseConfirmButton$SubmitConfirmListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;
    }
.end annotation


# static fields
.field private static TIPPING_SELECT_CUSTOM:I = -0x1

.field private static TIPPING_UNSELECTED:I = -0x2


# instance fields
.field communityHelper:Lcom/narvii/community/CommunityHelper;

.field private confirm:Lcom/narvii/widget/PurchaseConfirmButton;

.field private curSelect:I

.field private customTippingIcon:Lcom/narvii/widget/NVImageView;

.field private customTippingOption:Lcom/narvii/model/TippingOption;

.field private customTippingPrice:Landroid/view/View;

.field private customTippingPriceInput:Landroid/widget/EditText;

.field private defaultPriceViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private defaultTippingPrice:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/TippingOption;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private inputFilter:Landroid/text/InputFilter;

.field private isFetchTipperList:Z

.field private isKeyboardOn:Z

.field private final lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private maxTippingPrice:I

.field private final membership:Lcom/narvii/wallet/MembershipService;

.field private minTippingPrice:I

.field private nvContext:Lcom/narvii/app/NVContext;

.field private receiver:Landroid/content/BroadcastReceiver;

.field public source:Ljava/lang/String;

.field private tipSuccessListener:Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;

.field private tippable:Lcom/narvii/model/Tippable;

.field private tippersCount:I

.field private tippersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private final tippingConfirmTitle:Landroid/widget/TextView;

.field private tippingContentView:Landroid/view/View;

.field private tippingFeedbackView:Lcom/narvii/monetization/store/view/TippingFeedbackView;

.field private tippingHelper:Lcom/narvii/tipping/TippingHelper;

.field private final tippingMembersCount:Landroid/widget/TextView;

.field private final tippingMembersList:Lcom/narvii/livelayer/LiveLayerOnlineBar;

.field private final tippingMembersView:Landroid/view/View;

.field private tippingTransactionId:Ljava/lang/String;

.field private userInfo:Lcom/narvii/model/User;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Tippable;)V
    .locals 3

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
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->defaultPriceViews:Ljava/util/List;

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippersList:Ljava/util/List;

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->isFetchTipperList:Z

    .line 20
    const/4 v1, -0x1

    .line 21
    .line 22
    iput v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippersCount:I

    .line 23
    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    iput-object v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->defaultTippingPrice:Ljava/util/List;

    .line 30
    .line 31
    const/16 v1, 0x64

    .line 32
    .line 33
    iput v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->maxTippingPrice:I

    .line 34
    const/4 v1, 0x1

    .line 35
    .line 36
    iput v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->minTippingPrice:I

    .line 37
    .line 38
    sget v2, Lcom/narvii/monetization/store/TippingConfirmDialog;->TIPPING_UNSELECTED:I

    .line 39
    .line 40
    iput v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->curSelect:I

    .line 41
    .line 42
    new-instance v2, Lcom/narvii/monetization/store/TippingConfirmDialog$1;

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, p0}, Lcom/narvii/monetization/store/TippingConfirmDialog$1;-><init>(Lcom/narvii/monetization/store/TippingConfirmDialog;)V

    .line 46
    .line 47
    iput-object v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->receiver:Landroid/content/BroadcastReceiver;

    .line 48
    .line 49
    new-instance v2, Lcom/narvii/monetization/store/TippingConfirmDialog$2;

    .line 50
    .line 51
    .line 52
    invoke-direct {v2, p0}, Lcom/narvii/monetization/store/TippingConfirmDialog$2;-><init>(Lcom/narvii/monetization/store/TippingConfirmDialog;)V

    .line 53
    .line 54
    iput-object v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->inputFilter:Landroid/text/InputFilter;

    .line 55
    .line 56
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 57
    .line 58
    iput-object p2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippable:Lcom/narvii/model/Tippable;

    .line 59
    .line 60
    new-instance v2, Lcom/narvii/community/CommunityHelper;

    .line 61
    .line 62
    .line 63
    invoke-direct {v2, p0}, Lcom/narvii/community/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 64
    .line 65
    iput-object v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->communityHelper:Lcom/narvii/community/CommunityHelper;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 69
    move-result-object v2

    .line 70
    .line 71
    .line 72
    invoke-static {v2}, Lcom/narvii/util/statusbar/StatusBarUtils;->addTranslucentFlags(Landroid/view/Window;)V

    .line 73
    .line 74
    .line 75
    const v2, 0x7f0d01de

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 79
    .line 80
    const-string v2, "membership"

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    move-result-object v2

    .line 85
    .line 86
    check-cast v2, Lcom/narvii/wallet/MembershipService;

    .line 87
    .line 88
    iput-object v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->membership:Lcom/narvii/wallet/MembershipService;

    .line 89
    .line 90
    new-instance v2, Lcom/narvii/tipping/TippingHelper;

    .line 91
    .line 92
    .line 93
    invoke-direct {v2, p1}, Lcom/narvii/tipping/TippingHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 94
    .line 95
    iput-object v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    .line 96
    .line 97
    .line 98
    invoke-direct {p0, p2}, Lcom/narvii/monetization/store/TippingConfirmDialog;->setTippableInfo(Lcom/narvii/model/Tippable;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    .line 105
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->inflater:Landroid/view/LayoutInflater;

    .line 109
    .line 110
    .line 111
    const p1, 0x7f0a0316

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .line 120
    .line 121
    const p1, 0x7f0a09d2

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    .line 130
    .line 131
    const p1, 0x7f0a0107

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 135
    move-result-object p1

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    .line 140
    .line 141
    const p1, 0x7f0a0f63

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    .line 150
    .line 151
    const p1, 0x7f0a0170

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 155
    move-result-object p1

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    .line 160
    .line 161
    const p1, 0x7f0a0e8c

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 165
    move-result-object p1

    .line 166
    .line 167
    check-cast p1, Landroid/widget/TextView;

    .line 168
    .line 169
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingConfirmTitle:Landroid/widget/TextView;

    .line 170
    .line 171
    .line 172
    const p1, 0x7f0a0614

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 176
    move-result-object p1

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    .line 181
    .line 182
    const p1, 0x7f0a0e98

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 186
    move-result-object p1

    .line 187
    .line 188
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingMembersView:Landroid/view/View;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    .line 193
    .line 194
    const p1, 0x7f0a0e97

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 198
    move-result-object p1

    .line 199
    .line 200
    check-cast p1, Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 201
    .line 202
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingMembersList:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setAvatarStrokeWidth(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setForceHideOnlineTextLayout(Z)V

    .line 209
    .line 210
    .line 211
    const p1, 0x7f0a0e96

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 215
    move-result-object p1

    .line 216
    .line 217
    check-cast p1, Landroid/widget/TextView;

    .line 218
    .line 219
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingMembersCount:Landroid/widget/TextView;

    .line 220
    .line 221
    .line 222
    const p1, 0x7f0a0401

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 226
    move-result-object p1

    .line 227
    .line 228
    check-cast p1, Landroid/widget/EditText;

    .line 229
    .line 230
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 234
    .line 235
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    .line 236
    .line 237
    new-array p2, v1, [Landroid/text/InputFilter;

    .line 238
    .line 239
    iget-object v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->inputFilter:Landroid/text/InputFilter;

    .line 240
    .line 241
    aput-object v2, p2, v0

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 245
    .line 246
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 250
    .line 251
    .line 252
    const p1, 0x7f0a0400

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 256
    move-result-object p1

    .line 257
    .line 258
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPrice:Landroid/view/View;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    .line 263
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPrice:Landroid/view/View;

    .line 264
    .line 265
    .line 266
    const p2, 0x7f0a0e99

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 270
    move-result-object p1

    .line 271
    .line 272
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 273
    .line 274
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingIcon:Lcom/narvii/widget/NVImageView;

    .line 275
    .line 276
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPrice:Landroid/view/View;

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 280
    .line 281
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 285
    .line 286
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPrice:Landroid/view/View;

    .line 287
    .line 288
    .line 289
    const p2, 0x7f0a0e93

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 293
    move-result-object p1

    .line 294
    .line 295
    const/16 p2, 0x8

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 299
    .line 300
    .line 301
    const p1, 0x7f0a038e

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 305
    move-result-object p1

    .line 306
    .line 307
    check-cast p1, Lcom/narvii/widget/PurchaseConfirmButton;

    .line 308
    .line 309
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->confirm:Lcom/narvii/widget/PurchaseConfirmButton;

    .line 310
    .line 311
    .line 312
    const p2, 0x7f0a0390

    .line 313
    .line 314
    .line 315
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 316
    move-result-object p1

    .line 317
    .line 318
    .line 319
    const p2, 0x7f080956

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 323
    .line 324
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->confirm:Lcom/narvii/widget/PurchaseConfirmButton;

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1, p0}, Lcom/narvii/widget/PurchaseConfirmButton;->setSubmitListener(Lcom/narvii/widget/PurchaseConfirmButton$SubmitConfirmListener;)V

    .line 328
    .line 329
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->confirm:Lcom/narvii/widget/PurchaseConfirmButton;

    .line 330
    .line 331
    .line 332
    invoke-virtual {p1, v0}, Lcom/narvii/widget/PurchaseConfirmButton;->setEnabled(Z)V

    .line 333
    .line 334
    .line 335
    const p1, 0x7f0a0e8b

    .line 336
    .line 337
    .line 338
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 339
    move-result-object p1

    .line 340
    .line 341
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingContentView:Landroid/view/View;

    .line 342
    .line 343
    .line 344
    const p1, 0x7f0a0e91

    .line 345
    .line 346
    .line 347
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 348
    move-result-object p1

    .line 349
    .line 350
    check-cast p1, Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 351
    .line 352
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingFeedbackView:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    .line 353
    .line 354
    .line 355
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 356
    move-result-object p1

    .line 357
    .line 358
    .line 359
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 360
    move-result-object p1

    .line 361
    .line 362
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 363
    .line 364
    iget-object p2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->receiver:Landroid/content/BroadcastReceiver;

    .line 365
    .line 366
    new-instance v0, Landroid/content/IntentFilter;

    .line 367
    .line 368
    const-string v1, "com.narvii.action.WALLET_CHANGED"

    .line 369
    .line 370
    .line 371
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p1, p2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 375
    .line 376
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    .line 377
    .line 378
    new-instance p2, Lcom/narvii/monetization/store/TippingConfirmDialog$3;

    .line 379
    .line 380
    .line 381
    invoke-direct {p2, p0}, Lcom/narvii/monetization/store/TippingConfirmDialog$3;-><init>(Lcom/narvii/monetization/store/TippingConfirmDialog;)V

    .line 382
    .line 383
    .line 384
    invoke-static {p1, p2}, Lcom/narvii/util/SoftKeyboard;->observeKeyboard(Landroid/view/View;Lcom/narvii/util/Callback;)Lcom/narvii/util/SoftKeyboard$KeyboardObserver;

    .line 385
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/widget/PurchaseConfirmButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->confirm:Lcom/narvii/widget/PurchaseConfirmButton;

    return-object p0
.end method

.method static synthetic access$001(Lcom/narvii/monetization/store/TippingConfirmDialog;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/narvii/monetization/store/TippingConfirmDialog;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 4
    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/monetization/store/TippingConfirmDialog;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/monetization/store/TippingConfirmDialog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->maxTippingPrice:I

    return p0
.end method

.method static bridge synthetic d(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/wallet/MembershipService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->membership:Lcom/narvii/wallet/MembershipService;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/monetization/store/TippingConfirmDialog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->minTippingPrice:I

    return p0
.end method

.method static bridge synthetic f(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method private fetchTipperMembers()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->isFetchTipperList:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippable:Lcom/narvii/model/Tippable;

    .line 8
    .line 9
    instance-of v1, v0, Lcom/narvii/model/NVObject;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    return-void

    .line 13
    :cond_1
    const/4 v1, 0x1

    .line 14
    .line 15
    iput-boolean v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->isFetchTipperList:Z

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/model/NVObject;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v3, "/"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v0, "/tipping/tipped-users-summary"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 58
    move-result-object v0

    .line 59
    const/4 v1, 0x0

    .line 60
    .line 61
    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    const-string v2, "start"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    const/16 v1, 0xf

    .line 72
    .line 73
    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    const-string v2, "size"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    iget-object v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippable:Lcom/narvii/model/Tippable;

    .line 84
    .line 85
    instance-of v2, v1, Lcom/narvii/model/CommunityObjectInGlobal;

    .line 86
    .line 87
    if-eqz v2, :cond_2

    .line 88
    .line 89
    check-cast v1, Lcom/narvii/model/CommunityObjectInGlobal;

    .line 90
    .line 91
    .line 92
    invoke-interface {v1}, Lcom/narvii/model/CommunityObjectInGlobal;->getNdcId()I

    .line 93
    move-result v1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 97
    .line 98
    :cond_2
    iget-object v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 99
    .line 100
    const-string v2, "api"

    .line 101
    .line 102
    .line 103
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    new-instance v2, Lcom/narvii/monetization/store/TippingConfirmDialog$6;

    .line 113
    .line 114
    const-class v3, Lcom/narvii/tipping/model/TipLogListResponse;

    .line 115
    .line 116
    .line 117
    invoke-direct {v2, p0, v3}, Lcom/narvii/monetization/store/TippingConfirmDialog$6;-><init>(Lcom/narvii/monetization/store/TippingConfirmDialog;Ljava/lang/Class;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 121
    return-void
.end method

.method static bridge synthetic g(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tipSuccessListener:Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;

    return-object p0
.end method

.method private getTargetTippingPrice()I
    .locals 1

    iget v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->curSelect:I

    .line 1
    invoke-direct {p0, v0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->getTargetTippingPrice(I)I

    move-result v0

    return v0
.end method

.method private getTargetTippingPrice(I)I
    .locals 1

    sget v0, Lcom/narvii/monetization/store/TippingConfirmDialog;->TIPPING_SELECT_CUSTOM:I

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    .line 2
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->defaultTippingPrice:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->defaultTippingPrice:Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/TippingOption;

    iget p1, p1, Lcom/narvii/model/TippingOption;->value:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getTippableNdcId()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippable:Lcom/narvii/model/Tippable;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/model/CommunityObjectInGlobal;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/model/CommunityObjectInGlobal;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lcom/narvii/model/CommunityObjectInGlobal;->getNdcId()I

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 16
    .line 17
    const-string v1, "config"

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 27
    move-result v0

    .line 28
    return v0
.end method

.method static bridge synthetic h(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/model/Tippable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippable:Lcom/narvii/model/Tippable;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/narvii/monetization/store/TippingConfirmDialog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippersCount:I

    return p0
.end method

.method static bridge synthetic j(Lcom/narvii/monetization/store/TippingConfirmDialog;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingContentView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic k(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/monetization/store/view/TippingFeedbackView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingFeedbackView:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    return-object p0
.end method

.method static bridge synthetic l(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/model/User;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->userInfo:Lcom/narvii/model/User;

    return-object p0
.end method

.method static bridge synthetic m(Lcom/narvii/monetization/store/TippingConfirmDialog;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->isKeyboardOn:Z

    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/monetization/store/TippingConfirmDialog;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippersCount:I

    return-void
.end method

.method static bridge synthetic o(Lcom/narvii/monetization/store/TippingConfirmDialog;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippersList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic p(Lcom/narvii/monetization/store/TippingConfirmDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->showJoinCommunityDialog()V

    return-void
.end method

.method static bridge synthetic q(Lcom/narvii/monetization/store/TippingConfirmDialog;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->showPurchaseCoinDialog(Z)V

    return-void
.end method

.method static bridge synthetic r(Lcom/narvii/monetization/store/TippingConfirmDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->updateTippingMembers()V

    return-void
.end method

.method static bridge synthetic s(Lcom/narvii/monetization/store/TippingConfirmDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->updateWallet()V

    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setTippableInfo(Lcom/narvii/model/Tippable;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-interface {p1}, Lcom/narvii/model/Tippable;->getTipAuthor()Lcom/narvii/model/User;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->userInfo:Lcom/narvii/model/User;

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lcom/narvii/model/Tippable;->getTippingInfo()Lcom/narvii/model/TippingInfo;

    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x1

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    const/4 p1, -0x1

    .line 18
    .line 19
    iput p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippersCount:I

    .line 20
    .line 21
    const/16 p1, 0x64

    .line 22
    .line 23
    iput p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->maxTippingPrice:I

    .line 24
    .line 25
    iput v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->minTippingPrice:I

    .line 26
    return-void

    .line 27
    .line 28
    :cond_1
    iget v1, p1, Lcom/narvii/model/TippingInfo;->tippersCount:I

    .line 29
    .line 30
    iput v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippersCount:I

    .line 31
    .line 32
    iget v1, p1, Lcom/narvii/model/TippingInfo;->tipMinCoin:I

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 36
    move-result v0

    .line 37
    .line 38
    iput v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->minTippingPrice:I

    .line 39
    .line 40
    iget v1, p1, Lcom/narvii/model/TippingInfo;->tipMaxCoin:I

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 44
    move-result v0

    .line 45
    .line 46
    iput v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->maxTippingPrice:I

    .line 47
    .line 48
    iget-object v0, p1, Lcom/narvii/model/TippingInfo;->tipOptionList:Ljava/util/List;

    .line 49
    .line 50
    if-nez v0, :cond_2

    .line 51
    return-void

    .line 52
    .line 53
    :cond_2
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->defaultTippingPrice:Ljava/util/List;

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->defaultTippingPrice:Ljava/util/List;

    .line 59
    .line 60
    iget-object v1, p1, Lcom/narvii/model/TippingInfo;->tipOptionList:Ljava/util/List;

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 64
    .line 65
    iget-object p1, p1, Lcom/narvii/model/TippingInfo;->tipCustomOption:Lcom/narvii/model/TippingOption;

    .line 66
    .line 67
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingOption:Lcom/narvii/model/TippingOption;

    .line 68
    return-void
.end method

.method private showJoinCommunityDialog()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->getTippableNdcId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    new-instance v1, Lcom/narvii/widget/ACMAlertDialog;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    const v2, 0x7f1207fb

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    const v3, 0x7f1201e2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    const v3, -0x444445

    .line 34
    const/4 v4, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2, v3, v4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 38
    .line 39
    new-instance v2, Lcom/narvii/monetization/store/TippingConfirmDialog$7;

    .line 40
    .line 41
    .line 42
    invoke-direct {v2, p0, v0}, Lcom/narvii/monetization/store/TippingConfirmDialog$7;-><init>(Lcom/narvii/monetization/store/TippingConfirmDialog;I)V

    .line 43
    .line 44
    .line 45
    const v0, 0x7f120b5d

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    .line 52
    return-void
.end method

.method private showPurchaseCoinDialog(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/wallet/PurchaseCoinFragment;->show(Lcom/narvii/app/NVContext;Z)V

    .line 6
    return-void
.end method

.method private updateDefaultPriceView()V
    .locals 7

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0416

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Landroid/view/ViewGroup;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->defaultPriceViews:Ljava/util/List;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 15
    const/4 v1, 0x0

    .line 16
    move v2, v1

    .line 17
    .line 18
    :goto_0
    iget-object v3, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->defaultTippingPrice:Ljava/util/List;

    .line 19
    .line 20
    .line 21
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 22
    move-result v3

    .line 23
    .line 24
    if-ge v2, v3, :cond_0

    .line 25
    .line 26
    iget-object v3, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->defaultTippingPrice:Ljava/util/List;

    .line 27
    .line 28
    .line 29
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    check-cast v3, Lcom/narvii/model/TippingOption;

    .line 33
    .line 34
    iget-object v4, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->inflater:Landroid/view/LayoutInflater;

    .line 35
    .line 36
    .line 37
    const v5, 0x7f0d074f

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 41
    move-result-object v4

    .line 42
    .line 43
    .line 44
    const v5, 0x7f0a0e9b

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object v5

    .line 49
    .line 50
    check-cast v5, Landroid/widget/TextView;

    .line 51
    .line 52
    iget v6, v3, Lcom/narvii/model/TippingOption;->value:I

    .line 53
    .line 54
    .line 55
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 56
    move-result-object v6

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    const v5, 0x7f0a0e99

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object v5

    .line 67
    .line 68
    check-cast v5, Lcom/narvii/widget/NVImageView;

    .line 69
    .line 70
    iget-object v3, v3, Lcom/narvii/model/TippingOption;->icon:Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v3

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    .line 85
    iget-object v3, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->defaultPriceViews:Ljava/util/List;

    .line 86
    .line 87
    .line 88
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 92
    .line 93
    new-instance v3, Landroid/view/View;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 97
    move-result-object v4

    .line 98
    .line 99
    .line 100
    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 101
    .line 102
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 106
    move-result-object v5

    .line 107
    .line 108
    const/high16 v6, 0x41400000    # 12.0f

    .line 109
    .line 110
    .line 111
    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 112
    move-result v5

    .line 113
    float-to-int v5, v5

    .line 114
    const/4 v6, 0x1

    .line 115
    .line 116
    .line 117
    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 124
    .line 125
    add-int/lit8 v2, v2, 0x1

    .line 126
    goto :goto_0

    .line 127
    :cond_0
    return-void
.end method

.method private updatePrice(I)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->getTargetTippingPrice(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->confirm:Lcom/narvii/widget/PurchaseConfirmButton;

    .line 7
    .line 8
    iget v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->minTippingPrice:I

    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    .line 12
    if-lt v0, v2, :cond_0

    .line 13
    .line 14
    iget v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->maxTippingPrice:I

    .line 15
    .line 16
    if-gt v0, v2, :cond_0

    .line 17
    move v0, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v4

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v1, v0}, Lcom/narvii/widget/PurchaseConfirmButton;->setEnabled(Z)V

    .line 23
    .line 24
    iget v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->curSelect:I

    .line 25
    .line 26
    if-ne p1, v0, :cond_1

    .line 27
    return-void

    .line 28
    .line 29
    :cond_1
    iput p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->curSelect:I

    .line 30
    const/4 v0, 0x0

    .line 31
    .line 32
    iput-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingTransactionId:Ljava/lang/String;

    .line 33
    move v0, v4

    .line 34
    .line 35
    :goto_1
    iget-object v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->defaultPriceViews:Ljava/util/List;

    .line 36
    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 39
    move-result v1

    .line 40
    .line 41
    if-ge v0, v1, :cond_3

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->defaultPriceViews:Ljava/util/List;

    .line 44
    .line 45
    .line 46
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    check-cast v1, Landroid/view/View;

    .line 50
    .line 51
    if-ne v0, p1, :cond_2

    .line 52
    move v2, v3

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move v2, v4

    .line 55
    .line 56
    .line 57
    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 58
    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 60
    goto :goto_1

    .line 61
    .line 62
    :cond_3
    sget v0, Lcom/narvii/monetization/store/TippingConfirmDialog;->TIPPING_SELECT_CUSTOM:I

    .line 63
    .line 64
    const/16 v1, 0x8

    .line 65
    .line 66
    .line 67
    const v2, 0x7f0a0e92

    .line 68
    .line 69
    if-ne p1, v0, :cond_4

    .line 70
    .line 71
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPrice:Landroid/view/View;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 75
    .line 76
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPrice:Landroid/view/View;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 89
    goto :goto_3

    .line 90
    .line 91
    :cond_4
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPrice:Landroid/view/View;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 95
    .line 96
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPrice:Landroid/view/View;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 104
    .line 105
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    :goto_3
    return-void
.end method

.method private updateTippingMembers()V
    .locals 7

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippersCount:I

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    if-gtz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingMembersView:Landroid/view/View;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingMembersView:Landroid/view/View;

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingMembersCount:Landroid/widget/TextView;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    iget v4, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippersCount:I

    .line 27
    .line 28
    .line 29
    const v5, 0x7f120e04

    .line 30
    .line 31
    .line 32
    const v6, 0x7f120d36

    .line 33
    .line 34
    .line 35
    invoke-static {v3, v4, v5, v6}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippersList:Ljava/util/List;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingMembersList:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingMembersList:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippersList:Ljava/util/List;

    .line 59
    .line 60
    iget v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippersCount:I

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserList(Ljava/util/List;I)V

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingMembersList:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->isFetchTipperList:Z

    .line 72
    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->fetchTipperMembers()V

    .line 77
    :cond_2
    return-void
.end method

.method private updateViews()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->updateTippingMembers()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->updateDefaultPriceView()V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->defaultTippingPrice:Ljava/util/List;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget v0, Lcom/narvii/monetization/store/TippingConfirmDialog;->TIPPING_SELECT_CUSTOM:I

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-direct {p0, v0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->updatePrice(I)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->updateWallet()V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->userInfo:Lcom/narvii/model/User;

    .line 28
    const/4 v2, 0x1

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    .line 33
    const v0, 0x7f0a09d2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->userInfo:Lcom/narvii/model/User;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingConfirmTitle:Landroid/widget/TextView;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    new-array v4, v2, [Ljava/lang/Object;

    .line 53
    .line 54
    iget-object v5, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->userInfo:Lcom/narvii/model/User;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 58
    move-result-object v5

    .line 59
    .line 60
    aput-object v5, v4, v1

    .line 61
    .line 62
    .line 63
    const v5, 0x7f1211ba

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    move-result-object v3

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingIcon:Lcom/narvii/widget/NVImageView;

    .line 73
    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    iget-object v3, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingOption:Lcom/narvii/model/TippingOption;

    .line 77
    .line 78
    if-eqz v3, :cond_2

    .line 79
    .line 80
    iget-object v3, v3, Lcom/narvii/model/TippingOption;->icon:Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 84
    .line 85
    :cond_2
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 89
    move-result-object v3

    .line 90
    const/4 v4, 0x2

    .line 91
    .line 92
    new-array v4, v4, [Ljava/lang/Object;

    .line 93
    .line 94
    iget v5, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->minTippingPrice:I

    .line 95
    .line 96
    .line 97
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    move-result-object v5

    .line 99
    .line 100
    aput-object v5, v4, v1

    .line 101
    .line 102
    iget v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->maxTippingPrice:I

    .line 103
    .line 104
    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    aput-object v1, v4, v2

    .line 109
    .line 110
    .line 111
    const v1, 0x7f1211b8

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 119
    return-void
.end method

.method private updateWallet()V
    .locals 4

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0f63

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Landroid/widget/TextView;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    sget-object v1, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->membership:Lcom/narvii/wallet/MembershipService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/narvii/wallet/MembershipService;->walletBalance()I

    .line 20
    move-result v2

    .line 21
    int-to-long v2, v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 8
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :catch_0
    const p1, 0x7fffffff

    .line 13
    .line 14
    :goto_0
    iget v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->maxTippingPrice:I

    .line 15
    .line 16
    if-gt p1, v0, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->minTippingPrice:I

    .line 19
    .line 20
    if-ge p1, v0, :cond_0

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    .line 24
    const/4 v0, -0x1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    goto :goto_2

    .line 29
    .line 30
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    .line 31
    .line 32
    const/high16 v0, -0x10000

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    .line 37
    :goto_2
    sget p1, Lcom/narvii/monetization/store/TippingConfirmDialog;->TIPPING_SELECT_CUSTOM:I

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->updatePrice(I)V

    .line 41
    const/4 p1, 0x0

    .line 42
    .line 43
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingTransactionId:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingContentView:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$001(Lcom/narvii/monetization/store/TippingConfirmDialog;)V

    .line 12
    return-void

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    const v1, 0x7f01005e

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    new-instance v1, Lcom/narvii/monetization/store/TippingConfirmDialog$4;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/narvii/monetization/store/TippingConfirmDialog$4;-><init>(Lcom/narvii/monetization/store/TippingConfirmDialog;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingContentView:Landroid/view/View;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 37
    return-void
.end method

.method public doSubmit()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->getTargetTippingPrice()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sget-object v1, Lcom/narvii/logging/ActSemantic;->purchase:Lcom/narvii/logging/ActSemantic;

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    const-string v2, "SendButton"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    iget-object v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->userInfo:Lcom/narvii/model/User;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    const-string v2, "amount"

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->getTippableNdcId()I

    .line 39
    move-result v1

    .line 40
    .line 41
    iget-object v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 42
    .line 43
    const-string v3, "affiliations"

    .line 44
    .line 45
    .line 46
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    check-cast v2, Lcom/narvii/community/AffiliationsService;

    .line 50
    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 55
    move-result v1

    .line 56
    .line 57
    if-nez v1, :cond_0

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->showJoinCommunityDialog()V

    .line 61
    return-void

    .line 62
    .line 63
    :cond_0
    iget v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->minTippingPrice:I

    .line 64
    .line 65
    if-ge v0, v1, :cond_1

    .line 66
    return-void

    .line 67
    .line 68
    .line 69
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 74
    .line 75
    iget-object v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippable:Lcom/narvii/model/Tippable;

    .line 76
    .line 77
    instance-of v3, v2, Lcom/narvii/model/CommunityObjectInGlobal;

    .line 78
    .line 79
    if-eqz v3, :cond_2

    .line 80
    .line 81
    check-cast v2, Lcom/narvii/model/CommunityObjectInGlobal;

    .line 82
    .line 83
    .line 84
    invoke-interface {v2}, Lcom/narvii/model/CommunityObjectInGlobal;->getNdcId()I

    .line 85
    move-result v2

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 89
    .line 90
    :cond_2
    iget-object v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippable:Lcom/narvii/model/Tippable;

    .line 91
    .line 92
    instance-of v3, v2, Lcom/narvii/model/Item;

    .line 93
    .line 94
    const-string v4, "/tipping"

    .line 95
    .line 96
    if-eqz v3, :cond_3

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 100
    .line 101
    iget-object v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippable:Lcom/narvii/model/Tippable;

    .line 102
    .line 103
    instance-of v3, v2, Lcom/narvii/model/NVObject;

    .line 104
    .line 105
    if-eqz v3, :cond_5

    .line 106
    .line 107
    check-cast v2, Lcom/narvii/model/NVObject;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 111
    move-result-object v2

    .line 112
    .line 113
    const-string v3, "objectId"

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 117
    .line 118
    iget-object v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippable:Lcom/narvii/model/Tippable;

    .line 119
    .line 120
    check-cast v2, Lcom/narvii/model/NVObject;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->objectType()I

    .line 124
    move-result v2

    .line 125
    .line 126
    .line 127
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    move-result-object v2

    .line 129
    .line 130
    const-string v3, "objectType"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 134
    goto :goto_0

    .line 135
    .line 136
    :cond_3
    instance-of v2, v2, Lcom/narvii/model/NVObject;

    .line 137
    .line 138
    if-eqz v2, :cond_4

    .line 139
    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    iget-object v3, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippable:Lcom/narvii/model/Tippable;

    .line 146
    .line 147
    check-cast v3, Lcom/narvii/model/NVObject;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    .line 151
    move-result-object v3

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v3, "/"

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    iget-object v3, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippable:Lcom/narvii/model/Tippable;

    .line 162
    .line 163
    check-cast v3, Lcom/narvii/model/NVObject;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 167
    move-result-object v3

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    move-result-object v2

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 181
    goto :goto_0

    .line 182
    .line 183
    :cond_4
    const-string v2, "unknown tippable"

    .line 184
    .line 185
    .line 186
    invoke-static {v2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 187
    .line 188
    :cond_5
    :goto_0
    const-string v2, "coins"

    .line 189
    .line 190
    .line 191
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    move-result-object v3

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 196
    .line 197
    .line 198
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 199
    move-result-object v2

    .line 200
    .line 201
    iget-object v3, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingTransactionId:Ljava/lang/String;

    .line 202
    .line 203
    if-nez v3, :cond_6

    .line 204
    .line 205
    .line 206
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 207
    move-result-object v3

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 211
    move-result-object v3

    .line 212
    .line 213
    iput-object v3, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingTransactionId:Ljava/lang/String;

    .line 214
    .line 215
    :cond_6
    const-string v3, "transactionId"

    .line 216
    .line 217
    iget-object v4, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingTransactionId:Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2, v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 221
    .line 222
    const-string v3, "tippingContext"

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 226
    .line 227
    const/16 v2, 0xe6

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->selfHandleErrorCode(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 231
    .line 232
    iget-object v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->confirm:Lcom/narvii/widget/PurchaseConfirmButton;

    .line 233
    const/4 v3, 0x1

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2, v3}, Lcom/narvii/widget/PurchaseConfirmButton;->updateSendingStatus(Z)V

    .line 237
    .line 238
    iget-object v2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 239
    .line 240
    const-string v3, "api"

    .line 241
    .line 242
    .line 243
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 244
    move-result-object v2

    .line 245
    .line 246
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 250
    move-result-object v1

    .line 251
    .line 252
    new-instance v3, Lcom/narvii/monetization/store/TippingConfirmDialog$5;

    .line 253
    .line 254
    const-class v4, Lcom/narvii/model/api/ApiResponse;

    .line 255
    .line 256
    .line 257
    invoke-direct {v3, p0, v4, v0}, Lcom/narvii/monetization/store/TippingConfirmDialog$5;-><init>(Lcom/narvii/monetization/store/TippingConfirmDialog;Ljava/lang/Class;I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 261
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
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->receiver:Landroid/content/BroadcastReceiver;

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

    const-string v0, "props_giving_dialog"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

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
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    sparse-switch v0, :sswitch_data_0

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    .line 16
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-eqz v0, :cond_5

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    instance-of v0, v0, Ljava/lang/Integer;

    .line 26
    .line 27
    if-eqz v0, :cond_5

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    check-cast p1, Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 37
    move-result p1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->updatePrice(I)V

    .line 46
    .line 47
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :sswitch_1
    sget-object p1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 60
    .line 61
    .line 62
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    const-string v0, "PropsGiverList"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 73
    .line 74
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingHelper:Lcom/narvii/tipping/TippingHelper;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippable:Lcom/narvii/model/Tippable;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0, v1}, Lcom/narvii/tipping/TippingHelper;->openTippingList(Lcom/narvii/model/Tippable;Lcom/narvii/model/Community;)V

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :sswitch_2
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->userInfo:Lcom/narvii/model/User;

    .line 83
    .line 84
    if-nez p1, :cond_1

    .line 85
    return-void

    .line 86
    .line 87
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->nvContext:Lcom/narvii/app/NVContext;

    .line 88
    .line 89
    .line 90
    invoke-static {v0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->userInfo:Lcom/narvii/model/User;

    .line 94
    .line 95
    iget v0, v0, Lcom/narvii/model/User;->ndcId:I

    .line 96
    const/4 v1, -0x1

    .line 97
    .line 98
    if-eq v0, v1, :cond_2

    .line 99
    .line 100
    const-string v1, "__communityId"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    .line 105
    :cond_2
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->communityHelper:Lcom/narvii/community/CommunityHelper;

    .line 106
    .line 107
    iget-object v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->userInfo:Lcom/narvii/model/User;

    .line 108
    .line 109
    iget v1, v1, Lcom/narvii/model/User;->ndcId:I

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityHelper;->checkCommunityJoined(I)Z

    .line 113
    move-result v0

    .line 114
    .line 115
    if-nez v0, :cond_3

    .line 116
    return-void

    .line 117
    .line 118
    .line 119
    :cond_3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    .line 123
    invoke-static {v0, p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 124
    goto :goto_0

    .line 125
    .line 126
    :sswitch_3
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 127
    .line 128
    .line 129
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 130
    move-result-object p1

    .line 131
    .line 132
    const-string v0, "GetCoinsButton"

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 136
    move-result-object p1

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 140
    const/4 p1, 0x0

    .line 141
    .line 142
    .line 143
    invoke-direct {p0, p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->showPurchaseCoinDialog(Z)V

    .line 144
    goto :goto_0

    .line 145
    .line 146
    :sswitch_4
    sget p1, Lcom/narvii/monetization/store/TippingConfirmDialog;->TIPPING_SELECT_CUSTOM:I

    .line 147
    .line 148
    .line 149
    invoke-direct {p0, p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->updatePrice(I)V

    .line 150
    .line 151
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    .line 152
    .line 153
    .line 154
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 155
    goto :goto_0

    .line 156
    .line 157
    :sswitch_5
    iget-boolean p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->isKeyboardOn:Z

    .line 158
    .line 159
    if-eqz p1, :cond_4

    .line 160
    .line 161
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->customTippingPriceInput:Landroid/widget/EditText;

    .line 162
    .line 163
    .line 164
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 165
    goto :goto_0

    .line 166
    .line 167
    .line 168
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->dismiss()V

    .line 169
    goto :goto_0

    .line 170
    .line 171
    :sswitch_6
    const-class p1, Lcom/narvii/wallet/WalletRecyclerFragment;

    .line 172
    .line 173
    .line 174
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 175
    move-result-object p1

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 179
    move-result-object v0

    .line 180
    .line 181
    .line 182
    invoke-static {v0, p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 183
    :cond_5
    :goto_0
    return-void

    .line 184
    nop

    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    :sswitch_data_0
    .sparse-switch
        0x7f0a0107 -> :sswitch_6
        0x7f0a0170 -> :sswitch_6
        0x7f0a0316 -> :sswitch_5
        0x7f0a0400 -> :sswitch_4
        0x7f0a0614 -> :sswitch_3
        0x7f0a09d2 -> :sswitch_2
        0x7f0a0e98 -> :sswitch_1
        0x7f0a0e9a -> :sswitch_0
        0x7f0a0f63 -> :sswitch_6
    .end sparse-switch
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    sget p1, Lcom/narvii/monetization/store/TippingConfirmDialog;->TIPPING_SELECT_CUSTOM:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->updatePrice(I)V

    .line 8
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public setTipSuccessListener(Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tipSuccessListener:Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;

    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->updateViews()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->membership:Lcom/narvii/wallet/MembershipService;

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
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingContentView:Landroid/view/View;

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    const v1, 0x7f010059

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog;->tippingContentView:Landroid/view/View;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 35
    return-void
.end method
