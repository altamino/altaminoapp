.class public Lcom/narvii/flag/widgets/FlagTagsLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# instance fields
.field container:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/flag/widgets/FlagTagsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/flag/widgets/FlagTagsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/narvii/flag/widgets/FlagTagsLayout;->container:Landroid/widget/LinearLayout;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p2, p0, Lcom/narvii/flag/widgets/FlagTagsLayout;->container:Landroid/widget/LinearLayout;

    .line 6
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/narvii/flag/widgets/FlagTagsLayout;->container:Landroid/widget/LinearLayout;

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object p1, p0, Lcom/narvii/flag/widgets/FlagTagsLayout;->container:Landroid/widget/LinearLayout;

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addTag(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/flag/FlagTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/flag/widgets/FlagTagsLayout;->container:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 25
    const/4 v2, -0x1

    .line 26
    .line 27
    const/high16 v3, 0x40c00000    # 6.0f

    .line 28
    const/4 v4, 0x0

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    check-cast v1, Lcom/narvii/flag/FlagTag;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/narvii/flag/FlagTag;->isContainIcon()Z

    .line 40
    move-result v5

    .line 41
    .line 42
    .line 43
    const v6, 0x7f0809ea

    .line 44
    const/4 v7, 0x0

    .line 45
    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    .line 49
    const v2, 0x7f0d0286

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    .line 56
    const v3, 0x7f0a0e51

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object v3

    .line 61
    .line 62
    check-cast v3, Landroid/widget/TextView;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    move-result-object v4

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v4}, Lcom/narvii/flag/FlagTag;->getFlagTypeName(Landroid/content/Context;)Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 88
    .line 89
    const/high16 v3, -0x10000

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    .line 97
    iget-object v1, p0, Lcom/narvii/flag/widgets/FlagTagsLayout;->container:Landroid/widget/LinearLayout;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 101
    goto :goto_0

    .line 102
    .line 103
    .line 104
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 105
    move-result-object v5

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v5}, Lcom/narvii/flag/FlagTag;->getFlagTypeName(Landroid/content/Context;)Ljava/lang/String;

    .line 109
    move-result-object v5

    .line 110
    .line 111
    .line 112
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    move-result v5

    .line 114
    .line 115
    if-eqz v5, :cond_2

    .line 116
    goto :goto_0

    .line 117
    .line 118
    .line 119
    :cond_2
    const v5, 0x7f0d0287

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 123
    move-result-object v5

    .line 124
    .line 125
    check-cast v5, Landroid/widget/TextView;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 129
    move-result-object v7

    .line 130
    .line 131
    .line 132
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 133
    move-result-object v7

    .line 134
    .line 135
    .line 136
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 137
    move-result-object v6

    .line 138
    .line 139
    check-cast v6, Landroid/graphics/drawable/GradientDrawable;

    .line 140
    .line 141
    .line 142
    const v7, -0xcfcfd0

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 152
    move-result-object v6

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v6}, Lcom/narvii/flag/FlagTag;->getFlagTypeName(Landroid/content/Context;)Ljava/lang/String;

    .line 156
    move-result-object v1

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 162
    const/4 v6, -0x2

    .line 163
    .line 164
    .line 165
    invoke-direct {v1, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 169
    move-result-object v2

    .line 170
    .line 171
    .line 172
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 173
    move-result v2

    .line 174
    float-to-int v2, v2

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v4, v4, v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 178
    .line 179
    iget-object v2, p0, Lcom/narvii/flag/widgets/FlagTagsLayout;->container:Landroid/widget/LinearLayout;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :cond_3
    new-instance p1, Landroid/view/View;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 190
    move-result-object v0

    .line 191
    .line 192
    .line 193
    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 194
    .line 195
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 196
    .line 197
    .line 198
    const v1, -0x424243

    .line 199
    .line 200
    .line 201
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    .line 206
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 210
    move-result-object v1

    .line 211
    .line 212
    const/high16 v5, 0x3f800000    # 1.0f

    .line 213
    .line 214
    .line 215
    invoke-static {v1, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 216
    move-result v1

    .line 217
    float-to-int v1, v1

    .line 218
    .line 219
    .line 220
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 224
    move-result-object v1

    .line 225
    .line 226
    .line 227
    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 228
    move-result v1

    .line 229
    float-to-int v1, v1

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 233
    move-result-object v2

    .line 234
    .line 235
    .line 236
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 237
    move-result v2

    .line 238
    float-to-int v2, v2

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 242
    .line 243
    iget-object v1, p0, Lcom/narvii/flag/widgets/FlagTagsLayout;->container:Landroid/widget/LinearLayout;

    .line 244
    const/4 v2, 0x1

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, p1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 248
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 4
    return-void
.end method

.method public setTagsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/flag/widgets/FlagTagsLayout;->container:Landroid/widget/LinearLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_0
    return-void
.end method
