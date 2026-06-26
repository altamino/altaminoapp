.class public Lcom/narvii/feed/FeedListItem;
.super Landroid/widget/RelativeLayout;
.source "FeedListItem.java"

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

    .line 107
    invoke-direct {p0, p1, v0}, Lcom/narvii/feed/FeedListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 92
    iput v0, p0, Lcom/narvii/feed/FeedListItem;->backgroundColor:I

    .line 112
    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/feed/FeedListItem;->formatter:Lcom/narvii/util/DateTimeFormatter;

    .line 114
    sget-object v1, Lcom/narvii/amino/R$styleable;->FeedListItem:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 116
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/feed/FeedListItem;->isRef:Z

    .line 117
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    sput-object p1, Lcom/narvii/feed/FeedListItem;->strokePath:Landroid/graphics/Path;

    .line 120
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    sput-object p1, Lcom/narvii/feed/FeedListItem;->fillPath:Landroid/graphics/Path;

    .line 121
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/feed/FeedListItem;->rectF:Landroid/graphics/RectF;

    return-void
.end method

.method private configUserHeader()V
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->feed:Lcom/narvii/model/Feed;

    if-nez v0, :cond_0

    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->avatar:Lcom/narvii/widget/NVImageView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    if-nez v0, :cond_1

    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v0, :cond_2

    .line 305
    iget-object v1, p0, Lcom/narvii/feed/FeedListItem;->feed:Lcom/narvii/model/Feed;

    iget-object v1, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    goto :goto_0

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->avatar:Lcom/narvii/widget/NVImageView;

    iget-object v1, p0, Lcom/narvii/feed/FeedListItem;->feed:Lcom/narvii/model/Feed;

    iget-object v1, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 310
    :goto_0
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->feed:Lcom/narvii/model/Feed;

    instance-of v1, v0, Lcom/narvii/model/Item;

    if-eqz v1, :cond_3

    .line 311
    iget-object v1, p0, Lcom/narvii/feed/FeedListItem;->avatar:Lcom/narvii/widget/NVImageView;

    iget-object v0, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {v0}, Lcom/narvii/model/User;->iconForCatalog()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->nickname:Landroid/view/View;

    instance-of v1, v0, Lcom/narvii/widget/NicknameView;

    if-eqz v1, :cond_4

    .line 315
    check-cast v0, Lcom/narvii/widget/NicknameView;

    iget-object v1, p0, Lcom/narvii/feed/FeedListItem;->feed:Lcom/narvii/model/Feed;

    iget-object v2, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    instance-of v1, v1, Lcom/narvii/model/Item;

    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;Z)V

    goto :goto_2

    .line 317
    :cond_4
    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/feed/FeedListItem;->feed:Lcom/narvii/model/Feed;

    instance-of v2, v1, Lcom/narvii/model/Item;

    iget-object v1, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/narvii/model/User;->nicknameForCatalog()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    :goto_2
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->datetime:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 321
    iget-object v1, p0, Lcom/narvii/feed/FeedListItem;->formatter:Lcom/narvii/util/DateTimeFormatter;

    iget-object v2, p0, Lcom/narvii/feed/FeedListItem;->feed:Lcom/narvii/model/Feed;

    iget-object v2, v2, Lcom/narvii/model/Feed;->createdTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method private setImagePlaceholder(Lcom/narvii/widget/NVImageView;)V
    .locals 2

    .line 274
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/feed/FeedListItem;->darkTheme:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f060171

    goto :goto_0

    :cond_0
    const v1, 0x7f060170

    :goto_0
    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 717
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 719
    iget-boolean v0, p0, Lcom/narvii/feed/FeedListItem;->isRef:Z

    if-eqz v0, :cond_3

    .line 721
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 722
    iget-object v1, p0, Lcom/narvii/feed/FeedListItem;->darkTheme:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f06019d

    goto :goto_0

    :cond_0
    const v1, 0x7f06019c

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/narvii/feed/FeedListItem;->strokeColor:I

    .line 723
    iget-object v1, p0, Lcom/narvii/feed/FeedListItem;->darkTheme:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f060172

    goto :goto_1

    :cond_1
    const v1, 0x7f06019b

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/narvii/feed/FeedListItem;->bgColor:I

    .line 725
    sget-object v1, Lcom/narvii/feed/FeedListItem;->paint:Landroid/graphics/Paint;

    if-nez v1, :cond_2

    const v1, 0x7f07024c

    .line 727
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/narvii/feed/FeedListItem;->strokeWidth:I

    const v1, 0x7f070246

    .line 728
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/narvii/feed/FeedListItem;->size:I

    .line 730
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/narvii/feed/FeedListItem;->paint:Landroid/graphics/Paint;

    .line 731
    sget-object v0, Lcom/narvii/feed/FeedListItem;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 732
    sget-object v0, Lcom/narvii/feed/FeedListItem;->paint:Landroid/graphics/Paint;

    sget v1, Lcom/narvii/feed/FeedListItem;->strokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 733
    sget-object v0, Lcom/narvii/feed/FeedListItem;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 736
    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    .line 737
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    .line 738
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    int-to-float v3, v1

    const v4, 0x3e19999a    # 0.15f

    mul-float v4, v4, v3

    .line 740
    sget-object v5, Lcom/narvii/feed/FeedListItem;->strokePath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 741
    sget-object v5, Lcom/narvii/feed/FeedListItem;->strokePath:Landroid/graphics/Path;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 742
    sget-object v5, Lcom/narvii/feed/FeedListItem;->strokePath:Landroid/graphics/Path;

    sget v7, Lcom/narvii/feed/FeedListItem;->size:I

    int-to-float v8, v7

    add-float/2addr v8, v4

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v5, v8, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 743
    sget-object v5, Lcom/narvii/feed/FeedListItem;->strokePath:Landroid/graphics/Path;

    sget v7, Lcom/narvii/feed/FeedListItem;->size:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v7, v4

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 744
    sget-object v5, Lcom/narvii/feed/FeedListItem;->strokePath:Landroid/graphics/Path;

    sub-int v7, v1, v0

    int-to-float v7, v7

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 747
    iget-object v5, p0, Lcom/narvii/feed/FeedListItem;->rectF:Landroid/graphics/RectF;

    mul-int/lit8 v7, v0, 0x2

    sub-int/2addr v1, v7

    int-to-float v1, v1

    iput v1, v5, Landroid/graphics/RectF;->left:F

    .line 748
    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 749
    iput v3, v5, Landroid/graphics/RectF;->right:F

    int-to-float v8, v7

    .line 750
    iput v8, v5, Landroid/graphics/RectF;->bottom:F

    .line 751
    sget-object v9, Lcom/narvii/feed/FeedListItem;->strokePath:Landroid/graphics/Path;

    const/high16 v10, -0x3d4c0000    # -90.0f

    const/high16 v11, 0x42b40000    # 90.0f

    invoke-virtual {v9, v5, v10, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 753
    sget-object v5, Lcom/narvii/feed/FeedListItem;->strokePath:Landroid/graphics/Path;

    sub-int v9, v2, v0

    int-to-float v9, v9

    invoke-virtual {v5, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 755
    iget-object v5, p0, Lcom/narvii/feed/FeedListItem;->rectF:Landroid/graphics/RectF;

    iput v1, v5, Landroid/graphics/RectF;->left:F

    sub-int v1, v2, v7

    int-to-float v1, v1

    .line 756
    iput v1, v5, Landroid/graphics/RectF;->top:F

    .line 757
    iput v3, v5, Landroid/graphics/RectF;->right:F

    int-to-float v2, v2

    .line 758
    iput v2, v5, Landroid/graphics/RectF;->bottom:F

    .line 759
    sget-object v3, Lcom/narvii/feed/FeedListItem;->strokePath:Landroid/graphics/Path;

    invoke-virtual {v3, v5, v6, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 761
    sget-object v3, Lcom/narvii/feed/FeedListItem;->strokePath:Landroid/graphics/Path;

    int-to-float v0, v0

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 763
    iget-object v3, p0, Lcom/narvii/feed/FeedListItem;->rectF:Landroid/graphics/RectF;

    iput v6, v3, Landroid/graphics/RectF;->left:F

    .line 764
    iput v1, v3, Landroid/graphics/RectF;->top:F

    .line 765
    iput v8, v3, Landroid/graphics/RectF;->right:F

    .line 766
    iput v2, v3, Landroid/graphics/RectF;->bottom:F

    .line 767
    sget-object v1, Lcom/narvii/feed/FeedListItem;->strokePath:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v11, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 769
    sget-object v1, Lcom/narvii/feed/FeedListItem;->strokePath:Landroid/graphics/Path;

    invoke-virtual {v1, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 771
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->rectF:Landroid/graphics/RectF;

    iput v6, v0, Landroid/graphics/RectF;->left:F

    .line 772
    iput v6, v0, Landroid/graphics/RectF;->top:F

    .line 773
    iput v8, v0, Landroid/graphics/RectF;->right:F

    .line 774
    iput v8, v0, Landroid/graphics/RectF;->bottom:F

    .line 775
    sget-object v1, Lcom/narvii/feed/FeedListItem;->strokePath:Landroid/graphics/Path;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v1, v0, v2, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 776
    sget-object v0, Lcom/narvii/feed/FeedListItem;->strokePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 778
    sget-object v0, Lcom/narvii/feed/FeedListItem;->fillPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 779
    sget-object v0, Lcom/narvii/feed/FeedListItem;->fillPath:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 780
    sget-object v0, Lcom/narvii/feed/FeedListItem;->fillPath:Landroid/graphics/Path;

    sget v1, Lcom/narvii/feed/FeedListItem;->size:I

    int-to-float v2, v1

    add-float/2addr v2, v4

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 781
    sget-object v0, Lcom/narvii/feed/FeedListItem;->fillPath:Landroid/graphics/Path;

    sget v1, Lcom/narvii/feed/FeedListItem;->size:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v4, v1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 782
    sget-object v0, Lcom/narvii/feed/FeedListItem;->fillPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 784
    sget-object v0, Lcom/narvii/feed/FeedListItem;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 785
    sget-object v0, Lcom/narvii/feed/FeedListItem;->paint:Landroid/graphics/Paint;

    sget v1, Lcom/narvii/feed/FeedListItem;->bgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 786
    sget-object v0, Lcom/narvii/feed/FeedListItem;->fillPath:Landroid/graphics/Path;

    sget-object v1, Lcom/narvii/feed/FeedListItem;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 788
    sget-object v0, Lcom/narvii/feed/FeedListItem;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 789
    sget-object v0, Lcom/narvii/feed/FeedListItem;->paint:Landroid/graphics/Paint;

    sget v1, Lcom/narvii/feed/FeedListItem;->strokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 790
    sget-object v0, Lcom/narvii/feed/FeedListItem;->strokePath:Landroid/graphics/Path;

    sget-object v1, Lcom/narvii/feed/FeedListItem;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/narvii/feed/FeedListItem;->disableClick:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 171
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getFeed()Lcom/narvii/model/Feed;
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->feed:Lcom/narvii/model/Feed;

    return-object v0
.end method

.method public isAllLoaded()Z
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 837
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/image/ImageLoadTracker;->isAllLoaded()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 126
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0900e4

    .line 127
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->avatar:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f090c10

    .line 128
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const v0, 0x7f090764

    .line 129
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->nickname:Landroid/view/View;

    const v0, 0x7f09032e

    .line 130
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->datetime:Landroid/widget/TextView;

    const v0, 0x7f090b9a

    .line 131
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    const v0, 0x7f0902d0

    .line 132
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    const v0, 0x7f09043f

    .line 133
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->frame1:Landroid/view/View;

    const v0, 0x7f090571

    .line 134
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->img1:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f090435

    .line 135
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->caption1:Landroid/widget/TextView;

    const v0, 0x7f090440

    .line 136
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->frame2:Landroid/view/View;

    const v0, 0x7f090572

    .line 137
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->img2:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f090436

    .line 138
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->caption2:Landroid/widget/TextView;

    const v0, 0x7f090441

    .line 139
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->frame3:Landroid/view/View;

    const v0, 0x7f090573

    .line 140
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->img3:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f090437

    .line 141
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->caption3:Landroid/widget/TextView;

    const v0, 0x7f090446

    .line 142
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/Card2View;

    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->card2:Lcom/narvii/widget/Card2View;

    const v0, 0x7f090445

    .line 143
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/CardView;

    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->card:Lcom/narvii/widget/CardView;

    const v0, 0x7f090562

    .line 144
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->icon:Lcom/narvii/widget/TintButton;

    const v0, 0x7f090948

    .line 145
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/feed/FeedListItem;

    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->ref:Lcom/narvii/feed/FeedListItem;

    const v0, 0x7f090451

    .line 146
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/feed/FeedToolbarLayout;

    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->toolbar:Lcom/narvii/feed/FeedToolbarLayout;

    const v0, 0x7f090450

    .line 147
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/feed/FeedToolbarExternalLayout;

    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->externalToolbar:Lcom/narvii/feed/FeedToolbarExternalLayout;

    const v0, 0x7f090a5b

    .line 148
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->siteIcon:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f090a5f

    .line 149
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->siteSource:Landroid/widget/TextView;

    const v0, 0x7f0908ed

    .line 150
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/feed/quizzes/QuizCoverView;

    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->quizCoverView:Lcom/narvii/feed/quizzes/QuizCoverView;

    const v0, 0x7f0908f7

    .line 151
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->quizPlayed:Landroid/widget/TextView;

    const v0, 0x7f09085d

    .line 152
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/poll/PollOptionListLayout;

    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->polloptList:Lcom/narvii/poll/PollOptionListLayout;

    const v0, 0x7f0908f6

    .line 153
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->quizPlayedTag:Landroid/view/View;

    const v0, 0x7f090425

    .line 154
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->fansOnlyContentIndicator:Landroid/view/View;

    const v0, 0x7f090c05

    .line 155
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->unknowTypeHint:Landroid/widget/TextView;

    const v0, 0x7f09035c

    .line 156
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/feed/FeedListItem;->disabled:Landroid/widget/TextView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 796
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    const p1, 0x7f0907aa

    .line 797
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 799
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public setDarkTheme(ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 175
    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/feed/FeedListItem;->setDarkTheme(ZZI)V

    return-void
.end method

.method public setDarkTheme(ZZI)V
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->darkTheme:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_1

    .line 180
    iget p1, p0, Lcom/narvii/feed/FeedListItem;->backgroundColor:I

    if-eq p3, p1, :cond_0

    iget-object p1, p0, Lcom/narvii/feed/FeedListItem;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    if-eqz p1, :cond_0

    .line 181
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->darkTheme:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget p3, p0, Lcom/narvii/feed/FeedListItem;->backgroundColor:I

    invoke-virtual {p1, p2, p3, v1}, Lcom/narvii/widget/UserAvatarLayout;->setDarkTheme(ZIZ)V

    :cond_0
    return-void

    .line 185
    :cond_1
    iget-object p3, p0, Lcom/narvii/feed/FeedListItem;->feed:Lcom/narvii/model/Feed;

    if-nez p3, :cond_2

    return-void

    .line 188
    :cond_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcom/narvii/feed/FeedListItem;->darkTheme:Ljava/lang/Boolean;

    .line 190
    iget-object p3, p0, Lcom/narvii/feed/FeedListItem;->nickname:Landroid/view/View;

    if-eqz p3, :cond_8

    .line 191
    instance-of v0, p3, Lcom/narvii/widget/NicknameView;

    const v2, 0x7f060207

    const v3, 0x7f060209

    if-eqz v0, :cond_4

    .line 192
    check-cast p3, Lcom/narvii/widget/NicknameView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p1, :cond_3

    const v2, 0x7f060209

    :cond_3
    invoke-static {p2, v2}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/narvii/widget/NicknameView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_6

    .line 195
    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const v3, 0x7f0601c1

    :goto_0
    invoke-static {p2, v3}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 197
    :cond_6
    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p1, :cond_7

    const v2, 0x7f060209

    :cond_7
    invoke-static {p2, v2}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 202
    :cond_8
    :goto_1
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->toolbar:Lcom/narvii/feed/FeedToolbarLayout;

    if-eqz p2, :cond_9

    .line 203
    invoke-virtual {p2, p1}, Lcom/narvii/feed/FeedToolbarLayout;->setDarkTheme(Z)V

    .line 206
    :cond_9
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->externalToolbar:Lcom/narvii/feed/FeedToolbarExternalLayout;

    if-eqz p2, :cond_a

    .line 207
    invoke-virtual {p2, p1}, Lcom/narvii/feed/FeedToolbarExternalLayout;->setDarkTheme(Z)V

    .line 210
    :cond_a
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->card2:Lcom/narvii/widget/Card2View;

    if-eqz p2, :cond_b

    .line 211
    invoke-virtual {p2, p1}, Lcom/narvii/widget/Card2View;->setDarkTheme(Z)V

    .line 213
    :cond_b
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->feed:Lcom/narvii/model/Feed;

    instance-of p2, p2, Lcom/narvii/model/Blog;

    const/4 p3, -0x1

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->ref:Lcom/narvii/feed/FeedListItem;

    if-nez p2, :cond_d

    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    if-eqz p2, :cond_d

    if-eqz p1, :cond_c

    const/4 v0, -0x1

    goto :goto_2

    :cond_c
    const v0, -0xcccccd

    .line 214
    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    :cond_d
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    const v0, -0x555556

    if-eqz p2, :cond_e

    .line 217
    iget v2, p0, Lcom/narvii/feed/FeedListItem;->backgroundColor:I

    invoke-virtual {p2, p1, v2, v1}, Lcom/narvii/widget/UserAvatarLayout;->setDarkTheme(ZIZ)V

    goto :goto_4

    .line 218
    :cond_e
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->avatar:Lcom/narvii/widget/NVImageView;

    if-eqz p2, :cond_10

    if-eqz p1, :cond_f

    const/4 v1, -0x1

    goto :goto_3

    :cond_f
    const v1, -0x555556

    .line 219
    :goto_3
    iput v1, p2, Lcom/narvii/widget/NVImageView;->strokeColor:I

    .line 220
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->avatar:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->invalidate()V

    .line 222
    :cond_10
    :goto_4
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-eqz p2, :cond_12

    if-eqz p1, :cond_11

    const/4 v1, -0x1

    goto :goto_5

    :cond_11
    const v1, -0xaaaaab

    .line 223
    :goto_5
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    :cond_12
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->datetime:Landroid/widget/TextView;

    const v1, -0x111112

    if-eqz p2, :cond_14

    if-eqz p1, :cond_13

    const v2, -0x111112

    goto :goto_6

    :cond_13
    const v2, -0x2e2e2f

    .line 226
    :goto_6
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    :cond_14
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->quizPlayed:Landroid/widget/TextView;

    if-eqz p2, :cond_16

    if-eqz p1, :cond_15

    const v2, -0x111112

    goto :goto_7

    :cond_15
    const v2, -0x777778

    .line 229
    :goto_7
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    :cond_16
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->polloptList:Lcom/narvii/poll/PollOptionListLayout;

    if-eqz p2, :cond_17

    .line 232
    invoke-virtual {p2, p1}, Lcom/narvii/poll/PollOptionListLayout;->setDarkTheme(Z)V

    .line 234
    :cond_17
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->quizCoverView:Lcom/narvii/feed/quizzes/QuizCoverView;

    if-eqz p2, :cond_18

    .line 235
    invoke-virtual {p2, p1}, Lcom/narvii/feed/quizzes/QuizCoverView;->setDarkTheme(Z)V

    .line 237
    :cond_18
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->siteSource:Landroid/widget/TextView;

    if-eqz p2, :cond_1a

    if-eqz p1, :cond_19

    const v0, -0x111112

    .line 238
    :cond_19
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    :cond_1a
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->feed:Lcom/narvii/model/Feed;

    instance-of v0, p2, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_1b

    check-cast p2, Lcom/narvii/model/Blog;

    iget p2, p2, Lcom/narvii/model/Blog;->type:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1b

    goto :goto_8

    .line 248
    :cond_1b
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->img1:Lcom/narvii/widget/NVImageView;

    if-eqz p2, :cond_1c

    .line 249
    invoke-direct {p0, p2}, Lcom/narvii/feed/FeedListItem;->setImagePlaceholder(Lcom/narvii/widget/NVImageView;)V

    .line 251
    :cond_1c
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->img2:Lcom/narvii/widget/NVImageView;

    if-eqz p2, :cond_1d

    .line 252
    invoke-direct {p0, p2}, Lcom/narvii/feed/FeedListItem;->setImagePlaceholder(Lcom/narvii/widget/NVImageView;)V

    .line 254
    :cond_1d
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->img3:Lcom/narvii/widget/NVImageView;

    if-eqz p2, :cond_1e

    .line 255
    invoke-direct {p0, p2}, Lcom/narvii/feed/FeedListItem;->setImagePlaceholder(Lcom/narvii/widget/NVImageView;)V

    .line 259
    :cond_1e
    :goto_8
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->ref:Lcom/narvii/feed/FeedListItem;

    if-eqz p2, :cond_20

    .line 260
    iget v0, p0, Lcom/narvii/feed/FeedListItem;->backgroundColor:I

    invoke-virtual {p2, p1, v0}, Lcom/narvii/feed/FeedListItem;->setDarkTheme(ZI)V

    .line 261
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->ref:Lcom/narvii/feed/FeedListItem;

    if-eqz p1, :cond_1f

    const v0, 0x7f0806d5

    goto :goto_9

    :cond_1f
    const v0, 0x7f0806d4

    :goto_9
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 264
    :cond_20
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->unknowTypeHint:Landroid/widget/TextView;

    if-eqz p2, :cond_22

    if-eqz p1, :cond_21

    goto :goto_a

    .line 265
    :cond_21
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f06017d

    invoke-static {p3, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    :goto_a
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    :cond_22
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->disabled:Landroid/widget/TextView;

    if-eqz p2, :cond_24

    if-eqz p1, :cond_23

    const p1, -0x66000001

    goto :goto_b

    :cond_23
    const p1, -0x778e8c87

    .line 269
    :goto_b
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_24
    return-void
.end method

.method public setDisabledFeed(Lcom/narvii/model/Feed;)V
    .locals 2

    .line 283
    iput-object p1, p0, Lcom/narvii/feed/FeedListItem;->feed:Lcom/narvii/model/Feed;

    .line 284
    invoke-direct {p0}, Lcom/narvii/feed/FeedListItem;->configUserHeader()V

    if-nez p1, :cond_0

    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 289
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->toolbar:Lcom/narvii/feed/FeedToolbarLayout;

    if-eqz v0, :cond_3

    .line 293
    invoke-virtual {v0, p1}, Lcom/narvii/feed/FeedToolbarLayout;->setFeed(Lcom/narvii/model/Feed;)V

    :cond_3
    return-void
.end method

.method public setFeed(Lcom/narvii/model/Feed;)V
    .locals 1

    const/4 v0, 0x0

    .line 326
    invoke-virtual {p0, p1, v0}, Lcom/narvii/feed/FeedListItem;->setFeed(Lcom/narvii/model/Feed;Z)V

    return-void
.end method

.method public setFeed(Lcom/narvii/model/Feed;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 330
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

    .line 334
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

    .line 338
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

    .line 343
    iput-object v1, v0, Lcom/narvii/feed/FeedListItem;->feed:Lcom/narvii/model/Feed;

    if-nez v1, :cond_0

    return-void

    .line 351
    :cond_0
    instance-of v7, v1, Lcom/narvii/model/Blog;

    const/4 v8, 0x1

    const/16 v9, 0x8

    if-eqz v7, :cond_1

    move-object v11, v1

    check-cast v11, Lcom/narvii/model/Blog;

    iget v11, v11, Lcom/narvii/model/Blog;->type:I

    if-ne v11, v9, :cond_1

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    :goto_0
    const/4 v12, 0x0

    if-eqz v11, :cond_3

    .line 353
    move-object v11, v1

    check-cast v11, Lcom/narvii/model/Blog;

    iget-object v13, v11, Lcom/narvii/model/Blog;->externalSource:Lcom/narvii/model/ExternalSource;

    if-eqz v13, :cond_3

    iget-object v13, v0, Lcom/narvii/feed/FeedListItem;->avatar:Lcom/narvii/widget/NVImageView;

    if-eqz v13, :cond_3

    .line 354
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/narvii/model/Blog;->getExternalOriginDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 355
    iget-object v13, v0, Lcom/narvii/feed/FeedListItem;->avatar:Lcom/narvii/widget/NVImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/narvii/model/Blog;->getExternalOriginDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v13, v11}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 357
    :cond_2
    iget-object v11, v0, Lcom/narvii/feed/FeedListItem;->avatar:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v11, v12}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_1

    .line 359
    :cond_3
    iget-object v11, v0, Lcom/narvii/feed/FeedListItem;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v11, :cond_4

    iget-object v13, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-eqz v13, :cond_4

    .line 360
    invoke-virtual {v11, v13}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 361
    iget-object v11, v0, Lcom/narvii/feed/FeedListItem;->avatar:Lcom/narvii/widget/NVImageView;

    if-eqz v11, :cond_6

    instance-of v13, v1, Lcom/narvii/model/Item;

    if-eqz v13, :cond_6

    .line 362
    iget-object v13, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {v13}, Lcom/narvii/model/User;->iconForCatalog()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_1

    .line 364
    :cond_4
    iget-object v11, v0, Lcom/narvii/feed/FeedListItem;->avatar:Lcom/narvii/widget/NVImageView;

    if-eqz v11, :cond_6

    iget-object v13, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-eqz v13, :cond_6

    .line 365
    instance-of v14, v1, Lcom/narvii/model/Item;

    if-eqz v14, :cond_5

    .line 366
    invoke-virtual {v13}, Lcom/narvii/model/User;->iconForCatalog()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_1

    .line 368
    :cond_5
    invoke-virtual {v13}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 371
    :cond_6
    :goto_1
    iget-boolean v11, v1, Lcom/narvii/model/Feed;->needHidden:Z

    .line 373
    iget-object v13, v0, Lcom/narvii/feed/FeedListItem;->nickname:Landroid/view/View;

    instance-of v14, v13, Lcom/narvii/widget/NicknameView;

    if-eqz v14, :cond_8

    if-eqz v7, :cond_7

    .line 374
    move-object v14, v1

    check-cast v14, Lcom/narvii/model/Blog;

    iget v15, v14, Lcom/narvii/model/Blog;->type:I

    if-ne v15, v9, :cond_7

    .line 375
    check-cast v13, Lcom/narvii/widget/NicknameView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/narvii/model/Blog;->getDisplayNickname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/narvii/widget/NicknameView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 377
    :cond_7
    iget-object v13, v0, Lcom/narvii/feed/FeedListItem;->nickname:Landroid/view/View;

    check-cast v13, Lcom/narvii/widget/NicknameView;

    iget-object v14, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    instance-of v15, v1, Lcom/narvii/model/Item;

    invoke-virtual {v13, v14, v15}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;Z)V

    goto :goto_3

    .line 379
    :cond_8
    instance-of v14, v13, Landroid/widget/TextView;

    if-eqz v14, :cond_b

    .line 380
    instance-of v14, v1, Lcom/narvii/model/Item;

    if-eqz v14, :cond_a

    .line 381
    check-cast v13, Landroid/widget/TextView;

    iget-object v14, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-nez v14, :cond_9

    move-object v14, v12

    goto :goto_2

    :cond_9
    invoke-virtual {v14}, Lcom/narvii/model/User;->nicknameForCatalog()Ljava/lang/String;

    move-result-object v14

    :goto_2
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_a
    if-eqz v7, :cond_b

    .line 383
    check-cast v13, Landroid/widget/TextView;

    move-object v14, v1

    check-cast v14, Lcom/narvii/model/Blog;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/narvii/model/Blog;->getDisplayNickname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    :cond_b
    :goto_3
    iget-object v13, v0, Lcom/narvii/feed/FeedListItem;->datetime:Landroid/widget/TextView;

    if-eqz v13, :cond_c

    .line 388
    iget-object v14, v0, Lcom/narvii/feed/FeedListItem;->formatter:Lcom/narvii/util/DateTimeFormatter;

    iget-object v15, v1, Lcom/narvii/model/Feed;->createdTime:Ljava/util/Date;

    invoke-virtual {v14, v15}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    :cond_c
    iget-object v13, v1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    if-nez v13, :cond_d

    const/4 v13, 0x0

    goto :goto_4

    :cond_d
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    :goto_4
    if-eqz v2, :cond_e

    .line 393
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/Feed;->getShowTitle()Ljava/lang/String;

    move-result-object v14

    goto :goto_5

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    move-result-object v14

    :goto_5
    if-nez v2, :cond_10

    if-eqz p3, :cond_f

    goto :goto_6

    .line 398
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/Feed;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object v15

    goto :goto_7

    .line 396
    :cond_10
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/Feed;->getSortedMediaList()Ljava/util/List;

    move-result-object v15

    .line 401
    :goto_7
    iget-object v12, v0, Lcom/narvii/feed/FeedListItem;->fansOnlyContentIndicator:Landroid/view/View;

    if-eqz v12, :cond_12

    .line 402
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/Feed;->isFansOnly()Z

    move-result v17

    if-eqz v17, :cond_11

    const/4 v10, 0x0

    goto :goto_8

    :cond_11
    const/4 v10, 0x4

    :goto_8
    invoke-virtual {v12, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    const/4 v10, 0x2

    if-eqz v7, :cond_5b

    .line 406
    move-object v7, v1

    check-cast v7, Lcom/narvii/model/Blog;

    .line 408
    iget v12, v7, Lcom/narvii/model/Blog;->type:I

    const/4 v9, -0x1

    if-nez v12, :cond_1d

    .line 409
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    if-eqz v2, :cond_13

    .line 410
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    :cond_13
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-eqz v2, :cond_1b

    .line 413
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ne v6, v9, :cond_14

    const/16 v19, 0x6

    goto :goto_9

    :cond_14
    move/from16 v19, v6

    :goto_9
    if-ne v5, v9, :cond_15

    const/4 v5, 0x2

    :cond_15
    if-ne v4, v9, :cond_16

    const/16 v18, 0x5

    goto :goto_a

    :cond_16
    move/from16 v18, v4

    .line 417
    :goto_a
    iget-boolean v2, v0, Lcom/narvii/feed/FeedListItem;->isRef:Z

    if-eqz v2, :cond_18

    .line 418
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-lez v13, :cond_17

    goto :goto_b

    :cond_17
    move/from16 v5, v18

    :goto_b
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_d

    .line 420
    :cond_18
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-lez v13, :cond_19

    goto :goto_c

    :cond_19
    move/from16 v5, v19

    :goto_c
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 422
    :goto_d
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/16 v4, 0x8

    goto :goto_e

    :cond_1a
    const/4 v4, 0x0

    :goto_e
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 424
    :cond_1b
    invoke-virtual {v0, v15, v3, v11}, Lcom/narvii/feed/FeedListItem;->setMediaList(Ljava/util/List;ZZ)V

    :cond_1c
    :goto_f
    const/16 v2, 0x8

    const/16 v16, 0x0

    goto/16 :goto_28

    :cond_1d
    if-ne v12, v8, :cond_1e

    .line 426
    iget-object v1, v7, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    invoke-virtual {v0, v1}, Lcom/narvii/feed/FeedListItem;->setFeed(Lcom/narvii/model/Feed;)V

    return-void

    :cond_1e
    const/4 v8, 0x3

    if-ne v12, v10, :cond_22

    .line 429
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-eqz v2, :cond_20

    .line 430
    iget-object v2, v7, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v4, 0x7f0f06b3

    if-eqz v2, :cond_1f

    .line 431
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0f06b4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 431
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 436
    :cond_1f
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 436
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    :goto_10
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 442
    :cond_20
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->ref:Lcom/narvii/feed/FeedListItem;

    if-eqz v2, :cond_1c

    .line 443
    iget-object v2, v7, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->isDisabled()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 444
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->ref:Lcom/narvii/feed/FeedListItem;

    iget-object v4, v7, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    invoke-virtual {v2, v4}, Lcom/narvii/feed/FeedListItem;->setDisabledFeed(Lcom/narvii/model/Feed;)V

    goto/16 :goto_f

    .line 446
    :cond_21
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->ref:Lcom/narvii/feed/FeedListItem;

    iget-object v4, v7, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    invoke-virtual {v2, v4}, Lcom/narvii/feed/FeedListItem;->setFeed(Lcom/narvii/model/Feed;)V

    goto/16 :goto_f

    :cond_22
    if-ne v12, v8, :cond_2c

    .line 450
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->icon:Lcom/narvii/widget/TintButton;

    if-eqz v2, :cond_23

    const v8, 0x7f0807de

    .line 451
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 452
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->icon:Lcom/narvii/widget/TintButton;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v12, 0x7f060166

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 454
    :cond_23
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    if-eqz v2, :cond_24

    .line 455
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    :cond_24
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-eqz v2, :cond_2b

    .line 458
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ne v6, v9, :cond_25

    const/16 v19, 0x6

    goto :goto_11

    :cond_25
    move/from16 v19, v6

    :goto_11
    if-ne v5, v9, :cond_26

    const/4 v5, 0x2

    :cond_26
    if-ne v4, v9, :cond_27

    const/16 v18, 0x5

    goto :goto_12

    :cond_27
    move/from16 v18, v4

    .line 462
    :goto_12
    iget-boolean v2, v0, Lcom/narvii/feed/FeedListItem;->isRef:Z

    if-eqz v2, :cond_29

    .line 463
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-lez v13, :cond_28

    goto :goto_13

    :cond_28
    move/from16 v5, v18

    :goto_13
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_15

    .line 465
    :cond_29
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-lez v13, :cond_2a

    goto :goto_14

    :cond_2a
    move/from16 v5, v19

    :goto_14
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 468
    :cond_2b
    :goto_15
    invoke-virtual {v0, v15, v3, v11}, Lcom/narvii/feed/FeedListItem;->setMediaList(Ljava/util/List;ZZ)V

    goto/16 :goto_f

    :cond_2c
    const/4 v8, 0x4

    if-ne v12, v8, :cond_36

    .line 470
    iget-object v2, v7, Lcom/narvii/model/Blog;->endTime:Ljava/util/Date;

    if-nez v2, :cond_2d

    const/4 v2, 0x1

    goto :goto_16

    :cond_2d
    const/4 v2, 0x0

    .line 471
    :goto_16
    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->icon:Lcom/narvii/widget/TintButton;

    if-eqz v4, :cond_2f

    .line 472
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v2, :cond_2e

    const v2, 0x7f060211

    goto :goto_17

    :cond_2e
    const v2, 0x7f060210

    :goto_17
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 475
    :cond_2f
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    if-eqz v2, :cond_30

    .line 476
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    :cond_30
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-eqz v2, :cond_32

    .line 479
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v2

    .line 480
    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    const/16 v5, 0x8

    goto :goto_18

    :cond_31
    const/4 v5, 0x0

    :goto_18
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 481
    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    :cond_32
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->polloptList:Lcom/narvii/poll/PollOptionListLayout;

    if-eqz v2, :cond_1c

    .line 485
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    move-result v4

    if-nez v4, :cond_33

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x0

    goto :goto_19

    :cond_33
    const/4 v4, 0x0

    const/4 v12, 0x0

    :goto_19
    invoke-virtual {v2, v7, v12, v4}, Lcom/narvii/poll/PollOptionListLayout;->setPoll(Lcom/narvii/model/Blog;Ljava/lang/Boolean;Z)V

    .line 486
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->polloptList:Lcom/narvii/poll/PollOptionListLayout;

    iget-object v4, v7, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    if-eqz v4, :cond_35

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v10, :cond_34

    goto :goto_1a

    :cond_34
    const/4 v4, 0x0

    goto :goto_1b

    :cond_35
    :goto_1a
    const/16 v4, 0x8

    :goto_1b
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_f

    :cond_36
    const/4 v8, 0x5

    if-ne v12, v8, :cond_41

    .line 489
    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->icon:Lcom/narvii/widget/TintButton;

    if-eqz v4, :cond_37

    const v5, 0x7f080208

    .line 490
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 491
    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->icon:Lcom/narvii/widget/TintButton;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060161

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 493
    :cond_37
    invoke-virtual {v7}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object v4

    if-eqz v4, :cond_3e

    .line 495
    iget-object v5, v0, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    if-eqz v5, :cond_39

    .line 496
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->isPromoted()Z

    move-result v6

    if-eqz v6, :cond_38

    if-eqz v2, :cond_38

    goto :goto_1c

    :cond_38
    invoke-virtual {v7}, Lcom/narvii/model/Blog;->getShowTitle()Ljava/lang/String;

    move-result-object v14

    :goto_1c
    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    :cond_39
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-eqz v2, :cond_3a

    .line 499
    invoke-virtual {v7}, Lcom/narvii/model/Blog;->getShowContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    :cond_3a
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->siteIcon:Lcom/narvii/widget/NVImageView;

    if-eqz v2, :cond_3b

    .line 502
    invoke-virtual {v4}, Lcom/narvii/model/LinkSummary;->getShowFavIcon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 504
    :cond_3b
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->siteSource:Landroid/widget/TextView;

    if-eqz v2, :cond_3c

    .line 505
    invoke-virtual {v4}, Lcom/narvii/model/LinkSummary;->getShowSource()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3c
    if-eqz v15, :cond_3d

    .line 507
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3d

    move-object v2, v15

    goto :goto_1d

    :cond_3d
    iget-object v2, v4, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    :goto_1d
    invoke-virtual {v0, v2, v3, v11}, Lcom/narvii/feed/FeedListItem;->setMediaList(Ljava/util/List;ZZ)V

    goto/16 :goto_f

    .line 509
    :cond_3e
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    if-eqz v2, :cond_3f

    .line 510
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    :cond_3f
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-eqz v2, :cond_1c

    .line 513
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    const/16 v4, 0x8

    goto :goto_1e

    :cond_40
    const/4 v4, 0x0

    :goto_1e
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 514
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    :cond_41
    const/4 v8, 0x6

    if-ne v12, v8, :cond_48

    .line 518
    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    if-eqz v4, :cond_42

    .line 519
    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    :cond_42
    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-eqz v4, :cond_44

    .line 522
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_43

    const/16 v5, 0x8

    goto :goto_1f

    :cond_43
    const/4 v5, 0x0

    :goto_1f
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 525
    :cond_44
    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->quizCoverView:Lcom/narvii/feed/quizzes/QuizCoverView;

    if-eqz v4, :cond_45

    .line 526
    invoke-virtual {v4, v7, v2}, Lcom/narvii/feed/quizzes/QuizCoverView;->setQuiz(Lcom/narvii/model/Blog;Z)V

    .line 528
    :cond_45
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->quizPlayed:Landroid/widget/TextView;

    if-eqz v2, :cond_46

    .line 529
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/narvii/util/BlogUtils;->getQuizRecordText(Lcom/narvii/model/Blog;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    :cond_46
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->quizPlayedTag:Landroid/view/View;

    if-eqz v2, :cond_1c

    .line 532
    iget-object v4, v7, Lcom/narvii/model/Blog;->quizResultOfCurrentUser:Lcom/narvii/model/CurrentQuizzesResult;

    if-eqz v4, :cond_47

    iget v4, v4, Lcom/narvii/model/CurrentQuizzesResult;->totalTimes:I

    if-eqz v4, :cond_47

    const/4 v4, 0x0

    goto :goto_20

    :cond_47
    const/4 v4, 0x4

    :goto_20
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f

    :cond_48
    const/4 v2, 0x7

    if-ne v12, v2, :cond_4c

    .line 536
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    if-eqz v2, :cond_49

    .line 537
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    :cond_49
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-eqz v2, :cond_4a

    const/16 v4, 0x8

    .line 540
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 543
    :cond_4a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v11, :cond_4b

    if-eqz v15, :cond_4b

    .line 544
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4b

    const/4 v4, 0x0

    .line 545
    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_4b
    const/4 v4, 0x0

    move-object v2, v15

    .line 549
    :goto_21
    invoke-virtual {v0, v2, v3, v11}, Lcom/narvii/feed/FeedListItem;->setMediaList(Ljava/util/List;ZZ)V

    goto/16 :goto_f

    :cond_4c
    const/16 v2, 0x8

    const/16 v16, 0x0

    if-ne v12, v2, :cond_50

    .line 551
    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    if-eqz v4, :cond_4d

    .line 552
    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    :cond_4d
    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-eqz v4, :cond_4f

    .line 556
    invoke-virtual {v7}, Lcom/narvii/model/Blog;->content()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/narvii/model/Blog;->content()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4e

    const/16 v5, 0x8

    goto :goto_22

    :cond_4e
    const/4 v5, 0x0

    :goto_22
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 559
    :cond_4f
    invoke-virtual {v0, v15, v3, v11}, Lcom/narvii/feed/FeedListItem;->setMediaList(Ljava/util/List;ZZ)V

    goto :goto_28

    .line 561
    :cond_50
    iget-object v12, v0, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    if-eqz v12, :cond_51

    .line 562
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    :cond_51
    iget-object v12, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-eqz v12, :cond_59

    .line 565
    invoke-virtual {v7}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v7

    .line 566
    iget-object v12, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ne v6, v9, :cond_52

    goto :goto_23

    :cond_52
    move v8, v6

    :goto_23
    if-ne v5, v9, :cond_53

    const/4 v5, 0x2

    :cond_53
    if-ne v4, v9, :cond_54

    const/16 v18, 0x5

    goto :goto_24

    :cond_54
    move/from16 v18, v4

    .line 570
    :goto_24
    iget-boolean v4, v0, Lcom/narvii/feed/FeedListItem;->isRef:Z

    if-eqz v4, :cond_56

    .line 571
    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-lez v13, :cond_55

    goto :goto_25

    :cond_55
    move/from16 v5, v18

    :goto_25
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_26

    .line 573
    :cond_56
    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-lez v13, :cond_57

    move v8, v5

    :cond_57
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 575
    :goto_26
    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_58

    const/16 v5, 0x8

    goto :goto_27

    :cond_58
    const/4 v5, 0x0

    :goto_27
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 577
    :cond_59
    invoke-virtual {v0, v15, v3, v11}, Lcom/narvii/feed/FeedListItem;->setMediaList(Ljava/util/List;ZZ)V

    .line 579
    :goto_28
    iget-object v4, v0, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    if-eqz v4, :cond_5c

    .line 580
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5a

    const/16 v5, 0x8

    goto :goto_29

    :cond_5a
    const/4 v5, 0x0

    :goto_29
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2a

    :cond_5b
    const/16 v2, 0x8

    const/16 v16, 0x0

    .line 584
    :cond_5c
    :goto_2a
    instance-of v4, v1, Lcom/narvii/model/Item;

    if-eqz v4, :cond_63

    .line 585
    move-object v4, v1

    check-cast v4, Lcom/narvii/model/Item;

    .line 586
    iget-object v5, v0, Lcom/narvii/feed/FeedListItem;->title:Landroid/widget/TextView;

    if-eqz v5, :cond_5d

    .line 587
    iget-object v6, v4, Lcom/narvii/model/Item;->label:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    :cond_5d
    iget-object v5, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    if-eqz v5, :cond_5f

    .line 590
    invoke-virtual {v4}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5e

    const/16 v6, 0x8

    goto :goto_2b

    :cond_5e
    const/4 v6, 0x0

    :goto_2b
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 591
    iget-object v5, v0, Lcom/narvii/feed/FeedListItem;->content:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/narvii/model/Feed;->compactContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    :cond_5f
    invoke-virtual {v0, v15, v3, v11}, Lcom/narvii/feed/FeedListItem;->setMediaList(Ljava/util/List;ZZ)V

    .line 596
    iget-object v3, v4, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-eqz v3, :cond_60

    invoke-virtual {v3}, Lcom/narvii/model/User;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_60

    const/4 v3, 0x1

    goto :goto_2c

    :cond_60
    const/4 v3, 0x0

    .line 597
    :goto_2c
    iget-object v5, v0, Lcom/narvii/feed/FeedListItem;->card2:Lcom/narvii/widget/Card2View;

    if-eqz v5, :cond_62

    .line 598
    iget-object v4, v4, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_61

    if-ge v13, v10, :cond_61

    goto :goto_2d

    :cond_61
    const/4 v2, 0x0

    :goto_2d
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 599
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->card2:Lcom/narvii/widget/Card2View;

    invoke-virtual {v2, v3}, Lcom/narvii/widget/Card2View;->setOfficial(Z)V

    .line 602
    :cond_62
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->card:Lcom/narvii/widget/CardView;

    if-eqz v2, :cond_63

    .line 603
    invoke-virtual {v2, v3}, Lcom/narvii/widget/CardView;->setStyle(I)V

    .line 607
    :cond_63
    iget-object v2, v0, Lcom/narvii/feed/FeedListItem;->toolbar:Lcom/narvii/feed/FeedToolbarLayout;

    if-eqz v2, :cond_64

    .line 608
    invoke-virtual {v2, v1}, Lcom/narvii/feed/FeedToolbarLayout;->setFeed(Lcom/narvii/model/Feed;)V

    :cond_64
    return-void
.end method

.method public setLoadFinishListener(Lcom/narvii/link/LoadFinishListener;)V
    .locals 1

    .line 826
    iput-object p1, p0, Lcom/narvii/feed/FeedListItem;->loadFinishListener:Lcom/narvii/link/LoadFinishListener;

    .line 827
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/image/ImageLoadTracker;->isAllLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    invoke-interface {p1}, Lcom/narvii/link/LoadFinishListener;->onLoadFinished()V

    :cond_0
    return-void
.end method

.method protected setMediaList(Ljava/util/List;ZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;ZZ)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 620
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 621
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Media;

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 622
    :goto_1
    iget-object v4, p0, Lcom/narvii/feed/FeedListItem;->feed:Lcom/narvii/model/Feed;

    instance-of v5, v4, Lcom/narvii/model/Blog;

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    check-cast v4, Lcom/narvii/model/Blog;

    iget v4, v4, Lcom/narvii/model/Blog;->type:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 623
    :goto_2
    iget-object v5, p0, Lcom/narvii/feed/FeedListItem;->frame1:Landroid/view/View;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/narvii/feed/FeedListItem;->img1:Lcom/narvii/widget/NVImageView;

    :cond_3
    const/16 v7, 0x8

    if-eqz v5, :cond_5

    if-eqz v3, :cond_4

    const/4 v8, 0x0

    goto :goto_3

    :cond_4
    const/16 v8, 0x8

    .line 625
    :goto_3
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 627
    :cond_5
    iget-object v5, p0, Lcom/narvii/feed/FeedListItem;->img1:Lcom/narvii/widget/NVImageView;

    if-eqz v5, :cond_7

    .line 628
    iput-boolean v4, v5, Lcom/narvii/widget/NVImageView;->forceShowPlayButton:Z

    .line 629
    instance-of v8, v5, Lcom/narvii/widget/ISecretImage;

    if-eqz v8, :cond_6

    .line 630
    check-cast v5, Lcom/narvii/widget/ISecretImage;

    invoke-interface {v5, v3, p3}, Lcom/narvii/widget/ISecretImage;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    goto :goto_4

    .line 632
    :cond_6
    invoke-virtual {v5, v3}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 635
    :cond_7
    :goto_4
    iget-object v5, p0, Lcom/narvii/feed/FeedListItem;->caption1:Landroid/widget/TextView;

    if-eqz v5, :cond_b

    if-nez v3, :cond_8

    move-object v3, v2

    goto :goto_5

    .line 636
    :cond_8
    iget-object v3, v3, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 637
    :goto_5
    iget-object v5, p0, Lcom/narvii/feed/FeedListItem;->caption1:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    const/4 v8, 0x4

    if-eq v5, v8, :cond_b

    .line 638
    iget-object v5, p0, Lcom/narvii/feed/FeedListItem;->caption1:Landroid/widget/TextView;

    if-nez p2, :cond_a

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_6

    :cond_9
    const/4 v8, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    const/16 v8, 0x8

    :goto_7
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 640
    iget-object v5, p0, Lcom/narvii/feed/FeedListItem;->caption1:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    :cond_b
    iget-object v3, p0, Lcom/narvii/feed/FeedListItem;->img2:Lcom/narvii/widget/NVImageView;

    if-eqz v3, :cond_13

    .line 644
    iput-boolean v4, v3, Lcom/narvii/widget/NVImageView;->forceShowPlayButton:Z

    if-le v1, v6, :cond_c

    .line 645
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Media;

    goto :goto_8

    :cond_c
    move-object v3, v2

    .line 646
    :goto_8
    iget-object v5, p0, Lcom/narvii/feed/FeedListItem;->frame2:Landroid/view/View;

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/narvii/feed/FeedListItem;->img2:Lcom/narvii/widget/NVImageView;

    :cond_d
    if-eqz v3, :cond_e

    const/4 v8, 0x0

    goto :goto_9

    :cond_e
    const/16 v8, 0x8

    .line 647
    :goto_9
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 648
    iget-object v5, p0, Lcom/narvii/feed/FeedListItem;->img2:Lcom/narvii/widget/NVImageView;

    instance-of v8, v5, Lcom/narvii/widget/SecretImageView;

    if-eqz v8, :cond_f

    .line 649
    check-cast v5, Lcom/narvii/widget/SecretImageView;

    invoke-virtual {v5, v3, p3}, Lcom/narvii/widget/SecretImageView;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    goto :goto_a

    .line 651
    :cond_f
    invoke-virtual {v5, v3}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 653
    :goto_a
    iget-object v5, p0, Lcom/narvii/feed/FeedListItem;->caption2:Landroid/widget/TextView;

    if-eqz v5, :cond_13

    if-nez v3, :cond_10

    move-object v3, v2

    goto :goto_b

    .line 654
    :cond_10
    iget-object v3, v3, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 655
    :goto_b
    iget-object v5, p0, Lcom/narvii/feed/FeedListItem;->caption2:Landroid/widget/TextView;

    if-nez p2, :cond_12

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_11

    goto :goto_c

    :cond_11
    const/4 v8, 0x0

    goto :goto_d

    :cond_12
    :goto_c
    const/16 v8, 0x8

    :goto_d
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 657
    iget-object v5, p0, Lcom/narvii/feed/FeedListItem;->caption2:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    :cond_13
    iget-object v3, p0, Lcom/narvii/feed/FeedListItem;->img3:Lcom/narvii/widget/NVImageView;

    if-eqz v3, :cond_1b

    .line 661
    iput-boolean v4, v3, Lcom/narvii/widget/NVImageView;->forceShowPlayButton:Z

    const/4 v3, 0x2

    if-le v1, v3, :cond_14

    .line 662
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Media;

    goto :goto_e

    :cond_14
    move-object v1, v2

    .line 663
    :goto_e
    iget-object v3, p0, Lcom/narvii/feed/FeedListItem;->frame3:Landroid/view/View;

    if-nez v3, :cond_15

    iget-object v3, p0, Lcom/narvii/feed/FeedListItem;->img3:Lcom/narvii/widget/NVImageView;

    :cond_15
    if-eqz v1, :cond_16

    const/4 v4, 0x0

    goto :goto_f

    :cond_16
    const/16 v4, 0x8

    .line 664
    :goto_f
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 665
    iget-object v3, p0, Lcom/narvii/feed/FeedListItem;->img3:Lcom/narvii/widget/NVImageView;

    instance-of v4, v3, Lcom/narvii/widget/SecretImageView;

    if-eqz v4, :cond_17

    .line 666
    check-cast v3, Lcom/narvii/widget/SecretImageView;

    invoke-virtual {v3, v1, p3}, Lcom/narvii/widget/SecretImageView;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    goto :goto_10

    .line 668
    :cond_17
    invoke-virtual {v3, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 670
    :goto_10
    iget-object v3, p0, Lcom/narvii/feed/FeedListItem;->caption3:Landroid/widget/TextView;

    if-eqz v3, :cond_1b

    if-nez v1, :cond_18

    goto :goto_11

    .line 671
    :cond_18
    iget-object v2, v1, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 672
    :goto_11
    iget-object v1, p0, Lcom/narvii/feed/FeedListItem;->caption3:Landroid/widget/TextView;

    if-nez p2, :cond_19

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1a

    :cond_19
    const/16 v0, 0x8

    :cond_1a
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 674
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->caption3:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    :cond_1b
    iget-object p2, p0, Lcom/narvii/feed/FeedListItem;->card2:Lcom/narvii/widget/Card2View;

    if-eqz p2, :cond_1c

    .line 678
    invoke-virtual {p2, p1, v6, p3}, Lcom/narvii/widget/Card2View;->setImages(Ljava/util/List;IZ)V

    :cond_1c
    return-void
.end method

.method protected setMediaUrl(Ljava/lang/String;)V
    .locals 3

    .line 684
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->frame1:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->img1:Lcom/narvii/widget/NVImageView;

    :cond_0
    const/16 v1, 0x8

    if-eqz v0, :cond_2

    .line 686
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 688
    :cond_2
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->img1:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_3

    .line 689
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 691
    :cond_3
    iget-object p1, p0, Lcom/narvii/feed/FeedListItem;->caption1:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 692
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 694
    :cond_4
    iget-object p1, p0, Lcom/narvii/feed/FeedListItem;->frame2:Landroid/view/View;

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/narvii/feed/FeedListItem;->img2:Lcom/narvii/widget/NVImageView;

    :cond_5
    if-eqz p1, :cond_6

    .line 696
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 698
    :cond_6
    iget-object p1, p0, Lcom/narvii/feed/FeedListItem;->caption2:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    .line 699
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 701
    :cond_7
    iget-object p1, p0, Lcom/narvii/feed/FeedListItem;->frame3:Landroid/view/View;

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/narvii/feed/FeedListItem;->img3:Lcom/narvii/widget/NVImageView;

    :cond_8
    if-eqz p1, :cond_9

    .line 703
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 705
    :cond_9
    iget-object p1, p0, Lcom/narvii/feed/FeedListItem;->caption3:Landroid/widget/TextView;

    if-eqz p1, :cond_a

    .line 706
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method public setProgress(Z)V
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->toolbar:Lcom/narvii/feed/FeedToolbarLayout;

    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {v0, p1}, Lcom/narvii/feed/FeedToolbarLayout;->setProgress(Z)V

    :cond_0
    return-void
.end method

.method public setStatSource(Ljava/lang/String;Lcom/narvii/util/logging/LoggingSource;Lcom/narvii/util/logging/LoggingOrigin;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->polloptList:Lcom/narvii/poll/PollOptionListLayout;

    if-eqz v0, :cond_0

    .line 161
    iput-object p1, v0, Lcom/narvii/poll/PollOptionListLayout;->statSource:Ljava/lang/String;

    .line 162
    iput-object p2, v0, Lcom/narvii/poll/PollOptionListLayout;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 163
    iput-object p3, v0, Lcom/narvii/poll/PollOptionListLayout;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    :cond_0
    return-void
.end method

.method public setUnknownFeed(Lcom/narvii/model/Feed;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/narvii/feed/FeedListItem;->feed:Lcom/narvii/model/Feed;

    .line 279
    invoke-direct {p0}, Lcom/narvii/feed/FeedListItem;->configUserHeader()V

    return-void
.end method

.method public setUpSnippetImageLoadTracker(Lcom/narvii/image/ImageLoadTracker;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 805
    new-instance v0, Lcom/narvii/feed/FeedListItem$1;

    invoke-direct {v0, p0}, Lcom/narvii/feed/FeedListItem$1;-><init>(Lcom/narvii/feed/FeedListItem;)V

    invoke-virtual {p1, v0}, Lcom/narvii/image/ImageLoadTracker;->setImageLoadTrackListener(Lcom/narvii/image/ImageLoadTrackListener;)V

    .line 813
    iput-object p1, p0, Lcom/narvii/feed/FeedListItem;->imageLoadTracker:Lcom/narvii/image/ImageLoadTracker;

    .line 814
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->img1:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v0}, Lcom/narvii/image/ImageLoadTracker;->addImageView(Lcom/narvii/widget/NVImageView;)V

    .line 815
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->quizCoverView:Lcom/narvii/feed/quizzes/QuizCoverView;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, v0, Lcom/narvii/feed/quizzes/QuizCoverView;->quizCoverImageView:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v0}, Lcom/narvii/image/ImageLoadTracker;->addImageView(Lcom/narvii/widget/NVImageView;)V

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/FeedListItem;->polloptList:Lcom/narvii/poll/PollOptionListLayout;

    if-eqz v0, :cond_1

    .line 819
    invoke-virtual {v0, p1}, Lcom/narvii/poll/PollOptionListLayout;->setUpSnippetImageLoadTracker(Lcom/narvii/image/ImageLoadTracker;)V

    :cond_1
    return-void
.end method
