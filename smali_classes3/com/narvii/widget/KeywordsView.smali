.class public Lcom/narvii/widget/KeywordsView;
.super Landroid/widget/LinearLayout;
.source "KeywordsView.java"


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

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/KeywordsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/KeywordsView;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/narvii/widget/KeywordsView;->maxWidth:I

    .line 213
    new-instance v1, Lcom/narvii/widget/KeywordsView$2;

    invoke-direct {v1, p0}, Lcom/narvii/widget/KeywordsView$2;-><init>(Lcom/narvii/widget/KeywordsView;)V

    iput-object v1, p0, Lcom/narvii/widget/KeywordsView;->listener:Landroid/view/View$OnClickListener;

    .line 69
    sget-object v1, Lcom/narvii/lib/R$styleable;->KeywordsView:[I

    sget v2, Lcom/narvii/lib/R$style;->KeywordsView:I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 72
    sget p2, Lcom/narvii/lib/R$styleable;->KeywordsView_keywordSize:I

    const/16 v1, 0xe

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/KeywordsView;->textSize:I

    .line 74
    sget p2, Lcom/narvii/lib/R$styleable;->KeywordsView_keywordPadding:I

    const/4 v1, 0x6

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/KeywordsView;->padding:I

    .line 76
    sget p2, Lcom/narvii/lib/R$styleable;->KeywordsView_keywordPaddingTop:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/KeywordsView;->paddingTop:I

    .line 78
    sget p2, Lcom/narvii/lib/R$styleable;->KeywordsView_keywordMargin:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/KeywordsView;->margin:I

    .line 80
    sget p2, Lcom/narvii/lib/R$styleable;->KeywordsView_keywordBackground:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/KeywordsView;->resid:I

    .line 81
    sget p2, Lcom/narvii/lib/R$styleable;->KeywordsView_keywordColor:I

    const/high16 v0, -0x1000000

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/KeywordsView;->textColor:I

    .line 83
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x1

    .line 85
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 86
    invoke-direct {p0}, Lcom/narvii/widget/KeywordsView;->updateView()V

    return-void
.end method

.method private createRow()Landroid/widget/LinearLayout;
    .locals 4

    .line 184
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 185
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    iget v1, p0, Lcom/narvii/widget/KeywordsView;->margin:I

    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 188
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-object v0
.end method

.method private createText(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .line 193
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 194
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 196
    iget v2, p0, Lcom/narvii/widget/KeywordsView;->margin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 197
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    iget v1, p0, Lcom/narvii/widget/KeywordsView;->resid:I

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_0
    const/16 v1, 0x10

    .line 201
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, 0x0

    .line 202
    iget v2, p0, Lcom/narvii/widget/KeywordsView;->textSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 203
    iget v1, p0, Lcom/narvii/widget/KeywordsView;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    iget v1, p0, Lcom/narvii/widget/KeywordsView;->padding:I

    iget v2, p0, Lcom/narvii/widget/KeywordsView;->paddingTop:I

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 205
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 206
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object p1, p0, Lcom/narvii/widget/KeywordsView;->keywordClickListener:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_1

    .line 208
    iget-object p1, p0, Lcom/narvii/widget/KeywordsView;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object v0
.end method

.method private updateView()V
    .locals 2

    .line 50
    iget-boolean v0, p0, Lcom/narvii/widget/KeywordsView;->darkTheme:Z

    if-nez v0, :cond_0

    sget v0, Lcom/narvii/lib/R$drawable;->keywords_bg_line:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/narvii/lib/R$drawable;->keywords_bg_colorful:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/narvii/widget/KeywordsView;->setResid(I)V

    .line 51
    iget-boolean v0, p0, Lcom/narvii/widget/KeywordsView;->darkTheme:Z

    if-nez v0, :cond_1

    const v0, -0xaaaaab

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->getColor(IF)I

    move-result v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/narvii/widget/KeywordsView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public getCurrentHeight()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/narvii/widget/KeywordsView;->mHeight:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 109
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    sub-int/2addr p5, p3

    .line 112
    iget p1, p0, Lcom/narvii/widget/KeywordsView;->mHeight:I

    if-eq p1, p5, :cond_0

    .line 113
    iput p5, p0, Lcom/narvii/widget/KeywordsView;->mHeight:I

    .line 114
    iget-object p1, p0, Lcom/narvii/widget/KeywordsView;->heightChangeListener:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    .line 115
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    if-lez p1, :cond_1

    iget-boolean p1, p0, Lcom/narvii/widget/KeywordsView;->pending:Z

    if-eqz p1, :cond_1

    .line 119
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/narvii/widget/KeywordsView$1;

    invoke-direct {p2, p0}, Lcom/narvii/widget/KeywordsView$1;-><init>(Lcom/narvii/widget/KeywordsView;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 178
    iget-object p3, p0, Lcom/narvii/widget/KeywordsView;->onSizeChangedListener:Lcom/narvii/widget/KeywordsView$OnSizeChangedListener;

    if-eqz p3, :cond_0

    .line 179
    invoke-interface {p3, p1, p2}, Lcom/narvii/widget/KeywordsView$OnSizeChangedListener;->onSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/narvii/widget/KeywordsView;->darkTheme:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 45
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/widget/KeywordsView;->darkTheme:Z

    .line 46
    invoke-direct {p0}, Lcom/narvii/widget/KeywordsView;->updateView()V

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

    .line 99
    iput-object p1, p0, Lcom/narvii/widget/KeywordsView;->heightChangeListener:Lcom/narvii/util/Callback;

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 1

    const-string v0, ","

    .line 139
    invoke-static {p1, v0}, Lcom/narvii/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 140
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

    .line 149
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 150
    iput-object p1, p0, Lcom/narvii/widget/KeywordsView;->keywords:Ljava/util/List;

    if-eqz p1, :cond_5

    .line 151
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 154
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 155
    iput-boolean p1, p0, Lcom/narvii/widget/KeywordsView;->pending:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 160
    iget v1, p0, Lcom/narvii/widget/KeywordsView;->maxWidth:I

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 162
    iget-object v2, p0, Lcom/narvii/widget/KeywordsView;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/narvii/widget/KeywordsView;->textSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 163
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 164
    iget-object v5, p0, Lcom/narvii/widget/KeywordsView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    iget v6, p0, Lcom/narvii/widget/KeywordsView;->margin:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget v6, p0, Lcom/narvii/widget/KeywordsView;->padding:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    if-eqz v0, :cond_3

    add-float v6, v5, v3

    int-to-float v7, v1

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    .line 166
    :cond_3
    invoke-direct {p0}, Lcom/narvii/widget/KeywordsView;->createRow()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 167
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v3, 0x0

    .line 170
    :cond_4
    invoke-direct {p0, v4}, Lcom/narvii/widget/KeywordsView;->createText(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-float/2addr v3, v5

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 144
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

    .line 135
    iput-object p1, p0, Lcom/narvii/widget/KeywordsView;->keywordClickListener:Lcom/narvii/util/Callback;

    return-void
.end method

.method public setOnSizeChangedListener(Lcom/narvii/widget/KeywordsView$OnSizeChangedListener;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/narvii/widget/KeywordsView;->onSizeChangedListener:Lcom/narvii/widget/KeywordsView$OnSizeChangedListener;

    return-void
.end method

.method public setResid(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/narvii/widget/KeywordsView;->resid:I

    .line 91
    iget-object p1, p0, Lcom/narvii/widget/KeywordsView;->keywords:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/narvii/widget/KeywordsView;->setKeywords(Ljava/util/List;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/narvii/widget/KeywordsView;->textColor:I

    .line 104
    iget-object p1, p0, Lcom/narvii/widget/KeywordsView;->keywords:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/narvii/widget/KeywordsView;->setKeywords(Ljava/util/List;)V

    return-void
.end method
