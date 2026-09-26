.class public Lcom/github/mmin18/widget/FlexLayout$l0;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mmin18/widget/FlexLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l0"
.end annotation


# static fields
.field static UNSPECIFIED:I = -0x5

.field static final ViewGroup_Layout:[I


# instance fields
.field bottom:Lcom/github/mmin18/widget/FlexLayout$n0;

.field centerX:Lcom/github/mmin18/widget/FlexLayout$n0;

.field centerY:Lcom/github/mmin18/widget/FlexLayout$n0;

.field editModeId:I

.field height2:Lcom/github/mmin18/widget/FlexLayout$n0;

.field left:Lcom/github/mmin18/widget/FlexLayout$n0;

.field mBottom:F

.field mCenterX:F

.field mCenterY:F

.field mHeight:F

.field mLeft:F

.field mMeasuredHeight:I

.field mMeasuredWidth:I

.field mRight:F

.field mTop:F

.field mWidth:F

.field positionDescription:Ljava/lang/String;

.field right:Lcom/github/mmin18/widget/FlexLayout$n0;

.field top:Lcom/github/mmin18/widget/FlexLayout$n0;

.field width2:Lcom/github/mmin18/widget/FlexLayout$n0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x10100f4

    const v1, 0x10100f5

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout$l0;->ViewGroup_Layout:[I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2
    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->EDIT_MODE_ID_MAP:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "id"

    .line 3
    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "@+id/"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v2, "@id/"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v2, "@android:id/"

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    :goto_0
    invoke-static {v1}, Lcom/github/mmin18/widget/FlexLayout;->getEditModeId(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->editModeId:I

    goto :goto_1

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unidentified id "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/github/mmin18/widget/FlexLayout;->isDebug(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->positionDescription:Ljava/lang/String;

    :cond_4
    sget-object v1, Lcom/github/mmin18/widget/FlexLayout$l0;->ViewGroup_Layout:[I

    .line 14
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lcom/github/mmin18/widget/FlexLayout$l0;->UNSPECIFIED:I

    .line 15
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v2, Lcom/github/mmin18/widget/FlexLayout$l0;->UNSPECIFIED:I

    const/4 v3, 0x1

    .line 16
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 17
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    sget-object v1, Lcom/narvii/lib/R$styleable;->FlexLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 19
    sget v1, Lcom/narvii/lib/R$styleable;->FlexLayout_Layout_layout_left:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout_left"

    invoke-static {p1, v1, v2}, Lcom/github/mmin18/widget/FlexLayout$n0;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/github/mmin18/widget/FlexLayout$n0;

    move-result-object v1

    iput-object v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->left:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 20
    sget v1, Lcom/narvii/lib/R$styleable;->FlexLayout_Layout_layout_top:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout_top"

    invoke-static {p1, v1, v2}, Lcom/github/mmin18/widget/FlexLayout$n0;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/github/mmin18/widget/FlexLayout$n0;

    move-result-object v1

    iput-object v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->top:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 21
    sget v1, Lcom/narvii/lib/R$styleable;->FlexLayout_Layout_layout_right:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout_right"

    invoke-static {p1, v1, v2}, Lcom/github/mmin18/widget/FlexLayout$n0;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/github/mmin18/widget/FlexLayout$n0;

    move-result-object v1

    iput-object v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->right:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 22
    sget v1, Lcom/narvii/lib/R$styleable;->FlexLayout_Layout_layout_bottom:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout_bottom"

    invoke-static {p1, v1, v2}, Lcom/github/mmin18/widget/FlexLayout$n0;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/github/mmin18/widget/FlexLayout$n0;

    move-result-object v1

    iput-object v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->bottom:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 23
    sget v1, Lcom/narvii/lib/R$styleable;->FlexLayout_Layout_layout_centerX:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout_centerX"

    invoke-static {p1, v1, v2}, Lcom/github/mmin18/widget/FlexLayout$n0;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/github/mmin18/widget/FlexLayout$n0;

    move-result-object v1

    iput-object v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->centerX:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 24
    sget v1, Lcom/narvii/lib/R$styleable;->FlexLayout_Layout_layout_centerY:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout_centerY"

    invoke-static {p1, v1, v2}, Lcom/github/mmin18/widget/FlexLayout$n0;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/github/mmin18/widget/FlexLayout$n0;

    move-result-object v1

    iput-object v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->centerY:Lcom/github/mmin18/widget/FlexLayout$n0;

    .line 25
    sget v1, Lcom/narvii/lib/R$styleable;->FlexLayout_Layout_layout_width:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "match_parent"

    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, -0x2

    const-string/jumbo v6, "wrap_content"

    const-string v7, "fill_parent"

    const/4 v8, -0x1

    if-nez v4, :cond_7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    .line 27
    :cond_5
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iput v5, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_3

    :cond_6
    const-string v4, "layout_width"

    .line 28
    invoke-static {p1, v1, v4}, Lcom/github/mmin18/widget/FlexLayout$n0;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/github/mmin18/widget/FlexLayout$n0;

    move-result-object v1

    iput-object v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->width2:Lcom/github/mmin18/widget/FlexLayout$n0;

    goto :goto_3

    :cond_7
    :goto_2
    iput v8, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 29
    :goto_3
    sget v1, Lcom/narvii/lib/R$styleable;->FlexLayout_Layout_layout_height:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    .line 31
    :cond_8
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iput v5, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_5

    :cond_9
    const-string v2, "layout_height"

    .line 32
    invoke-static {p1, v1, v2}, Lcom/github/mmin18/widget/FlexLayout$n0;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/github/mmin18/widget/FlexLayout$n0;

    move-result-object p1

    iput-object p1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->height2:Lcom/github/mmin18/widget/FlexLayout$n0;

    goto :goto_5

    :cond_a
    :goto_4
    iput v8, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 33
    :goto_5
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->left:Lcom/github/mmin18/widget/FlexLayout$n0;

    if-eqz p1, :cond_b

    move p2, v3

    goto :goto_6

    :cond_b
    move p2, v0

    :goto_6
    iget-object v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->right:Lcom/github/mmin18/widget/FlexLayout$n0;

    if-eqz v1, :cond_c

    add-int/lit8 p2, p2, 0x1

    :cond_c
    iget-object v2, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->centerX:Lcom/github/mmin18/widget/FlexLayout$n0;

    if-eqz v2, :cond_d

    add-int/lit8 p2, p2, 0x1

    :cond_d
    iget-object v4, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->width2:Lcom/github/mmin18/widget/FlexLayout$n0;

    if-nez v4, :cond_e

    iget v5, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v6, Lcom/github/mmin18/widget/FlexLayout$l0;->UNSPECIFIED:I

    if-eq v5, v6, :cond_f

    :cond_e
    add-int/lit8 p2, p2, 0x1

    :cond_f
    if-lt p2, v3, :cond_1e

    const-string v5, "too many restriction on LayoutParams"

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-le p2, v6, :cond_13

    if-eqz p1, :cond_10

    if-eqz v1, :cond_10

    iput-object v7, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->width2:Lcom/github/mmin18/widget/FlexLayout$n0;

    sget p1, Lcom/github/mmin18/widget/FlexLayout$l0;->UNSPECIFIED:I

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_7

    :cond_10
    if-eqz v2, :cond_12

    if-nez v4, :cond_11

    iget p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget p2, Lcom/github/mmin18/widget/FlexLayout$l0;->UNSPECIFIED:I

    if-eq p1, p2, :cond_12

    :cond_11
    iput-object v7, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->left:Lcom/github/mmin18/widget/FlexLayout$n0;

    iput-object v7, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->right:Lcom/github/mmin18/widget/FlexLayout$n0;

    goto :goto_7

    .line 34
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    :goto_7
    iget-object p1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->top:Lcom/github/mmin18/widget/FlexLayout$n0;

    if-eqz p1, :cond_14

    move v0, v3

    :cond_14
    iget-object p2, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->bottom:Lcom/github/mmin18/widget/FlexLayout$n0;

    if-eqz p2, :cond_15

    add-int/lit8 v0, v0, 0x1

    :cond_15
    iget-object v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->centerY:Lcom/github/mmin18/widget/FlexLayout$n0;

    if-eqz v1, :cond_16

    add-int/lit8 v0, v0, 0x1

    :cond_16
    iget-object v2, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->height2:Lcom/github/mmin18/widget/FlexLayout$n0;

    if-nez v2, :cond_17

    iget v4, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v8, Lcom/github/mmin18/widget/FlexLayout$l0;->UNSPECIFIED:I

    if-eq v4, v8, :cond_18

    :cond_17
    add-int/lit8 v0, v0, 0x1

    :cond_18
    if-lt v0, v3, :cond_1d

    if-le v0, v6, :cond_1c

    if-eqz p1, :cond_19

    if-eqz p2, :cond_19

    iput-object v7, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->height2:Lcom/github/mmin18/widget/FlexLayout$n0;

    sget p1, Lcom/github/mmin18/widget/FlexLayout$l0;->UNSPECIFIED:I

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_8

    :cond_19
    if-eqz v1, :cond_1b

    if-nez v2, :cond_1a

    iget p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget p2, Lcom/github/mmin18/widget/FlexLayout$l0;->UNSPECIFIED:I

    if-eq p1, p2, :cond_1b

    :cond_1a
    iput-object v7, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->top:Lcom/github/mmin18/widget/FlexLayout$n0;

    iput-object v7, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->bottom:Lcom/github/mmin18/widget/FlexLayout$n0;

    goto :goto_8

    .line 35
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    :goto_8
    return-void

    .line 36
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no LayoutParams in layout_top|layout_bottom|layout_centerY|layout_height"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no LayoutParams in layout_left|layout_right|layout_centerX|layout_width"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method a()F
    .locals 4

    .line 1
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mBottom:F

    cmpl-float v1, v0, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mHeight:F

    cmpl-float v1, v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v1, :cond_2

    iget v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mTop:F

    cmpl-float v3, v1, v1

    if-nez v3, :cond_1

    add-float/2addr v1, v0

    return v1

    :cond_1
    iget v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mCenterY:F

    cmpl-float v3, v1, v1

    if-nez v3, :cond_2

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    return v1

    :cond_2
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mCenterY:F

    cmpl-float v1, v0, v0

    if-nez v1, :cond_3

    iget v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mTop:F

    cmpl-float v3, v1, v1

    if-nez v3, :cond_3

    mul-float/2addr v0, v2

    sub-float/2addr v0, v1

    return v0

    :cond_3
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method b()F
    .locals 4

    .line 1
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mCenterX:F

    cmpl-float v1, v0, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mWidth:F

    cmpl-float v1, v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v1, :cond_2

    iget v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mLeft:F

    cmpl-float v3, v1, v1

    if-nez v3, :cond_1

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    return v1

    :cond_1
    iget v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mRight:F

    cmpl-float v3, v1, v1

    if-nez v3, :cond_2

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    return v1

    :cond_2
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mLeft:F

    cmpl-float v1, v0, v0

    if-nez v1, :cond_3

    iget v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mRight:F

    cmpl-float v3, v1, v1

    if-nez v3, :cond_3

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    return v0

    :cond_3
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method c()F
    .locals 4

    .line 1
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mCenterY:F

    cmpl-float v1, v0, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mHeight:F

    cmpl-float v1, v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v1, :cond_2

    iget v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mTop:F

    cmpl-float v3, v1, v1

    if-nez v3, :cond_1

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    return v1

    :cond_1
    iget v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mBottom:F

    cmpl-float v3, v1, v1

    if-nez v3, :cond_2

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    return v1

    :cond_2
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mTop:F

    cmpl-float v1, v0, v0

    if-nez v1, :cond_3

    iget v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mBottom:F

    cmpl-float v3, v1, v1

    if-nez v3, :cond_3

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    return v0

    :cond_3
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method d()F
    .locals 4

    .line 1
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mHeight:F

    cmpl-float v1, v0, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mTop:F

    cmpl-float v1, v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v1, :cond_2

    iget v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mBottom:F

    cmpl-float v3, v1, v1

    if-nez v3, :cond_1

    sub-float/2addr v1, v0

    return v1

    :cond_1
    iget v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mCenterY:F

    cmpl-float v3, v1, v1

    if-nez v3, :cond_2

    sub-float/2addr v1, v0

    mul-float/2addr v1, v2

    return v1

    :cond_2
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mBottom:F

    cmpl-float v1, v0, v0

    if-nez v1, :cond_3

    iget v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mCenterY:F

    cmpl-float v3, v1, v1

    if-nez v3, :cond_3

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    return v0

    :cond_3
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method e()F
    .locals 4

    .line 1
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mLeft:F

    cmpl-float v1, v0, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mWidth:F

    cmpl-float v1, v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v1, :cond_2

    iget v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mRight:F

    cmpl-float v3, v1, v1

    if-nez v3, :cond_1

    sub-float/2addr v1, v0

    return v1

    :cond_1
    iget v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mCenterX:F

    cmpl-float v3, v1, v1

    if-nez v3, :cond_2

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    return v1

    :cond_2
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mCenterX:F

    cmpl-float v1, v0, v0

    if-nez v1, :cond_3

    iget v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mRight:F

    cmpl-float v3, v1, v1

    if-nez v3, :cond_3

    mul-float/2addr v0, v2

    sub-float/2addr v0, v1

    return v0

    :cond_3
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method f()F
    .locals 4

    .line 1
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mRight:F

    cmpl-float v1, v0, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mWidth:F

    cmpl-float v1, v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v1, :cond_2

    iget v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mLeft:F

    cmpl-float v3, v1, v1

    if-nez v3, :cond_1

    add-float/2addr v1, v0

    return v1

    :cond_1
    iget v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mCenterX:F

    cmpl-float v3, v1, v1

    if-nez v3, :cond_2

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    return v1

    :cond_2
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mCenterX:F

    cmpl-float v1, v0, v0

    if-nez v1, :cond_3

    iget v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mLeft:F

    cmpl-float v3, v1, v1

    if-nez v3, :cond_3

    mul-float/2addr v0, v2

    sub-float/2addr v0, v1

    return v0

    :cond_3
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method g()F
    .locals 4

    .line 1
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mTop:F

    cmpl-float v1, v0, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mHeight:F

    cmpl-float v1, v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v1, :cond_2

    iget v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mBottom:F

    cmpl-float v3, v1, v1

    if-nez v3, :cond_1

    sub-float/2addr v1, v0

    return v1

    :cond_1
    iget v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mCenterY:F

    cmpl-float v3, v1, v1

    if-nez v3, :cond_2

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    return v1

    :cond_2
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mCenterY:F

    cmpl-float v1, v0, v0

    if-nez v1, :cond_3

    iget v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mBottom:F

    cmpl-float v3, v1, v1

    if-nez v3, :cond_3

    mul-float/2addr v0, v2

    sub-float/2addr v0, v1

    return v0

    :cond_3
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method h()F
    .locals 4

    .line 1
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mWidth:F

    cmpl-float v1, v0, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mLeft:F

    cmpl-float v1, v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v1, :cond_2

    iget v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mRight:F

    cmpl-float v3, v1, v1

    if-nez v3, :cond_1

    sub-float/2addr v1, v0

    return v1

    :cond_1
    iget v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mCenterX:F

    cmpl-float v3, v1, v1

    if-nez v3, :cond_2

    sub-float/2addr v1, v0

    mul-float/2addr v1, v2

    return v1

    :cond_2
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mRight:F

    cmpl-float v1, v0, v0

    if-nez v1, :cond_3

    iget v1, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mCenterX:F

    cmpl-float v3, v1, v1

    if-nez v3, :cond_3

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    return v0

    :cond_3
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method i()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/github/mmin18/widget/FlexLayout$l0;->j()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/github/mmin18/widget/FlexLayout$l0;->k()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method j()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mLeft:F

    cmpl-float v0, v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mRight:F

    cmpl-float v3, v3, v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget v3, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mWidth:F

    cmpl-float v3, v3, v3

    if-nez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget v3, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mCenterX:F

    cmpl-float v3, v3, v3

    if-nez v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    const/4 v3, 0x2

    if-lt v0, v3, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1
.end method

.method k()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mTop:F

    cmpl-float v0, v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mBottom:F

    cmpl-float v3, v3, v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget v3, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mHeight:F

    cmpl-float v3, v3, v3

    if-nez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget v3, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mCenterY:F

    cmpl-float v3, v3, v3

    if-nez v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    const/4 v3, 0x2

    if-lt v0, v3, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1
.end method

.method l()V
    .locals 1

    .line 1
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mLeft:F

    iput v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mRight:F

    iput v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mTop:F

    iput v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mBottom:F

    iput v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mCenterX:F

    iput v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mCenterY:F

    iput v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mWidth:F

    iput v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mHeight:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mMeasuredWidth:I

    iput v0, p0, Lcom/github/mmin18/widget/FlexLayout$l0;->mMeasuredHeight:I

    return-void
.end method
