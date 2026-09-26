.class Lcom/narvii/wallet/CoinHistoryFragment$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/CoinHistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/wallet/CoinHistory;",
        "Lcom/narvii/wallet/CoinHistoryListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field fmt:Ljava/text/DateFormat;

.field final synthetic this$0:Lcom/narvii/wallet/CoinHistoryFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/wallet/CoinHistoryFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/CoinHistoryFragment$Adapter;->this$0:Lcom/narvii/wallet/CoinHistoryFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    const/4 p1, 0x3

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/wallet/CoinHistoryFragment$Adapter;->fmt:Ljava/text/DateFormat;

    .line 13
    return-void
.end method

.method private getCornerRadius(Lcom/narvii/wallet/CoinHistory;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget p1, p1, Lcom/narvii/wallet/CoinHistory;->sourceType:I

    .line 7
    .line 8
    const/16 v1, 0x10

    .line 9
    .line 10
    if-ne p1, v1, :cond_1

    .line 11
    .line 12
    const/16 p1, 0x2710

    .line 13
    return p1

    .line 14
    :cond_1
    return v0
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
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/wallet/CoinHistoryFragment$Adapter;->this$0:Lcom/narvii/wallet/CoinHistoryFragment;

    .line 11
    .line 12
    iget-boolean v0, v0, Lcom/narvii/wallet/CoinHistoryFragment;->businessWallet:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v0, "/wallet/business-coin/history"

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    const-string v0, "/wallet/coin/history"

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/wallet/CoinHistory;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/wallet/CoinHistory;

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 1
    .line 2
    check-cast p1, Lcom/narvii/wallet/CoinHistory;

    .line 3
    .line 4
    .line 5
    const v0, 0x7f0d07a3

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    const p3, 0x7f0a06d5

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p3

    .line 17
    .line 18
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/wallet/CoinHistory;->icon()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget v1, p1, Lcom/narvii/wallet/CoinHistory;->sourceType:I

    .line 25
    .line 26
    const/16 v2, 0x10

    .line 27
    const/4 v3, 0x0

    .line 28
    .line 29
    if-ne v1, v2, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/wallet/CoinHistoryFragment$Adapter;->this$0:Lcom/narvii/wallet/CoinHistoryFragment;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    const v2, 0x7f080a0e

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/wallet/CoinHistoryFragment$Adapter;->this$0:Lcom/narvii/wallet/CoinHistoryFragment;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setErrorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    goto :goto_0

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-virtual {p3, v3}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3, v3}, Lcom/narvii/widget/NVImageView;->setErrorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, p1}, Lcom/narvii/wallet/CoinHistoryFragment$Adapter;->getCornerRadius(Lcom/narvii/wallet/CoinHistory;)I

    .line 72
    move-result v0

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setCornerRadius(I)V

    .line 76
    .line 77
    .line 78
    const p3, 0x7f0a0e9e

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    move-result-object p3

    .line 83
    .line 84
    check-cast p3, Landroid/widget/TextView;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/narvii/wallet/CoinHistory;->description()Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    const p3, 0x7f0a0e51

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    move-result-object p3

    .line 99
    .line 100
    check-cast p3, Landroid/widget/TextView;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/narvii/wallet/CoinHistory;->subtitle()Ljava/lang/String;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/narvii/wallet/CoinHistory;->subtitle()Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    .line 114
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 115
    move-result v0

    .line 116
    const/4 v1, 0x0

    .line 117
    .line 118
    if-eqz v0, :cond_1

    .line 119
    .line 120
    const/16 v0, 0x8

    .line 121
    goto :goto_1

    .line 122
    :cond_1
    move v0, v1

    .line 123
    .line 124
    .line 125
    :goto_1
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    const p3, 0x7f0a0408

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    move-result-object p3

    .line 133
    .line 134
    check-cast p3, Landroid/widget/TextView;

    .line 135
    .line 136
    iget-object v0, p1, Lcom/narvii/wallet/CoinHistory;->createdTime:Ljava/util/Date;

    .line 137
    .line 138
    if-nez v0, :cond_2

    .line 139
    goto :goto_2

    .line 140
    .line 141
    :cond_2
    iget-object v2, p0, Lcom/narvii/wallet/CoinHistoryFragment$Adapter;->fmt:Ljava/text/DateFormat;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 145
    move-result-object v3

    .line 146
    .line 147
    .line 148
    :goto_2
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    const p3, 0x7f0a010e

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    move-result-object p3

    .line 156
    .line 157
    check-cast p3, Landroid/widget/TextView;

    .line 158
    .line 159
    iget-wide v2, p1, Lcom/narvii/wallet/CoinHistory;->originCoinsFloat:D

    .line 160
    .line 161
    const-wide/16 v4, 0x0

    .line 162
    .line 163
    cmpl-double v0, v2, v4

    .line 164
    .line 165
    const-string v6, "+"

    .line 166
    .line 167
    if-ltz v0, :cond_3

    .line 168
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    iget-wide v2, p1, Lcom/narvii/wallet/CoinHistory;->originCoinsFloat:D

    .line 178
    .line 179
    .line 180
    invoke-static {v2, v3}, Lcom/narvii/wallet/IabUtils;->formatCoins(D)Ljava/lang/String;

    .line 181
    move-result-object v2

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object v0

    .line 189
    .line 190
    .line 191
    const v2, -0xa13450

    .line 192
    goto :goto_3

    .line 193
    .line 194
    .line 195
    :cond_3
    invoke-static {v2, v3}, Lcom/narvii/wallet/IabUtils;->formatCoins(D)Ljava/lang/String;

    .line 196
    move-result-object v0

    .line 197
    .line 198
    .line 199
    const v2, -0xa6a1

    .line 200
    .line 201
    .line 202
    :goto_3
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    .line 207
    .line 208
    const p3, 0x7f0a0e3c

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 212
    move-result-object p3

    .line 213
    .line 214
    check-cast p3, Landroid/widget/TextView;

    .line 215
    .line 216
    iget-object v0, p0, Lcom/narvii/wallet/CoinHistoryFragment$Adapter;->this$0:Lcom/narvii/wallet/CoinHistoryFragment;

    .line 217
    const/4 v2, 0x1

    .line 218
    .line 219
    new-array v3, v2, [Ljava/lang/Object;

    .line 220
    .line 221
    iget-wide v7, p1, Lcom/narvii/wallet/CoinHistory;->taxCoinsFloat:D

    .line 222
    .line 223
    .line 224
    invoke-static {v7, v8}, Lcom/narvii/wallet/IabUtils;->formatCoins(D)Ljava/lang/String;

    .line 225
    move-result-object v7

    .line 226
    .line 227
    aput-object v7, v3, v1

    .line 228
    .line 229
    .line 230
    const v7, 0x7f1211a2

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v7, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 234
    move-result-object v0

    .line 235
    .line 236
    .line 237
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    .line 239
    iget-wide v7, p1, Lcom/narvii/wallet/CoinHistory;->taxCoinsFloat:D

    .line 240
    .line 241
    cmpl-double v0, v7, v4

    .line 242
    .line 243
    if-eqz v0, :cond_4

    .line 244
    move v0, v2

    .line 245
    goto :goto_4

    .line 246
    :cond_4
    move v0, v1

    .line 247
    .line 248
    .line 249
    :goto_4
    invoke-static {p3, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 250
    .line 251
    .line 252
    const p3, 0x7f0a0106

    .line 253
    .line 254
    .line 255
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 256
    move-result-object p3

    .line 257
    .line 258
    check-cast p3, Landroid/widget/TextView;

    .line 259
    .line 260
    iget-object v0, p0, Lcom/narvii/wallet/CoinHistoryFragment$Adapter;->this$0:Lcom/narvii/wallet/CoinHistoryFragment;

    .line 261
    .line 262
    new-array v3, v2, [Ljava/lang/Object;

    .line 263
    .line 264
    new-instance v7, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1}, Lcom/narvii/wallet/CoinHistory;->getBonusCoinsFloat()D

    .line 274
    move-result-wide v8

    .line 275
    .line 276
    .line 277
    invoke-static {v8, v9}, Lcom/narvii/wallet/IabUtils;->formatCoins(D)Ljava/lang/String;

    .line 278
    move-result-object v6

    .line 279
    .line 280
    .line 281
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    move-result-object v6

    .line 286
    .line 287
    aput-object v6, v3, v1

    .line 288
    .line 289
    .line 290
    const v6, 0x7f12013b

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, v6, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 294
    move-result-object v0

    .line 295
    .line 296
    .line 297
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1}, Lcom/narvii/wallet/CoinHistory;->getBonusCoinsFloat()D

    .line 301
    move-result-wide v6

    .line 302
    .line 303
    cmpl-double p1, v6, v4

    .line 304
    .line 305
    if-eqz p1, :cond_5

    .line 306
    move v1, v2

    .line 307
    .line 308
    .line 309
    :cond_5
    invoke-static {p3, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 310
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/wallet/CoinHistory;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p3, Lcom/narvii/wallet/CoinHistory;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Lcom/narvii/wallet/CoinHistory;->deepLink()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    .line 15
    .line 16
    const-string p3, "android.intent.action.VIEW"

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 24
    .line 25
    const-string p1, "Source"

    .line 26
    .line 27
    iget-object p3, p0, Lcom/narvii/wallet/CoinHistoryFragment$Adapter;->this$0:Lcom/narvii/wallet/CoinHistoryFragment;

    .line 28
    .line 29
    iget-object p3, p3, Lcom/narvii/wallet/CoinHistoryFragment;->source:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    invoke-static {p0, p2}, Lcom/narvii/wallet/CoinHistoryFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :catch_0
    :cond_0
    const/4 p1, 0x1

    .line 37
    return p1

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/wallet/CoinHistoryListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/wallet/CoinHistoryListResponse;

    return-object v0
.end method
