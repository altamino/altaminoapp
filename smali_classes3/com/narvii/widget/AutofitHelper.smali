.class public Lcom/narvii/widget/AutofitHelper;
.super Ljava/lang/Object;
.source "AutofitHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/AutofitHelper$OnTextSizeChangeListener;,
        Lcom/narvii/widget/AutofitHelper$AutofitOnLayoutChangeListener;,
        Lcom/narvii/widget/AutofitHelper$AutofitTextWatcher;
    }
.end annotation


# static fields
.field private static final DEFAULT_MIN_TEXT_SIZE:I = 0x8

.field private static final SPEW:Z = false

.field private static final TAG:Ljava/lang/String; = "AutoFitTextHelper"


# instance fields
.field private fitHeight:Z

.field private mEnabled:Z

.field private mIsAutofitting:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/widget/AutofitHelper$OnTextSizeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxLines:I

.field private mMaxTextSize:F

.field private mMinTextSize:F

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mPaint:Landroid/text/TextPaint;

.field private mPrecision:F

.field private mTextSize:F

.field private mTextView:Landroid/widget/TextView;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private maxWidth:I


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/narvii/widget/AutofitHelper;->maxWidth:I

    const/4 v0, 0x0

    .line 259
    iput-boolean v0, p0, Lcom/narvii/widget/AutofitHelper;->fitHeight:Z

    .line 266
    new-instance v0, Lcom/narvii/widget/AutofitHelper$AutofitTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/narvii/widget/AutofitHelper$AutofitTextWatcher;-><init>(Lcom/narvii/widget/AutofitHelper;Lcom/narvii/widget/AutofitHelper$1;)V

    iput-object v0, p0, Lcom/narvii/widget/AutofitHelper;->mTextWatcher:Landroid/text/TextWatcher;

    .line 268
    new-instance v0, Lcom/narvii/widget/AutofitHelper$AutofitOnLayoutChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/narvii/widget/AutofitHelper$AutofitOnLayoutChangeListener;-><init>(Lcom/narvii/widget/AutofitHelper;Lcom/narvii/widget/AutofitHelper$1;)V

    iput-object v0, p0, Lcom/narvii/widget/AutofitHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 272
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 275
    iput-object p1, p0, Lcom/narvii/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    .line 276
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/narvii/widget/AutofitHelper;->mPaint:Landroid/text/TextPaint;

    .line 277
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/narvii/widget/AutofitHelper;->setRawTextSize(F)V

    .line 279
    invoke-static {p1}, Lcom/narvii/widget/AutofitHelper;->getMaxLines(Landroid/widget/TextView;)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/AutofitHelper;->mMaxLines:I

    const/high16 p1, 0x41000000    # 8.0f

    mul-float v0, v0, p1

    .line 280
    iput v0, p0, Lcom/narvii/widget/AutofitHelper;->mMinTextSize:F

    .line 281
    iget p1, p0, Lcom/narvii/widget/AutofitHelper;->mTextSize:F

    iput p1, p0, Lcom/narvii/widget/AutofitHelper;->mMaxTextSize:F

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/widget/AutofitHelper;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/narvii/widget/AutofitHelper;->autofit()V

    return-void
.end method

.method private autofit()V
    .locals 8

    .line 497
    iget-object v0, p0, Lcom/narvii/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    const/4 v1, 0x1

    .line 500
    iput-boolean v1, p0, Lcom/narvii/widget/AutofitHelper;->mIsAutofitting:Z

    .line 501
    iget-object v3, p0, Lcom/narvii/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/narvii/widget/AutofitHelper;->mPaint:Landroid/text/TextPaint;

    iget v5, p0, Lcom/narvii/widget/AutofitHelper;->mMinTextSize:F

    iget v6, p0, Lcom/narvii/widget/AutofitHelper;->mMaxTextSize:F

    iget v7, p0, Lcom/narvii/widget/AutofitHelper;->mMaxLines:I

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/narvii/widget/AutofitHelper;->autofit(Landroid/widget/TextView;Landroid/text/TextPaint;FFI)V

    const/4 v1, 0x0

    .line 502
    iput-boolean v1, p0, Lcom/narvii/widget/AutofitHelper;->mIsAutofitting:Z

    .line 504
    iget-object v1, p0, Lcom/narvii/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    cmpl-float v2, v1, v0

    if-eqz v2, :cond_0

    .line 506
    invoke-direct {p0, v1, v0}, Lcom/narvii/widget/AutofitHelper;->sendTextSizeChange(FF)V

    :cond_0
    return-void
.end method

.method private autofit(Landroid/widget/TextView;Landroid/text/TextPaint;FFI)V
    .locals 10

    if-gtz p5, :cond_0

    return-void

    .line 99
    :cond_0
    iget v0, p0, Lcom/narvii/widget/AutofitHelper;->maxWidth:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_2

    return-void

    .line 104
    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 105
    invoke-virtual {p1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 107
    invoke-interface {v2, v1, p1}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 110
    :cond_3
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 111
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    .line 119
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 121
    :cond_4
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 123
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 124
    invoke-virtual {p2, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v2, 0x1

    const/4 v9, 0x0

    if-ne p5, v2, :cond_5

    .line 126
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p2, v1, v9, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_6

    :cond_5
    int-to-float v2, v0

    .line 127
    invoke-static {v1, p2, p4, v2, v8}, Lcom/narvii/widget/AutofitHelper;->getLineCount(Ljava/lang/CharSequence;Landroid/text/TextPaint;FFLandroid/util/DisplayMetrics;)I

    move-result v2

    if-le v2, p5, :cond_7

    :cond_6
    int-to-float v4, v0

    move-object v2, v1

    move-object v3, p2

    move v5, p5

    move v7, p4

    .line 128
    invoke-static/range {v2 .. v8}, Lcom/narvii/widget/AutofitHelper;->getAutofitTextSize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FIFFLandroid/util/DisplayMetrics;)F

    move-result p4

    .line 133
    :cond_7
    iget-boolean p5, p0, Lcom/narvii/widget/AutofitHelper;->fitHeight:Z

    if-eqz p5, :cond_9

    .line 134
    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result p5

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    sub-int/2addr p5, v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr p5, v2

    if-lez p5, :cond_9

    .line 136
    :cond_8
    invoke-static {v1, p2, v0, p4}, Lcom/narvii/widget/AutofitHelper;->getTextHeight(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)F

    move-result v2

    int-to-float v3, p5

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr p4, v2

    cmpg-float v2, p4, p3

    if-gez v2, :cond_8

    :cond_9
    cmpg-float p2, p4, p3

    if-gez p2, :cond_a

    goto :goto_1

    :cond_a
    move p3, p4

    .line 149
    :goto_1
    invoke-virtual {p1, v9, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public static create(Landroid/widget/TextView;)Lcom/narvii/widget/AutofitHelper;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-static {p0, v0, v1}, Lcom/narvii/widget/AutofitHelper;->create(Landroid/widget/TextView;Landroid/util/AttributeSet;I)Lcom/narvii/widget/AutofitHelper;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/widget/TextView;Landroid/util/AttributeSet;)Lcom/narvii/widget/AutofitHelper;
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-static {p0, p1, v0}, Lcom/narvii/widget/AutofitHelper;->create(Landroid/widget/TextView;Landroid/util/AttributeSet;I)Lcom/narvii/widget/AutofitHelper;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/widget/TextView;Landroid/util/AttributeSet;I)Lcom/narvii/widget/AutofitHelper;
    .locals 5

    .line 66
    new-instance v0, Lcom/narvii/widget/AutofitHelper;

    invoke-direct {v0, p0}, Lcom/narvii/widget/AutofitHelper;-><init>(Landroid/widget/TextView;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 70
    invoke-virtual {v0}, Lcom/narvii/widget/AutofitHelper;->getMinTextSize()F

    move-result v2

    float-to-int v2, v2

    .line 72
    sget-object v3, Lcom/narvii/lib/R$styleable;->AutoFitTextView:[I

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 77
    sget p1, Lcom/narvii/lib/R$styleable;->AutoFitTextView_fitSize:I

    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 78
    sget p1, Lcom/narvii/lib/R$styleable;->AutoFitTextView_minTextSize:I

    invoke-virtual {p0, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 80
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    int-to-float p0, p1

    .line 82
    invoke-virtual {v0, v4, p0}, Lcom/narvii/widget/AutofitHelper;->setMinTextSize(IF)Lcom/narvii/widget/AutofitHelper;

    .line 84
    :cond_0
    invoke-virtual {v0, v1}, Lcom/narvii/widget/AutofitHelper;->setEnabled(Z)Lcom/narvii/widget/AutofitHelper;

    return-object v0
.end method

.method private static getAutofitTextSize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FIFFLandroid/util/DisplayMetrics;)F
    .locals 16

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    add-float v0, p4, p5

    const/high16 v1, 0x40000000    # 2.0f

    div-float v11, v0, v1

    const/4 v12, 0x0

    move-object/from16 v13, p6

    .line 171
    invoke-static {v12, v11, v13}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-virtual {v8, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v14, 0x1

    if-eq v10, v14, :cond_0

    .line 175
    new-instance v15, Landroid/text/StaticLayout;

    float-to-int v3, v9

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 177
    invoke-virtual {v15}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    const/4 v0, 0x1

    :goto_0
    if-le v0, v10, :cond_2

    sub-float v0, p5, p4

    int-to-float v1, v14

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    return p4

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v5, v11

    move-object/from16 v6, p6

    .line 188
    invoke-static/range {v0 .. v6}, Lcom/narvii/widget/AutofitHelper;->getAutofitTextSize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FIFFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0

    :cond_2
    if-ge v0, v10, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move v4, v11

    move/from16 v5, p5

    move-object/from16 v6, p6

    .line 191
    invoke-static/range {v0 .. v6}, Lcom/narvii/widget/AutofitHelper;->getAutofitTextSize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FIFFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0

    :cond_3
    const/4 v1, 0x0

    if-ne v10, v14, :cond_4

    .line 196
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move-object/from16 v2, p0

    invoke-virtual {v8, v2, v12, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    goto :goto_2

    :cond_4
    move-object/from16 v2, p0

    :goto_1
    if-ge v12, v0, :cond_6

    .line 199
    invoke-virtual {v15, v12}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    cmpl-float v3, v3, v1

    if-lez v3, :cond_5

    .line 200
    invoke-virtual {v15, v12}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_2
    sub-float v1, p5, p4

    int-to-float v3, v14

    cmpg-float v1, v1, v3

    if-gez v1, :cond_7

    return p4

    :cond_7
    cmpl-float v1, v0, v9

    if-lez v1, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v5, v11

    move-object/from16 v6, p6

    .line 208
    invoke-static/range {v0 .. v6}, Lcom/narvii/widget/AutofitHelper;->getAutofitTextSize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FIFFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0

    :cond_8
    cmpg-float v0, v0, v9

    if-gez v0, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move v4, v11

    move/from16 v5, p5

    move-object/from16 v6, p6

    .line 211
    invoke-static/range {v0 .. v6}, Lcom/narvii/widget/AutofitHelper;->getAutofitTextSize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FIFFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0

    :cond_9
    return v11
.end method

.method private static getLineCount(Ljava/lang/CharSequence;Landroid/text/TextPaint;FFLandroid/util/DisplayMetrics;)I
    .locals 8

    const/4 v0, 0x0

    .line 225
    invoke-static {v0, p2, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 227
    new-instance p2, Landroid/text/StaticLayout;

    float-to-int v3, p3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 229
    invoke-virtual {p2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p0

    return p0
.end method

.method private static getMaxLines(Landroid/widget/TextView;)I
    .locals 2

    .line 235
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    instance-of v0, v0, Landroid/text/method/SingleLineTransformationMethod;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 238
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 240
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private static getTextHeight(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)F
    .locals 8

    .line 154
    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 155
    new-instance p3, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 157
    invoke-virtual {p3}, Landroid/text/StaticLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method private sendTextSizeChange(FF)V
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/narvii/widget/AutofitHelper;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 515
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/AutofitHelper$OnTextSizeChangeListener;

    .line 516
    invoke-interface {v1, p1, p2}, Lcom/narvii/widget/AutofitHelper$OnTextSizeChangeListener;->onTextSizeChange(FF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setRawMaxTextSize(F)V
    .locals 1

    .line 392
    iget v0, p0, Lcom/narvii/widget/AutofitHelper;->mMaxTextSize:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 393
    iput p1, p0, Lcom/narvii/widget/AutofitHelper;->mMaxTextSize:F

    .line 395
    invoke-direct {p0}, Lcom/narvii/widget/AutofitHelper;->autofit()V

    :cond_0
    return-void
.end method

.method private setRawMinTextSize(F)V
    .locals 1

    .line 346
    iget v0, p0, Lcom/narvii/widget/AutofitHelper;->mMinTextSize:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 347
    iput p1, p0, Lcom/narvii/widget/AutofitHelper;->mMinTextSize:F

    .line 349
    invoke-direct {p0}, Lcom/narvii/widget/AutofitHelper;->autofit()V

    :cond_0
    return-void
.end method

.method private setRawTextSize(F)V
    .locals 1

    .line 491
    iget v0, p0, Lcom/narvii/widget/AutofitHelper;->mTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 492
    iput p1, p0, Lcom/narvii/widget/AutofitHelper;->mTextSize:F

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnTextSizeChangeListener(Lcom/narvii/widget/AutofitHelper$OnTextSizeChangeListener;)Lcom/narvii/widget/AutofitHelper;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/narvii/widget/AutofitHelper;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/AutofitHelper;->mListeners:Ljava/util/ArrayList;

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/AutofitHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getMaxLines()I
    .locals 1

    .line 403
    iget v0, p0, Lcom/narvii/widget/AutofitHelper;->mMaxLines:I

    return v0
.end method

.method public getMaxTextSize()F
    .locals 1

    .line 357
    iget v0, p0, Lcom/narvii/widget/AutofitHelper;->mMaxTextSize:F

    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    .line 311
    iget v0, p0, Lcom/narvii/widget/AutofitHelper;->mMinTextSize:F

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .line 457
    iget v0, p0, Lcom/narvii/widget/AutofitHelper;->mTextSize:F

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 422
    iget-boolean v0, p0, Lcom/narvii/widget/AutofitHelper;->mEnabled:Z

    return v0
.end method

.method public removeOnTextSizeChangeListener(Lcom/narvii/widget/AutofitHelper$OnTextSizeChangeListener;)Lcom/narvii/widget/AutofitHelper;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/narvii/widget/AutofitHelper;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public setEnabled(Z)Lcom/narvii/widget/AutofitHelper;
    .locals 2

    .line 429
    iget-boolean v0, p0, Lcom/narvii/widget/AutofitHelper;->mEnabled:Z

    if-eq v0, p1, :cond_1

    .line 430
    iput-boolean p1, p0, Lcom/narvii/widget/AutofitHelper;->mEnabled:Z

    if-eqz p1, :cond_0

    .line 433
    iget-object p1, p0, Lcom/narvii/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/widget/AutofitHelper;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 434
    iget-object p1, p0, Lcom/narvii/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/widget/AutofitHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 436
    invoke-direct {p0}, Lcom/narvii/widget/AutofitHelper;->autofit()V

    goto :goto_0

    .line 438
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/widget/AutofitHelper;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 439
    iget-object p1, p0, Lcom/narvii/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/widget/AutofitHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 441
    iget-object p1, p0, Lcom/narvii/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    iget v1, p0, Lcom/narvii/widget/AutofitHelper;->mTextSize:F

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setFitHeight(Z)V
    .locals 0

    .line 448
    iput-boolean p1, p0, Lcom/narvii/widget/AutofitHelper;->fitHeight:Z

    return-void
.end method

.method public setMaxLines(I)Lcom/narvii/widget/AutofitHelper;
    .locals 1

    .line 410
    iget v0, p0, Lcom/narvii/widget/AutofitHelper;->mMaxLines:I

    if-eq v0, p1, :cond_0

    .line 411
    iput p1, p0, Lcom/narvii/widget/AutofitHelper;->mMaxLines:I

    .line 413
    invoke-direct {p0}, Lcom/narvii/widget/AutofitHelper;->autofit()V

    :cond_0
    return-object p0
.end method

.method public setMaxTextSize(F)Lcom/narvii/widget/AutofitHelper;
    .locals 1

    const/4 v0, 0x2

    .line 368
    invoke-virtual {p0, v0, p1}, Lcom/narvii/widget/AutofitHelper;->setMaxTextSize(IF)Lcom/narvii/widget/AutofitHelper;

    move-result-object p1

    return-object p1
.end method

.method public setMaxTextSize(IF)Lcom/narvii/widget/AutofitHelper;
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/narvii/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 381
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 387
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/narvii/widget/AutofitHelper;->setRawMaxTextSize(F)V

    return-object p0
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 220
    iput p1, p0, Lcom/narvii/widget/AutofitHelper;->maxWidth:I

    return-void
.end method

.method public setMinTextSize(F)Lcom/narvii/widget/AutofitHelper;
    .locals 1

    const/4 v0, 0x2

    .line 322
    invoke-virtual {p0, v0, p1}, Lcom/narvii/widget/AutofitHelper;->setMinTextSize(IF)Lcom/narvii/widget/AutofitHelper;

    move-result-object p1

    return-object p1
.end method

.method public setMinTextSize(IF)Lcom/narvii/widget/AutofitHelper;
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/narvii/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 335
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 341
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/narvii/widget/AutofitHelper;->setRawMinTextSize(F)V

    return-object p0
.end method

.method public setTextSize(F)V
    .locals 1

    const/4 v0, 0x2

    .line 466
    invoke-virtual {p0, v0, p1}, Lcom/narvii/widget/AutofitHelper;->setTextSize(IF)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 2

    .line 475
    iget-boolean v0, p0, Lcom/narvii/widget/AutofitHelper;->mIsAutofitting:Z

    if-eqz v0, :cond_0

    return-void

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 481
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 484
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 487
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/narvii/widget/AutofitHelper;->setRawTextSize(F)V

    return-void
.end method
