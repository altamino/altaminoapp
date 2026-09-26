.class public Lcom/narvii/widget/KeywordsView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/KeywordsView$OnSizeChangedListener;
    }
.end annotation


# instance fields
.field darkTheme:Z

.field heightChangeListener:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field keywordClickListener:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field keywords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Landroid/view/View$OnClickListener;

.field mHeight:I

.field margin:I

.field maxWidth:I

.field onSizeChangedListener:Lcom/narvii/widget/KeywordsView$OnSizeChangedListener;

.field padding:I

.field paddingTop:I

.field paint:Landroid/graphics/Paint;

.field pending:Z

.field resid:I

.field textColor:I

.field textSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/KeywordsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/KeywordsView;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput v0, p0, Lcom/narvii/widget/KeywordsView;->maxWidth:I

    .line 4
    new-instance v1, Lcom/narvii/widget/KeywordsView$2;

    invoke-direct {v1, p0}, Lcom/narvii/widget/KeywordsView$2;-><init>(Lcom/narvii/widget/KeywordsView;)V

    iput-object v1, p0, Lcom/narvii/widget/KeywordsView;->listener:Landroid/view/View$OnClickListener;

    .line 5
    sget-object v1, Lcom/narvii/lib/R$styleable;->KeywordsView:[I

    sget v2, Lcom/narvii/lib/R$style;->KeywordsView:I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    sget p2, Lcom/narvii/lib/R$styleable;->KeywordsView_keywordSize:I

    const/16 v1, 0xe

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/KeywordsView;->textSize:I

    .line 7
    sget p2, Lcom/narvii/lib/R$styleable;->KeywordsView_keywordPadding:I

    const/4 v1, 0x6

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/KeywordsView;->padding:I

    .line 8
    sget p2, Lcom/narvii/lib/R$styleable;->KeywordsView_keywordPaddingTop:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/KeywordsView;->paddingTop:I

    .line 9
    sget p2, Lcom/narvii/lib/R$styleable;->KeywordsView_keywordMargin:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/KeywordsView;->margin:I

    .line 10
    sget p2, Lcom/narvii/lib/R$styleable;->KeywordsView_keywordBackground:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/KeywordsView;->resid:I

    .line 11
    sget p2, Lcom/narvii/lib/R$styleable;->KeywordsView_keywordColor:I

    const/high16 v0, -0x1000000

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/KeywordsView;->textColor:I

    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 14
    invoke-direct {p0}, Lcom/narvii/widget/KeywordsView;->updateView()V

    return-void
.end method

.method private createRow()Landroid/widget/LinearLayout;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroid/widget/LinearLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 12
    const/4 v2, -0x2

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    .line 20
    iget v1, p0, Lcom/narvii/widget/KeywordsView;->margin:I

    .line 21
    .line 22
    div-int/lit8 v2, v1, 0x2

    .line 23
    .line 24
    div-int/lit8 v1, v1, 0x2

    .line 25
    const/4 v3, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v3, v2, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 32
    return-object v0
.end method

.method private createText(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/widget/TextView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 12
    const/4 v2, -0x2

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 16
    .line 17
    iget v2, p0, Lcom/narvii/widget/KeywordsView;->margin:I

    .line 18
    .line 19
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    .line 24
    iget v1, p0, Lcom/narvii/widget/KeywordsView;->resid:I

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 30
    .line 31
    :cond_0
    const/16 v1, 0x10

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 35
    .line 36
    iget v1, p0, Lcom/narvii/widget/KeywordsView;->textSize:I

    .line 37
    int-to-float v1, v1

    .line 38
    const/4 v2, 0x0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 42
    .line 43
    iget v1, p0, Lcom/narvii/widget/KeywordsView;->textColor:I

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    .line 48
    iget v1, p0, Lcom/narvii/widget/KeywordsView;->padding:I

    .line 49
    .line 50
    iget v2, p0, Lcom/narvii/widget/KeywordsView;->paddingTop:I

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/widget/KeywordsView;->keywordClickListener:Lcom/narvii/util/Callback;

    .line 62
    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    iget-object p1, p0, Lcom/narvii/widget/KeywordsView;->listener:Landroid/view/View$OnClickListener;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    :cond_1
    return-object v0
.end method

.method private updateView()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/KeywordsView;->darkTheme:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget v0, Lcom/narvii/lib/R$drawable;->keywords_bg_line:I

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    sget v0, Lcom/narvii/lib/R$drawable;->keywords_bg_colorful:I

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0, v0}, Lcom/narvii/widget/KeywordsView;->setResid(I)V

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/narvii/widget/KeywordsView;->darkTheme:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    .line 19
    const v0, -0xaaaaab

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/4 v0, -0x1

    .line 22
    .line 23
    .line 24
    const v1, 0x3f4ccccd    # 0.8f

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->getColor(IF)I

    .line 28
    move-result v0

    .line 29
    .line 30
    .line 31
    :goto_1
    invoke-virtual {p0, v0}, Lcom/narvii/widget/KeywordsView;->setTextColor(I)V

    .line 32
    return-void
.end method


# virtual methods
.method public getCurrentHeight()I
    .locals 1

    iget v0, p0, Lcom/narvii/widget/KeywordsView;->mHeight:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 4
    sub-int/2addr p5, p3

    .line 5
    .line 6
    iget p1, p0, Lcom/narvii/widget/KeywordsView;->mHeight:I

    .line 7
    .line 8
    if-eq p1, p5, :cond_0

    .line 9
    .line 10
    iput p5, p0, Lcom/narvii/widget/KeywordsView;->mHeight:I

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/widget/KeywordsView;->heightChangeListener:Lcom/narvii/util/Callback;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 25
    move-result p1

    .line 26
    .line 27
    if-lez p1, :cond_1

    .line 28
    .line 29
    iget-boolean p1, p0, Lcom/narvii/widget/KeywordsView;->pending:Z

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    new-instance p1, Landroid/os/Handler;

    .line 34
    .line 35
    .line 36
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 37
    .line 38
    new-instance p2, Lcom/narvii/widget/KeywordsView$1;

    .line 39
    .line 40
    .line 41
    invoke-direct {p2, p0}, Lcom/narvii/widget/KeywordsView$1;-><init>(Lcom/narvii/widget/KeywordsView;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 4
    .line 5
    iget-object p3, p0, Lcom/narvii/widget/KeywordsView;->onSizeChangedListener:Lcom/narvii/widget/KeywordsView$OnSizeChangedListener;

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-interface {p3, p1, p2}, Lcom/narvii/widget/KeywordsView$OnSizeChangedListener;->onSizeChanged(II)V

    .line 11
    :cond_0
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/KeywordsView;->darkTheme:Z

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/widget/KeywordsView;->darkTheme:Z

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/widget/KeywordsView;->updateView()V

    .line 11
    return-void
.end method

.method public setHeightChangeListener(Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/widget/KeywordsView;->heightChangeListener:Lcom/narvii/util/Callback;

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 1

    const-string v0, ","

    .line 1
    invoke-static {p1, v0}, Lcom/narvii/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/narvii/widget/KeywordsView;->setKeywords(Ljava/util/List;)V

    return-void
.end method

.method public setKeywords(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object p1, p0, Lcom/narvii/widget/KeywordsView;->keywords:Ljava/util/List;

    if-eqz p1, :cond_5

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/widget/KeywordsView;->pending:Z

    return-void

    :cond_1
    iget v0, p0, Lcom/narvii/widget/KeywordsView;->maxWidth:I

    if-eqz v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/narvii/widget/KeywordsView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/narvii/widget/KeywordsView;->textSize:I

    int-to-float v2, v2

    .line 7
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/narvii/widget/KeywordsView;->paint:Landroid/graphics/Paint;

    .line 9
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    iget v6, p0, Lcom/narvii/widget/KeywordsView;->margin:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget v6, p0, Lcom/narvii/widget/KeywordsView;->padding:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    if-eqz v2, :cond_3

    add-float v6, v5, v3

    int-to-float v7, v0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    .line 10
    :cond_3
    invoke-direct {p0}, Lcom/narvii/widget/KeywordsView;->createRow()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 11
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v3, v1

    .line 12
    :cond_4
    invoke-direct {p0, v4}, Lcom/narvii/widget/KeywordsView;->createText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-float/2addr v3, v5

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/KeywordsView;->maxWidth:I

    return-void
.end method

.method public setOnKeywordClickListener(Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/widget/KeywordsView;->keywordClickListener:Lcom/narvii/util/Callback;

    return-void
.end method

.method public setOnSizeChangedListener(Lcom/narvii/widget/KeywordsView$OnSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/KeywordsView;->onSizeChangedListener:Lcom/narvii/widget/KeywordsView$OnSizeChangedListener;

    return-void
.end method

.method public setResid(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/KeywordsView;->resid:I

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/widget/KeywordsView;->keywords:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/widget/KeywordsView;->setKeywords(Ljava/util/List;)V

    .line 8
    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/KeywordsView;->textColor:I

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/widget/KeywordsView;->keywords:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/widget/KeywordsView;->setKeywords(Ljava/util/List;)V

    .line 8
    return-void
.end method
