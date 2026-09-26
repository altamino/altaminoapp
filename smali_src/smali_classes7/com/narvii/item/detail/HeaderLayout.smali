.class public Lcom/narvii/item/detail/HeaderLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# instance fields
.field actionbar2:Landroid/view/View;

.field blurReady:Z

.field private blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

.field colorBackground:Z

.field darkTheme:Z

.field goldLine:Landroid/view/View;

.field public gradient:Landroid/view/View;

.field height1:I

.field private isHiddenPost:Z

.field item:Lcom/narvii/model/Item;

.field itemCard:Lcom/narvii/widget/CardView;

.field itemCard2:Lcom/narvii/widget/CardView;

.field private final keywordListener:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public keywordsView:Lcom/narvii/widget/KeywordsView;

.field label:Landroid/widget/TextView;

.field label2:Landroid/widget/TextView;

.field private preview:Z

.field slideshow:Lcom/narvii/widget/SlideshowView;

.field private voteBtn:Landroid/view/View;

.field private voteCount:Landroid/widget/TextView;

.field private voteIcon:Lcom/narvii/widget/VoteIcon;

.field voteLayout:Landroid/view/View;

.field private voteProgress:Lcom/narvii/widget/SpinningView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/item/detail/HeaderLayout$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/item/detail/HeaderLayout$1;-><init>(Lcom/narvii/item/detail/HeaderLayout;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/item/detail/HeaderLayout;->keywordListener:Lcom/narvii/util/Callback;

    .line 11
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/item/detail/HeaderLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/item/detail/HeaderLayout;->isHiddenPost:Z

    return p0
.end method

.method static bridge synthetic b(Lcom/narvii/item/detail/HeaderLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/item/detail/HeaderLayout;->preview:Z

    return p0
.end method

.method private setAlpha(Landroid/view/View;II)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-gt v0, p2, :cond_0

    .line 7
    const/4 p2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 11
    const/4 p2, 0x4

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    .line 18
    const/high16 v2, 0x3f800000    # 1.0f

    .line 19
    .line 20
    if-lt v0, p3, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    sub-int v0, p3, v0

    .line 30
    int-to-float v0, v0

    .line 31
    mul-float/2addr v0, v2

    .line 32
    sub-int/2addr p3, p2

    .line 33
    int-to-float p2, p3

    .line 34
    div-float/2addr v0, p2

    .line 35
    sub-float/2addr v2, v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    :goto_0
    return-void
.end method

.method private updateView()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->keywordsView:Lcom/narvii/widget/KeywordsView;

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/narvii/item/detail/HeaderLayout;->darkTheme:Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/widget/KeywordsView;->setDarkTheme(Z)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->item:Lcom/narvii/model/Item;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->hasBackground()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->item:Lcom/narvii/model/Item;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/narvii/util/PaletteUtils;->isDarkColor(I)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    .line 34
    const v0, 0x7f080250

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_0
    const v0, 0x7f08024f

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_1
    const v0, 0x7f08024e

    .line 43
    .line 44
    :goto_0
    iget-object v1, p0, Lcom/narvii/item/detail/HeaderLayout;->voteBtn:Landroid/view/View;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->voteIcon:Lcom/narvii/widget/VoteIcon;

    .line 50
    .line 51
    iget-boolean v1, p0, Lcom/narvii/item/detail/HeaderLayout;->darkTheme:Z

    .line 52
    const/4 v2, -0x1

    .line 53
    .line 54
    .line 55
    const v3, -0xaaaaab

    .line 56
    .line 57
    if-nez v1, :cond_2

    .line 58
    move v1, v3

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    move v1, v2

    .line 61
    .line 62
    .line 63
    :goto_1
    invoke-virtual {v0, v1}, Lcom/narvii/widget/VoteIcon;->setNoneColor(I)V

    .line 64
    .line 65
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->voteCount:Landroid/widget/TextView;

    .line 66
    .line 67
    iget-boolean v1, p0, Lcom/narvii/item/detail/HeaderLayout;->darkTheme:Z

    .line 68
    .line 69
    if-nez v1, :cond_3

    .line 70
    move v1, v3

    .line 71
    goto :goto_2

    .line 72
    .line 73
    .line 74
    :cond_3
    const v1, -0x111112

    .line 75
    .line 76
    .line 77
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    .line 79
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->voteProgress:Lcom/narvii/widget/SpinningView;

    .line 80
    .line 81
    iget-boolean v1, p0, Lcom/narvii/item/detail/HeaderLayout;->darkTheme:Z

    .line 82
    .line 83
    if-nez v1, :cond_4

    .line 84
    move v2, v3

    .line 85
    .line 86
    .line 87
    :cond_4
    invoke-virtual {v0, v2}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    .line 88
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a062a

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->gradient:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a0d25

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/widget/SlideshowView;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->slideshow:Lcom/narvii/widget/SlideshowView;

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0a0756

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/widget/CardView;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->itemCard:Lcom/narvii/widget/CardView;

    .line 35
    .line 36
    .line 37
    const v0, 0x7f0a0795

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    check-cast v0, Lcom/narvii/widget/KeywordsView;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->keywordsView:Lcom/narvii/widget/KeywordsView;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/item/detail/HeaderLayout;->keywordListener:Lcom/narvii/util/Callback;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/narvii/widget/KeywordsView;->setOnKeywordClickListener(Lcom/narvii/util/Callback;)V

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->keywordsView:Lcom/narvii/widget/KeywordsView;

    .line 53
    const/4 v1, 0x1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->keywordsView:Lcom/narvii/widget/KeywordsView;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 73
    int-to-float v1, v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 77
    move-result-object v2

    .line 78
    .line 79
    const/high16 v3, 0x41a00000    # 20.0f

    .line 80
    .line 81
    .line 82
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 83
    move-result v2

    .line 84
    sub-float/2addr v1, v2

    .line 85
    float-to-int v1, v1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/narvii/widget/KeywordsView;->setMaxWidth(I)V

    .line 89
    .line 90
    .line 91
    const v0, 0x7f0a1002

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    check-cast v0, Lcom/narvii/widget/VoteIcon;

    .line 98
    .line 99
    iput-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->voteIcon:Lcom/narvii/widget/VoteIcon;

    .line 100
    .line 101
    .line 102
    const v0, 0x7f0a0ffd

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    check-cast v0, Landroid/widget/TextView;

    .line 109
    .line 110
    iput-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->voteCount:Landroid/widget/TextView;

    .line 111
    .line 112
    .line 113
    const v0, 0x7f0a1006

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    check-cast v0, Lcom/narvii/widget/SpinningView;

    .line 120
    .line 121
    iput-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->voteProgress:Lcom/narvii/widget/SpinningView;

    .line 122
    .line 123
    .line 124
    const v0, 0x7f0a0ffb

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 128
    move-result-object v0

    .line 129
    .line 130
    iput-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->voteBtn:Landroid/view/View;

    .line 131
    .line 132
    .line 133
    const v0, 0x7f0a1005

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 137
    move-result-object v0

    .line 138
    .line 139
    iput-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->voteLayout:Landroid/view/View;

    .line 140
    .line 141
    .line 142
    const v0, 0x7f0a0799

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    move-result-object v0

    .line 147
    .line 148
    check-cast v0, Landroid/widget/TextView;

    .line 149
    .line 150
    iput-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->label:Landroid/widget/TextView;

    .line 151
    .line 152
    .line 153
    const v0, 0x7f0a0078

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    iput-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->actionbar2:Landroid/view/View;

    .line 160
    .line 161
    .line 162
    const v1, 0x7f0a0758

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 166
    move-result-object v0

    .line 167
    .line 168
    check-cast v0, Lcom/narvii/widget/CardView;

    .line 169
    .line 170
    iput-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->itemCard2:Lcom/narvii/widget/CardView;

    .line 171
    .line 172
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->actionbar2:Landroid/view/View;

    .line 173
    .line 174
    .line 175
    const v1, 0x7f0a079a

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 179
    move-result-object v0

    .line 180
    .line 181
    check-cast v0, Landroid/widget/TextView;

    .line 182
    .line 183
    iput-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->label2:Landroid/widget/TextView;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 187
    move-result-object v0

    .line 188
    .line 189
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    .line 193
    move-result v0

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 197
    move-result-object v1

    .line 198
    .line 199
    check-cast v1, Lcom/narvii/app/NVActivity;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    .line 203
    move-result v1

    .line 204
    .line 205
    iget-object v2, p0, Lcom/narvii/item/detail/HeaderLayout;->actionbar2:Landroid/view/View;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 209
    move-result-object v2

    .line 210
    .line 211
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 212
    .line 213
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 214
    .line 215
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 216
    .line 217
    .line 218
    const v0, 0x7f0a0765

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 222
    move-result-object v0

    .line 223
    .line 224
    iput-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->goldLine:Landroid/view/View;

    .line 225
    .line 226
    .line 227
    const v0, 0x7f0a01da

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 231
    move-result-object v0

    .line 232
    .line 233
    check-cast v0, Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 234
    .line 235
    iput-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 236
    .line 237
    if-eqz v0, :cond_0

    .line 238
    .line 239
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->slideshow:Lcom/narvii/widget/SlideshowView;

    .line 240
    .line 241
    if-eqz v0, :cond_0

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, p0}, Lcom/narvii/widget/SlideshowView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 245
    .line 246
    .line 247
    :cond_0
    invoke-direct {p0}, Lcom/narvii/item/detail/HeaderLayout;->updateView()V

    .line 248
    return-void
.end method

.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/item/detail/HeaderLayout;->blurReady:Z

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    const/4 p1, 0x4

    .line 6
    .line 7
    if-ne p2, p1, :cond_0

    .line 8
    const/4 p1, 0x1

    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/narvii/item/detail/HeaderLayout;->blurReady:Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 14
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    .line 13
    move-result p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    check-cast p2, Lcom/narvii/app/NVActivity;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    .line 23
    move-result p2

    .line 24
    .line 25
    add-int p3, p1, p2

    .line 26
    .line 27
    div-int/lit8 p4, p3, 0x2

    .line 28
    .line 29
    add-int p5, p3, p4

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x0

    .line 35
    move v2, v1

    .line 36
    .line 37
    :goto_0
    if-ge v2, v0, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 45
    move-result-object v4

    .line 46
    .line 47
    const-string v5, "fade"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v4

    .line 52
    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, v3, p4, p5}, Lcom/narvii/item/detail/HeaderLayout;->setAlpha(Landroid/view/View;II)V

    .line 57
    .line 58
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 59
    goto :goto_0

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 63
    move-result p4

    .line 64
    const/4 v0, 0x0

    .line 65
    const/4 v2, 0x4

    .line 66
    .line 67
    const/high16 v3, 0x3f800000    # 1.0f

    .line 68
    .line 69
    if-le p4, p5, :cond_2

    .line 70
    .line 71
    iget-object p3, p0, Lcom/narvii/item/detail/HeaderLayout;->actionbar2:Landroid/view/View;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    iget-object p3, p0, Lcom/narvii/item/detail/HeaderLayout;->actionbar2:Landroid/view/View;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 80
    .line 81
    iget-object p3, p0, Lcom/narvii/item/detail/HeaderLayout;->goldLine:Landroid/view/View;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    iget-object p3, p0, Lcom/narvii/item/detail/HeaderLayout;->goldLine:Landroid/view/View;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 90
    goto :goto_3

    .line 91
    .line 92
    :cond_2
    const/16 v4, 0xfe

    .line 93
    .line 94
    if-gt p4, p3, :cond_4

    .line 95
    .line 96
    iget-object p3, p0, Lcom/narvii/item/detail/HeaderLayout;->actionbar2:Landroid/view/View;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    iget-object p3, p0, Lcom/narvii/item/detail/HeaderLayout;->actionbar2:Landroid/view/View;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    .line 105
    .line 106
    iget-object p3, p0, Lcom/narvii/item/detail/HeaderLayout;->goldLine:Landroid/view/View;

    .line 107
    .line 108
    iget-object p5, p0, Lcom/narvii/item/detail/HeaderLayout;->item:Lcom/narvii/model/Item;

    .line 109
    .line 110
    iget-object p5, p5, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 111
    .line 112
    if-eqz p5, :cond_3

    .line 113
    .line 114
    iget p5, p5, Lcom/narvii/model/User;->role:I

    .line 115
    .line 116
    if-ne p5, v4, :cond_3

    .line 117
    move p5, v1

    .line 118
    goto :goto_1

    .line 119
    :cond_3
    move p5, v2

    .line 120
    .line 121
    .line 122
    :goto_1
    invoke-virtual {p3, p5}, Landroid/view/View;->setVisibility(I)V

    .line 123
    .line 124
    iget-object p3, p0, Lcom/narvii/item/detail/HeaderLayout;->goldLine:Landroid/view/View;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    .line 128
    goto :goto_3

    .line 129
    .line 130
    :cond_4
    sub-int v5, p5, p4

    .line 131
    int-to-float v5, v5

    .line 132
    mul-float/2addr v5, v3

    .line 133
    sub-int/2addr p5, p3

    .line 134
    int-to-float p3, p5

    .line 135
    div-float/2addr v5, p3

    .line 136
    .line 137
    iget-object p3, p0, Lcom/narvii/item/detail/HeaderLayout;->actionbar2:Landroid/view/View;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .line 142
    iget-object p3, p0, Lcom/narvii/item/detail/HeaderLayout;->actionbar2:Landroid/view/View;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 146
    .line 147
    iget-object p3, p0, Lcom/narvii/item/detail/HeaderLayout;->goldLine:Landroid/view/View;

    .line 148
    .line 149
    iget-object p5, p0, Lcom/narvii/item/detail/HeaderLayout;->item:Lcom/narvii/model/Item;

    .line 150
    .line 151
    iget-object p5, p5, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 152
    .line 153
    if-eqz p5, :cond_5

    .line 154
    .line 155
    iget p5, p5, Lcom/narvii/model/User;->role:I

    .line 156
    .line 157
    if-ne p5, v4, :cond_5

    .line 158
    move p5, v1

    .line 159
    goto :goto_2

    .line 160
    :cond_5
    move p5, v2

    .line 161
    .line 162
    .line 163
    :goto_2
    invoke-virtual {p3, p5}, Landroid/view/View;->setVisibility(I)V

    .line 164
    .line 165
    iget-object p3, p0, Lcom/narvii/item/detail/HeaderLayout;->goldLine:Landroid/view/View;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 169
    .line 170
    :goto_3
    iget p3, p0, Lcom/narvii/item/detail/HeaderLayout;->height1:I

    .line 171
    .line 172
    iget-boolean p5, p0, Lcom/narvii/item/detail/HeaderLayout;->blurReady:Z

    .line 173
    .line 174
    if-eqz p5, :cond_9

    .line 175
    .line 176
    div-int/lit8 p3, p3, 0x2

    .line 177
    .line 178
    if-ge p4, p3, :cond_6

    .line 179
    sub-int/2addr p4, p1

    .line 180
    sub-int/2addr p4, p2

    .line 181
    int-to-float p4, p4

    .line 182
    mul-float/2addr p4, v3

    .line 183
    sub-int/2addr p3, p1

    .line 184
    sub-int/2addr p3, p2

    .line 185
    int-to-float p1, p3

    .line 186
    div-float/2addr p4, p1

    .line 187
    goto :goto_4

    .line 188
    :cond_6
    move p4, v3

    .line 189
    .line 190
    :goto_4
    cmpg-float p1, p4, v0

    .line 191
    .line 192
    if-gez p1, :cond_7

    .line 193
    goto :goto_5

    .line 194
    :cond_7
    move v0, p4

    .line 195
    .line 196
    :goto_5
    iget-object p1, p0, Lcom/narvii/item/detail/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 197
    .line 198
    cmpl-float p2, v0, v3

    .line 199
    .line 200
    if-ltz p2, :cond_8

    .line 201
    move v1, v2

    .line 202
    .line 203
    .line 204
    :cond_8
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    .line 206
    iget-object p1, p0, Lcom/narvii/item/detail/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 207
    sub-float/2addr v3, v0

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 211
    goto :goto_6

    .line 212
    .line 213
    :cond_9
    iget-object p1, p0, Lcom/narvii/item/detail/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 217
    :goto_6
    return-void
.end method

.method public removeActionBar2()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->actionbar2:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    :cond_0
    return-void
.end method

.method public setDarkTheme(ZZ)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/item/detail/HeaderLayout;->darkTheme:Z

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/narvii/item/detail/HeaderLayout;->colorBackground:Z

    .line 7
    .line 8
    if-ne v0, p2, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/item/detail/HeaderLayout;->darkTheme:Z

    .line 12
    .line 13
    iput-boolean p2, p0, Lcom/narvii/item/detail/HeaderLayout;->colorBackground:Z

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/item/detail/HeaderLayout;->updateView()V

    .line 17
    return-void
.end method

.method public setHeaderClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->voteBtn:Landroid/view/View;

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

.method public setHeight1(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/item/detail/HeaderLayout;->height1:I

    return-void
.end method

.method public setIsHiddenPost(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/item/detail/HeaderLayout;->isHiddenPost:Z

    return-void
.end method

.method public setItem(Lcom/narvii/model/Item;)V
    .locals 3

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/item/detail/HeaderLayout;->item:Lcom/narvii/model/Item;

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 5
    .line 6
    const-string v1, "coverAnimation"

    .line 7
    .line 8
    .line 9
    filled-new-array {v1}, [Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "none"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object v2, p0, Lcom/narvii/item/detail/HeaderLayout;->slideshow:Lcom/narvii/widget/SlideshowView;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    iget-object v1, p0, Lcom/narvii/item/detail/HeaderLayout;->slideshow:Lcom/narvii/widget/SlideshowView;

    .line 35
    .line 36
    .line 37
    const v2, 0x7f080982

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 41
    .line 42
    :goto_0
    iget-object v1, p0, Lcom/narvii/item/detail/HeaderLayout;->slideshow:Lcom/narvii/widget/SlideshowView;

    .line 43
    .line 44
    iput-boolean v0, v1, Lcom/narvii/widget/SlideshowView;->noSlide:Z

    .line 45
    .line 46
    iget-object v0, p1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v0}, Lcom/narvii/widget/SlideshowView;->setMediaList(Ljava/util/List;)V

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->itemCard:Lcom/narvii/widget/CardView;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->label:Landroid/widget/TextView;

    .line 57
    .line 58
    iget-object v1, p1, Lcom/narvii/model/Item;->label:Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->itemCard2:Lcom/narvii/widget/CardView;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    .line 67
    .line 68
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->label2:Landroid/widget/TextView;

    .line 69
    .line 70
    iget-object v1, p1, Lcom/narvii/model/Item;->label:Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->keywordsView:Lcom/narvii/widget/KeywordsView;

    .line 76
    .line 77
    iget-object v1, p1, Lcom/narvii/model/Feed;->keywords:Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/narvii/widget/KeywordsView;->setKeywords(Ljava/lang/String;)V

    .line 81
    .line 82
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->voteIcon:Lcom/narvii/widget/VoteIcon;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    .line 89
    invoke-static {v1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    .line 93
    invoke-static {v1}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    .line 94
    move-result v1

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v1}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    .line 98
    move-result v1

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    .line 102
    .line 103
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->voteCount:Landroid/widget/TextView;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    .line 107
    move-result v1

    .line 108
    .line 109
    if-nez v1, :cond_1

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 113
    move-result-object p1

    .line 114
    .line 115
    .line 116
    const v1, 0x7f120b8c

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 120
    move-result-object p1

    .line 121
    goto :goto_1

    .line 122
    .line 123
    .line 124
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    .line 125
    move-result p1

    .line 126
    .line 127
    .line 128
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    .line 132
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    return-void
.end method

.method public setLongClickVoteListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->voteBtn:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 8
    :cond_0
    return-void
.end method

.method public setPreview(Z)V
    .locals 4

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/item/detail/HeaderLayout;->preview:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->actionbar2:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0a0e51

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Landroid/widget/TextView;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/item/detail/HeaderLayout;->actionbar2:Landroid/view/View;

    .line 16
    .line 17
    .line 18
    const v2, 0x7f0a0079

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object v2, p0, Lcom/narvii/item/detail/HeaderLayout;->actionbar2:Landroid/view/View;

    .line 27
    .line 28
    instance-of v3, v2, Landroid/widget/LinearLayout;

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    check-cast v2, Landroid/widget/LinearLayout;

    .line 33
    .line 34
    .line 35
    const v3, 0x800013

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 39
    .line 40
    :cond_0
    if-eqz v1, :cond_2

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    const/4 v2, 0x4

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    const/16 v2, 0x8

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    :cond_2
    if-eqz v0, :cond_3

    .line 52
    .line 53
    .line 54
    const v1, 0x7f1202bd

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 58
    .line 59
    :cond_3
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->itemCard2:Lcom/narvii/widget/CardView;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/narvii/item/detail/HeaderLayout;->label2:Landroid/widget/TextView;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 74
    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    const/high16 v2, 0x41200000    # 10.0f

    .line 82
    .line 83
    .line 84
    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 85
    move-result p1

    .line 86
    float-to-int p1, p1

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 93
    :cond_4
    return-void
.end method

.method public setVoting(Z)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->voteIcon:Lcom/narvii/widget/VoteIcon;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    move v3, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v3, v1

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->voteProgress:Lcom/narvii/widget/SpinningView;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v1, v2

    .line 20
    .line 21
    .line 22
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    return-void
.end method
