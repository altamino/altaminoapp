.class public Lcom/narvii/amino/page/PageSecondLevelLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final COUNT_COLUMN:I = 0x3

.field private static final DIVIDER_WIDTH:F = 1.0f


# instance fields
.field private backgoundColor:I

.field private chatChildView:Landroid/view/View;

.field clickListener:Lcom/narvii/amino/page/PageItemClickListener;

.field gridLayout:Landroid/widget/GridLayout;

.field private height:I

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

.field private paint:Landroid/graphics/Paint;

.field private rowCount:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/page/PageSecondLevelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->inflater:Landroid/view/LayoutInflater;

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->paint:Landroid/graphics/Paint;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f060110

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->backgoundColor:I

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    const/4 v0, 0x1

    .line 5
    move v1, v0

    .line 6
    :goto_0
    const/4 v2, 0x3

    .line 7
    .line 8
    const/high16 v3, 0x40000000    # 2.0f

    .line 9
    .line 10
    const/high16 v4, 0x3f800000    # 1.0f

    .line 11
    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    iget v5, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->width:I

    .line 15
    mul-int/2addr v5, v1

    .line 16
    div-int/2addr v5, v2

    .line 17
    int-to-float v5, v5

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v6

    .line 22
    .line 23
    .line 24
    invoke-static {v6, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 25
    move-result v6

    .line 26
    div-float/2addr v6, v3

    .line 27
    sub-float/2addr v5, v6

    .line 28
    float-to-int v5, v5

    .line 29
    .line 30
    iget v6, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->width:I

    .line 31
    mul-int/2addr v6, v1

    .line 32
    div-int/2addr v6, v2

    .line 33
    int-to-float v2, v6

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v6

    .line 38
    .line 39
    .line 40
    invoke-static {v6, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 41
    move-result v4

    .line 42
    div-float/2addr v4, v3

    .line 43
    add-float/2addr v2, v4

    .line 44
    float-to-int v2, v2

    .line 45
    int-to-float v7, v5

    .line 46
    const/4 v8, 0x0

    .line 47
    int-to-float v9, v2

    .line 48
    .line 49
    iget v2, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->height:I

    .line 50
    int-to-float v10, v2

    .line 51
    .line 52
    sget-object v11, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 53
    move-object v6, p1

    .line 54
    .line 55
    .line 56
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 57
    .line 58
    add-int/lit8 v1, v1, 0x1

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_0
    :goto_1
    iget v1, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->rowCount:I

    .line 62
    .line 63
    if-ge v0, v1, :cond_1

    .line 64
    .line 65
    iget v2, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->height:I

    .line 66
    mul-int/2addr v2, v0

    .line 67
    div-int/2addr v2, v1

    .line 68
    int-to-float v1, v2

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 72
    move-result-object v2

    .line 73
    .line 74
    .line 75
    invoke-static {v2, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 76
    move-result v2

    .line 77
    div-float/2addr v2, v3

    .line 78
    sub-float/2addr v1, v2

    .line 79
    float-to-int v1, v1

    .line 80
    .line 81
    iget v2, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->height:I

    .line 82
    mul-int/2addr v2, v0

    .line 83
    .line 84
    iget v5, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->rowCount:I

    .line 85
    div-int/2addr v2, v5

    .line 86
    int-to-float v2, v2

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 90
    move-result-object v5

    .line 91
    .line 92
    .line 93
    invoke-static {v5, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 94
    move-result v5

    .line 95
    div-float/2addr v5, v3

    .line 96
    add-float/2addr v2, v5

    .line 97
    float-to-int v2, v2

    .line 98
    const/4 v6, 0x0

    .line 99
    int-to-float v7, v1

    .line 100
    .line 101
    iget v1, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->width:I

    .line 102
    int-to-float v8, v1

    .line 103
    int-to-float v9, v2

    .line 104
    .line 105
    sget-object v10, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 106
    move-object v5, p1

    .line 107
    .line 108
    .line 109
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 110
    .line 111
    add-int/lit8 v0, v0, 0x1

    .line 112
    goto :goto_1

    .line 113
    .line 114
    :cond_1
    iget-object v0, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->paint:Landroid/graphics/Paint;

    .line 115
    .line 116
    iget v1, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->backgoundColor:I

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    const/4 v3, 0x0

    .line 121
    const/4 v4, 0x0

    .line 122
    .line 123
    iget v0, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->width:I

    .line 124
    int-to-float v5, v0

    .line 125
    .line 126
    iget v0, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->height:I

    .line 127
    int-to-float v6, v0

    .line 128
    .line 129
    iget-object v7, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->paint:Landroid/graphics/Paint;

    .line 130
    move-object v2, p1

    .line 131
    .line 132
    .line 133
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 137
    .line 138
    .line 139
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 140
    return-void
.end method

.method public getChatChildView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->chatChildView:Landroid/view/View;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0632

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/widget/GridLayout;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->gridLayout:Landroid/widget/GridLayout;

    .line 15
    const/4 v1, 0x3

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 19
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 4
    .line 5
    iput p1, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->width:I

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->height:I

    .line 8
    return-void
.end method

.method public setPageItemClickListener(Lcom/narvii/amino/page/PageItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->clickListener:Lcom/narvii/amino/page/PageItemClickListener;

    return-void
.end method

.method public setPageItems(Lcom/narvii/app/NVContext;Ljava/util/List;I)V
    .locals 8
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
    iput-object p2, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->pageItems:Ljava/util/List;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    iput-object v0, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->chatChildView:Landroid/view/View;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    return-void

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 12
    move-result p2

    .line 13
    .line 14
    div-int/lit8 v1, p2, 0x3

    .line 15
    .line 16
    rem-int/lit8 v2, p2, 0x3

    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    move v2, v4

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v2, v3

    .line 24
    :goto_0
    add-int/2addr v1, v2

    .line 25
    .line 26
    :goto_1
    iget-object v2, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->gridLayout:Landroid/widget/GridLayout;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 30
    move-result v2

    .line 31
    .line 32
    if-le v2, p2, :cond_2

    .line 33
    .line 34
    iget-object v2, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->gridLayout:Landroid/widget/GridLayout;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 38
    move-result v5

    .line 39
    sub-int/2addr v5, v3

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_2
    iget-object v2, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->gridLayout:Landroid/widget/GridLayout;

    .line 46
    const/4 v3, 0x3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v3}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 50
    .line 51
    iput v1, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->rowCount:I

    .line 52
    .line 53
    :try_start_0
    iget-object v2, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->gridLayout:Landroid/widget/GridLayout;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v1}, Landroid/widget/GridLayout;->setRowCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :catch_0
    move v1, v4

    .line 58
    .line 59
    :goto_2
    if-ge v1, p2, :cond_8

    .line 60
    .line 61
    iget-object v2, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->gridLayout:Landroid/widget/GridLayout;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 65
    move-result v2

    .line 66
    .line 67
    if-le v2, v1, :cond_3

    .line 68
    .line 69
    iget-object v2, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->gridLayout:Landroid/widget/GridLayout;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 73
    move-result-object v2

    .line 74
    goto :goto_3

    .line 75
    :cond_3
    move-object v2, v0

    .line 76
    .line 77
    :goto_3
    if-nez v2, :cond_4

    .line 78
    .line 79
    iget-object v2, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->inflater:Landroid/view/LayoutInflater;

    .line 80
    .line 81
    .line 82
    const v3, 0x7f0d0445

    .line 83
    .line 84
    iget-object v5, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->gridLayout:Landroid/widget/GridLayout;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 88
    move-result-object v2

    .line 89
    .line 90
    iget-object v3, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->gridLayout:Landroid/widget/GridLayout;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 94
    .line 95
    :cond_4
    iget-object v3, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->pageItems:Ljava/util/List;

    .line 96
    .line 97
    .line 98
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    move-result-object v3

    .line 100
    .line 101
    check-cast v3, Lcom/narvii/modulization/page/Page;

    .line 102
    .line 103
    .line 104
    const v5, 0x7f0a0abd

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    move-result-object v5

    .line 109
    .line 110
    check-cast v5, Landroid/widget/ImageView;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, p1}, Lcom/narvii/modulization/page/Page;->getIconBackgroundDrawable(Lcom/narvii/app/NVContext;)Landroid/graphics/drawable/Drawable;

    .line 114
    move-result-object v6

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 121
    move-result-object v6

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v6}, Lcom/narvii/modulization/page/Page;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 125
    move-result-object v6

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    .line 130
    .line 131
    const v5, 0x7f0a0abe

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    move-result-object v5

    .line 136
    .line 137
    check-cast v5, Landroid/widget/TextView;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 141
    move-result-object v6

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, v6}, Lcom/narvii/modulization/page/Page;->getDisplayName(Landroid/content/Context;)Ljava/lang/String;

    .line 145
    move-result-object v6

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    const v5, 0x7f0a0abc

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    move-result-object v5

    .line 156
    .line 157
    check-cast v5, Landroid/widget/TextView;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3}, Lcom/narvii/modulization/page/Page;->isMyChatPage()Z

    .line 161
    move-result v6

    .line 162
    .line 163
    if-eqz v6, :cond_5

    .line 164
    .line 165
    iput-object v2, p0, Lcom/narvii/amino/page/PageSecondLevelLayout;->chatChildView:Landroid/view/View;

    .line 166
    .line 167
    .line 168
    :cond_5
    invoke-virtual {v3}, Lcom/narvii/modulization/page/Page;->isMyChatPage()Z

    .line 169
    move-result v6

    .line 170
    .line 171
    if-eqz v6, :cond_6

    .line 172
    .line 173
    if-lez p3, :cond_6

    .line 174
    move v6, v4

    .line 175
    goto :goto_4

    .line 176
    .line 177
    :cond_6
    const/16 v6, 0x8

    .line 178
    .line 179
    .line 180
    :goto_4
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 181
    .line 182
    const/16 v6, 0x9

    .line 183
    .line 184
    if-le p3, v6, :cond_7

    .line 185
    .line 186
    const-string v6, "9+"

    .line 187
    goto :goto_5

    .line 188
    .line 189
    .line 190
    :cond_7
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 191
    move-result-object v6

    .line 192
    .line 193
    .line 194
    :goto_5
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 198
    move-result-object v5

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 202
    move-result-object v6

    .line 203
    .line 204
    .line 205
    const v7, 0x7f070176

    .line 206
    .line 207
    .line 208
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 209
    move-result v6

    .line 210
    .line 211
    const/high16 v7, 0x40400000    # 3.0f

    .line 212
    div-float/2addr v6, v7

    .line 213
    float-to-int v6, v6

    .line 214
    .line 215
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 216
    const/4 v6, -0x2

    .line 217
    .line 218
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 219
    .line 220
    new-instance v5, Lcom/narvii/amino/page/PageSecondLevelLayout$1;

    .line 221
    .line 222
    .line 223
    invoke-direct {v5, p0, v1, v3}, Lcom/narvii/amino/page/PageSecondLevelLayout$1;-><init>(Lcom/narvii/amino/page/PageSecondLevelLayout;ILcom/narvii/modulization/page/Page;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    .line 228
    add-int/lit8 v1, v1, 0x1

    .line 229
    .line 230
    goto/16 :goto_2

    .line 231
    .line 232
    .line 233
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 234
    return-void
.end method
