.class Lcom/narvii/drawer/DrawerHost$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/drawer/DrawerHost;->initSecondEntryContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/drawer/DrawerHost;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->h(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/amino/page/PageSecondLevelLayout;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->secondViewStub:Landroid/view/ViewStub;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 19
    .line 20
    .line 21
    const v1, 0x7f0a0cae

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, Lcom/narvii/amino/page/PageSecondLevelLayout;

    .line 28
    .line 29
    .line 30
    invoke-static {v0, p1}, Lcom/narvii/drawer/DrawerHost;->l(Lcom/narvii/drawer/DrawerHost;Lcom/narvii/amino/page/PageSecondLevelLayout;)V

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->h(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/amino/page/PageSecondLevelLayout;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->pageItemClickListener2:Lcom/narvii/amino/page/PageItemClickListener;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/narvii/amino/page/PageSecondLevelLayout;->setPageItemClickListener(Lcom/narvii/amino/page/PageItemClickListener;)V

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->v(Lcom/narvii/drawer/DrawerHost;)V

    .line 49
    .line 50
    :cond_0
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->h(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/amino/page/PageSecondLevelLayout;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    if-eqz p1, :cond_8

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 60
    move-result p1

    .line 61
    const/4 v0, 0x0

    .line 62
    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->f(Lcom/narvii/drawer/DrawerHost;)Landroid/widget/ImageView;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 72
    .line 73
    .line 74
    invoke-static {v1}, Lcom/narvii/drawer/DrawerHost;->g(Lcom/narvii/drawer/DrawerHost;)Z

    .line 75
    move-result v1

    .line 76
    .line 77
    if-eqz v1, :cond_1

    .line 78
    goto :goto_0

    .line 79
    .line 80
    :cond_1
    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 81
    .line 82
    .line 83
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 84
    goto :goto_2

    .line 85
    .line 86
    :cond_2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->f(Lcom/narvii/drawer/DrawerHost;)Landroid/widget/ImageView;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 93
    .line 94
    .line 95
    invoke-static {v1}, Lcom/narvii/drawer/DrawerHost;->g(Lcom/narvii/drawer/DrawerHost;)Z

    .line 96
    move-result v1

    .line 97
    .line 98
    if-eqz v1, :cond_3

    .line 99
    goto :goto_1

    .line 100
    .line 101
    :cond_3
    const/high16 v0, 0x42b40000    # 90.0f

    .line 102
    .line 103
    .line 104
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 105
    .line 106
    :goto_2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 107
    .line 108
    .line 109
    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->e(Lcom/narvii/drawer/DrawerHost;)Landroid/widget/TextView;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 119
    .line 120
    .line 121
    invoke-static {v1}, Lcom/narvii/drawer/DrawerHost;->g(Lcom/narvii/drawer/DrawerHost;)Z

    .line 122
    move-result v1

    .line 123
    .line 124
    if-nez v1, :cond_4

    .line 125
    .line 126
    .line 127
    const v1, 0x7f120410

    .line 128
    goto :goto_3

    .line 129
    .line 130
    .line 131
    :cond_4
    const v1, 0x7f120411

    .line 132
    .line 133
    .line 134
    :goto_3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 141
    .line 142
    .line 143
    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->h(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/amino/page/PageSecondLevelLayout;

    .line 144
    move-result-object p1

    .line 145
    .line 146
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 147
    .line 148
    .line 149
    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->g(Lcom/narvii/drawer/DrawerHost;)Z

    .line 150
    move-result v0

    .line 151
    .line 152
    const/16 v1, 0x8

    .line 153
    const/4 v2, 0x0

    .line 154
    .line 155
    if-eqz v0, :cond_5

    .line 156
    move v0, v1

    .line 157
    goto :goto_4

    .line 158
    :cond_5
    move v0, v2

    .line 159
    .line 160
    .line 161
    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 162
    .line 163
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 164
    .line 165
    .line 166
    const v0, 0x7f0a0cb2

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 170
    move-result-object p1

    .line 171
    .line 172
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 173
    .line 174
    .line 175
    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->h(Lcom/narvii/drawer/DrawerHost;)Lcom/narvii/amino/page/PageSecondLevelLayout;

    .line 176
    move-result-object v0

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 180
    move-result v0

    .line 181
    .line 182
    if-nez v0, :cond_6

    .line 183
    move v1, v2

    .line 184
    .line 185
    .line 186
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    .line 188
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 189
    .line 190
    .line 191
    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->g(Lcom/narvii/drawer/DrawerHost;)Z

    .line 192
    move-result p1

    .line 193
    .line 194
    if-nez p1, :cond_7

    .line 195
    .line 196
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 197
    .line 198
    .line 199
    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->w(Lcom/narvii/drawer/DrawerHost;)V

    .line 200
    .line 201
    :cond_7
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 202
    .line 203
    .line 204
    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->g(Lcom/narvii/drawer/DrawerHost;)Z

    .line 205
    move-result v0

    .line 206
    const/4 v1, 0x1

    .line 207
    xor-int/2addr v0, v1

    .line 208
    .line 209
    .line 210
    invoke-static {p1, v0}, Lcom/narvii/drawer/DrawerHost;->k(Lcom/narvii/drawer/DrawerHost;Z)V

    .line 211
    const/4 p1, 0x2

    .line 212
    .line 213
    new-array p1, p1, [I

    .line 214
    .line 215
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 216
    .line 217
    .line 218
    invoke-static {v0}, Lcom/narvii/drawer/DrawerHost;->e(Lcom/narvii/drawer/DrawerHost;)Landroid/widget/TextView;

    .line 219
    move-result-object v0

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 223
    .line 224
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 225
    .line 226
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getLeftSidePanelLv2List()Ljava/util/List;

    .line 230
    move-result-object v0

    .line 231
    .line 232
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 233
    .line 234
    .line 235
    invoke-static {v3}, Lcom/narvii/drawer/DrawerHost;->g(Lcom/narvii/drawer/DrawerHost;)Z

    .line 236
    move-result v3

    .line 237
    .line 238
    if-eqz v3, :cond_8

    .line 239
    .line 240
    if-eqz v0, :cond_8

    .line 241
    .line 242
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 243
    .line 244
    iget-object v3, v3, Lcom/narvii/drawer/DrawerHost;->scrollView:Lcom/narvii/widget/NVScrollView;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 248
    move-result v3

    .line 249
    .line 250
    if-lez v3, :cond_8

    .line 251
    .line 252
    .line 253
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 254
    move-result v0

    .line 255
    .line 256
    div-int/lit8 v0, v0, 0x3

    .line 257
    .line 258
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 262
    move-result-object v3

    .line 263
    .line 264
    .line 265
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 266
    move-result-object v3

    .line 267
    .line 268
    .line 269
    const v4, 0x7f070496

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 273
    move-result v3

    .line 274
    mul-int/2addr v0, v3

    .line 275
    .line 276
    aget v3, p1, v1

    .line 277
    add-int/2addr v3, v0

    .line 278
    .line 279
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 280
    .line 281
    iget-object v4, v4, Lcom/narvii/drawer/DrawerHost;->scrollView:Lcom/narvii/widget/NVScrollView;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 285
    move-result v4

    .line 286
    .line 287
    if-le v3, v4, :cond_8

    .line 288
    .line 289
    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 290
    .line 291
    iget-object v3, v3, Lcom/narvii/drawer/DrawerHost;->scrollView:Lcom/narvii/widget/NVScrollView;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 295
    move-result v4

    .line 296
    .line 297
    aget p1, p1, v1

    .line 298
    sub-int/2addr v4, p1

    .line 299
    sub-int/2addr v0, v4

    .line 300
    .line 301
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$25;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 302
    .line 303
    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 305
    move-result-object p1

    .line 306
    .line 307
    .line 308
    const v1, 0x7f07016f

    .line 309
    .line 310
    .line 311
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 312
    move-result p1

    .line 313
    add-int/2addr v0, p1

    .line 314
    .line 315
    .line 316
    invoke-virtual {v3, v2, v0}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 317
    :cond_8
    return-void
.end method
