.class public Lcom/narvii/item/detail/HeaderLayout;
.super Landroid/widget/RelativeLayout;
.source "HeaderLayout.java"

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

    .line 144
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance p1, Lcom/narvii/item/detail/HeaderLayout$1;

    invoke-direct {p1, p0}, Lcom/narvii/item/detail/HeaderLayout$1;-><init>(Lcom/narvii/item/detail/HeaderLayout;)V

    iput-object p1, p0, Lcom/narvii/item/detail/HeaderLayout;->keywordListener:Lcom/narvii/util/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/item/detail/HeaderLayout;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/narvii/item/detail/HeaderLayout;->preview:Z

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/item/detail/HeaderLayout;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/narvii/item/detail/HeaderLayout;->isHiddenPost:Z

    return p0
.end method

.method private setAlpha(Landroid/view/View;II)V
    .locals 3

    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    if-gt v0, p2, :cond_0

    const/4 p2, 0x0

    .line 305
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    const/4 p2, 0x4

    .line 306
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-lt v0, p3, :cond_1

    .line 308
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 309
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    sub-int v0, p3, v0

    int-to-float v0, v0

    mul-float v0, v0, v2

    sub-int/2addr p3, p2

    int-to-float p2, p3

    div-float/2addr v0, p2

    sub-float/2addr v2, v0

    .line 312
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 313
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateView()V
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->keywordsView:Lcom/narvii/widget/KeywordsView;

    iget-boolean v1, p0, Lcom/narvii/item/detail/HeaderLayout;->darkTheme:Z

    invoke-virtual {v0, v1}, Lcom/narvii/widget/KeywordsView;->setDarkTheme(Z)V

    .line 160
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->item:Lcom/narvii/model/Item;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/model/Feed;->hasBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->item:Lcom/narvii/model/Item;

    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-static {v0}, Lcom/narvii/util/PaletteUtils;->isDarkColor(I)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0801c6

    goto :goto_0

    :cond_0
    const v0, 0x7f0801c5

    goto :goto_0

    :cond_1
    const v0, 0x7f0801c4

    .line 168
    :goto_0
    iget-object v1, p0, Lcom/narvii/item/detail/HeaderLayout;->voteBtn:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 169
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->voteIcon:Lcom/narvii/widget/VoteIcon;

    iget-boolean v1, p0, Lcom/narvii/item/detail/HeaderLayout;->darkTheme:Z

    const/4 v2, -0x1

    const v3, -0xaaaaab

    if-nez v1, :cond_2

    const v1, -0xaaaaab

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/narvii/widget/VoteIcon;->setNoneColor(I)V

    .line 170
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->voteCount:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/narvii/item/detail/HeaderLayout;->darkTheme:Z

    if-nez v1, :cond_3

    const v1, -0xaaaaab

    goto :goto_2

    :cond_3
    const v1, -0x111112

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->voteProgress:Lcom/narvii/widget/SpinningView;

    iget-boolean v1, p0, Lcom/narvii/item/detail/HeaderLayout;->darkTheme:Z

    if-nez v1, :cond_4

    const v2, -0xaaaaab

    :cond_4
    invoke-virtual {v0, v2}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    .line 187
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0904dd

    .line 188
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->gradient:Landroid/view/View;

    const v0, 0x7f090a50

    .line 189
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/SlideshowView;

    iput-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->slideshow:Lcom/narvii/widget/SlideshowView;

    const v0, 0x7f0905d7

    .line 190
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/CardView;

    iput-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->itemCard:Lcom/narvii/widget/CardView;

    const v0, 0x7f090615

    .line 193
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/KeywordsView;

    iput-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->keywordsView:Lcom/narvii/widget/KeywordsView;

    .line 194
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->keywordsView:Lcom/narvii/widget/KeywordsView;

    iget-object v1, p0, Lcom/narvii/item/detail/HeaderLayout;->keywordListener:Lcom/narvii/util/Callback;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/KeywordsView;->setOnKeywordClickListener(Lcom/narvii/util/Callback;)V

    .line 195
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->keywordsView:Lcom/narvii/widget/KeywordsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 196
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->keywordsView:Lcom/narvii/widget/KeywordsView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/KeywordsView;->setMaxWidth(I)V

    const v0, 0x7f090cdc

    .line 199
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/VoteIcon;

    iput-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->voteIcon:Lcom/narvii/widget/VoteIcon;

    const v0, 0x7f090cd7

    .line 200
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->voteCount:Landroid/widget/TextView;

    const v0, 0x7f090ce0

    .line 201
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/SpinningView;

    iput-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->voteProgress:Lcom/narvii/widget/SpinningView;

    const v0, 0x7f090cd5

    .line 202
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->voteBtn:Landroid/view/View;

    const v0, 0x7f090cdf

    .line 204
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->voteLayout:Landroid/view/View;

    const v0, 0x7f090619

    .line 206
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/narvii/item/detail/HeaderLayout;->label:Landroid/widget/TextView;

    const v1, 0x7f090047

    .line 208
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/item/detail/HeaderLayout;->actionbar2:Landroid/view/View;

    .line 209
    iget-object v1, p0, Lcom/narvii/item/detail/HeaderLayout;->actionbar2:Landroid/view/View;

    const v2, 0x7f0905d9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/CardView;

    iput-object v1, p0, Lcom/narvii/item/detail/HeaderLayout;->itemCard2:Lcom/narvii/widget/CardView;

    .line 210
    iget-object v1, p0, Lcom/narvii/item/detail/HeaderLayout;->actionbar2:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->label2:Landroid/widget/TextView;

    .line 211
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    move-result v0

    .line 212
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/narvii/app/NVActivity;

    invoke-virtual {v1}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    move-result v1

    .line 213
    iget-object v2, p0, Lcom/narvii/item/detail/HeaderLayout;->actionbar2:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 214
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 215
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v0, 0x7f0905e5

    .line 217
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->goldLine:Landroid/view/View;

    const v0, 0x7f09013c

    .line 219
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mmin18/widget/RealtimeBlurView;

    iput-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 220
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->slideshow:Lcom/narvii/widget/SlideshowView;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0, p0}, Lcom/narvii/widget/SlideshowView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/narvii/item/detail/HeaderLayout;->updateView()V

    return-void
.end method

.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 319
    iget-boolean p1, p0, Lcom/narvii/item/detail/HeaderLayout;->blurReady:Z

    if-nez p1, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 320
    iput-boolean p1, p0, Lcom/narvii/item/detail/HeaderLayout;->blurReady:Z

    .line 321
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 251
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 252
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    move-result p1

    .line 253
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/narvii/app/NVActivity;

    invoke-virtual {p2}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    move-result p2

    add-int p3, p1, p2

    .line 254
    div-int/lit8 p4, p3, 0x2

    add-int p5, p3, p4

    .line 257
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 258
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 259
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "fade"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 260
    invoke-direct {p0, v3, p4, p5}, Lcom/narvii/item/detail/HeaderLayout;->setAlpha(Landroid/view/View;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p4

    const/4 v0, 0x0

    const/4 v2, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    if-le p4, p5, :cond_2

    .line 268
    iget-object p3, p0, Lcom/narvii/item/detail/HeaderLayout;->actionbar2:Landroid/view/View;

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object p3, p0, Lcom/narvii/item/detail/HeaderLayout;->actionbar2:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 270
    iget-object p3, p0, Lcom/narvii/item/detail/HeaderLayout;->goldLine:Landroid/view/View;

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object p3, p0, Lcom/narvii/item/detail/HeaderLayout;->goldLine:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    :cond_2
    const/16 v4, 0xfe

    if-gt p4, p3, :cond_4

    .line 273
    iget-object p3, p0, Lcom/narvii/item/detail/HeaderLayout;->actionbar2:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object p3, p0, Lcom/narvii/item/detail/HeaderLayout;->actionbar2:Landroid/view/View;

    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    .line 275
    iget-object p3, p0, Lcom/narvii/item/detail/HeaderLayout;->goldLine:Landroid/view/View;

    iget-object p5, p0, Lcom/narvii/item/detail/HeaderLayout;->item:Lcom/narvii/model/Item;

    iget-object p5, p5, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-eqz p5, :cond_3

    iget p5, p5, Lcom/narvii/model/User;->role:I

    if-ne p5, v4, :cond_3

    const/4 p5, 0x0

    goto :goto_1

    :cond_3
    const/4 p5, 0x4

    :goto_1
    invoke-virtual {p3, p5}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object p3, p0, Lcom/narvii/item/detail/HeaderLayout;->goldLine:Landroid/view/View;

    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    :cond_4
    sub-int v5, p5, p4

    int-to-float v5, v5

    mul-float v5, v5, v3

    sub-int/2addr p5, p3

    int-to-float p3, p5

    div-float/2addr v5, p3

    .line 279
    iget-object p3, p0, Lcom/narvii/item/detail/HeaderLayout;->actionbar2:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object p3, p0, Lcom/narvii/item/detail/HeaderLayout;->actionbar2:Landroid/view/View;

    invoke-virtual {p3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 281
    iget-object p3, p0, Lcom/narvii/item/detail/HeaderLayout;->goldLine:Landroid/view/View;

    iget-object p5, p0, Lcom/narvii/item/detail/HeaderLayout;->item:Lcom/narvii/model/Item;

    iget-object p5, p5, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-eqz p5, :cond_5

    iget p5, p5, Lcom/narvii/model/User;->role:I

    if-ne p5, v4, :cond_5

    const/4 p5, 0x0

    goto :goto_2

    :cond_5
    const/4 p5, 0x4

    :goto_2
    invoke-virtual {p3, p5}, Landroid/view/View;->setVisibility(I)V

    .line 282
    iget-object p3, p0, Lcom/narvii/item/detail/HeaderLayout;->goldLine:Landroid/view/View;

    invoke-virtual {p3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 285
    :goto_3
    iget p3, p0, Lcom/narvii/item/detail/HeaderLayout;->height1:I

    .line 286
    iget-boolean p5, p0, Lcom/narvii/item/detail/HeaderLayout;->blurReady:Z

    if-eqz p5, :cond_9

    .line 287
    div-int/lit8 p3, p3, 0x2

    if-ge p4, p3, :cond_6

    sub-int/2addr p4, p1

    sub-int/2addr p4, p2

    int-to-float p4, p4

    mul-float p4, p4, v3

    sub-int/2addr p3, p1

    sub-int/2addr p3, p2

    int-to-float p1, p3

    div-float/2addr p4, p1

    goto :goto_4

    :cond_6
    const/high16 p4, 0x3f800000    # 1.0f

    :goto_4
    cmpg-float p1, p4, v0

    if-gez p1, :cond_7

    const/4 p4, 0x0

    .line 295
    :cond_7
    iget-object p1, p0, Lcom/narvii/item/detail/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    cmpl-float p2, p4, v3

    if-ltz p2, :cond_8

    const/4 v1, 0x4

    :cond_8
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object p1, p0, Lcom/narvii/item/detail/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    sub-float/2addr v3, p4

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_5

    .line 298
    :cond_9
    iget-object p1, p0, Lcom/narvii/item/detail/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method public removeActionBar2()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->actionbar2:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setDarkTheme(ZZ)V
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/narvii/item/detail/HeaderLayout;->darkTheme:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/narvii/item/detail/HeaderLayout;->colorBackground:Z

    if-ne v0, p2, :cond_0

    return-void

    .line 151
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/item/detail/HeaderLayout;->darkTheme:Z

    .line 152
    iput-boolean p2, p0, Lcom/narvii/item/detail/HeaderLayout;->colorBackground:Z

    .line 153
    invoke-direct {p0}, Lcom/narvii/item/detail/HeaderLayout;->updateView()V

    return-void
.end method

.method public setHeaderClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->voteBtn:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setHeight1(I)V
    .locals 0

    .line 135
    iput p1, p0, Lcom/narvii/item/detail/HeaderLayout;->height1:I

    return-void
.end method

.method public setIsHiddenPost(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/narvii/item/detail/HeaderLayout;->isHiddenPost:Z

    return-void
.end method

.method public setItem(Lcom/narvii/model/Item;)V
    .locals 4

    .line 227
    iput-object p1, p0, Lcom/narvii/item/detail/HeaderLayout;->item:Lcom/narvii/model/Item;

    .line 228
    iget-object v0, p1, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "coverAnimation"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 229
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v2, p0, Lcom/narvii/item/detail/HeaderLayout;->slideshow:Lcom/narvii/widget/SlideshowView;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/narvii/item/detail/HeaderLayout;->slideshow:Lcom/narvii/widget/SlideshowView;

    const v2, 0x7f080786

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 235
    :goto_0
    iget-object v1, p0, Lcom/narvii/item/detail/HeaderLayout;->slideshow:Lcom/narvii/widget/SlideshowView;

    iput-boolean v0, v1, Lcom/narvii/widget/SlideshowView;->noSlide:Z

    .line 236
    iget-object v0, p1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/SlideshowView;->setMediaList(Ljava/util/List;)V

    .line 237
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->itemCard:Lcom/narvii/widget/CardView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    .line 239
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->label:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/narvii/model/Item;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->itemCard2:Lcom/narvii/widget/CardView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    .line 242
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->label2:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/narvii/model/Item;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->keywordsView:Lcom/narvii/widget/KeywordsView;

    iget-object v1, p1, Lcom/narvii/model/Feed;->keywords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/KeywordsView;->setKeywords(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->voteIcon:Lcom/narvii/widget/VoteIcon;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/VoteIcon;->setVotedValue(I)V

    .line 246
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->voteCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0f0ae0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLongClickVoteListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->voteBtn:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void
.end method

.method public setPreview(Z)V
    .locals 4

    .line 95
    iput-boolean p1, p0, Lcom/narvii/item/detail/HeaderLayout;->preview:Z

    .line 96
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->actionbar2:Landroid/view/View;

    const v1, 0x7f090b5b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    iget-object v1, p0, Lcom/narvii/item/detail/HeaderLayout;->actionbar2:Landroid/view/View;

    const v2, 0x7f090048

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 98
    iget-object v2, p0, Lcom/narvii/item/detail/HeaderLayout;->actionbar2:Landroid/view/View;

    instance-of v3, v2, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 99
    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x800013

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_0
    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    .line 102
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    if-eqz v0, :cond_3

    const v1, 0x7f0f0275

    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->itemCard2:Lcom/narvii/widget/CardView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 109
    iget-object v1, p0, Lcom/narvii/item/detail/HeaderLayout;->label2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_5

    .line 111
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    .line 112
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_4

    .line 113
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 114
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    .line 116
    :cond_4
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 117
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public setVoting(Z)V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->voteIcon:Lcom/narvii/widget/VoteIcon;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/narvii/item/detail/HeaderLayout;->voteProgress:Lcom/narvii/widget/SpinningView;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
