.class Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/overlay/AvChatMessageListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

.field final synthetic this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/video/overlay/AvChatMessageListView;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/monetization/sticker/StickerHelper;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p1}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 21
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->messageList:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->messageList:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Lcom/narvii/model/ChatMessage;

    .line 11
    .line 12
    iget v0, p1, Lcom/narvii/model/ChatMessage;->type:I

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->hasMedia()Z

    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, 0x2

    .line 21
    .line 22
    if-ne v0, p1, :cond_1

    .line 23
    const/4 p1, 0x0

    .line 24
    return p1

    .line 25
    .line 26
    .line 27
    :cond_1
    const v1, 0xff02

    .line 28
    const/4 v2, 0x3

    .line 29
    .line 30
    if-ne v0, v1, :cond_2

    .line 31
    return v2

    .line 32
    .line 33
    :cond_2
    if-ne v0, v2, :cond_3

    .line 34
    const/4 p1, 0x1

    .line 35
    :cond_3
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 13

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->messageList:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    check-cast p2, Lcom/narvii/model/ChatMessage;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 26
    .line 27
    instance-of v1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;

    .line 28
    .line 29
    const/16 v2, 0x21

    .line 30
    .line 31
    const-string v3, " "

    .line 32
    const/4 v4, 0x0

    .line 33
    .line 34
    const/high16 v5, 0x41000000    # 8.0f

    .line 35
    .line 36
    .line 37
    const v6, 0x7f0803bd

    .line 38
    const/4 v7, 0x0

    .line 39
    .line 40
    if-eqz v1, :cond_5

    .line 41
    .line 42
    iget-object v1, p2, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    const/16 v8, 0xf

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v8}, Lcom/narvii/model/User;->ellipticalNickname(I)Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move-object v1, v7

    .line 53
    .line 54
    :goto_0
    iget v8, p2, Lcom/narvii/model/ChatMessage;->type:I

    .line 55
    const/4 v9, 0x2

    .line 56
    .line 57
    if-ne v8, v9, :cond_1

    .line 58
    .line 59
    new-instance v8, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    iget-object v3, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 74
    move-result-object v3

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Lcom/narvii/model/ChatMessage;->getDuration()I

    .line 78
    move-result v9

    .line 79
    .line 80
    .line 81
    invoke-static {v3, v9}, Lcom/narvii/util/VoiceMessageUtils;->getVoiceMessageSummary(Landroid/content/Context;I)Ljava/lang/String;

    .line 82
    move-result-object v3

    .line 83
    .line 84
    .line 85
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v3

    .line 90
    move-object v8, p1

    .line 91
    .line 92
    check-cast v8, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;

    .line 93
    .line 94
    iget-object v8, v8, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;->tvContent:Landroid/widget/TextView;

    .line 95
    .line 96
    .line 97
    const v9, -0x7e7e7f

    .line 98
    .line 99
    .line 100
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    goto :goto_1

    .line 102
    .line 103
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    iget-object v3, p2, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object v3

    .line 122
    move-object v8, p1

    .line 123
    .line 124
    check-cast v8, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;

    .line 125
    .line 126
    iget-object v8, v8, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;->tvContent:Landroid/widget/TextView;

    .line 127
    .line 128
    const/high16 v9, -0x1000000

    .line 129
    .line 130
    .line 131
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    .line 133
    :goto_1
    new-instance v8, Landroid/text/SpannableString;

    .line 134
    .line 135
    .line 136
    invoke-direct {v8, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    if-eqz v1, :cond_2

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 142
    move-result v1

    .line 143
    .line 144
    iget-object v3, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 148
    move-result-object v3

    .line 149
    .line 150
    .line 151
    invoke-static {}, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->c()[I

    .line 152
    move-result-object v9

    .line 153
    .line 154
    iget-object v10, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 155
    .line 156
    iget-object v11, p2, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v11}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 160
    move-result-object v11

    .line 161
    .line 162
    .line 163
    invoke-static {v10, v11}, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->b(Lcom/narvii/chat/video/overlay/AvChatMessageListView;Ljava/lang/String;)I

    .line 164
    move-result v10

    .line 165
    .line 166
    aget v9, v9, v10

    .line 167
    .line 168
    .line 169
    invoke-static {v3, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 170
    move-result v3

    .line 171
    .line 172
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    .line 173
    .line 174
    .line 175
    invoke-direct {v9, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v8, v9, v4, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 179
    .line 180
    :cond_2
    check-cast p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;

    .line 181
    .line 182
    iget-object v1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;->tvContent:Landroid/widget/TextView;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    iget-object v1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;->tvContent:Landroid/widget/TextView;

    .line 188
    .line 189
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 193
    .line 194
    iget-object v1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;->tvContent:Landroid/widget/TextView;

    .line 195
    .line 196
    new-instance v2, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter$1;

    .line 197
    .line 198
    .line 199
    invoke-direct {v2, p0, p2}, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter$1;-><init>(Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;Lcom/narvii/model/ChatMessage;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    .line 204
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 205
    .line 206
    new-instance v2, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter$2;

    .line 207
    .line 208
    .line 209
    invoke-direct {v2, p0, p2}, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter$2;-><init>(Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;Lcom/narvii/model/ChatMessage;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    .line 214
    iget-object p2, p2, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 215
    .line 216
    if-eqz p2, :cond_4

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    .line 220
    move-result p2

    .line 221
    .line 222
    if-eqz p2, :cond_4

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    .line 226
    move-result p2

    .line 227
    .line 228
    if-eqz p2, :cond_4

    .line 229
    .line 230
    .line 231
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 232
    move-result p2

    .line 233
    .line 234
    if-eqz p2, :cond_3

    .line 235
    .line 236
    iget-object p2, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;->tvContent:Landroid/widget/TextView;

    .line 237
    .line 238
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 242
    move-result-object v0

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 246
    move-result-object v0

    .line 247
    .line 248
    .line 249
    invoke-virtual {p2, v7, v7, v0, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 250
    .line 251
    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;->tvContent:Landroid/widget/TextView;

    .line 252
    .line 253
    iget-object p2, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 254
    .line 255
    .line 256
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 257
    move-result-object p2

    .line 258
    .line 259
    .line 260
    invoke-static {p2, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 261
    move-result p2

    .line 262
    float-to-int p2, p2

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 266
    .line 267
    goto/16 :goto_4

    .line 268
    .line 269
    :cond_3
    iget-object p2, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;->tvContent:Landroid/widget/TextView;

    .line 270
    .line 271
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 275
    move-result-object v0

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 279
    move-result-object v0

    .line 280
    .line 281
    .line 282
    invoke-virtual {p2, v0, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 283
    .line 284
    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;->tvContent:Landroid/widget/TextView;

    .line 285
    .line 286
    iget-object p2, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 287
    .line 288
    .line 289
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 290
    move-result-object p2

    .line 291
    .line 292
    .line 293
    invoke-static {p2, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 294
    move-result p2

    .line 295
    float-to-int p2, p2

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 299
    .line 300
    goto/16 :goto_4

    .line 301
    .line 302
    :cond_4
    iget-object p2, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;->tvContent:Landroid/widget/TextView;

    .line 303
    .line 304
    .line 305
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 306
    .line 307
    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;->tvContent:Landroid/widget/TextView;

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1, v7, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 311
    .line 312
    goto/16 :goto_4

    .line 313
    .line 314
    :cond_5
    instance-of v1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;

    .line 315
    .line 316
    if-eqz v1, :cond_9

    .line 317
    .line 318
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 322
    move-result-object v1

    .line 323
    .line 324
    .line 325
    invoke-static {}, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->c()[I

    .line 326
    move-result-object v2

    .line 327
    .line 328
    iget-object v3, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 329
    .line 330
    iget-object v8, p2, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v8}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 334
    move-result-object v8

    .line 335
    .line 336
    .line 337
    invoke-static {v3, v8}, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->b(Lcom/narvii/chat/video/overlay/AvChatMessageListView;Ljava/lang/String;)I

    .line 338
    move-result v3

    .line 339
    .line 340
    aget v2, v2, v3

    .line 341
    .line 342
    .line 343
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 344
    move-result v1

    .line 345
    .line 346
    check-cast p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;

    .line 347
    .line 348
    iget-object v2, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;->nickName:Landroid/widget/TextView;

    .line 349
    .line 350
    iget-object v3, p2, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v3}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 354
    move-result-object v3

    .line 355
    .line 356
    .line 357
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    .line 359
    iget-object v2, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;->nickName:Landroid/widget/TextView;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {p2}, Lcom/narvii/model/ChatMessage;->isStickerMessage()Z

    .line 366
    move-result v1

    .line 367
    .line 368
    if-eqz v1, :cond_6

    .line 369
    .line 370
    iget-object v1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;->img:Lcom/narvii/widget/NVImageView;

    .line 371
    .line 372
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 376
    .line 377
    iget-object v1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;->img:Lcom/narvii/widget/NVImageView;

    .line 378
    .line 379
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v2, p2}, Lcom/narvii/monetization/sticker/StickerHelper;->getStickerMessageImageUrl(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;

    .line 383
    move-result-object v2

    .line 384
    .line 385
    .line 386
    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 387
    goto :goto_2

    .line 388
    .line 389
    :cond_6
    iget-object v1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;->img:Lcom/narvii/widget/NVImageView;

    .line 390
    .line 391
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 395
    .line 396
    iget-object v1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;->img:Lcom/narvii/widget/NVImageView;

    .line 397
    .line 398
    .line 399
    invoke-virtual {p2}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    .line 400
    move-result-object v2

    .line 401
    .line 402
    .line 403
    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 404
    .line 405
    :goto_2
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 406
    .line 407
    new-instance v2, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter$3;

    .line 408
    .line 409
    .line 410
    invoke-direct {v2, p0, p2}, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter$3;-><init>(Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;Lcom/narvii/model/ChatMessage;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    .line 415
    iget-object p2, p2, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 416
    .line 417
    if-eqz p2, :cond_8

    .line 418
    .line 419
    .line 420
    invoke-virtual {p2}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    .line 421
    move-result p2

    .line 422
    .line 423
    if-eqz p2, :cond_8

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    .line 427
    move-result p2

    .line 428
    .line 429
    if-eqz p2, :cond_8

    .line 430
    .line 431
    .line 432
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 433
    move-result p2

    .line 434
    .line 435
    if-eqz p2, :cond_7

    .line 436
    .line 437
    iget-object p2, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;->nickName:Landroid/widget/TextView;

    .line 438
    .line 439
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 443
    move-result-object v0

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 447
    move-result-object v0

    .line 448
    .line 449
    .line 450
    invoke-virtual {p2, v7, v7, v0, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 451
    .line 452
    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;->nickName:Landroid/widget/TextView;

    .line 453
    .line 454
    iget-object p2, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 455
    .line 456
    .line 457
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 458
    move-result-object p2

    .line 459
    .line 460
    .line 461
    invoke-static {p2, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 462
    move-result p2

    .line 463
    float-to-int p2, p2

    .line 464
    .line 465
    .line 466
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 467
    .line 468
    goto/16 :goto_4

    .line 469
    .line 470
    :cond_7
    iget-object p2, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;->nickName:Landroid/widget/TextView;

    .line 471
    .line 472
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 476
    move-result-object v0

    .line 477
    .line 478
    .line 479
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 480
    move-result-object v0

    .line 481
    .line 482
    .line 483
    invoke-virtual {p2, v0, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 484
    .line 485
    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;->nickName:Landroid/widget/TextView;

    .line 486
    .line 487
    iget-object p2, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 488
    .line 489
    .line 490
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 491
    move-result-object p2

    .line 492
    .line 493
    .line 494
    invoke-static {p2, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 495
    move-result p2

    .line 496
    float-to-int p2, p2

    .line 497
    .line 498
    .line 499
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 500
    .line 501
    goto/16 :goto_4

    .line 502
    .line 503
    :cond_8
    iget-object p2, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;->nickName:Landroid/widget/TextView;

    .line 504
    .line 505
    .line 506
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 507
    .line 508
    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;->nickName:Landroid/widget/TextView;

    .line 509
    .line 510
    .line 511
    invoke-virtual {p1, v7, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 512
    .line 513
    goto/16 :goto_4

    .line 514
    .line 515
    :cond_9
    instance-of v1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$WelcomeViewHolder;

    .line 516
    .line 517
    if-eqz v1, :cond_e

    .line 518
    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    iget-object v3, p2, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 534
    move-result-object v1

    .line 535
    .line 536
    new-instance v3, Landroid/text/SpannableString;

    .line 537
    .line 538
    .line 539
    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 540
    .line 541
    new-instance v1, Landroid/text/style/ImageSpan;

    .line 542
    .line 543
    iget-object v8, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 547
    move-result-object v8

    .line 548
    .line 549
    .line 550
    const v9, 0x7f080698

    .line 551
    const/4 v10, 0x1

    .line 552
    .line 553
    .line 554
    invoke-direct {v1, v8, v9, v10}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v3, v1, v4, v10, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 558
    .line 559
    iget-object v1, p2, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 560
    .line 561
    if-eqz v1, :cond_a

    .line 562
    .line 563
    .line 564
    invoke-virtual {v1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 565
    move-result-object v1

    .line 566
    goto :goto_3

    .line 567
    :cond_a
    move-object v1, v7

    .line 568
    .line 569
    :goto_3
    if-eqz v1, :cond_b

    .line 570
    .line 571
    .line 572
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 573
    move-result v8

    .line 574
    .line 575
    iget-object v9, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 579
    move-result-object v9

    .line 580
    .line 581
    .line 582
    invoke-static {}, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->c()[I

    .line 583
    move-result-object v11

    .line 584
    .line 585
    iget-object v12, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 586
    .line 587
    .line 588
    invoke-static {v12, v1}, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->b(Lcom/narvii/chat/video/overlay/AvChatMessageListView;Ljava/lang/String;)I

    .line 589
    move-result v1

    .line 590
    .line 591
    aget v1, v11, v1

    .line 592
    .line 593
    .line 594
    invoke-static {v9, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 595
    move-result v1

    .line 596
    .line 597
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    .line 598
    .line 599
    .line 600
    invoke-direct {v9, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 601
    add-int/2addr v8, v10

    .line 602
    .line 603
    .line 604
    invoke-virtual {v3, v9, v10, v8, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 605
    .line 606
    :cond_b
    check-cast p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$WelcomeViewHolder;

    .line 607
    .line 608
    iget-object v1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$WelcomeViewHolder;->tvContent:Landroid/widget/TextView;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    .line 613
    iget-object p2, p2, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 614
    .line 615
    if-eqz p2, :cond_d

    .line 616
    .line 617
    .line 618
    invoke-virtual {p2}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    .line 619
    move-result p2

    .line 620
    .line 621
    if-eqz p2, :cond_d

    .line 622
    .line 623
    .line 624
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    .line 625
    move-result p2

    .line 626
    .line 627
    if-eqz p2, :cond_d

    .line 628
    .line 629
    .line 630
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 631
    move-result p2

    .line 632
    .line 633
    if-eqz p2, :cond_c

    .line 634
    .line 635
    iget-object p2, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$WelcomeViewHolder;->tvContent:Landroid/widget/TextView;

    .line 636
    .line 637
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 641
    move-result-object v0

    .line 642
    .line 643
    .line 644
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 645
    move-result-object v0

    .line 646
    .line 647
    .line 648
    invoke-virtual {p2, v7, v7, v0, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 649
    .line 650
    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$WelcomeViewHolder;->tvContent:Landroid/widget/TextView;

    .line 651
    .line 652
    iget-object p2, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 653
    .line 654
    .line 655
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 656
    move-result-object p2

    .line 657
    .line 658
    .line 659
    invoke-static {p2, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 660
    move-result p2

    .line 661
    float-to-int p2, p2

    .line 662
    .line 663
    .line 664
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 665
    goto :goto_4

    .line 666
    .line 667
    :cond_c
    iget-object p2, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$WelcomeViewHolder;->tvContent:Landroid/widget/TextView;

    .line 668
    .line 669
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 670
    .line 671
    .line 672
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 673
    move-result-object v0

    .line 674
    .line 675
    .line 676
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 677
    move-result-object v0

    .line 678
    .line 679
    .line 680
    invoke-virtual {p2, v0, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 681
    .line 682
    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$WelcomeViewHolder;->tvContent:Landroid/widget/TextView;

    .line 683
    .line 684
    iget-object p2, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 685
    .line 686
    .line 687
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 688
    move-result-object p2

    .line 689
    .line 690
    .line 691
    invoke-static {p2, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 692
    move-result p2

    .line 693
    float-to-int p2, p2

    .line 694
    .line 695
    .line 696
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 697
    goto :goto_4

    .line 698
    .line 699
    :cond_d
    iget-object p2, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$WelcomeViewHolder;->tvContent:Landroid/widget/TextView;

    .line 700
    .line 701
    .line 702
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 703
    .line 704
    iget-object p1, p1, Lcom/narvii/chat/video/overlay/AvChatMessageListView$WelcomeViewHolder;->tvContent:Landroid/widget/TextView;

    .line 705
    .line 706
    .line 707
    invoke-virtual {p1, v7, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 708
    :cond_e
    :goto_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    .line 6
    iget-object p2, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 7
    .line 8
    iget-object p2, p2, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->inflater:Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    const v0, 0x7f0d03d6

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    new-instance p2, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 20
    .line 21
    .line 22
    invoke-direct {p2, v0, p1}, Lcom/narvii/chat/video/overlay/AvChatMessageListView$ImageViewHolder;-><init>(Lcom/narvii/chat/video/overlay/AvChatMessageListView;Landroid/view/View;)V

    .line 23
    return-object p2

    .line 24
    .line 25
    :cond_0
    if-nez p2, :cond_1

    .line 26
    .line 27
    iget-object p2, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 28
    .line 29
    iget-object p2, p2, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->inflater:Landroid/view/LayoutInflater;

    .line 30
    .line 31
    .line 32
    const v0, 0x7f0d03d5

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    new-instance p2, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 41
    .line 42
    .line 43
    invoke-direct {p2, v0, p1}, Lcom/narvii/chat/video/overlay/AvChatMessageListView$TextViewHolder;-><init>(Lcom/narvii/chat/video/overlay/AvChatMessageListView;Landroid/view/View;)V

    .line 44
    return-object p2

    .line 45
    :cond_1
    const/4 v0, 0x3

    .line 46
    .line 47
    if-ne p2, v0, :cond_2

    .line 48
    .line 49
    iget-object p2, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 50
    .line 51
    iget-object p2, p2, Lcom/narvii/chat/video/overlay/AvChatMessageListView;->inflater:Landroid/view/LayoutInflater;

    .line 52
    .line 53
    .line 54
    const v0, 0x7f0d03d8

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    new-instance p2, Lcom/narvii/chat/video/overlay/AvChatMessageListView$WelcomeViewHolder;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AvChatMessageListView$MyAdapter;->this$0:Lcom/narvii/chat/video/overlay/AvChatMessageListView;

    .line 63
    .line 64
    .line 65
    invoke-direct {p2, v0, p1}, Lcom/narvii/chat/video/overlay/AvChatMessageListView$WelcomeViewHolder;-><init>(Lcom/narvii/chat/video/overlay/AvChatMessageListView;Landroid/view/View;)V

    .line 66
    return-object p2

    .line 67
    :cond_2
    const/4 p1, 0x0

    .line 68
    return-object p1
.end method
