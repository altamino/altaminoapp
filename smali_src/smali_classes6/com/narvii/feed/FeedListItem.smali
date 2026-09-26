.class public Lcom/narvii/feed/FeedListItem;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/link/ILoadTrackView;


# static fields
.field private static final CONTENT_MAXLINE:I = 0x6

.field private static final CONTENT_MAXLINE_REF:I = 0x5

.field private static final CONTENT_MAXLINE_WITH_IMAGE:I = 0x2

.field static bgColor:I

.field static fillPath:Landroid/graphics/Path;

.field static paint:Landroid/graphics/Paint;

.field static size:I

.field static strokeColor:I

.field static strokePath:Landroid/graphics/Path;

.field static strokeWidth:I


# instance fields
.field avatar:Lcom/narvii/widget/NVImageView;

.field private backgroundColor:I

.field caption1:Landroid/widget/TextView;

.field caption2:Landroid/widget/TextView;

.field caption3:Landroid/widget/TextView;

.field private card:Lcom/narvii/widget/CardView;

.field card2:Lcom/narvii/widget/Card2View;

.field public content:Landroid/widget/TextView;

.field private darkTheme:Ljava/lang/Boolean;

.field datetime:Landroid/widget/TextView;

.field public disableClick:Z

.field disabled:Landroid/widget/TextView;

.field public externalToolbar:Lcom/narvii/feed/FeedToolbarExternalLayout;

.field private fansOnlyContentIndicator:Landroid/view/View;

.field feed:Lcom/narvii/model/Feed;

.field formatter:Lcom/narvii/util/DateTimeFormatter;

.field frame1:Landroid/view/View;

.field frame2:Landroid/view/View;

.field frame3:Landroid/view/View;

.field icon:Lcom/narvii/widget/TintButton;

.field protected imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

.field img1:Lcom/narvii/widget/NVImageView;

.field img2:Lcom/narvii/widget/NVImageView;

.field img3:Lcom/narvii/widget/NVImageView;

.field isRef:Z

.field loadFinishListener:Lcom/narvii/link/LoadFinishListener;

.field nickname:Landroid/view/View;

.field polloptList:Lcom/narvii/poll/PollOptionListLayout;

.field quizCoverView:Lcom/narvii/feed/quizzes/QuizCoverView;

.field quizPlayed:Landroid/widget/TextView;

.field private quizPlayedTag:Landroid/view/View;

.field private rectF:Landroid/graphics/RectF;

.field ref:Lcom/narvii/feed/FeedListItem;

.field siteIcon:Lcom/narvii/widget/NVImageView;

.field siteSource:Landroid/widget/TextView;

.field public title:Landroid/widget/TextView;

.field public toolbar:Lcom/narvii/feed/FeedToolbarLayout;

.field unknowTypeHint:Landroid/widget/TextView;

.field userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/feed/FeedListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/narvii/feed/FeedListItem;->backgroundColor:I

    .line 3
    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/feed/FeedListItem;->formatter:Lcom/narvii/util/DateTimeFormatter;

    .line 4
    sget-object v1, Lcom/narvii/amino/R$styleable;->FeedListItem:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/feed/FeedListItem;->isRef:Z

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    sput-object p1, Lcom/narvii/feed/FeedListItem;->strokePath:Landroid/graphics/Path;

    .line 8
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    sput-object p1, Lcom/narvii/feed/FeedListItem;->fillPath:Landroid/graphics/Path;

    .line 9
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/feed/FeedListItem;->rectF:Landroid/graphics/RectF;

    return-void
.end method

.method private configUserHeader()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->feed:Lcom/narvii/model/Feed;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lcom/narvii/feed/FeedListItem;->avatar:Lcom/narvii/widget/NVImageView;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/narvii/feed/FeedListItem;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    return-void

    .line 15
    .line 16
    :cond_1
    iget-object v2, p0, Lcom/narvii/feed/FeedListItem;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 17
    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    iget-object v0, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_2
    iget-object v0, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 34
    .line 35
    :goto_0
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->feed:Lcom/narvii/model/Feed;

    .line 36
    .line 37
    instance-of v1, v0, Lcom/narvii/model/Item;

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/feed/FeedListItem;->avatar:Lcom/narvii/widget/NVImageView;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/narvii/model/User;->iconForCatalog()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 51
    .line 52
    :cond_3
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->nickname:Landroid/view/View;

    .line 53
    .line 54
    instance-of v1, v0, Lcom/narvii/widget/NicknameView;

    .line 55
    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    check-cast v0, Lcom/narvii/widget/NicknameView;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/narvii/feed/FeedListItem;->feed:Lcom/narvii/model/Feed;

    .line 61
    .line 62
    iget-object v2, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 63
    .line 64
    instance-of v1, v1, Lcom/narvii/model/Item;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;Z)V

    .line 68
    goto :goto_2

    .line 69
    .line 70
    :cond_4
    check-cast v0, Landroid/widget/TextView;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/narvii/feed/FeedListItem;->feed:Lcom/narvii/model/Feed;

    .line 73
    .line 74
    instance-of v2, v1, Lcom/narvii/model/Item;

    .line 75
    .line 76
    iget-object v1, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 77
    .line 78
    if-eqz v2, :cond_5

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/narvii/model/User;->nicknameForCatalog()Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    goto :goto_1

    .line 84
    .line 85
    .line 86
    :cond_5
    invoke-virtual {v1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    .line 90
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    :goto_2
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->datetime:Landroid/widget/TextView;

    .line 93
    .line 94
    if-eqz v0, :cond_6

    .line 95
    .line 96
    iget-object v1, p0, Lcom/narvii/feed/FeedListItem;->formatter:Lcom/narvii/util/DateTimeFormatter;

    .line 97
    .line 98
    iget-object v2, p0, Lcom/narvii/feed/FeedListItem;->feed:Lcom/narvii/model/Feed;

    .line 99
    .line 100
    iget-object v2, v2, Lcom/narvii/model/Feed;->createdTime:Ljava/util/Date;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_6
    return-void
.end method

.method private setImagePlaceholder(Lcom/narvii/widget/NVImageView;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/feed/FeedListItem;->darkTheme:Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    const v1, 0x7f0603da

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    const v1, 0x7f0603d9

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/feed/FeedListItem;->isRef:Z

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/feed/FeedListItem;->darkTheme:Ljava/lang/Boolean;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    .line 24
    const v1, 0x7f06040b

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    const v1, 0x7f06040a

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 32
    move-result v1

    .line 33
    .line 34
    sput v1, Lcom/narvii/feed/FeedListItem;->strokeColor:I

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/feed/FeedListItem;->darkTheme:Ljava/lang/Boolean;

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    move-result v1

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    .line 47
    const v1, 0x7f0603db

    .line 48
    goto :goto_1

    .line 49
    .line 50
    .line 51
    :cond_1
    const v1, 0x7f060409

    .line 52
    .line 53
    .line 54
    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 55
    move-result v1

    .line 56
    .line 57
    sput v1, Lcom/narvii/feed/FeedListItem;->bgColor:I

    .line 58
    .line 59
    sget-object v1, Lcom/narvii/feed/FeedListItem;->paint:Landroid/graphics/Paint;

    .line 60
    .line 61
    if-nez v1, :cond_2

    .line 62
    .line 63
    .line 64
    const v1, 0x7f070469

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 68
    move-result v1

    .line 69
    .line 70
    sput v1, Lcom/narvii/feed/FeedListItem;->strokeWidth:I

    .line 71
    .line 72
    .line 73
    const v1, 0x7f070463

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 77
    move-result v0

    .line 78
    .line 79
    sput v0, Lcom/narvii/feed/FeedListItem;->size:I

    .line 80
    .line 81
    new-instance v0, Landroid/graphics/Paint;

    .line 82
    .line 83
    .line 84
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 85
    .line 86
    sput-object v0, Lcom/narvii/feed/FeedListItem;->paint:Landroid/graphics/Paint;

    .line 87
    const/4 v1, 0x1

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    .line 92
    sget-object v0, Lcom/narvii/feed/FeedListItem;->paint:Landroid/graphics/Paint;

    .line 93
    .line 94
    sget v1, Lcom/narvii/feed/FeedListItem;->strokeWidth:I

    .line 95
    int-to-float v1, v1

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 99
    .line 100
    sget-object v0, Lcom/narvii/feed/FeedListItem;->paint:Landroid/graphics/Paint;

    .line 101
    .line 102
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    const/high16 v1, 0x41000000    # 8.0f

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 115
    move-result v0

    .line 116
    float-to-int v0, v0

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 120
    move-result v1

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 124
    move-result v2

    .line 125
    int-to-float v3, v1

    .line 126
    .line 127
    .line 128
    const v4, 0x3e19999a    # 0.15f

    .line 129
    mul-float/2addr v4, v3

    .line 130
    .line 131
    sget-object v5, Lcom/narvii/feed/FeedListItem;->strokePath:Landroid/graphics/Path;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 135
    .line 136
    sget-object v5, Lcom/narvii/feed/FeedListItem;->strokePath:Landroid/graphics/Path;

    .line 137
    const/4 v6, 0x0

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 141
    .line 142
    sget-object v5, Lcom/narvii/feed/FeedListItem;->strokePath:Landroid/graphics/Path;

    .line 143
    .line 144
    sget v7, Lcom/narvii/feed/FeedListItem;->size:I

    .line 145
    int-to-float v8, v7

    .line 146
    add-float/2addr v8, v4

    .line 147
    neg-int v7, v7

    .line 148
    int-to-float v7, v7

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5, v8, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 152
    .line 153
    sget-object v5, Lcom/narvii/feed/FeedListItem;->strokePath:Landroid/graphics/Path;

    .line 154
    .line 155
    sget v7, Lcom/narvii/feed/FeedListItem;->size:I

    .line 156
    .line 157
    mul-int/lit8 v7, v7, 0x2

    .line 158
    int-to-float v7, v7

    .line 159
    add-float/2addr v7, v4

    .line 160
    .line 161
    .line 162
    invoke-virtual {v5, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 163
    .line 164
    sget-object v5, Lcom/narvii/feed/FeedListItem;->strokePath:Landroid/graphics/Path;

    .line 165
    .line 166
    sub-int v7, v1, v0

    .line 167
    int-to-float v7, v7

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 171
    .line 172
    iget-object v5, p0, Lcom/narvii/feed/FeedListItem;->rectF:Landroid/graphics/RectF;

    .line 173
    .line 174
    mul-int/lit8 v7, v0, 0x2

    .line 175
    sub-int/2addr v1, v7

    .line 176
    int-to-float v1, v1

    .line 177
    .line 178
    iput v1, v5, Landroid/graphics/RectF;->left:F

    .line 179
    .line 180
    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 181
    .line 182
    iput v3, v5, Landroid/graphics/RectF;->right:F

    .line 183
    int-to-float v8, v7

    .line 184
    .line 185
    iput v8, v5, Landroid/graphics/RectF;->bottom:F

    .line 186
    .line 187
    sget-object v9, Lcom/narvii/feed/FeedListItem;->strokePath:Landroid/graphics/Path;

    .line 188
    .line 189
    const/high16 v10, -0x3d4c0000    # -90.0f

    .line 190
    .line 191
    const/high16 v11, 0x42b40000    # 90.0f

    .line 192
    .line 193
    .line 194
    invoke-virtual {v9, v5, v10, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 195
    .line 196
    sget-object v5, Lcom/narvii/feed/FeedListItem;->strokePath:Landroid/graphics/Path;

    .line 197
    .line 198
    sub-int v9, v2, v0

    .line 199
    int-to-float v9, v9

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 203
    .line 204
    iget-object v5, p0, Lcom/narvii/feed/FeedListItem;->rectF:Landroid/graphics/RectF;

    .line 205
    .line 206
    iput v1, v5, Landroid/graphics/RectF;->left:F

    .line 207
    .line 208
    sub-int v1, v2, v7

    .line 209
    int-to-float v1, v1

    .line 210
    .line 211
    iput v1, v5, Landroid/graphics/RectF;->top:F

    .line 212
    .line 213
    iput v3, v5, Landroid/graphics/RectF;->right:F

    .line 214
    int-to-float v2, v2

    .line 215
    .line 216
    iput v2, v5, Landroid/graphics/RectF;->bottom:F

    .line 217
    .line 218
    sget-object v3, Lcom/narvii/feed/FeedListItem;->strokePath:Landroid/graphics/Path;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3, v5, v6, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 222
    .line 223
    sget-object v3, Lcom/narvii/feed/FeedListItem;->strokePath:Landroid/graphics/Path;

    .line 224
    int-to-float v0, v0

    .line 225
    .line 226
    .line 227
    invoke-virtual {v3, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 228
    .line 229
    iget-object v3, p0, Lcom/narvii/feed/FeedListItem;->rectF:Landroid/graphics/RectF;

    .line 230
    .line 231
    iput v6, v3, Landroid/graphics/RectF;->left:F

    .line 232
    .line 233
    iput v1, v3, Landroid/graphics/RectF;->top:F

    .line 234
    .line 235
    iput v8, v3, Landroid/graphics/RectF;->right:F

    .line 236
    .line 237
    iput v2, v3, Landroid/graphics/RectF;->bottom:F

    .line 238
    .line 239
    sget-object v1, Lcom/narvii/feed/FeedListItem;->strokePath:Landroid/graphics/Path;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v3, v11, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 243
    .line 244
    sget-object v1, Lcom/narvii/feed/FeedListItem;->strokePath:Landroid/graphics/Path;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 248
    .line 249
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->rectF:Landroid/graphics/RectF;

    .line 250
    .line 251
    iput v6, v0, Landroid/graphics/RectF;->left:F

    .line 252
    .line 253
    iput v6, v0, Landroid/graphics/RectF;->top:F

    .line 254
    .line 255
    iput v8, v0, Landroid/graphics/RectF;->right:F

    .line 256
    .line 257
    iput v8, v0, Landroid/graphics/RectF;->bottom:F

    .line 258
    .line 259
    sget-object v1, Lcom/narvii/feed/FeedListItem;->strokePath:Landroid/graphics/Path;

    .line 260
    .line 261
    const/high16 v2, 0x43340000    # 180.0f

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1, v0, v2, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 265
    .line 266
    sget-object v0, Lcom/narvii/feed/FeedListItem;->strokePath:Landroid/graphics/Path;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 270
    .line 271
    sget-object v0, Lcom/narvii/feed/FeedListItem;->fillPath:Landroid/graphics/Path;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 275
    .line 276
    sget-object v0, Lcom/narvii/feed/FeedListItem;->fillPath:Landroid/graphics/Path;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 280
    .line 281
    sget-object v0, Lcom/narvii/feed/FeedListItem;->fillPath:Landroid/graphics/Path;

    .line 282
    .line 283
    sget v1, Lcom/narvii/feed/FeedListItem;->size:I

    .line 284
    int-to-float v2, v1

    .line 285
    add-float/2addr v2, v4

    .line 286
    neg-int v1, v1

    .line 287
    int-to-float v1, v1

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 291
    .line 292
    sget-object v0, Lcom/narvii/feed/FeedListItem;->fillPath:Landroid/graphics/Path;

    .line 293
    .line 294
    sget v1, Lcom/narvii/feed/FeedListItem;->size:I

    .line 295
    .line 296
    mul-int/lit8 v1, v1, 0x2

    .line 297
    int-to-float v1, v1

    .line 298
    add-float/2addr v4, v1

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 302
    .line 303
    sget-object v0, Lcom/narvii/feed/FeedListItem;->fillPath:Landroid/graphics/Path;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 307
    .line 308
    sget-object v0, Lcom/narvii/feed/FeedListItem;->paint:Landroid/graphics/Paint;

    .line 309
    .line 310
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 314
    .line 315
    sget-object v0, Lcom/narvii/feed/FeedListItem;->paint:Landroid/graphics/Paint;

    .line 316
    .line 317
    sget v1, Lcom/narvii/feed/FeedListItem;->bgColor:I

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 321
    .line 322
    sget-object v0, Lcom/narvii/feed/FeedListItem;->fillPath:Landroid/graphics/Path;

    .line 323
    .line 324
    sget-object v1, Lcom/narvii/feed/FeedListItem;->paint:Landroid/graphics/Paint;

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 328
    .line 329
    sget-object v0, Lcom/narvii/feed/FeedListItem;->paint:Landroid/graphics/Paint;

    .line 330
    .line 331
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 335
    .line 336
    sget-object v0, Lcom/narvii/feed/FeedListItem;->paint:Landroid/graphics/Paint;

    .line 337
    .line 338
    sget v1, Lcom/narvii/feed/FeedListItem;->strokeColor:I

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 342
    .line 343
    sget-object v0, Lcom/narvii/feed/FeedListItem;->strokePath:Landroid/graphics/Path;

    .line 344
    .line 345
    sget-object v1, Lcom/narvii/feed/FeedListItem;->paint:Landroid/graphics/Paint;

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 349
    :cond_3
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/feed/FeedListItem;->disableClick:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public getFeed()Lcom/narvii/model/Feed;
    .locals 1

    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->feed:Lcom/narvii/model/Feed;

    return-object v0
.end method

.method public isAllLoaded()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/image/ImageLoadTracker;->isAllLoaded()Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0171

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->avatar:Lcom/narvii/widget/NVImageView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0f36

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a09f9

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->nickname:Landroid/view/View;

    .line 35
    .line 36
    .line 37
    const v0, 0x7f0a0408

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    check-cast v0, Landroid/widget/TextView;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->datetime:Landroid/widget/TextView;

    .line 46
    .line 47
    .line 48
    const v0, 0x7f0a0e9e

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    check-cast v0, Landroid/widget/TextView;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    .line 57
    .line 58
    .line 59
    const v0, 0x7f0a039d

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    check-cast v0, Landroid/widget/TextView;

    .line 66
    .line 67
    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    .line 68
    .line 69
    .line 70
    const v0, 0x7f0a0576

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->frame1:Landroid/view/View;

    .line 77
    .line 78
    .line 79
    const v0, 0x7f0a06eb

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->img1:Lcom/narvii/widget/NVImageView;

    .line 88
    .line 89
    .line 90
    const v0, 0x7f0a056c

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    check-cast v0, Landroid/widget/TextView;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->caption1:Landroid/widget/TextView;

    .line 99
    .line 100
    .line 101
    const v0, 0x7f0a0577

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->frame2:Landroid/view/View;

    .line 108
    .line 109
    .line 110
    const v0, 0x7f0a06ec

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 117
    .line 118
    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->img2:Lcom/narvii/widget/NVImageView;

    .line 119
    .line 120
    .line 121
    const v0, 0x7f0a056d

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    check-cast v0, Landroid/widget/TextView;

    .line 128
    .line 129
    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->caption2:Landroid/widget/TextView;

    .line 130
    .line 131
    .line 132
    const v0, 0x7f0a0578

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 136
    move-result-object v0

    .line 137
    .line 138
    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->frame3:Landroid/view/View;

    .line 139
    .line 140
    .line 141
    const v0, 0x7f0a06ed

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 148
    .line 149
    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->img3:Lcom/narvii/widget/NVImageView;

    .line 150
    .line 151
    .line 152
    const v0, 0x7f0a056e

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 156
    move-result-object v0

    .line 157
    .line 158
    check-cast v0, Landroid/widget/TextView;

    .line 159
    .line 160
    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->caption3:Landroid/widget/TextView;

    .line 161
    .line 162
    .line 163
    const v0, 0x7f0a057d

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 167
    move-result-object v0

    .line 168
    .line 169
    check-cast v0, Lcom/narvii/widget/Card2View;

    .line 170
    .line 171
    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->card2:Lcom/narvii/widget/Card2View;

    .line 172
    .line 173
    .line 174
    const v0, 0x7f0a057c

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 178
    move-result-object v0

    .line 179
    .line 180
    check-cast v0, Lcom/narvii/widget/CardView;

    .line 181
    .line 182
    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->card:Lcom/narvii/widget/CardView;

    .line 183
    .line 184
    .line 185
    const v0, 0x7f0a06d5

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 189
    move-result-object v0

    .line 190
    .line 191
    check-cast v0, Lcom/narvii/widget/TintButton;

    .line 192
    .line 193
    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->icon:Lcom/narvii/widget/TintButton;

    .line 194
    .line 195
    .line 196
    const v0, 0x7f0a0c06

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 200
    move-result-object v0

    .line 201
    .line 202
    check-cast v0, Lcom/narvii/feed/FeedListItem;

    .line 203
    .line 204
    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->ref:Lcom/narvii/feed/FeedListItem;

    .line 205
    .line 206
    .line 207
    const v0, 0x7f0a0588

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 211
    move-result-object v0

    .line 212
    .line 213
    check-cast v0, Lcom/narvii/feed/FeedToolbarLayout;

    .line 214
    .line 215
    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->toolbar:Lcom/narvii/feed/FeedToolbarLayout;

    .line 216
    .line 217
    .line 218
    const v0, 0x7f0a0587

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 222
    move-result-object v0

    .line 223
    .line 224
    check-cast v0, Lcom/narvii/feed/FeedToolbarExternalLayout;

    .line 225
    .line 226
    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->externalToolbar:Lcom/narvii/feed/FeedToolbarExternalLayout;

    .line 227
    .line 228
    .line 229
    const v0, 0x7f0a0d44

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 233
    move-result-object v0

    .line 234
    .line 235
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 236
    .line 237
    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->siteIcon:Lcom/narvii/widget/NVImageView;

    .line 238
    .line 239
    .line 240
    const v0, 0x7f0a0d48

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 244
    move-result-object v0

    .line 245
    .line 246
    check-cast v0, Landroid/widget/TextView;

    .line 247
    .line 248
    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->siteSource:Landroid/widget/TextView;

    .line 249
    .line 250
    .line 251
    const v0, 0x7f0a0bac

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 255
    move-result-object v0

    .line 256
    .line 257
    check-cast v0, Lcom/narvii/feed/quizzes/QuizCoverView;

    .line 258
    .line 259
    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->quizCoverView:Lcom/narvii/feed/quizzes/QuizCoverView;

    .line 260
    .line 261
    .line 262
    const v0, 0x7f0a0bb6

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 266
    move-result-object v0

    .line 267
    .line 268
    check-cast v0, Landroid/widget/TextView;

    .line 269
    .line 270
    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->quizPlayed:Landroid/widget/TextView;

    .line 271
    .line 272
    .line 273
    const v0, 0x7f0a0b17

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 277
    move-result-object v0

    .line 278
    .line 279
    check-cast v0, Lcom/narvii/poll/PollOptionListLayout;

    .line 280
    .line 281
    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->polloptList:Lcom/narvii/poll/PollOptionListLayout;

    .line 282
    .line 283
    .line 284
    const v0, 0x7f0a0bb5

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 288
    move-result-object v0

    .line 289
    .line 290
    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->quizPlayedTag:Landroid/view/View;

    .line 291
    .line 292
    .line 293
    const v0, 0x7f0a055e

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 297
    move-result-object v0

    .line 298
    .line 299
    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->fansOnlyContentIndicator:Landroid/view/View;

    .line 300
    .line 301
    .line 302
    const v0, 0x7f0a0f28

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 306
    move-result-object v0

    .line 307
    .line 308
    check-cast v0, Landroid/widget/TextView;

    .line 309
    .line 310
    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->unknowTypeHint:Landroid/widget/TextView;

    .line 311
    .line 312
    .line 313
    const v0, 0x7f0a0444

    .line 314
    .line 315
    .line 316
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 317
    move-result-object v0

    .line 318
    .line 319
    check-cast v0, Landroid/widget/TextView;

    .line 320
    .line 321
    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->disabled:Landroid/widget/TextView;

    .line 322
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a0a4c

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 16
    move-result p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 20
    move-result p3

    .line 21
    const/4 p4, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/view/View;->layout(IIII)V

    .line 25
    :cond_0
    return-void
.end method

.method public setDarkTheme(ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/feed/FeedListItem;->setDarkTheme(ZZI)V

    return-void
.end method

.method public setDarkTheme(ZZI)V
    .locals 4

    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->darkTheme:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_1

    iget p1, p0, Lcom/narvii/feed/FeedListItem;->backgroundColor:I

    if-eq p3, p1, :cond_0

    iget-object p1, p0, Lcom/narvii/feed/FeedListItem;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->darkTheme:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget p3, p0, Lcom/narvii/feed/FeedListItem;->backgroundColor:I

    invoke-virtual {p1, p2, p3, v1}, Lcom/narvii/widget/UserAvatarLayout;->setDarkTheme(ZIZ)V

    :cond_0
    return-void

    :cond_1
    iget-object p3, p0, Lcom/narvii/feed/FeedListItem;->feed:Lcom/narvii/model/Feed;

    if-nez p3, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcom/narvii/feed/FeedListItem;->darkTheme:Ljava/lang/Boolean;

    iget-object p3, p0, Lcom/narvii/feed/FeedListItem;->nickname:Landroid/view/View;

    if-eqz p3, :cond_8

    .line 5
    instance-of v0, p3, Lcom/narvii/widget/NicknameView;

    const v2, 0x7f060491

    const v3, 0x7f060493

    if-eqz v0, :cond_4

    .line 6
    check-cast p3, Lcom/narvii/widget/NicknameView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p1, :cond_3

    move v2, v3

    :cond_3
    invoke-static {p2, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/narvii/widget/NicknameView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_6

    .line 7
    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const v3, 0x7f06042f

    :goto_0
    invoke-static {p2, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 8
    :cond_6
    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p1, :cond_7

    move v2, v3

    :cond_7
    invoke-static {p2, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_8
    :goto_1
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->toolbar:Lcom/narvii/feed/FeedToolbarLayout;

    if-eqz p2, :cond_9

    .line 9
    invoke-virtual {p2, p1}, Lcom/narvii/feed/FeedToolbarLayout;->setDarkTheme(Z)V

    :cond_9
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->externalToolbar:Lcom/narvii/feed/FeedToolbarExternalLayout;

    if-eqz p2, :cond_a

    .line 10
    invoke-virtual {p2, p1}, Lcom/narvii/feed/FeedToolbarExternalLayout;->setDarkTheme(Z)V

    :cond_a
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->card2:Lcom/narvii/widget/Card2View;

    if-eqz p2, :cond_b

    .line 11
    invoke-virtual {p2, p1}, Lcom/narvii/widget/Card2View;->setDarkTheme(Z)V

    :cond_b
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->feed:Lcom/narvii/model/Feed;

    .line 12
    instance-of p2, p2, Lcom/narvii/model/Blog;

    const/4 p3, -0x1

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->ref:Lcom/narvii/feed/FeedListItem;

    if-nez p2, :cond_d

    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    if-eqz p2, :cond_d

    if-eqz p1, :cond_c

    move v0, p3

    goto :goto_2

    :cond_c
    const v0, -0xcccccd

    .line 13
    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_d
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const v0, -0x555556

    if-eqz p2, :cond_e

    iget v2, p0, Lcom/narvii/feed/FeedListItem;->backgroundColor:I

    .line 14
    invoke-virtual {p2, p1, v2, v1}, Lcom/narvii/widget/UserAvatarLayout;->setDarkTheme(ZIZ)V

    goto :goto_4

    :cond_e
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->avatar:Lcom/narvii/widget/NVImageView;

    if-eqz p2, :cond_10

    if-eqz p1, :cond_f

    move v1, p3

    goto :goto_3

    :cond_f
    move v1, v0

    .line 15
    :goto_3
    iput v1, p2, Lcom/narvii/widget/NVImageView;->strokeColor:I

    .line 16
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_10
    :goto_4
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-eqz p2, :cond_12

    if-eqz p1, :cond_11

    move v1, p3

    goto :goto_5

    :cond_11
    const v1, -0xaaaaab

    .line 17
    :goto_5
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_12
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->datetime:Landroid/widget/TextView;

    const v1, -0x111112

    if-eqz p2, :cond_14

    if-eqz p1, :cond_13

    move v2, v1

    goto :goto_6

    :cond_13
    const v2, -0x2e2e2f

    .line 18
    :goto_6
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_14
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->quizPlayed:Landroid/widget/TextView;

    if-eqz p2, :cond_16

    if-eqz p1, :cond_15

    move v2, v1

    goto :goto_7

    :cond_15
    const v2, -0x777778

    .line 19
    :goto_7
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_16
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->polloptList:Lcom/narvii/poll/PollOptionListLayout;

    if-eqz p2, :cond_17

    .line 20
    invoke-virtual {p2, p1}, Lcom/narvii/poll/PollOptionListLayout;->setDarkTheme(Z)V

    :cond_17
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->quizCoverView:Lcom/narvii/feed/quizzes/QuizCoverView;

    if-eqz p2, :cond_18

    .line 21
    invoke-virtual {p2, p1}, Lcom/narvii/feed/quizzes/QuizCoverView;->setDarkTheme(Z)V

    :cond_18
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->siteSource:Landroid/widget/TextView;

    if-eqz p2, :cond_1a

    if-eqz p1, :cond_19

    move v0, v1

    .line 22
    :cond_19
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1a
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->feed:Lcom/narvii/model/Feed;

    .line 23
    instance-of v0, p2, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_1b

    check-cast p2, Lcom/narvii/model/Blog;

    iget p2, p2, Lcom/narvii/model/Blog;->type:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1b

    goto :goto_8

    :cond_1b
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->img1:Lcom/narvii/widget/NVImageView;

    if-eqz p2, :cond_1c

    .line 24
    invoke-direct {p0, p2}, Lcom/narvii/feed/FeedListItem;->setImagePlaceholder(Lcom/narvii/widget/NVImageView;)V

    :cond_1c
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->img2:Lcom/narvii/widget/NVImageView;

    if-eqz p2, :cond_1d

    .line 25
    invoke-direct {p0, p2}, Lcom/narvii/feed/FeedListItem;->setImagePlaceholder(Lcom/narvii/widget/NVImageView;)V

    :cond_1d
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->img3:Lcom/narvii/widget/NVImageView;

    if-eqz p2, :cond_1e

    .line 26
    invoke-direct {p0, p2}, Lcom/narvii/feed/FeedListItem;->setImagePlaceholder(Lcom/narvii/widget/NVImageView;)V

    :cond_1e
    :goto_8
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->ref:Lcom/narvii/feed/FeedListItem;

    if-eqz p2, :cond_20

    iget v0, p0, Lcom/narvii/feed/FeedListItem;->backgroundColor:I

    .line 27
    invoke-virtual {p2, p1, v0}, Lcom/narvii/feed/FeedListItem;->setDarkTheme(ZI)V

    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->ref:Lcom/narvii/feed/FeedListItem;

    if-eqz p1, :cond_1f

    const v0, 0x7f0808d0

    goto :goto_9

    :cond_1f
    const v0, 0x7f0808cf

    .line 28
    :goto_9
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_20
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->unknowTypeHint:Landroid/widget/TextView;

    if-eqz p2, :cond_22

    if-eqz p1, :cond_21

    goto :goto_a

    .line 29
    :cond_21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f0603e6

    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    :goto_a
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_22
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->disabled:Landroid/widget/TextView;

    if-eqz p2, :cond_24

    if-eqz p1, :cond_23

    const p1, -0x66000001

    goto :goto_b

    :cond_23
    const p1, -0x778e8c87

    .line 30
    :goto_b
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_24
    return-void
.end method

.method public setDisabledFeed(Lcom/narvii/model/Feed;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/FeedListItem;->feed:Lcom/narvii/model/Feed;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/feed/FeedListItem;->configUserHeader()V

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const/16 v1, 0x8

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v1, 0x0

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    :cond_2
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->toolbar:Lcom/narvii/feed/FeedToolbarLayout;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lcom/narvii/feed/FeedToolbarLayout;->setFeed(Lcom/narvii/model/Feed;)V

    .line 46
    :cond_3
    return-void
.end method

.method public setFeed(Lcom/narvii/model/Feed;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/feed/FeedListItem;->setFeed(Lcom/narvii/model/Feed;Z)V

    return-void
.end method

.method public setFeed(Lcom/narvii/model/Feed;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/feed/FeedListItem;->setFeed(Lcom/narvii/model/Feed;ZZ)V

    return-void
.end method

.method public setFeed(Lcom/narvii/model/Feed;ZZ)V
    .locals 7

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 3
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/feed/FeedListItem;->setFeed(Lcom/narvii/model/Feed;ZZIII)V

    return-void
.end method

.method public setFeed(Lcom/narvii/model/Feed;ZZIII)V
    .locals 8

    const/4 v3, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 4
    invoke-virtual/range {v0 .. v7}, Lcom/narvii/feed/FeedListItem;->setFeed(Lcom/narvii/model/Feed;ZZZIII)V

    return-void
.end method

.method public setFeed(Lcom/narvii/model/Feed;ZZZIII)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    iput-object v1, v0, Lcom/narvii/feed/FeedListItem;->feed:Lcom/narvii/model/Feed;

    if-nez v1, :cond_0

    return-void

    .line 5
    :cond_0
    instance-of v7, v1, Lcom/narvii/model/Blog;

    const/4 v8, 0x0

    const/16 v9, 0x8

    if-eqz v7, :cond_2

    move-object v10, v1

    check-cast v10, Lcom/narvii/model/Blog;

    iget v10, v10, Lcom/narvii/model/Blog;->type:I

    if-ne v10, v9, :cond_2

    .line 6
    move-object v10, v1

    check-cast v10, Lcom/narvii/model/Blog;

    iget-object v11, v10, Lcom/narvii/model/Blog;->externalSource:Lcom/narvii/model/ExternalSource;

    if-eqz v11, :cond_2

    iget-object v11, v0, Lcom/narvii/feed/FeedListItem;->avatar:Lcom/narvii/widget/NVImageView;

    if-eqz v11, :cond_2

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/narvii/model/Blog;->getExternalOriginDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, v0, Lcom/narvii/feed/FeedListItem;->avatar:Lcom/narvii/widget/NVImageView;

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/narvii/model/Blog;->getExternalOriginDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v10, v0, Lcom/narvii/feed/FeedListItem;->avatar:Lcom/narvii/widget/NVImageView;

    .line 9
    invoke-virtual {v10, v8}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    iget-object v10, v0, Lcom/narvii/feed/FeedListItem;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v10, :cond_3

    .line 10
    iget-object v11, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-eqz v11, :cond_3

    .line 11
    invoke-virtual {v10, v11}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    iget-object v10, v0, Lcom/narvii/feed/FeedListItem;->avatar:Lcom/narvii/widget/NVImageView;

    if-eqz v10, :cond_5

    .line 12
    instance-of v11, v1, Lcom/narvii/model/Item;

    if-eqz v11, :cond_5

    .line 13
    iget-object v11, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {v11}, Lcom/narvii/model/User;->iconForCatalog()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    iget-object v10, v0, Lcom/narvii/feed/FeedListItem;->avatar:Lcom/narvii/widget/NVImageView;

    if-eqz v10, :cond_5

    .line 14
    iget-object v11, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-eqz v11, :cond_5

    .line 15
    instance-of v12, v1, Lcom/narvii/model/Item;

    if-eqz v12, :cond_4

    .line 16
    invoke-virtual {v11}, Lcom/narvii/model/User;->iconForCatalog()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {v11}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 18
    :cond_5
    :goto_0
    iget-boolean v10, v1, Lcom/narvii/model/Feed;->needHidden:Z

    iget-object v11, v0, Lcom/narvii/feed/FeedListItem;->nickname:Landroid/view/View;

    .line 19
    instance-of v12, v11, Lcom/narvii/widget/NicknameView;

    if-eqz v12, :cond_7

    if-eqz v7, :cond_6

    .line 20
    move-object v12, v1

    check-cast v12, Lcom/narvii/model/Blog;

    iget v13, v12, Lcom/narvii/model/Blog;->type:I

    if-ne v13, v9, :cond_6

    .line 21
    check-cast v11, Lcom/narvii/widget/NicknameView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/narvii/model/Blog;->getDisplayNickname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/narvii/widget/NicknameView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 22
    :cond_6
    check-cast v11, Lcom/narvii/widget/NicknameView;

    iget-object v12, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    instance-of v13, v1, Lcom/narvii/model/Item;

    invoke-virtual {v11, v12, v13}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;Z)V

    goto :goto_2

    .line 23
    :cond_7
    instance-of v12, v11, Landroid/widget/TextView;

    if-eqz v12, :cond_a

    .line 24
    instance-of v12, v1, Lcom/narvii/model/Item;

    if-eqz v12, :cond_9

    .line 25
    check-cast v11, Landroid/widget/TextView;

    iget-object v12, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-nez v12, :cond_8

    move-object v12, v8

    goto :goto_1

    :cond_8
    invoke-virtual {v12}, Lcom/narvii/model/User;->nicknameForCatalog()Ljava/lang/String;

    move-result-object v12

    :goto_1
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_9
    if-eqz v7, :cond_a

    .line 26
    check-cast v11, Landroid/widget/TextView;

    move-object v12, v1

    check-cast v12, Lcom/narvii/model/Blog;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/narvii/model/Blog;->getDisplayNickname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_2
    iget-object v11, v0, Lcom/narvii/feed/FeedListItem;->datetime:Landroid/widget/TextView;

    if-eqz v11, :cond_b

    iget-object v12, v0, Lcom/narvii/feed/FeedListItem;->formatter:Lcom/narvii/util/DateTimeFormatter;

    .line 27
    iget-object v13, v1, Lcom/narvii/model/Feed;->createdTime:Ljava/util/Date;

    invoke-virtual {v12, v13}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :cond_b
    iget-object v11, v1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    if-nez v11, :cond_c

    const/4 v11, 0x0

    goto :goto_3

    :cond_c
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    :goto_3
    if-eqz v2, :cond_d

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/Feed;->getShowTitle()Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    move-result-object v13

    :goto_4
    if-nez v2, :cond_f

    if-eqz p3, :cond_e

    goto :goto_5

    .line 30
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/Feed;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object v14

    goto :goto_6

    .line 31
    :cond_f
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/Feed;->getSortedMediaList()Ljava/util/List;

    move-result-object v14

    :goto_6
    iget-object v15, v0, Lcom/narvii/feed/FeedListItem;->fansOnlyContentIndicator:Landroid/view/View;

    if-eqz v15, :cond_11

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/Feed;->isFansOnly()Z

    move-result v17

    if-eqz v17, :cond_10

    const/4 v9, 0x0

    goto :goto_7

    :cond_10
    const/4 v9, 0x4

    :goto_7
    invoke-virtual {v15, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    const/4 v9, 0x1

    const/4 v15, 0x2

    if-eqz v7, :cond_5a

    .line 33
    move-object v7, v1

    check-cast v7, Lcom/narvii/model/Blog;

    .line 34
    iget v12, v7, Lcom/narvii/model/Blog;->type:I

    const/4 v8, -0x1

    if-nez v12, :cond_1c

    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    if-eqz v2, :cond_12

    .line 35
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-eqz v2, :cond_1a

    .line 36
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ne v6, v8, :cond_13

    const/16 v19, 0x6

    goto :goto_8

    :cond_13
    move/from16 v19, v6

    :goto_8
    if-ne v5, v8, :cond_14

    move v5, v15

    :cond_14
    if-ne v4, v8, :cond_15

    const/16 v18, 0x5

    goto :goto_9

    :cond_15
    move/from16 v18, v4

    :goto_9
    iget-boolean v2, v0, Lcom/narvii/feed/FeedListItem;->isRef:Z

    if-eqz v2, :cond_17

    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-lez v11, :cond_16

    goto :goto_a

    :cond_16
    move/from16 v5, v18

    .line 37
    :goto_a
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_c

    :cond_17
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-lez v11, :cond_18

    goto :goto_b

    :cond_18
    move/from16 v5, v19

    .line 38
    :goto_b
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_c
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    .line 39
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/16 v4, 0x8

    goto :goto_d

    :cond_19
    const/4 v4, 0x0

    :goto_d
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 40
    :cond_1a
    invoke-virtual {v0, v14, v3, v10}, Lcom/narvii/feed/FeedListItem;->setMediaList(Ljava/util/List;ZZ)V

    :cond_1b
    :goto_e
    const/16 v2, 0x8

    const/16 v16, 0x0

    goto/16 :goto_27

    :cond_1c
    if-ne v12, v9, :cond_1d

    .line 41
    iget-object v1, v7, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    invoke-virtual {v0, v1}, Lcom/narvii/feed/FeedListItem;->setFeed(Lcom/narvii/model/Feed;)V

    return-void

    :cond_1d
    const/4 v9, 0x3

    if-ne v12, v15, :cond_21

    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-eqz v2, :cond_1f

    .line 42
    iget-object v2, v7, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v4, 0x7f12075e

    if-eqz v2, :cond_1e

    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f12075f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    :cond_1e
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 48
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_f
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    .line 49
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_1f
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->ref:Lcom/narvii/feed/FeedListItem;

    if-eqz v2, :cond_1b

    .line 50
    iget-object v2, v7, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->isDisabled()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->ref:Lcom/narvii/feed/FeedListItem;

    .line 51
    iget-object v4, v7, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    invoke-virtual {v2, v4}, Lcom/narvii/feed/FeedListItem;->setDisabledFeed(Lcom/narvii/model/Feed;)V

    goto/16 :goto_e

    :cond_20
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->ref:Lcom/narvii/feed/FeedListItem;

    .line 52
    iget-object v4, v7, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    invoke-virtual {v2, v4}, Lcom/narvii/feed/FeedListItem;->setFeed(Lcom/narvii/model/Feed;)V

    goto/16 :goto_e

    :cond_21
    if-ne v12, v9, :cond_2b

    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->icon:Lcom/narvii/widget/TintButton;

    if-eqz v2, :cond_22

    const v9, 0x7f080a00

    .line 53
    invoke-virtual {v2, v9}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->icon:Lcom/narvii/widget/TintButton;

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0603cf

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    :cond_22
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    if-eqz v2, :cond_23

    .line 55
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_23
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-eqz v2, :cond_2a

    .line 56
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ne v6, v8, :cond_24

    const/16 v19, 0x6

    goto :goto_10

    :cond_24
    move/from16 v19, v6

    :goto_10
    if-ne v5, v8, :cond_25

    move v5, v15

    :cond_25
    if-ne v4, v8, :cond_26

    const/16 v18, 0x5

    goto :goto_11

    :cond_26
    move/from16 v18, v4

    :goto_11
    iget-boolean v2, v0, Lcom/narvii/feed/FeedListItem;->isRef:Z

    if-eqz v2, :cond_28

    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-lez v11, :cond_27

    goto :goto_12

    :cond_27
    move/from16 v5, v18

    .line 57
    :goto_12
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_14

    :cond_28
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-lez v11, :cond_29

    goto :goto_13

    :cond_29
    move/from16 v5, v19

    .line 58
    :goto_13
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 59
    :cond_2a
    :goto_14
    invoke-virtual {v0, v14, v3, v10}, Lcom/narvii/feed/FeedListItem;->setMediaList(Ljava/util/List;ZZ)V

    goto/16 :goto_e

    :cond_2b
    const/4 v9, 0x4

    if-ne v12, v9, :cond_35

    .line 60
    iget-object v2, v7, Lcom/narvii/model/Blog;->endTime:Ljava/util/Date;

    if-nez v2, :cond_2c

    const/4 v2, 0x1

    goto :goto_15

    :cond_2c
    const/4 v2, 0x0

    :goto_15
    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->icon:Lcom/narvii/widget/TintButton;

    if-eqz v4, :cond_2e

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v2, :cond_2d

    const v2, 0x7f06049c

    goto :goto_16

    :cond_2d
    const v2, 0x7f06049b

    :goto_16
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    :cond_2e
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    if-eqz v2, :cond_2f

    .line 62
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2f
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-eqz v2, :cond_31

    .line 63
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    .line 64
    invoke-static {v2}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v5, 0x8

    goto :goto_17

    :cond_30
    const/4 v5, 0x0

    :goto_17
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    .line 65
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_31
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->polloptList:Lcom/narvii/poll/PollOptionListLayout;

    if-eqz v2, :cond_1b

    .line 66
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    move-result v4

    if-nez v4, :cond_32

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x0

    goto :goto_18

    :cond_32
    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_18
    invoke-virtual {v2, v7, v8, v4}, Lcom/narvii/poll/PollOptionListLayout;->setPoll(Lcom/narvii/model/Blog;Ljava/lang/Boolean;Z)V

    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->polloptList:Lcom/narvii/poll/PollOptionListLayout;

    .line 67
    iget-object v4, v7, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    if-eqz v4, :cond_34

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v15, :cond_33

    goto :goto_19

    :cond_33
    const/4 v4, 0x0

    goto :goto_1a

    :cond_34
    :goto_19
    const/16 v4, 0x8

    :goto_1a
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    :cond_35
    const/4 v9, 0x5

    if-ne v12, v9, :cond_40

    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->icon:Lcom/narvii/widget/TintButton;

    if-eqz v4, :cond_36

    const v5, 0x7f0802f2

    .line 68
    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->icon:Lcom/narvii/widget/TintButton;

    .line 69
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0603ca

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 70
    :cond_36
    invoke-virtual {v7}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object v4

    if-eqz v4, :cond_3d

    iget-object v5, v0, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    if-eqz v5, :cond_38

    .line 71
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->isPromoted()Z

    move-result v6

    if-eqz v6, :cond_37

    if-eqz v2, :cond_37

    goto :goto_1b

    :cond_37
    invoke-virtual {v7}, Lcom/narvii/model/Blog;->getShowTitle()Ljava/lang/String;

    move-result-object v13

    :goto_1b
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_38
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-eqz v2, :cond_39

    .line 72
    invoke-virtual {v7}, Lcom/narvii/model/Blog;->getShowContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_39
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->siteIcon:Lcom/narvii/widget/NVImageView;

    if-eqz v2, :cond_3a

    .line 73
    invoke-virtual {v4}, Lcom/narvii/model/LinkSummary;->getShowFavIcon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :cond_3a
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->siteSource:Landroid/widget/TextView;

    if-eqz v2, :cond_3b

    .line 74
    invoke-virtual {v4}, Lcom/narvii/model/LinkSummary;->getShowSource()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3b
    if-eqz v14, :cond_3c

    .line 75
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3c

    move-object v2, v14

    goto :goto_1c

    :cond_3c
    iget-object v2, v4, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    :goto_1c
    invoke-virtual {v0, v2, v3, v10}, Lcom/narvii/feed/FeedListItem;->setMediaList(Ljava/util/List;ZZ)V

    goto/16 :goto_e

    :cond_3d
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    if-eqz v2, :cond_3e

    .line 76
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3e
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-eqz v2, :cond_1b

    .line 77
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    const/16 v4, 0x8

    goto :goto_1d

    :cond_3f
    const/4 v4, 0x0

    :goto_1d
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    .line 78
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    :cond_40
    const/4 v9, 0x6

    if-ne v12, v9, :cond_47

    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    if-eqz v4, :cond_41

    .line 79
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_41
    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-eqz v4, :cond_43

    .line 80
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    .line 81
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_42

    const/16 v5, 0x8

    goto :goto_1e

    :cond_42
    const/4 v5, 0x0

    :goto_1e
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_43
    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->quizCoverView:Lcom/narvii/feed/quizzes/QuizCoverView;

    if-eqz v4, :cond_44

    .line 82
    invoke-virtual {v4, v7, v2}, Lcom/narvii/feed/quizzes/QuizCoverView;->setQuiz(Lcom/narvii/model/Blog;Z)V

    :cond_44
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->quizPlayed:Landroid/widget/TextView;

    if-eqz v2, :cond_45

    .line 83
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/narvii/util/BlogUtils;->getQuizRecordText(Lcom/narvii/model/Blog;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_45
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->quizPlayedTag:Landroid/view/View;

    if-eqz v2, :cond_1b

    .line 84
    iget-object v4, v7, Lcom/narvii/model/Blog;->quizResultOfCurrentUser:Lcom/narvii/model/CurrentQuizzesResult;

    if-eqz v4, :cond_46

    iget v4, v4, Lcom/narvii/model/CurrentQuizzesResult;->totalTimes:I

    if-eqz v4, :cond_46

    const/4 v8, 0x0

    goto :goto_1f

    :cond_46
    const/4 v8, 0x4

    :goto_1f
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    :cond_47
    const/4 v2, 0x7

    if-ne v12, v2, :cond_4b

    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    if-eqz v2, :cond_48

    .line 85
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_48
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-eqz v2, :cond_49

    const/16 v4, 0x8

    .line 86
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 87
    :cond_49
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v10, :cond_4a

    if-eqz v14, :cond_4a

    .line 88
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4a

    const/4 v4, 0x0

    .line 89
    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/Media;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_4a
    const/4 v4, 0x0

    move-object v2, v14

    .line 90
    :goto_20
    invoke-virtual {v0, v2, v3, v10}, Lcom/narvii/feed/FeedListItem;->setMediaList(Ljava/util/List;ZZ)V

    move/from16 v16, v4

    const/16 v2, 0x8

    goto/16 :goto_27

    :cond_4b
    const/16 v2, 0x8

    const/16 v16, 0x0

    if-ne v12, v2, :cond_4f

    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    if-eqz v4, :cond_4c

    .line 91
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4c
    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-eqz v4, :cond_4e

    .line 92
    invoke-virtual {v7}, Lcom/narvii/model/Blog;->content()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    .line 93
    invoke-virtual {v7}, Lcom/narvii/model/Blog;->content()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4d

    move v5, v2

    goto :goto_21

    :cond_4d
    move/from16 v5, v16

    :goto_21
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :cond_4e
    invoke-virtual {v0, v14, v3, v10}, Lcom/narvii/feed/FeedListItem;->setMediaList(Ljava/util/List;ZZ)V

    goto :goto_27

    :cond_4f
    iget-object v12, v0, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    if-eqz v12, :cond_50

    .line 95
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_50
    iget-object v12, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-eqz v12, :cond_58

    .line 96
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v7

    iget-object v12, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    .line 97
    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ne v6, v8, :cond_51

    goto :goto_22

    :cond_51
    move v9, v6

    :goto_22
    if-ne v5, v8, :cond_52

    move v5, v15

    :cond_52
    if-ne v4, v8, :cond_53

    const/16 v18, 0x5

    goto :goto_23

    :cond_53
    move/from16 v18, v4

    :goto_23
    iget-boolean v4, v0, Lcom/narvii/feed/FeedListItem;->isRef:Z

    if-eqz v4, :cond_55

    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-lez v11, :cond_54

    goto :goto_24

    :cond_54
    move/from16 v5, v18

    .line 98
    :goto_24
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_25

    :cond_55
    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-lez v11, :cond_56

    move v9, v5

    .line 99
    :cond_56
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_25
    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    .line 100
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_57

    move v5, v2

    goto :goto_26

    :cond_57
    move/from16 v5, v16

    :goto_26
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 101
    :cond_58
    invoke-virtual {v0, v14, v3, v10}, Lcom/narvii/feed/FeedListItem;->setMediaList(Ljava/util/List;ZZ)V

    :goto_27
    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    if-eqz v4, :cond_5b

    .line 102
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_59

    move v5, v2

    goto :goto_28

    :cond_59
    move/from16 v5, v16

    :goto_28
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_29

    :cond_5a
    const/16 v2, 0x8

    const/16 v16, 0x0

    .line 103
    :cond_5b
    :goto_29
    instance-of v4, v1, Lcom/narvii/model/Item;

    if-eqz v4, :cond_62

    .line 104
    move-object v4, v1

    check-cast v4, Lcom/narvii/model/Item;

    iget-object v5, v0, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    if-eqz v5, :cond_5c

    .line 105
    iget-object v6, v4, Lcom/narvii/model/Item;->label:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5c
    iget-object v5, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-eqz v5, :cond_5e

    .line 106
    invoke-virtual {v4}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5d

    move v6, v2

    goto :goto_2a

    :cond_5d
    move/from16 v6, v16

    :goto_2a
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    .line 107
    invoke-virtual {v4}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_5e
    invoke-virtual {v0, v14, v3, v10}, Lcom/narvii/feed/FeedListItem;->setMediaList(Ljava/util/List;ZZ)V

    .line 109
    iget-object v3, v4, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-eqz v3, :cond_5f

    invoke-virtual {v3}, Lcom/narvii/model/User;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_5f

    const/4 v9, 0x1

    goto :goto_2b

    :cond_5f
    move/from16 v9, v16

    :goto_2b
    iget-object v3, v0, Lcom/narvii/feed/FeedListItem;->card2:Lcom/narvii/widget/Card2View;

    if-eqz v3, :cond_61

    .line 110
    iget-object v4, v4, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_60

    if-ge v11, v15, :cond_60

    goto :goto_2c

    :cond_60
    move/from16 v2, v16

    :goto_2c
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->card2:Lcom/narvii/widget/Card2View;

    .line 111
    invoke-virtual {v2, v9}, Lcom/narvii/widget/Card2View;->setOfficial(Z)V

    :cond_61
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->card:Lcom/narvii/widget/CardView;

    if-eqz v2, :cond_62

    .line 112
    invoke-virtual {v2, v9}, Lcom/narvii/widget/CardView;->setStyle(I)V

    :cond_62
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->toolbar:Lcom/narvii/feed/FeedToolbarLayout;

    if-eqz v2, :cond_63

    .line 113
    invoke-virtual {v2, v1}, Lcom/narvii/feed/FeedToolbarLayout;->setFeed(Lcom/narvii/model/Feed;)V

    :cond_63
    return-void
.end method

.method public setLoadFinishListener(Lcom/narvii/link/LoadFinishListener;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/FeedListItem;->loadFinishListener:Lcom/narvii/link/LoadFinishListener;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/image/ImageLoadTracker;->isAllLoaded()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Lcom/narvii/link/LoadFinishListener;->onLoadFinished()V

    .line 16
    :cond_0
    return-void
.end method

.method protected setMediaList(Ljava/util/List;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    move v1, v0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    move-result v1

    .line 10
    :goto_0
    const/4 v2, 0x0

    .line 11
    .line 12
    if-lez v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    check-cast v3, Lcom/narvii/model/Media;

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move-object v3, v2

    .line 21
    .line 22
    :goto_1
    iget-object v4, p0, Lcom/narvii/feed/FeedListItem;->frame1:Landroid/view/View;

    .line 23
    .line 24
    if-nez v4, :cond_2

    .line 25
    .line 26
    iget-object v4, p0, Lcom/narvii/feed/FeedListItem;->img1:Lcom/narvii/widget/NVImageView;

    .line 27
    .line 28
    :cond_2
    const/16 v5, 0x8

    .line 29
    .line 30
    if-eqz v4, :cond_4

    .line 31
    .line 32
    if-eqz v3, :cond_3

    .line 33
    move v6, v0

    .line 34
    goto :goto_2

    .line 35
    :cond_3
    move v6, v5

    .line 36
    .line 37
    .line 38
    :goto_2
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    :cond_4
    iget-object v4, p0, Lcom/narvii/feed/FeedListItem;->img1:Lcom/narvii/widget/NVImageView;

    .line 41
    .line 42
    if-eqz v4, :cond_6

    .line 43
    .line 44
    instance-of v6, v4, Lcom/narvii/widget/ISecretImage;

    .line 45
    .line 46
    if-eqz v6, :cond_5

    .line 47
    .line 48
    check-cast v4, Lcom/narvii/widget/ISecretImage;

    .line 49
    .line 50
    .line 51
    invoke-interface {v4, v3, p3}, Lcom/narvii/widget/ISecretImage;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    .line 52
    goto :goto_3

    .line 53
    .line 54
    .line 55
    :cond_5
    invoke-virtual {v4, v3}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 56
    .line 57
    :cond_6
    :goto_3
    iget-object v4, p0, Lcom/narvii/feed/FeedListItem;->caption1:Landroid/widget/TextView;

    .line 58
    .line 59
    if-eqz v4, :cond_a

    .line 60
    .line 61
    if-nez v3, :cond_7

    .line 62
    move-object v3, v2

    .line 63
    goto :goto_4

    .line 64
    .line 65
    :cond_7
    iget-object v3, v3, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    :goto_4
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 69
    move-result v4

    .line 70
    const/4 v6, 0x4

    .line 71
    .line 72
    if-eq v4, v6, :cond_a

    .line 73
    .line 74
    iget-object v4, p0, Lcom/narvii/feed/FeedListItem;->caption1:Landroid/widget/TextView;

    .line 75
    .line 76
    if-nez p2, :cond_9

    .line 77
    .line 78
    .line 79
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    move-result v6

    .line 81
    .line 82
    if-eqz v6, :cond_8

    .line 83
    goto :goto_5

    .line 84
    :cond_8
    move v6, v0

    .line 85
    goto :goto_6

    .line 86
    :cond_9
    :goto_5
    move v6, v5

    .line 87
    .line 88
    .line 89
    :goto_6
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    iget-object v4, p0, Lcom/narvii/feed/FeedListItem;->caption1:Landroid/widget/TextView;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    :cond_a
    iget-object v3, p0, Lcom/narvii/feed/FeedListItem;->img2:Lcom/narvii/widget/NVImageView;

    .line 97
    const/4 v4, 0x1

    .line 98
    .line 99
    if-eqz v3, :cond_12

    .line 100
    .line 101
    if-le v1, v4, :cond_b

    .line 102
    .line 103
    .line 104
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    move-result-object v3

    .line 106
    .line 107
    check-cast v3, Lcom/narvii/model/Media;

    .line 108
    goto :goto_7

    .line 109
    :cond_b
    move-object v3, v2

    .line 110
    .line 111
    :goto_7
    iget-object v6, p0, Lcom/narvii/feed/FeedListItem;->frame2:Landroid/view/View;

    .line 112
    .line 113
    if-nez v6, :cond_c

    .line 114
    .line 115
    iget-object v6, p0, Lcom/narvii/feed/FeedListItem;->img2:Lcom/narvii/widget/NVImageView;

    .line 116
    .line 117
    :cond_c
    if-eqz v3, :cond_d

    .line 118
    move v7, v0

    .line 119
    goto :goto_8

    .line 120
    :cond_d
    move v7, v5

    .line 121
    .line 122
    .line 123
    :goto_8
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    iget-object v6, p0, Lcom/narvii/feed/FeedListItem;->img2:Lcom/narvii/widget/NVImageView;

    .line 126
    .line 127
    instance-of v7, v6, Lcom/narvii/widget/SecretImageView;

    .line 128
    .line 129
    if-eqz v7, :cond_e

    .line 130
    .line 131
    check-cast v6, Lcom/narvii/widget/SecretImageView;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6, v3, p3}, Lcom/narvii/widget/SecretImageView;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    .line 135
    goto :goto_9

    .line 136
    .line 137
    .line 138
    :cond_e
    invoke-virtual {v6, v3}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 139
    .line 140
    :goto_9
    iget-object v6, p0, Lcom/narvii/feed/FeedListItem;->caption2:Landroid/widget/TextView;

    .line 141
    .line 142
    if-eqz v6, :cond_12

    .line 143
    .line 144
    if-nez v3, :cond_f

    .line 145
    move-object v3, v2

    .line 146
    goto :goto_a

    .line 147
    .line 148
    :cond_f
    iget-object v3, v3, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 149
    .line 150
    :goto_a
    if-nez p2, :cond_11

    .line 151
    .line 152
    .line 153
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 154
    move-result v7

    .line 155
    .line 156
    if-eqz v7, :cond_10

    .line 157
    goto :goto_b

    .line 158
    :cond_10
    move v7, v0

    .line 159
    goto :goto_c

    .line 160
    :cond_11
    :goto_b
    move v7, v5

    .line 161
    .line 162
    .line 163
    :goto_c
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 164
    .line 165
    iget-object v6, p0, Lcom/narvii/feed/FeedListItem;->caption2:Landroid/widget/TextView;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    .line 170
    :cond_12
    iget-object v3, p0, Lcom/narvii/feed/FeedListItem;->img3:Lcom/narvii/widget/NVImageView;

    .line 171
    .line 172
    if-eqz v3, :cond_1a

    .line 173
    const/4 v3, 0x2

    .line 174
    .line 175
    if-le v1, v3, :cond_13

    .line 176
    .line 177
    .line 178
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 179
    move-result-object v1

    .line 180
    .line 181
    check-cast v1, Lcom/narvii/model/Media;

    .line 182
    goto :goto_d

    .line 183
    :cond_13
    move-object v1, v2

    .line 184
    .line 185
    :goto_d
    iget-object v3, p0, Lcom/narvii/feed/FeedListItem;->frame3:Landroid/view/View;

    .line 186
    .line 187
    if-nez v3, :cond_14

    .line 188
    .line 189
    iget-object v3, p0, Lcom/narvii/feed/FeedListItem;->img3:Lcom/narvii/widget/NVImageView;

    .line 190
    .line 191
    :cond_14
    if-eqz v1, :cond_15

    .line 192
    move v6, v0

    .line 193
    goto :goto_e

    .line 194
    :cond_15
    move v6, v5

    .line 195
    .line 196
    .line 197
    :goto_e
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 198
    .line 199
    iget-object v3, p0, Lcom/narvii/feed/FeedListItem;->img3:Lcom/narvii/widget/NVImageView;

    .line 200
    .line 201
    instance-of v6, v3, Lcom/narvii/widget/SecretImageView;

    .line 202
    .line 203
    if-eqz v6, :cond_16

    .line 204
    .line 205
    check-cast v3, Lcom/narvii/widget/SecretImageView;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3, v1, p3}, Lcom/narvii/widget/SecretImageView;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    .line 209
    goto :goto_f

    .line 210
    .line 211
    .line 212
    :cond_16
    invoke-virtual {v3, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 213
    .line 214
    :goto_f
    iget-object v3, p0, Lcom/narvii/feed/FeedListItem;->caption3:Landroid/widget/TextView;

    .line 215
    .line 216
    if-eqz v3, :cond_1a

    .line 217
    .line 218
    if-nez v1, :cond_17

    .line 219
    goto :goto_10

    .line 220
    .line 221
    :cond_17
    iget-object v2, v1, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 222
    .line 223
    :goto_10
    if-nez p2, :cond_18

    .line 224
    .line 225
    .line 226
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 227
    move-result p2

    .line 228
    .line 229
    if-eqz p2, :cond_19

    .line 230
    :cond_18
    move v0, v5

    .line 231
    .line 232
    .line 233
    :cond_19
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 234
    .line 235
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->caption3:Landroid/widget/TextView;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    .line 240
    :cond_1a
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->card2:Lcom/narvii/widget/Card2View;

    .line 241
    .line 242
    if-eqz p2, :cond_1b

    .line 243
    .line 244
    .line 245
    invoke-virtual {p2, p1, v4, p3}, Lcom/narvii/widget/Card2View;->setImages(Ljava/util/List;IZ)V

    .line 246
    :cond_1b
    return-void
.end method

.method protected setMediaUrl(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->frame1:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->img1:Lcom/narvii/widget/NVImageView;

    .line 7
    .line 8
    :cond_0
    const/16 v1, 0x8

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    const/4 v2, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move v2, v1

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    :cond_2
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->img1:Lcom/narvii/widget/NVImageView;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 30
    .line 31
    :cond_3
    iget-object p1, p0, Lcom/narvii/feed/FeedListItem;->caption1:Landroid/widget/TextView;

    .line 32
    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    :cond_4
    iget-object p1, p0, Lcom/narvii/feed/FeedListItem;->frame2:Landroid/view/View;

    .line 39
    .line 40
    if-nez p1, :cond_5

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/feed/FeedListItem;->img2:Lcom/narvii/widget/NVImageView;

    .line 43
    .line 44
    :cond_5
    if-eqz p1, :cond_6

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    :cond_6
    iget-object p1, p0, Lcom/narvii/feed/FeedListItem;->caption2:Landroid/widget/TextView;

    .line 50
    .line 51
    if-eqz p1, :cond_7

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    :cond_7
    iget-object p1, p0, Lcom/narvii/feed/FeedListItem;->frame3:Landroid/view/View;

    .line 57
    .line 58
    if-nez p1, :cond_8

    .line 59
    .line 60
    iget-object p1, p0, Lcom/narvii/feed/FeedListItem;->img3:Lcom/narvii/widget/NVImageView;

    .line 61
    .line 62
    :cond_8
    if-eqz p1, :cond_9

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    :cond_9
    iget-object p1, p0, Lcom/narvii/feed/FeedListItem;->caption3:Landroid/widget/TextView;

    .line 68
    .line 69
    if-eqz p1, :cond_a

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :cond_a
    return-void
.end method

.method public setProgress(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->toolbar:Lcom/narvii/feed/FeedToolbarLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/feed/FeedToolbarLayout;->setProgress(Z)V

    .line 8
    :cond_0
    return-void
.end method

.method public setStatSource(Ljava/lang/String;Lcom/narvii/util/logging/LoggingSource;Lcom/narvii/util/logging/LoggingOrigin;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->polloptList:Lcom/narvii/poll/PollOptionListLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object p1, v0, Lcom/narvii/poll/PollOptionListLayout;->statSource:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p2, v0, Lcom/narvii/poll/PollOptionListLayout;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 9
    .line 10
    iput-object p3, v0, Lcom/narvii/poll/PollOptionListLayout;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 11
    :cond_0
    return-void
.end method

.method public setUnknownFeed(Lcom/narvii/model/Feed;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/FeedListItem;->feed:Lcom/narvii/model/Feed;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/feed/FeedListItem;->configUserHeader()V

    .line 6
    return-void
.end method

.method public setUpSnippetImageLoadTracker(Lcom/narvii/image/ImageLoadTracker;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    new-instance v0, Lcom/narvii/feed/FeedListItem$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/narvii/feed/FeedListItem$1;-><init>(Lcom/narvii/feed/FeedListItem;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/narvii/image/ImageLoadTracker;->setImageLoadTrackListener(Lcom/narvii/image/ImageLoadTrackListener;)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/feed/FeedListItem;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->img1:Lcom/narvii/widget/NVImageView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/narvii/image/ImageLoadTracker;->addImageView(Lcom/narvii/widget/NVImageView;)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->quizCoverView:Lcom/narvii/feed/quizzes/QuizCoverView;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, v0, Lcom/narvii/feed/quizzes/QuizCoverView;->quizCoverImageView:Lcom/narvii/widget/NVImageView;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/narvii/image/ImageLoadTracker;->addImageView(Lcom/narvii/widget/NVImageView;)V

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->polloptList:Lcom/narvii/poll/PollOptionListLayout;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/narvii/poll/PollOptionListLayout;->setUpSnippetImageLoadTracker(Lcom/narvii/image/ImageLoadTracker;)V

    .line 34
    :cond_1
    return-void
.end method
