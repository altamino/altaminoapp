.class Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/influencer/FanClubDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FanClubHeaderAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/influencer/FanClubDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/influencer/FanClubDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d03f6

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a0558

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, Landroid/widget/ImageView;

    .line 17
    .line 18
    iget-object p3, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 19
    .line 20
    iget-object p3, p3, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Lcom/narvii/influencer/FanClub;->isActive()Z

    .line 24
    move-result p3

    .line 25
    .line 26
    if-eqz p3, :cond_0

    .line 27
    .line 28
    .line 29
    const p3, 0x7f08045b

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_0
    const p3, 0x7f08045c

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    .line 38
    iget-object p2, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 39
    .line 40
    iget-object p2, p2, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 41
    .line 42
    iget-object p2, p2, Lcom/narvii/influencer/FanClub;->targetUserProfile:Lcom/narvii/model/User;

    .line 43
    .line 44
    .line 45
    const p3, 0x7f0a0e9e

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object p3

    .line 50
    .line 51
    check-cast p3, Landroid/widget/TextView;

    .line 52
    const/4 v0, 0x0

    .line 53
    const/4 v1, 0x0

    .line 54
    const/4 v2, 0x1

    .line 55
    .line 56
    if-nez p2, :cond_1

    .line 57
    move-object p2, v0

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :cond_1
    iget-object v3, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 61
    .line 62
    new-array v4, v2, [Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 66
    move-result-object p2

    .line 67
    .line 68
    aput-object p2, v4, v1

    .line 69
    .line 70
    .line 71
    const p2, 0x7f121034

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, p2, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    move-result-object p2

    .line 76
    .line 77
    .line 78
    :goto_1
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    const p2, 0x7f0a0562

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    move-result-object p2

    .line 86
    .line 87
    check-cast p2, Landroid/widget/TextView;

    .line 88
    .line 89
    iget-object p3, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 90
    .line 91
    .line 92
    invoke-static {p3}, Lcom/narvii/influencer/FanClubDetailFragment;->t(Lcom/narvii/influencer/FanClubDetailFragment;)Ljava/text/DateFormat;

    .line 93
    move-result-object p3

    .line 94
    .line 95
    if-nez p3, :cond_2

    .line 96
    .line 97
    iget-object p3, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 98
    const/4 v3, 0x2

    .line 99
    .line 100
    .line 101
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 102
    move-result-object v4

    .line 103
    .line 104
    .line 105
    invoke-static {v3, v4}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    .line 106
    move-result-object v3

    .line 107
    .line 108
    .line 109
    invoke-static {p3, v3}, Lcom/narvii/influencer/FanClubDetailFragment;->v(Lcom/narvii/influencer/FanClubDetailFragment;Ljava/text/DateFormat;)V

    .line 110
    .line 111
    :cond_2
    iget-object p3, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 112
    .line 113
    iget-object p3, p3, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3}, Lcom/narvii/influencer/FanClub;->isActive()Z

    .line 117
    move-result p3

    .line 118
    .line 119
    if-eqz p3, :cond_4

    .line 120
    .line 121
    iget-object p3, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 122
    .line 123
    iget-object v3, p3, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 124
    .line 125
    iget-object v3, v3, Lcom/narvii/influencer/FanClub;->createdTime:Ljava/util/Date;

    .line 126
    .line 127
    if-nez v3, :cond_3

    .line 128
    move-object p3, v0

    .line 129
    goto :goto_2

    .line 130
    .line 131
    :cond_3
    new-array v3, v2, [Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    invoke-static {p3}, Lcom/narvii/influencer/FanClubDetailFragment;->t(Lcom/narvii/influencer/FanClubDetailFragment;)Ljava/text/DateFormat;

    .line 135
    move-result-object v4

    .line 136
    .line 137
    iget-object v5, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 138
    .line 139
    iget-object v5, v5, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 140
    .line 141
    iget-object v5, v5, Lcom/narvii/influencer/FanClub;->createdTime:Ljava/util/Date;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 145
    move-result-object v4

    .line 146
    .line 147
    aput-object v4, v3, v1

    .line 148
    .line 149
    .line 150
    const v4, 0x7f120739

    .line 151
    .line 152
    .line 153
    invoke-virtual {p3, v4, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 154
    move-result-object p3

    .line 155
    .line 156
    .line 157
    :goto_2
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    goto :goto_3

    .line 159
    .line 160
    :cond_4
    iget-object p3, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 161
    .line 162
    iget-object p3, p3, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p3}, Lcom/narvii/influencer/FanClub;->daysExpired()I

    .line 166
    move-result p3

    .line 167
    .line 168
    if-nez p3, :cond_5

    .line 169
    .line 170
    .line 171
    const p3, 0x7f120733

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 175
    goto :goto_3

    .line 176
    .line 177
    :cond_5
    if-ne p3, v2, :cond_6

    .line 178
    .line 179
    .line 180
    const p3, 0x7f120734

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 184
    goto :goto_3

    .line 185
    .line 186
    :cond_6
    if-le p3, v2, :cond_7

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 190
    move-result-object v3

    .line 191
    .line 192
    new-array v4, v2, [Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    move-result-object p3

    .line 197
    .line 198
    aput-object p3, v4, v1

    .line 199
    .line 200
    .line 201
    const p3, 0x7f120735

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3, p3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 205
    move-result-object p3

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .line 210
    .line 211
    :cond_7
    :goto_3
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 212
    move-result-object p3

    .line 213
    .line 214
    if-eqz p3, :cond_8

    .line 215
    move p3, v2

    .line 216
    goto :goto_4

    .line 217
    :cond_8
    move p3, v1

    .line 218
    .line 219
    .line 220
    :goto_4
    invoke-static {p2, p3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 221
    .line 222
    iget-object p2, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 223
    .line 224
    iget-object p2, p2, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p2}, Lcom/narvii/influencer/FanClub;->isActive()Z

    .line 228
    move-result p2

    .line 229
    .line 230
    if-eqz p2, :cond_b

    .line 231
    .line 232
    iget-object p2, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 233
    .line 234
    iget-object p2, p2, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 235
    .line 236
    iget-boolean p3, p2, Lcom/narvii/influencer/FanClub;->isAutoRenew:Z

    .line 237
    .line 238
    if-nez p3, :cond_b

    .line 239
    .line 240
    .line 241
    invoke-virtual {p2}, Lcom/narvii/influencer/FanClub;->expiringDays()I

    .line 242
    move-result p2

    .line 243
    .line 244
    if-nez p2, :cond_9

    .line 245
    .line 246
    iget-object p2, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 247
    .line 248
    .line 249
    const p3, 0x7f120c8b

    .line 250
    .line 251
    .line 252
    invoke-virtual {p2, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 253
    move-result-object v0

    .line 254
    goto :goto_5

    .line 255
    .line 256
    :cond_9
    if-ne p2, v2, :cond_a

    .line 257
    .line 258
    iget-object p2, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 259
    .line 260
    .line 261
    const p3, 0x7f120c8c

    .line 262
    .line 263
    .line 264
    invoke-virtual {p2, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 265
    move-result-object v0

    .line 266
    goto :goto_5

    .line 267
    .line 268
    :cond_a
    if-lez p2, :cond_b

    .line 269
    const/4 p3, 0x7

    .line 270
    .line 271
    if-gt p2, p3, :cond_b

    .line 272
    .line 273
    iget-object p3, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 274
    .line 275
    new-array v0, v2, [Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    move-result-object p2

    .line 280
    .line 281
    aput-object p2, v0, v1

    .line 282
    .line 283
    .line 284
    const p2, 0x7f120c8d

    .line 285
    .line 286
    .line 287
    invoke-virtual {p3, p2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 288
    move-result-object v0

    .line 289
    .line 290
    .line 291
    :cond_b
    :goto_5
    const p2, 0x7f0a0541

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 295
    move-result-object p2

    .line 296
    .line 297
    check-cast p2, Landroid/widget/TextView;

    .line 298
    .line 299
    .line 300
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    .line 302
    if-eqz v0, :cond_c

    .line 303
    move v1, v2

    .line 304
    .line 305
    .line 306
    :cond_c
    invoke-static {p2, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 307
    .line 308
    .line 309
    const p2, 0x7f0a02cd

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 313
    move-result-object p2

    .line 314
    .line 315
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 316
    .line 317
    .line 318
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    .line 320
    .line 321
    const p2, 0x7f0a0c10

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 325
    move-result-object p2

    .line 326
    .line 327
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 328
    .line 329
    .line 330
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    .line 332
    iget-object p3, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 333
    .line 334
    iget-object p3, p3, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 335
    .line 336
    .line 337
    invoke-virtual {p3}, Lcom/narvii/influencer/FanClub;->isClosed()Z

    .line 338
    move-result p3

    .line 339
    .line 340
    if-eqz p3, :cond_d

    .line 341
    .line 342
    .line 343
    const p3, 0x7f080928

    .line 344
    goto :goto_6

    .line 345
    .line 346
    .line 347
    :cond_d
    const p3, 0x7f080912

    .line 348
    .line 349
    .line 350
    :goto_6
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 351
    .line 352
    iget-object p3, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 353
    .line 354
    iget-object p3, p3, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 355
    .line 356
    iget-boolean p3, p3, Lcom/narvii/influencer/FanClub;->isAutoRenew:Z

    .line 357
    xor-int/2addr p3, v2

    .line 358
    .line 359
    .line 360
    invoke-static {p2, p3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 361
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 7
    move-result v1

    .line 8
    .line 9
    .line 10
    const v2, 0x7f0a02cd

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    const-string p2, "ndc://x"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    iget-object p2, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 25
    .line 26
    iget-object p2, p2, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 27
    .line 28
    iget p2, p2, Lcom/narvii/influencer/FanClub;->ndcId:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string p2, "/"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const/4 p3, 0x0

    .line 38
    .line 39
    .line 40
    invoke-static {p3}, Lcom/narvii/model/NVObject;->objectTypeName(I)Ljava/lang/String;

    .line 41
    move-result-object p4

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    iget-object p2, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 50
    .line 51
    iget-object p2, p2, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 52
    .line 53
    iget-object p2, p2, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    new-instance p2, Landroid/content/Intent;

    .line 63
    .line 64
    const-string p4, "android.intent.action.VIEW"

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-direct {p2, p4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 72
    .line 73
    const-string p1, "__model"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    :try_start_0
    invoke-static {p0, p2}, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :catch_0
    return v0

    .line 81
    .line 82
    :cond_0
    if-eqz p5, :cond_2

    .line 83
    .line 84
    .line 85
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 86
    move-result v1

    .line 87
    .line 88
    .line 89
    const v2, 0x7f0a0c10

    .line 90
    .line 91
    if-ne v1, v2, :cond_2

    .line 92
    .line 93
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 94
    .line 95
    iget-object p1, p1, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/narvii/influencer/FanClub;->isClosed()Z

    .line 99
    move-result p1

    .line 100
    .line 101
    if-eqz p1, :cond_1

    .line 102
    .line 103
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 104
    .line 105
    .line 106
    invoke-static {p1}, Lcom/narvii/influencer/FanClubDetailFragment;->x(Lcom/narvii/influencer/FanClubDetailFragment;)V

    .line 107
    return v0

    .line 108
    .line 109
    :cond_1
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$FanClubHeaderAdapter;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 110
    .line 111
    iget-object p1, p1, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 112
    .line 113
    iget-object p2, p1, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    .line 114
    .line 115
    iget p1, p1, Lcom/narvii/influencer/FanClub;->ndcId:I

    .line 116
    .line 117
    const-string p3, "Fan Club Detailed Page"

    .line 118
    .line 119
    .line 120
    invoke-static {p0, p2, p1, v0, p3}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->showSubscriptionDialog(Lcom/narvii/app/NVContext;Ljava/lang/String;IZLjava/lang/String;)V

    .line 121
    return v0

    .line 122
    .line 123
    .line 124
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 125
    move-result p1

    .line 126
    return p1
.end method
