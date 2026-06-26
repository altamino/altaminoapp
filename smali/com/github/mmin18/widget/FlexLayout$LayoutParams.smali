.class public Lcom/github/mmin18/widget/FlexLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "FlexLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mmin18/widget/FlexLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field static UNSPECIFIED:I = -0x5

.field static final ViewGroup_Layout:[I


# instance fields
.field bottom:Lcom/github/mmin18/widget/FlexLayout$RPN;

.field centerX:Lcom/github/mmin18/widget/FlexLayout$RPN;

.field centerY:Lcom/github/mmin18/widget/FlexLayout$RPN;

.field editModeId:I

.field height2:Lcom/github/mmin18/widget/FlexLayout$RPN;

.field left:Lcom/github/mmin18/widget/FlexLayout$RPN;

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

.field right:Lcom/github/mmin18/widget/FlexLayout$RPN;

.field top:Lcom/github/mmin18/widget/FlexLayout$RPN;

.field width2:Lcom/github/mmin18/widget/FlexLayout$RPN;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 88
    fill-array-data v0, :array_0

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->ViewGroup_Layout:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100f4
        0x10100f5
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 196
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 93
    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->EDIT_MODE_ID_MAP:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "id"

    .line 94
    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "@+id/"

    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v2, "@id/"

    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v2, "@android:id/"

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
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

    .line 105
    :goto_0
    invoke-static {v1}, Lcom/github/mmin18/widget/FlexLayout;->getEditModeId(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->editModeId:I

    goto :goto_1

    .line 103
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unidentified id "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/github/mmin18/widget/FlexLayout;->isDebug(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 109
    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->positionDescription:Ljava/lang/String;

    .line 112
    :cond_4
    sget-object v1, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->ViewGroup_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 113
    sget v2, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->UNSPECIFIED:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 114
    sget v2, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->UNSPECIFIED:I

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 115
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    sget-object v1, Lcom/github/mmin18/flexlayout/R$styleable;->FlexLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 118
    sget v1, Lcom/github/mmin18/flexlayout/R$styleable;->FlexLayout_Layout_layout_left:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout_left"

    invoke-static {p1, v1, v2}, Lcom/github/mmin18/widget/FlexLayout$RPN;->parse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/github/mmin18/widget/FlexLayout$RPN;

    move-result-object v1

    iput-object v1, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->left:Lcom/github/mmin18/widget/FlexLayout$RPN;

    .line 119
    sget v1, Lcom/github/mmin18/flexlayout/R$styleable;->FlexLayout_Layout_layout_top:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout_top"

    invoke-static {p1, v1, v2}, Lcom/github/mmin18/widget/FlexLayout$RPN;->parse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/github/mmin18/widget/FlexLayout$RPN;

    move-result-object v1

    iput-object v1, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->top:Lcom/github/mmin18/widget/FlexLayout$RPN;

    .line 120
    sget v1, Lcom/github/mmin18/flexlayout/R$styleable;->FlexLayout_Layout_layout_right:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout_right"

    invoke-static {p1, v1, v2}, Lcom/github/mmin18/widget/FlexLayout$RPN;->parse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/github/mmin18/widget/FlexLayout$RPN;

    move-result-object v1

    iput-object v1, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->right:Lcom/github/mmin18/widget/FlexLayout$RPN;

    .line 121
    sget v1, Lcom/github/mmin18/flexlayout/R$styleable;->FlexLayout_Layout_layout_bottom:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout_bottom"

    invoke-static {p1, v1, v2}, Lcom/github/mmin18/widget/FlexLayout$RPN;->parse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/github/mmin18/widget/FlexLayout$RPN;

    move-result-object v1

    iput-object v1, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->bottom:Lcom/github/mmin18/widget/FlexLayout$RPN;

    .line 122
    sget v1, Lcom/github/mmin18/flexlayout/R$styleable;->FlexLayout_Layout_layout_centerX:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout_centerX"

    invoke-static {p1, v1, v2}, Lcom/github/mmin18/widget/FlexLayout$RPN;->parse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/github/mmin18/widget/FlexLayout$RPN;

    move-result-object v1

    iput-object v1, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->centerX:Lcom/github/mmin18/widget/FlexLayout$RPN;

    .line 123
    sget v1, Lcom/github/mmin18/flexlayout/R$styleable;->FlexLayout_Layout_layout_centerY:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout_centerY"

    invoke-static {p1, v1, v2}, Lcom/github/mmin18/widget/FlexLayout$RPN;->parse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/github/mmin18/widget/FlexLayout$RPN;

    move-result-object v1

    iput-object v1, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->centerY:Lcom/github/mmin18/widget/FlexLayout$RPN;

    .line 124
    sget v1, Lcom/github/mmin18/flexlayout/R$styleable;->FlexLayout_Layout_layout_width:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "match_parent"

    .line 125
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

    .line 127
    :cond_5
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 128
    iput v5, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_3

    :cond_6
    const-string v4, "layout_width"

    .line 130
    invoke-static {p1, v1, v4}, Lcom/github/mmin18/widget/FlexLayout$RPN;->parse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/github/mmin18/widget/FlexLayout$RPN;

    move-result-object v1

    iput-object v1, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->width2:Lcom/github/mmin18/widget/FlexLayout$RPN;

    goto :goto_3

    .line 126
    :cond_7
    :goto_2
    iput v8, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 132
    :goto_3
    sget v1, Lcom/github/mmin18/flexlayout/R$styleable;->FlexLayout_Layout_layout_height:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    .line 135
    :cond_8
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 136
    iput v5, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_5

    :cond_9
    const-string v2, "layout_height"

    .line 138
    invoke-static {p1, v1, v2}, Lcom/github/mmin18/widget/FlexLayout$RPN;->parse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/github/mmin18/widget/FlexLayout$RPN;

    move-result-object p1

    iput-object p1, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->height2:Lcom/github/mmin18/widget/FlexLayout$RPN;

    goto :goto_5

    .line 134
    :cond_a
    :goto_4
    iput v8, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 140
    :goto_5
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    iget-object p1, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->left:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_6

    :cond_b
    const/4 p1, 0x0

    .line 145
    :goto_6
    iget-object p2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->right:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-eqz p2, :cond_c

    add-int/lit8 p1, p1, 0x1

    .line 147
    :cond_c
    iget-object p2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->centerX:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-eqz p2, :cond_d

    add-int/lit8 p1, p1, 0x1

    .line 149
    :cond_d
    iget-object p2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->width2:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-nez p2, :cond_e

    iget p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->UNSPECIFIED:I

    if-eq p2, v1, :cond_f

    :cond_e
    add-int/lit8 p1, p1, 0x1

    :cond_f
    if-lt p1, v3, :cond_1e

    const-string/jumbo p2, "too many restriction on LayoutParams"

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-le p1, v1, :cond_13

    .line 160
    iget-object p1, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->left:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->right:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-eqz p1, :cond_10

    .line 161
    iput-object v2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->width2:Lcom/github/mmin18/widget/FlexLayout$RPN;

    .line 162
    sget p1, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->UNSPECIFIED:I

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_7

    .line 163
    :cond_10
    iget-object p1, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->centerX:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->width2:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-nez p1, :cond_11

    iget p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v4, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->UNSPECIFIED:I

    if-eq p1, v4, :cond_12

    .line 164
    :cond_11
    iput-object v2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->left:Lcom/github/mmin18/widget/FlexLayout$RPN;

    .line 165
    iput-object v2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->right:Lcom/github/mmin18/widget/FlexLayout$RPN;

    goto :goto_7

    .line 167
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 171
    :cond_13
    :goto_7
    iget-object p1, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->top:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    .line 173
    :cond_14
    iget-object p1, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->bottom:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-eqz p1, :cond_15

    add-int/lit8 v0, v0, 0x1

    .line 175
    :cond_15
    iget-object p1, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->centerY:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-eqz p1, :cond_16

    add-int/lit8 v0, v0, 0x1

    .line 177
    :cond_16
    iget-object p1, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->height2:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-nez p1, :cond_17

    iget p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v4, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->UNSPECIFIED:I

    if-eq p1, v4, :cond_18

    :cond_17
    add-int/lit8 v0, v0, 0x1

    :cond_18
    if-lt v0, v3, :cond_1d

    if-le v0, v1, :cond_1c

    .line 183
    iget-object p1, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->top:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->bottom:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-eqz p1, :cond_19

    .line 184
    iput-object v2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->height2:Lcom/github/mmin18/widget/FlexLayout$RPN;

    .line 185
    sget p1, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->UNSPECIFIED:I

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_8

    .line 186
    :cond_19
    iget-object p1, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->centerY:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->height2:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-nez p1, :cond_1a

    iget p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->UNSPECIFIED:I

    if-eq p1, v0, :cond_1b

    .line 187
    :cond_1a
    iput-object v2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->top:Lcom/github/mmin18/widget/FlexLayout$RPN;

    .line 188
    iput-object v2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->bottom:Lcom/github/mmin18/widget/FlexLayout$RPN;

    goto :goto_8

    .line 190
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    :goto_8
    return-void

    .line 180
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no LayoutParams in layout_top|layout_bottom|layout_centerY|layout_height"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 152
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no LayoutParams in layout_left|layout_right|layout_centerX|layout_width"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method getBottom()F
    .locals 4

    .line 271
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mBottom:F

    cmpl-float v1, v0, v0

    if-nez v1, :cond_0

    return v0

    .line 274
    :cond_0
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v2, v0, v0

    if-nez v2, :cond_2

    .line 275
    iget v2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mTop:F

    cmpl-float v3, v2, v2

    if-nez v3, :cond_1

    add-float/2addr v2, v0

    return v2

    .line 278
    :cond_1
    iget v2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mCenterY:F

    cmpl-float v3, v2, v2

    if-nez v3, :cond_2

    div-float/2addr v0, v1

    add-float/2addr v2, v0

    return v2

    .line 282
    :cond_2
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mCenterY:F

    cmpl-float v2, v0, v0

    if-nez v2, :cond_3

    iget v2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mTop:F

    cmpl-float v3, v2, v2

    if-nez v3, :cond_3

    mul-float v0, v0, v1

    sub-float/2addr v0, v2

    return v0

    :cond_3
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method getCenterX()F
    .locals 4

    .line 289
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mCenterX:F

    cmpl-float v1, v0, v0

    if-nez v1, :cond_0

    return v0

    .line 292
    :cond_0
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v2, v0, v0

    if-nez v2, :cond_2

    .line 293
    iget v2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mLeft:F

    cmpl-float v3, v2, v2

    if-nez v3, :cond_1

    div-float/2addr v0, v1

    add-float/2addr v2, v0

    return v2

    .line 296
    :cond_1
    iget v2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mRight:F

    cmpl-float v3, v2, v2

    if-nez v3, :cond_2

    div-float/2addr v0, v1

    sub-float/2addr v2, v0

    return v2

    .line 300
    :cond_2
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mLeft:F

    cmpl-float v2, v0, v0

    if-nez v2, :cond_3

    iget v2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mRight:F

    cmpl-float v3, v2, v2

    if-nez v3, :cond_3

    add-float/2addr v0, v2

    div-float/2addr v0, v1

    return v0

    :cond_3
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method getCenterY()F
    .locals 4

    .line 307
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mCenterY:F

    cmpl-float v1, v0, v0

    if-nez v1, :cond_0

    return v0

    .line 310
    :cond_0
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v2, v0, v0

    if-nez v2, :cond_2

    .line 311
    iget v2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mTop:F

    cmpl-float v3, v2, v2

    if-nez v3, :cond_1

    div-float/2addr v0, v1

    add-float/2addr v2, v0

    return v2

    .line 314
    :cond_1
    iget v2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mBottom:F

    cmpl-float v3, v2, v2

    if-nez v3, :cond_2

    div-float/2addr v0, v1

    sub-float/2addr v2, v0

    return v2

    .line 318
    :cond_2
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mTop:F

    cmpl-float v2, v0, v0

    if-nez v2, :cond_3

    iget v2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mBottom:F

    cmpl-float v3, v2, v2

    if-nez v3, :cond_3

    add-float/2addr v0, v2

    div-float/2addr v0, v1

    return v0

    :cond_3
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method getHeight()F
    .locals 4

    .line 343
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mHeight:F

    cmpl-float v1, v0, v0

    if-nez v1, :cond_0

    return v0

    .line 346
    :cond_0
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mTop:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v2, v0, v0

    if-nez v2, :cond_2

    .line 347
    iget v2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mBottom:F

    cmpl-float v3, v2, v2

    if-nez v3, :cond_1

    sub-float/2addr v2, v0

    return v2

    .line 350
    :cond_1
    iget v2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mCenterY:F

    cmpl-float v3, v2, v2

    if-nez v3, :cond_2

    sub-float/2addr v2, v0

    mul-float v2, v2, v1

    return v2

    .line 354
    :cond_2
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mBottom:F

    cmpl-float v2, v0, v0

    if-nez v2, :cond_3

    iget v2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mCenterY:F

    cmpl-float v3, v2, v2

    if-nez v3, :cond_3

    sub-float/2addr v0, v2

    mul-float v0, v0, v1

    return v0

    :cond_3
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method getLeft()F
    .locals 4

    .line 217
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mLeft:F

    cmpl-float v1, v0, v0

    if-nez v1, :cond_0

    return v0

    .line 220
    :cond_0
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v2, v0, v0

    if-nez v2, :cond_2

    .line 221
    iget v2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mRight:F

    cmpl-float v3, v2, v2

    if-nez v3, :cond_1

    sub-float/2addr v2, v0

    return v2

    .line 224
    :cond_1
    iget v2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mCenterX:F

    cmpl-float v3, v2, v2

    if-nez v3, :cond_2

    div-float/2addr v0, v1

    sub-float/2addr v2, v0

    return v2

    .line 228
    :cond_2
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mCenterX:F

    cmpl-float v2, v0, v0

    if-nez v2, :cond_3

    iget v2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mRight:F

    cmpl-float v3, v2, v2

    if-nez v3, :cond_3

    mul-float v0, v0, v1

    sub-float/2addr v0, v2

    return v0

    :cond_3
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method getRight()F
    .locals 4

    .line 235
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mRight:F

    cmpl-float v1, v0, v0

    if-nez v1, :cond_0

    return v0

    .line 238
    :cond_0
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v2, v0, v0

    if-nez v2, :cond_2

    .line 239
    iget v2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mLeft:F

    cmpl-float v3, v2, v2

    if-nez v3, :cond_1

    add-float/2addr v2, v0

    return v2

    .line 242
    :cond_1
    iget v2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mCenterX:F

    cmpl-float v3, v2, v2

    if-nez v3, :cond_2

    div-float/2addr v0, v1

    add-float/2addr v2, v0

    return v2

    .line 246
    :cond_2
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mCenterX:F

    cmpl-float v2, v0, v0

    if-nez v2, :cond_3

    iget v2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mLeft:F

    cmpl-float v3, v2, v2

    if-nez v3, :cond_3

    mul-float v0, v0, v1

    sub-float/2addr v0, v2

    return v0

    :cond_3
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method getTop()F
    .locals 4

    .line 253
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mTop:F

    cmpl-float v1, v0, v0

    if-nez v1, :cond_0

    return v0

    .line 256
    :cond_0
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v2, v0, v0

    if-nez v2, :cond_2

    .line 257
    iget v2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mBottom:F

    cmpl-float v3, v2, v2

    if-nez v3, :cond_1

    sub-float/2addr v2, v0

    return v2

    .line 260
    :cond_1
    iget v2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mCenterY:F

    cmpl-float v3, v2, v2

    if-nez v3, :cond_2

    div-float/2addr v0, v1

    sub-float/2addr v2, v0

    return v2

    .line 264
    :cond_2
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mCenterY:F

    cmpl-float v2, v0, v0

    if-nez v2, :cond_3

    iget v2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mBottom:F

    cmpl-float v3, v2, v2

    if-nez v3, :cond_3

    mul-float v0, v0, v1

    sub-float/2addr v0, v2

    return v0

    :cond_3
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method getWidth()F
    .locals 4

    .line 325
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mWidth:F

    cmpl-float v1, v0, v0

    if-nez v1, :cond_0

    return v0

    .line 328
    :cond_0
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mLeft:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v2, v0, v0

    if-nez v2, :cond_2

    .line 329
    iget v2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mRight:F

    cmpl-float v3, v2, v2

    if-nez v3, :cond_1

    sub-float/2addr v2, v0

    return v2

    .line 332
    :cond_1
    iget v2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mCenterX:F

    cmpl-float v3, v2, v2

    if-nez v3, :cond_2

    sub-float/2addr v2, v0

    mul-float v2, v2, v1

    return v2

    .line 336
    :cond_2
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mRight:F

    cmpl-float v2, v0, v0

    if-nez v2, :cond_3

    iget v2, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mCenterX:F

    cmpl-float v3, v2, v2

    if-nez v3, :cond_3

    sub-float/2addr v0, v2

    mul-float v0, v0, v1

    return v0

    :cond_3
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method isValid()Z
    .locals 1

    .line 387
    invoke-virtual {p0}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->isValidH()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->isValidV()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isValidH()Z
    .locals 4

    .line 362
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mLeft:F

    const/4 v1, 0x0

    const/4 v2, 0x1

    cmpl-float v0, v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 364
    :goto_0
    iget v3, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mRight:F

    cmpl-float v3, v3, v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 366
    :cond_1
    iget v3, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mWidth:F

    cmpl-float v3, v3, v3

    if-nez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 368
    :cond_2
    iget v3, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mCenterX:F

    cmpl-float v3, v3, v3

    if-nez v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    const/4 v3, 0x2

    if-lt v0, v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method isValidV()Z
    .locals 4

    .line 375
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mTop:F

    const/4 v1, 0x0

    const/4 v2, 0x1

    cmpl-float v0, v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 377
    :goto_0
    iget v3, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mBottom:F

    cmpl-float v3, v3, v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 379
    :cond_1
    iget v3, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mHeight:F

    cmpl-float v3, v3, v3

    if-nez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 381
    :cond_2
    iget v3, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mCenterY:F

    cmpl-float v3, v3, v3

    if-nez v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    const/4 v3, 0x2

    if-lt v0, v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method reset()V
    .locals 1

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 204
    iput v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mLeft:F

    .line 205
    iput v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mRight:F

    .line 206
    iput v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mTop:F

    .line 207
    iput v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mBottom:F

    .line 208
    iput v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mCenterX:F

    .line 209
    iput v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mCenterY:F

    .line 210
    iput v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mWidth:F

    .line 211
    iput v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mHeight:F

    const/4 v0, -0x1

    .line 212
    iput v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mMeasuredWidth:I

    .line 213
    iput v0, p0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mMeasuredHeight:I

    return-void
.end method
