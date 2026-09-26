.class public Lcom/narvii/feed/quizzes/HeaderLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static final ICON_FINAL_SIZE:I = 0x1e

.field private static final ICON_INIT_SIZE:I = 0x3c


# instance fields
.field private actionbarSize:I

.field private allOverlayHeight:F

.field private baseOverlayHeight:F

.field private finalIconLeft:F

.field private finalIconSize:I

.field private finalTextSize:I

.field private finalTitleWidth:F

.field private iconTextMargin:F

.field infoHint:Landroid/widget/TextView;

.field infoIcon:Landroid/widget/ImageView;

.field infoLayout:Landroid/view/View;

.field infoTitle:Landroid/widget/TextView;

.field private infoTitleContainer:Landroid/view/View;

.field private initIconLeft:F

.field private initIconSize:I

.field private initTextSize:I

.field private initTilteWidth:F

.field private statusBarSize:I

.field private tabOverlayHeight:F

.field private titlePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/feed/quizzes/HeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/feed/quizzes/HeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/HeaderLayout;->initView()V

    return-void
.end method

.method private initView()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    .line 10
    move-result v0

    .line 11
    .line 12
    iput v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->statusBarSize:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    .line 22
    move-result v0

    .line 23
    .line 24
    iput v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->actionbarSize:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    const v1, 0x7f070458

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 35
    move-result v0

    .line 36
    .line 37
    iput v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->allOverlayHeight:F

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    const v1, 0x7f070459

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 48
    move-result v0

    .line 49
    .line 50
    iput v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->tabOverlayHeight:F

    .line 51
    .line 52
    iget v1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->statusBarSize:I

    .line 53
    int-to-float v1, v1

    .line 54
    add-float/2addr v0, v1

    .line 55
    .line 56
    iget v1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->actionbarSize:I

    .line 57
    int-to-float v1, v1

    .line 58
    add-float/2addr v0, v1

    .line 59
    .line 60
    iput v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->baseOverlayHeight:F

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    const/high16 v1, 0x42700000    # 60.0f

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 70
    move-result v0

    .line 71
    float-to-int v0, v0

    .line 72
    .line 73
    iput v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->initIconSize:I

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    const/high16 v1, 0x41f00000    # 30.0f

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 83
    move-result v0

    .line 84
    float-to-int v0, v0

    .line 85
    .line 86
    iput v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->finalIconSize:I

    .line 87
    .line 88
    const/16 v0, 0x18

    .line 89
    .line 90
    iput v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->finalTextSize:I

    .line 91
    .line 92
    iput v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->initTextSize:I

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    const/high16 v1, 0x40c00000    # 6.0f

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 102
    move-result v0

    .line 103
    .line 104
    iput v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->iconTextMargin:F

    .line 105
    .line 106
    new-instance v0, Landroid/graphics/Paint;

    .line 107
    const/4 v1, 0x1

    .line 108
    .line 109
    .line 110
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 111
    .line 112
    iput-object v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->titlePaint:Landroid/graphics/Paint;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 116
    move-result-object v1

    .line 117
    .line 118
    iget v2, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->finalTextSize:I

    .line 119
    int-to-float v2, v2

    .line 120
    .line 121
    .line 122
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 123
    move-result v1

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 130
    move-result-object v0

    .line 131
    .line 132
    .line 133
    const v1, 0x7f1201a3

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 137
    move-result-object v0

    .line 138
    .line 139
    iget-object v1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->titlePaint:Landroid/graphics/Paint;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 143
    move-result v2

    .line 144
    const/4 v3, 0x0

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v0, v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    .line 148
    move-result v1

    .line 149
    .line 150
    iput v1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->finalTitleWidth:F

    .line 151
    .line 152
    iget-object v1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->titlePaint:Landroid/graphics/Paint;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 156
    move-result-object v2

    .line 157
    .line 158
    iget v4, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->initTextSize:I

    .line 159
    int-to-float v4, v4

    .line 160
    .line 161
    .line 162
    invoke-static {v2, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 163
    move-result v2

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 167
    .line 168
    iget-object v1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->titlePaint:Landroid/graphics/Paint;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 172
    move-result v2

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v0, v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    .line 176
    move-result v0

    .line 177
    .line 178
    iput v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->initTilteWidth:F

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 182
    move-result-object v0

    .line 183
    .line 184
    const/high16 v1, 0x42200000    # 40.0f

    .line 185
    .line 186
    .line 187
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 188
    move-result v0

    .line 189
    .line 190
    iput v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->initIconLeft:F

    .line 191
    .line 192
    .line 193
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/HeaderLayout;->parentLayoutWidth()I

    .line 194
    move-result v0

    .line 195
    int-to-float v0, v0

    .line 196
    .line 197
    const/high16 v1, 0x40000000    # 2.0f

    .line 198
    div-float/2addr v0, v1

    .line 199
    .line 200
    iget v2, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->initIconSize:I

    .line 201
    int-to-float v2, v2

    .line 202
    .line 203
    iget v3, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->finalTitleWidth:F

    .line 204
    add-float/2addr v2, v3

    .line 205
    .line 206
    iget v3, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->iconTextMargin:F

    .line 207
    add-float/2addr v2, v3

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 211
    move-result-object v3

    .line 212
    .line 213
    const/high16 v4, 0x41000000    # 8.0f

    .line 214
    .line 215
    .line 216
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 217
    move-result v3

    .line 218
    add-float/2addr v2, v3

    .line 219
    div-float/2addr v2, v1

    .line 220
    sub-float/2addr v0, v2

    .line 221
    .line 222
    iput v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->finalIconLeft:F

    .line 223
    return-void
.end method

.method private parentLayoutWidth()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "window"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/view/WindowManager;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    new-instance v1, Landroid/graphics/Point;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 25
    .line 26
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 27
    return v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0724

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/widget/ImageView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoIcon:Landroid/widget/ImageView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0725

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Landroid/widget/TextView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoTitle:Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a0723

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Landroid/widget/TextView;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoHint:Landroid/widget/TextView;

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a0ab3

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoLayout:Landroid/view/View;

    .line 46
    .line 47
    .line 48
    const v0, 0x7f0a0726

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    iput-object v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoTitleContainer:Landroid/view/View;

    .line 55
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 7
    move-result p1

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 11
    move-result p2

    .line 12
    .line 13
    iget p3, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->allOverlayHeight:F

    .line 14
    .line 15
    iget p4, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->baseOverlayHeight:F

    .line 16
    .line 17
    cmpl-float p5, p3, p4

    .line 18
    .line 19
    if-nez p5, :cond_0

    .line 20
    return-void

    .line 21
    :cond_0
    int-to-float p5, p1

    .line 22
    .line 23
    sub-float v0, p5, p4

    .line 24
    sub-float/2addr p3, p4

    .line 25
    div-float/2addr v0, p3

    .line 26
    .line 27
    const/high16 p3, 0x3f800000    # 1.0f

    .line 28
    .line 29
    sub-float p4, p3, v0

    .line 30
    const/4 v0, 0x0

    .line 31
    .line 32
    cmpg-float v1, p4, v0

    .line 33
    .line 34
    if-gez v1, :cond_1

    .line 35
    move p4, v0

    .line 36
    .line 37
    :cond_1
    cmpl-float v1, p4, p3

    .line 38
    .line 39
    if-lez v1, :cond_2

    .line 40
    move p4, p3

    .line 41
    .line 42
    :cond_2
    iget v1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->initTextSize:I

    .line 43
    int-to-float v2, v1

    .line 44
    .line 45
    iget v3, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->finalTextSize:I

    .line 46
    sub-int/2addr v1, v3

    .line 47
    int-to-float v1, v1

    .line 48
    mul-float/2addr v1, p4

    .line 49
    sub-float/2addr v2, v1

    .line 50
    int-to-float v1, v3

    .line 51
    .line 52
    cmpg-float v1, v2, v1

    .line 53
    .line 54
    if-gez v1, :cond_3

    .line 55
    int-to-float v2, v3

    .line 56
    .line 57
    :cond_3
    iget-object v1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoTitle:Landroid/widget/TextView;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 61
    .line 62
    iget-object v1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoIcon:Landroid/widget/ImageView;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 66
    move-result v1

    .line 67
    int-to-float v1, v1

    .line 68
    .line 69
    iget v3, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->initIconLeft:F

    .line 70
    .line 71
    iget v4, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->finalIconLeft:F

    .line 72
    .line 73
    sub-float v4, v3, v4

    .line 74
    mul-float/2addr v4, p4

    .line 75
    sub-float/2addr v3, v4

    .line 76
    .line 77
    add-float v4, v3, v1

    .line 78
    .line 79
    iget v5, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->iconTextMargin:F

    .line 80
    .line 81
    sub-float v6, p3, p4

    .line 82
    mul-float/2addr v5, v6

    .line 83
    add-float/2addr v4, v5

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 87
    move-result-object v5

    .line 88
    .line 89
    const/high16 v7, 0x40000000    # 2.0f

    .line 90
    .line 91
    .line 92
    invoke-static {v5, v7}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 93
    move-result v5

    .line 94
    mul-float/2addr v5, p4

    .line 95
    sub-float/2addr v4, v5

    .line 96
    .line 97
    if-eqz p2, :cond_4

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 101
    move-result v3

    .line 102
    int-to-float v3, v3

    .line 103
    .line 104
    iget v4, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->initIconLeft:F

    .line 105
    sub-float/2addr v3, v4

    .line 106
    .line 107
    iget v5, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->finalIconLeft:F

    .line 108
    sub-float/2addr v4, v5

    .line 109
    mul-float/2addr v4, p4

    .line 110
    add-float/2addr v3, v4

    .line 111
    sub-float/2addr v3, v1

    .line 112
    .line 113
    iget v4, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->iconTextMargin:F

    .line 114
    mul-float/2addr v4, v6

    .line 115
    .line 116
    sub-float v4, v3, v4

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 120
    move-result-object v5

    .line 121
    .line 122
    .line 123
    invoke-static {v5, v7}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 124
    move-result v5

    .line 125
    mul-float/2addr v5, p4

    .line 126
    add-float/2addr v4, v5

    .line 127
    .line 128
    :cond_4
    iget-object v5, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoTitle:Landroid/widget/TextView;

    .line 129
    const/4 v6, 0x1

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 133
    const/4 v2, 0x0

    .line 134
    .line 135
    if-eqz p2, :cond_5

    .line 136
    .line 137
    iget-object p2, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoIcon:Landroid/widget/ImageView;

    .line 138
    float-to-int v5, v3

    .line 139
    .line 140
    iget-object v6, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoLayout:Landroid/view/View;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    .line 144
    move-result v6

    .line 145
    .line 146
    iget v8, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->statusBarSize:I

    .line 147
    add-int/2addr v6, v8

    .line 148
    int-to-float v6, v6

    .line 149
    add-float/2addr v6, p4

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 153
    move-result-object p4

    .line 154
    .line 155
    .line 156
    invoke-static {p4, v7}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 157
    move-result p4

    .line 158
    add-float/2addr v6, p4

    .line 159
    float-to-int p4, v6

    .line 160
    add-float/2addr v3, v1

    .line 161
    float-to-int v1, v3

    .line 162
    .line 163
    iget-object v3, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoLayout:Landroid/view/View;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    .line 167
    move-result v3

    .line 168
    .line 169
    sub-int v3, p1, v3

    .line 170
    int-to-float v3, v3

    .line 171
    .line 172
    iget v6, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->tabOverlayHeight:F

    .line 173
    sub-float/2addr v3, v6

    .line 174
    float-to-int v3, v3

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2, v5, p4, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 178
    .line 179
    iget-object p2, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoTitleContainer:Landroid/view/View;

    .line 180
    .line 181
    iget-object p4, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoLayout:Landroid/view/View;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p4}, Landroid/view/View;->getPaddingTop()I

    .line 185
    move-result p4

    .line 186
    .line 187
    iget v1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->statusBarSize:I

    .line 188
    add-int/2addr p4, v1

    .line 189
    float-to-int v1, v4

    .line 190
    .line 191
    iget-object v3, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoLayout:Landroid/view/View;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    .line 195
    move-result v3

    .line 196
    sub-int/2addr p1, v3

    .line 197
    int-to-float p1, p1

    .line 198
    .line 199
    iget v3, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->tabOverlayHeight:F

    .line 200
    sub-float/2addr p1, v3

    .line 201
    float-to-int p1, p1

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2, v2, p4, v1, p1}, Landroid/view/View;->layout(IIII)V

    .line 205
    goto :goto_0

    .line 206
    .line 207
    :cond_5
    iget-object p2, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoIcon:Landroid/widget/ImageView;

    .line 208
    float-to-int v5, v3

    .line 209
    .line 210
    iget-object v6, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoLayout:Landroid/view/View;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    .line 214
    move-result v6

    .line 215
    .line 216
    iget v8, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->statusBarSize:I

    .line 217
    add-int/2addr v6, v8

    .line 218
    int-to-float v6, v6

    .line 219
    add-float/2addr v6, p4

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 223
    move-result-object p4

    .line 224
    .line 225
    .line 226
    invoke-static {p4, v7}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 227
    move-result p4

    .line 228
    add-float/2addr v6, p4

    .line 229
    float-to-int p4, v6

    .line 230
    add-float/2addr v3, v1

    .line 231
    float-to-int v1, v3

    .line 232
    .line 233
    iget-object v3, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoLayout:Landroid/view/View;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    .line 237
    move-result v3

    .line 238
    .line 239
    sub-int v3, p1, v3

    .line 240
    int-to-float v3, v3

    .line 241
    .line 242
    iget v6, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->tabOverlayHeight:F

    .line 243
    sub-float/2addr v3, v6

    .line 244
    float-to-int v3, v3

    .line 245
    .line 246
    .line 247
    invoke-virtual {p2, v5, p4, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 248
    .line 249
    iget-object p2, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoTitleContainer:Landroid/view/View;

    .line 250
    float-to-int p4, v4

    .line 251
    .line 252
    iget-object v1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoLayout:Landroid/view/View;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 256
    move-result v1

    .line 257
    .line 258
    iget v3, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->statusBarSize:I

    .line 259
    add-int/2addr v1, v3

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 263
    move-result v3

    .line 264
    .line 265
    iget-object v4, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoTitleContainer:Landroid/view/View;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    .line 269
    move-result v4

    .line 270
    sub-int/2addr v3, v4

    .line 271
    .line 272
    iget-object v4, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoLayout:Landroid/view/View;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 276
    move-result v4

    .line 277
    sub-int/2addr p1, v4

    .line 278
    int-to-float p1, p1

    .line 279
    .line 280
    iget v4, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->tabOverlayHeight:F

    .line 281
    sub-float/2addr p1, v4

    .line 282
    float-to-int p1, p1

    .line 283
    .line 284
    .line 285
    invoke-virtual {p2, p4, v1, v3, p1}, Landroid/view/View;->layout(IIII)V

    .line 286
    .line 287
    :goto_0
    iget p1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->baseOverlayHeight:F

    .line 288
    .line 289
    iget p2, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->allOverlayHeight:F

    .line 290
    add-float/2addr p1, p2

    .line 291
    div-float/2addr p1, v7

    .line 292
    .line 293
    add-float p4, p1, p2

    .line 294
    div-float/2addr p4, v7

    .line 295
    .line 296
    cmpg-float v1, p5, p1

    .line 297
    .line 298
    if-gtz v1, :cond_6

    .line 299
    .line 300
    iget-object p1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoHint:Landroid/widget/TextView;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 304
    .line 305
    iget-object p1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoHint:Landroid/widget/TextView;

    .line 306
    .line 307
    const/16 p2, 0x8

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 311
    goto :goto_1

    .line 312
    .line 313
    :cond_6
    cmpl-float p4, p5, p4

    .line 314
    .line 315
    if-ltz p4, :cond_7

    .line 316
    .line 317
    iget-object p1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoHint:Landroid/widget/TextView;

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 321
    .line 322
    iget-object p1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoHint:Landroid/widget/TextView;

    .line 323
    .line 324
    .line 325
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 326
    goto :goto_1

    .line 327
    :cond_7
    sub-float/2addr p5, p1

    .line 328
    sub-float/2addr p2, p1

    .line 329
    div-float/2addr p5, p2

    .line 330
    .line 331
    iget-object p1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoHint:Landroid/widget/TextView;

    .line 332
    .line 333
    .line 334
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 335
    .line 336
    iget-object p1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoHint:Landroid/widget/TextView;

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1, p5}, Landroid/view/View;->setAlpha(F)V

    .line 340
    :goto_1
    return-void
.end method
