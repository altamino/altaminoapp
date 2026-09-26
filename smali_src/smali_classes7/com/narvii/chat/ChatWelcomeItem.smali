.class public Lcom/narvii/chat/ChatWelcomeItem;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/ChatWelcomeItem$ExpandedClickListener;
    }
.end annotation


# static fields
.field private static final CHARACTER_BEGIN_INDEX:I = 0xfa

.field private static final CHARACTER_INCREASE_STEP:I = 0xc

.field private static final WELCOME_MESSAGE_LINE_LIMIT:I = 0xa


# instance fields
.field private chatMessage:Lcom/narvii/model/ChatMessage;

.field private isExpanded:Z

.field listener:Lcom/narvii/chat/ChatWelcomeItem$ExpandedClickListener;

.field public text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0e51

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/chat/ChatWelcomeItem;->text:Landroid/widget/TextView;

    .line 15
    return-void
.end method

.method public setChatMessage(Lcom/narvii/model/ChatMessage;)V
    .locals 22

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iput-object v1, v0, Lcom/narvii/chat/ChatWelcomeItem;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v1, 0x0

    .line 22
    .line 23
    :goto_0
    new-instance v11, Landroid/text/SpannableStringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 27
    .line 28
    const-string v3, " "

    .line 29
    .line 30
    .line 31
    invoke-virtual {v11, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 32
    .line 33
    new-instance v4, Lcom/narvii/util/CenterAlignImageSpan;

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v5

    .line 38
    .line 39
    .line 40
    const v6, 0x7f0803f8

    .line 41
    .line 42
    .line 43
    invoke-direct {v4, v5, v6}, Lcom/narvii/util/CenterAlignImageSpan;-><init>(Landroid/content/Context;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    .line 47
    move-result v5

    .line 48
    .line 49
    add-int/lit8 v5, v5, -0x1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    .line 53
    move-result v6

    .line 54
    const/4 v12, 0x0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v11, v4, v5, v6, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v11, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    .line 64
    move-result v3

    .line 65
    .line 66
    .line 67
    invoke-virtual {v11, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 68
    .line 69
    const/16 v2, 0x21

    .line 70
    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 75
    move-result v4

    .line 76
    .line 77
    .line 78
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    move-result-object v5

    .line 80
    .line 81
    sget-object v6, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6, v1}, Lcom/narvii/chat/util/ChatHelper$Companion;->getNicknameColor(Ljava/lang/String;)I

    .line 85
    move-result v1

    .line 86
    .line 87
    .line 88
    invoke-static {v5, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 89
    move-result v1

    .line 90
    .line 91
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    .line 92
    .line 93
    .line 94
    invoke-direct {v5, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 95
    add-int/2addr v4, v3

    .line 96
    .line 97
    add-int/lit8 v4, v4, 0x1

    .line 98
    .line 99
    .line 100
    invoke-virtual {v11, v5, v3, v4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 101
    .line 102
    :cond_2
    iget-object v1, v0, Lcom/narvii/chat/ChatWelcomeItem;->text:Landroid/widget/TextView;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 109
    .line 110
    iget-object v3, v0, Lcom/narvii/chat/ChatWelcomeItem;->text:Landroid/widget/TextView;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    .line 114
    move-result v3

    .line 115
    .line 116
    iget-object v4, v0, Lcom/narvii/chat/ChatWelcomeItem;->text:Landroid/widget/TextView;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    .line 120
    move-result v4

    .line 121
    add-int/2addr v3, v4

    .line 122
    .line 123
    .line 124
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 125
    move-result v4

    .line 126
    add-int/2addr v3, v4

    .line 127
    .line 128
    .line 129
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 130
    move-result v4

    .line 131
    add-int/2addr v3, v4

    .line 132
    .line 133
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 134
    add-int/2addr v3, v4

    .line 135
    .line 136
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 137
    add-int/2addr v1, v3

    .line 138
    .line 139
    new-instance v13, Landroid/text/StaticLayout;

    .line 140
    .line 141
    iget-object v3, v0, Lcom/narvii/chat/ChatWelcomeItem;->text:Landroid/widget/TextView;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 145
    move-result-object v5

    .line 146
    .line 147
    .line 148
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 149
    move-result-object v3

    .line 150
    .line 151
    .line 152
    invoke-static {v3}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 153
    move-result v3

    .line 154
    .line 155
    sub-int v6, v3, v1

    .line 156
    .line 157
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 158
    .line 159
    const/high16 v8, 0x3f800000    # 1.0f

    .line 160
    const/4 v9, 0x0

    .line 161
    const/4 v10, 0x1

    .line 162
    move-object v3, v13

    .line 163
    move-object v4, v11

    .line 164
    .line 165
    .line 166
    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v13}, Landroid/text/StaticLayout;->getLineCount()I

    .line 170
    move-result v3

    .line 171
    .line 172
    const/16 v4, 0xa

    .line 173
    .line 174
    if-le v3, v4, :cond_6

    .line 175
    .line 176
    iget-boolean v3, v0, Lcom/narvii/chat/ChatWelcomeItem;->isExpanded:Z

    .line 177
    .line 178
    if-eqz v3, :cond_3

    .line 179
    .line 180
    goto/16 :goto_3

    .line 181
    .line 182
    :cond_3
    new-instance v3, Landroid/text/SpannableStringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-direct {v3, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    new-instance v5, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    const-string v6, "..."

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 199
    move-result-object v6

    .line 200
    .line 201
    .line 202
    const v7, 0x7f12106e

    .line 203
    .line 204
    .line 205
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 206
    move-result-object v6

    .line 207
    .line 208
    .line 209
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    move-result-object v5

    .line 214
    .line 215
    .line 216
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    .line 217
    move-result v6

    .line 218
    .line 219
    const/16 v7, 0xfa

    .line 220
    .line 221
    :goto_1
    move/from16 v21, v7

    .line 222
    move v7, v6

    .line 223
    .line 224
    move/from16 v6, v21

    .line 225
    .line 226
    .line 227
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    .line 228
    move-result v8

    .line 229
    .line 230
    .line 231
    const v9, -0xb56f1e

    .line 232
    .line 233
    if-ge v6, v8, :cond_5

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v11, v12, v6}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    .line 240
    move-result-object v7

    .line 241
    .line 242
    .line 243
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 244
    move-result-object v7

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 251
    move-result-object v7

    .line 252
    .line 253
    .line 254
    invoke-static {v7, v3, v9}, Lcom/narvii/chat/ChatMessageItem;->appendSeeAll(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)V

    .line 255
    .line 256
    new-instance v7, Landroid/text/StaticLayout;

    .line 257
    .line 258
    iget-object v8, v0, Lcom/narvii/chat/ChatWelcomeItem;->text:Landroid/widget/TextView;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 262
    move-result-object v15

    .line 263
    .line 264
    .line 265
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 266
    move-result-object v8

    .line 267
    .line 268
    .line 269
    invoke-static {v8}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 270
    move-result v8

    .line 271
    .line 272
    sub-int v16, v8, v1

    .line 273
    .line 274
    sget-object v17, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 275
    .line 276
    const/high16 v18, 0x3f800000    # 1.0f

    .line 277
    .line 278
    const/16 v19, 0x0

    .line 279
    .line 280
    const/16 v20, 0x1

    .line 281
    move-object v13, v7

    .line 282
    move-object v14, v3

    .line 283
    .line 284
    .line 285
    invoke-direct/range {v13 .. v20}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getLineCount()I

    .line 289
    move-result v7

    .line 290
    .line 291
    if-lt v7, v4, :cond_4

    .line 292
    goto :goto_2

    .line 293
    .line 294
    :cond_4
    add-int/lit8 v7, v6, 0xc

    .line 295
    goto :goto_1

    .line 296
    :cond_5
    move v6, v7

    .line 297
    .line 298
    .line 299
    :goto_2
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 300
    .line 301
    add-int/lit8 v6, v6, -0xc

    .line 302
    .line 303
    .line 304
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 305
    move-result v1

    .line 306
    add-int/2addr v6, v1

    .line 307
    .line 308
    .line 309
    invoke-virtual {v11, v12, v6}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    .line 310
    move-result-object v1

    .line 311
    .line 312
    .line 313
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 317
    move-result-object v1

    .line 318
    .line 319
    .line 320
    invoke-static {v1, v3, v9}, Lcom/narvii/chat/ChatMessageItem;->appendSeeAll(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)V

    .line 321
    .line 322
    new-instance v1, Lcom/narvii/chat/ChatWelcomeItem$1;

    .line 323
    .line 324
    .line 325
    invoke-direct {v1, v0}, Lcom/narvii/chat/ChatWelcomeItem$1;-><init>(Lcom/narvii/chat/ChatWelcomeItem;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 329
    move-result v4

    .line 330
    .line 331
    .line 332
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 333
    move-result v5

    .line 334
    sub-int/2addr v4, v5

    .line 335
    .line 336
    .line 337
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 338
    move-result v5

    .line 339
    .line 340
    .line 341
    invoke-virtual {v3, v1, v4, v5, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 342
    .line 343
    iget-object v1, v0, Lcom/narvii/chat/ChatWelcomeItem;->text:Landroid/widget/TextView;

    .line 344
    .line 345
    .line 346
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 347
    move-result-object v2

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 351
    .line 352
    iget-object v1, v0, Lcom/narvii/chat/ChatWelcomeItem;->text:Landroid/widget/TextView;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    goto :goto_4

    .line 357
    .line 358
    :cond_6
    :goto_3
    iget-object v1, v0, Lcom/narvii/chat/ChatWelcomeItem;->text:Landroid/widget/TextView;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    :goto_4
    return-void
.end method

.method public setExpandedClickListener(Lcom/narvii/chat/ChatWelcomeItem$ExpandedClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/ChatWelcomeItem;->listener:Lcom/narvii/chat/ChatWelcomeItem$ExpandedClickListener;

    return-void
.end method
