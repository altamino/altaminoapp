.class public Lcom/narvii/amino/page/PageTopLevelLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private chatChildView:Landroid/view/View;

.field clickListener:Lcom/narvii/amino/page/PageItemClickListener;

.field inflater:Landroid/view/LayoutInflater;

.field pageItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/modulization/page/Page;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/page/PageTopLevelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/amino/page/PageTopLevelLayout;->inflater:Landroid/view/LayoutInflater;

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method


# virtual methods
.method public getChatChildView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/narvii/amino/page/PageTopLevelLayout;->chatChildView:Landroid/view/View;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    return-void
.end method

.method public setPageItemClickListener(Lcom/narvii/amino/page/PageItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/amino/page/PageTopLevelLayout;->clickListener:Lcom/narvii/amino/page/PageItemClickListener;

    return-void
.end method

.method public setPageItems(Lcom/narvii/app/NVContext;Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "Lcom/narvii/modulization/page/Page;",
            ">;I)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p2, p0, Lcom/narvii/amino/page/PageTopLevelLayout;->pageItems:Ljava/util/List;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    iput-object v0, p0, Lcom/narvii/amino/page/PageTopLevelLayout;->chatChildView:Landroid/view/View;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    return-void

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    move-result p2

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/amino/page/PageTopLevelLayout;->pageItems:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 18
    move-result v1

    .line 19
    .line 20
    if-le p2, v1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    move-result p2

    .line 25
    .line 26
    add-int/lit8 p2, p2, -0x1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p2, 0x0

    .line 32
    move v1, p2

    .line 33
    .line 34
    :goto_1
    iget-object v2, p0, Lcom/narvii/amino/page/PageTopLevelLayout;->pageItems:Ljava/util/List;

    .line 35
    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 38
    move-result v2

    .line 39
    .line 40
    if-ge v1, v2, :cond_9

    .line 41
    .line 42
    iget-object v2, p0, Lcom/narvii/amino/page/PageTopLevelLayout;->pageItems:Ljava/util/List;

    .line 43
    .line 44
    .line 45
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    goto/16 :goto_5

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 54
    move-result v2

    .line 55
    .line 56
    if-le v2, v1, :cond_3

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 60
    move-result-object v2

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    move-object v2, v0

    .line 63
    .line 64
    :goto_2
    if-nez v2, :cond_4

    .line 65
    .line 66
    iget-object v2, p0, Lcom/narvii/amino/page/PageTopLevelLayout;->inflater:Landroid/view/LayoutInflater;

    .line 67
    .line 68
    .line 69
    const v3, 0x7f0d0446

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    .line 78
    :cond_4
    iget-object v3, p0, Lcom/narvii/amino/page/PageTopLevelLayout;->pageItems:Ljava/util/List;

    .line 79
    .line 80
    .line 81
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object v3

    .line 83
    .line 84
    check-cast v3, Lcom/narvii/modulization/page/Page;

    .line 85
    .line 86
    iget-object v4, v3, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    const v5, 0x7f0a0838

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v5, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    const v4, 0x7f0a03e7

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    move-result-object v4

    .line 100
    .line 101
    const-string v5, "config"

    .line 102
    .line 103
    .line 104
    invoke-interface {p1, v5}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    move-result-object v5

    .line 106
    .line 107
    check-cast v5, Lcom/narvii/config/ConfigService;

    .line 108
    .line 109
    const-string v6, "community"

    .line 110
    .line 111
    .line 112
    invoke-interface {p1, v6}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    move-result-object v6

    .line 114
    .line 115
    check-cast v6, Lcom/narvii/community/CommunityService;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 119
    move-result v5

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6, v5}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 123
    move-result-object v5

    .line 124
    .line 125
    if-eqz v5, :cond_5

    .line 126
    .line 127
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5}, Lcom/narvii/model/Community;->themeColor()I

    .line 131
    move-result v5

    .line 132
    .line 133
    .line 134
    invoke-direct {v6, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    .line 139
    .line 140
    :cond_5
    const v4, 0x7f0a0abd

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 144
    move-result-object v4

    .line 145
    .line 146
    check-cast v4, Landroid/widget/ImageView;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, p1}, Lcom/narvii/modulization/page/Page;->getIconBackgroundDrawable(Lcom/narvii/app/NVContext;)Landroid/graphics/drawable/Drawable;

    .line 150
    move-result-object v5

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 157
    move-result-object v5

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3, v5}, Lcom/narvii/modulization/page/Page;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 161
    move-result-object v5

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    .line 166
    .line 167
    const v4, 0x7f0a0abe

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 171
    move-result-object v4

    .line 172
    .line 173
    check-cast v4, Landroid/widget/TextView;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 177
    move-result-object v5

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v5}, Lcom/narvii/modulization/page/Page;->getDisplayName(Landroid/content/Context;)Ljava/lang/String;

    .line 181
    move-result-object v5

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .line 186
    .line 187
    const v4, 0x7f0a0abc

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 191
    move-result-object v4

    .line 192
    .line 193
    check-cast v4, Landroid/widget/TextView;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3}, Lcom/narvii/modulization/page/Page;->isMyChatPage()Z

    .line 197
    move-result v5

    .line 198
    .line 199
    if-eqz v5, :cond_6

    .line 200
    .line 201
    iput-object v2, p0, Lcom/narvii/amino/page/PageTopLevelLayout;->chatChildView:Landroid/view/View;

    .line 202
    .line 203
    .line 204
    :cond_6
    invoke-virtual {v3}, Lcom/narvii/modulization/page/Page;->isMyChatPage()Z

    .line 205
    move-result v5

    .line 206
    .line 207
    if-eqz v5, :cond_7

    .line 208
    .line 209
    if-lez p3, :cond_7

    .line 210
    move v5, p2

    .line 211
    goto :goto_3

    .line 212
    .line 213
    :cond_7
    const/16 v5, 0x8

    .line 214
    .line 215
    .line 216
    :goto_3
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 217
    .line 218
    const/16 v5, 0x9

    .line 219
    .line 220
    if-le p3, v5, :cond_8

    .line 221
    .line 222
    const-string v5, "9+"

    .line 223
    goto :goto_4

    .line 224
    .line 225
    .line 226
    :cond_8
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 227
    move-result-object v5

    .line 228
    .line 229
    .line 230
    :goto_4
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    .line 232
    new-instance v4, Lcom/narvii/amino/page/PageTopLevelLayout$1;

    .line 233
    .line 234
    .line 235
    invoke-direct {v4, p0, v1, v3}, Lcom/narvii/amino/page/PageTopLevelLayout$1;-><init>(Lcom/narvii/amino/page/PageTopLevelLayout;ILcom/narvii/modulization/page/Page;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    .line 240
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 241
    .line 242
    goto/16 :goto_1

    .line 243
    :cond_9
    return-void
.end method

.method public updateIndicator(Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v2

    .line 7
    .line 8
    if-ge v1, v2, :cond_4

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    const v3, 0x7f0a0838

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    move-result v3

    .line 24
    .line 25
    .line 26
    const v4, 0x7f0a03e7

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    if-eqz v3, :cond_0

    .line 35
    move v5, v0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const/4 v5, 0x4

    .line 38
    .line 39
    .line 40
    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    :cond_1
    const v4, 0x7f0a0ed6

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 53
    move-result-object v4

    .line 54
    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    .line 58
    const v3, 0x7f060111

    .line 59
    goto :goto_2

    .line 60
    .line 61
    .line 62
    :cond_2
    const v3, 0x7f060110

    .line 63
    .line 64
    .line 65
    :goto_2
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 66
    move-result v3

    .line 67
    .line 68
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .line 69
    .line 70
    .line 71
    invoke-direct {v4, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    .line 76
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 77
    goto :goto_0

    .line 78
    :cond_4
    return-void
.end method
