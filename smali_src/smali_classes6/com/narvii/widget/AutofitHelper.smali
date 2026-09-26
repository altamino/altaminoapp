.class public Lcom/narvii/widget/AutofitHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/AutofitHelper$AutofitTextWatcher;,
        Lcom/narvii/widget/AutofitHelper$AutofitOnLayoutChangeListener;,
        Lcom/narvii/widget/AutofitHelper$OnTextSizeChangeListener;
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/widget/AutofitHelper;->maxWidth:I

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/narvii/widget/AutofitHelper;->fitHeight:Z

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/widget/AutofitHelper$AutofitTextWatcher;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, v1}, Lcom/narvii/widget/AutofitHelper$AutofitTextWatcher;-><init>(Lcom/narvii/widget/AutofitHelper;Lcom/narvii/widget/d;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/widget/AutofitHelper;->mTextWatcher:Landroid/text/TextWatcher;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/widget/AutofitHelper$AutofitOnLayoutChangeListener;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0, v1}, Lcom/narvii/widget/AutofitHelper$AutofitOnLayoutChangeListener;-><init>(Lcom/narvii/widget/AutofitHelper;Lcom/narvii/widget/c;)V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/widget/AutofitHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 39
    .line 40
    iput-object p1, p0, Lcom/narvii/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    .line 41
    .line 42
    new-instance v1, Landroid/text/TextPaint;

    .line 43
    .line 44
    .line 45
    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    .line 46
    .line 47
    iput-object v1, p0, Lcom/narvii/widget/AutofitHelper;->mPaint:Landroid/text/TextPaint;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    .line 51
    move-result v1

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v1}, Lcom/narvii/widget/AutofitHelper;->setRawTextSize(F)V

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lcom/narvii/widget/AutofitHelper;->getMaxLines(Landroid/widget/TextView;)I

    .line 58
    move-result p1

    .line 59
    .line 60
    iput p1, p0, Lcom/narvii/widget/AutofitHelper;->mMaxLines:I

    .line 61
    .line 62
    const/high16 p1, 0x41000000    # 8.0f

    .line 63
    mul-float/2addr v0, p1

    .line 64
    .line 65
    iput v0, p0, Lcom/narvii/widget/AutofitHelper;->mMinTextSize:F

    .line 66
    .line 67
    iget p1, p0, Lcom/narvii/widget/AutofitHelper;->mTextSize:F

    .line 68
    .line 69
    iput p1, p0, Lcom/narvii/widget/AutofitHelper;->mMaxTextSize:F

    .line 70
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/widget/AutofitHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/widget/AutofitHelper;->autofit()V

    return-void
.end method

.method private autofit()V
    .locals 8

    iget-object v0, p0, Lcom/narvii/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    .line 17
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/narvii/widget/AutofitHelper;->mIsAutofitting:Z

    iget-object v3, p0, Lcom/narvii/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/narvii/widget/AutofitHelper;->mPaint:Landroid/text/TextPaint;

    iget v5, p0, Lcom/narvii/widget/AutofitHelper;->mMinTextSize:F

    iget v6, p0, Lcom/narvii/widget/AutofitHelper;->mMaxTextSize:F

    iget v7, p0, Lcom/narvii/widget/AutofitHelper;->mMaxLines:I

    move-object v2, p0

    .line 18
    invoke-direct/range {v2 .. v7}, Lcom/narvii/widget/AutofitHelper;->autofit(Landroid/widget/TextView;Landroid/text/TextPaint;FFI)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/narvii/widget/AutofitHelper;->mIsAutofitting:Z

    iget-object v1, p0, Lcom/narvii/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    .line 19
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    cmpl-float v2, v1, v0

    if-eqz v2, :cond_0

    .line 20
    invoke-direct {p0, v1, v0}, Lcom/narvii/widget/AutofitHelper;->sendTextSizeChange(FF)V

    :cond_0
    return-void
.end method

.method private autofit(Landroid/widget/TextView;Landroid/text/TextPaint;FFI)V
    .locals 10

    if-gtz p5, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/narvii/widget/AutofitHelper;->maxWidth:I

    if-lez v0, :cond_1

    goto :goto_0

    .line 1
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_2

    return-void

    .line 2
    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4
    invoke-interface {v2, v1, p1}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 5
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 6
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 8
    :cond_4
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 9
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 10
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v2, 0x1

    const/4 v9, 0x0

    if-ne p5, v2, :cond_5

    .line 11
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p2, v1, v9, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_6

    :cond_5
    int-to-float v2, v0

    .line 12
    invoke-static {v1, p2, p4, v2, v8}, Lcom/narvii/widget/AutofitHelper;->getLineCount(Ljava/lang/CharSequence;Landroid/text/TextPaint;FFLandroid/util/DisplayMetrics;)I

    move-result v2

    if-le v2, p5, :cond_7

    :cond_6
    int-to-float v4, v0

    move-object v2, v1

    move-object v3, p2

    move v5, p5

    move v7, p4

    .line 13
    invoke-static/range {v2 .. v8}, Lcom/narvii/widget/AutofitHelper;->getAutofitTextSize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FIFFLandroid/util/DisplayMetrics;)F

    move-result p4

    :cond_7
    iget-boolean p5, p0, Lcom/narvii/widget/AutofitHelper;->fitHeight:Z

    if-eqz p5, :cond_9

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr p5, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr p5, v2

    if-lez p5, :cond_9

    .line 15
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

    .line 16
    :goto_1
    invoke-virtual {p1, v9, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public static create(Landroid/widget/TextView;)Lcom/narvii/widget/AutofitHelper;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/narvii/widget/AutofitHelper;->create(Landroid/widget/TextView;Landroid/util/AttributeSet;I)Lcom/narvii/widget/AutofitHelper;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/widget/TextView;Landroid/util/AttributeSet;)Lcom/narvii/widget/AutofitHelper;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/narvii/widget/AutofitHelper;->create(Landroid/widget/TextView;Landroid/util/AttributeSet;I)Lcom/narvii/widget/AutofitHelper;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/widget/TextView;Landroid/util/AttributeSet;I)Lcom/narvii/widget/AutofitHelper;
    .locals 5

    .line 3
    new-instance v0, Lcom/narvii/widget/AutofitHelper;

    invoke-direct {v0, p0}, Lcom/narvii/widget/AutofitHelper;-><init>(Landroid/widget/TextView;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 5
    invoke-virtual {v0}, Lcom/narvii/widget/AutofitHelper;->getMinTextSize()F

    move-result v2

    float-to-int v2, v2

    .line 6
    sget-object v3, Lcom/narvii/lib/R$styleable;->AutoFitTextView:[I

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 7
    sget p1, Lcom/narvii/lib/R$styleable;->AutoFitTextView_fitSize:I

    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 8
    sget p1, Lcom/narvii/lib/R$styleable;->AutoFitTextView_minTextSize:I

    invoke-virtual {p0, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 9
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    int-to-float p0, p1

    .line 10
    invoke-virtual {v0, v4, p0}, Lcom/narvii/widget/AutofitHelper;->setMinTextSize(IF)Lcom/narvii/widget/AutofitHelper;

    .line 11
    :cond_0
    invoke-virtual {v0, v1}, Lcom/narvii/widget/AutofitHelper;->setEnabled(Z)Lcom/narvii/widget/AutofitHelper;

    return-object v0
.end method

.method private static getAutofitTextSize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FIFFLandroid/util/DisplayMetrics;)F
    .locals 16

    .line 1
    .line 2
    move-object/from16 v8, p1

    .line 3
    .line 4
    move/from16 v9, p2

    .line 5
    .line 6
    move/from16 v10, p3

    .line 7
    .line 8
    add-float v0, p4, p5

    .line 9
    .line 10
    const/high16 v1, 0x40000000    # 2.0f

    .line 11
    .line 12
    div-float v11, v0, v1

    .line 13
    const/4 v12, 0x0

    .line 14
    .line 15
    move-object/from16 v13, p6

    .line 16
    .line 17
    .line 18
    invoke-static {v12, v11, v13}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 19
    move-result v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 23
    const/4 v14, 0x1

    .line 24
    .line 25
    if-eq v10, v14, :cond_0

    .line 26
    .line 27
    new-instance v15, Landroid/text/StaticLayout;

    .line 28
    float-to-int v3, v9

    .line 29
    .line 30
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 31
    .line 32
    const/high16 v5, 0x3f800000    # 1.0f

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x1

    .line 35
    move-object v0, v15

    .line 36
    .line 37
    move-object/from16 v1, p0

    .line 38
    .line 39
    move-object/from16 v2, p1

    .line 40
    .line 41
    .line 42
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v15}, Landroid/text/StaticLayout;->getLineCount()I

    .line 46
    move-result v0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v15, 0x0

    .line 49
    move v0, v14

    .line 50
    .line 51
    :goto_0
    if-le v0, v10, :cond_2

    .line 52
    .line 53
    sub-float v0, p5, p4

    .line 54
    int-to-float v1, v14

    .line 55
    .line 56
    cmpg-float v0, v0, v1

    .line 57
    .line 58
    if-gez v0, :cond_1

    .line 59
    return p4

    .line 60
    .line 61
    :cond_1
    move-object/from16 v0, p0

    .line 62
    .line 63
    move-object/from16 v1, p1

    .line 64
    .line 65
    move/from16 v2, p2

    .line 66
    .line 67
    move/from16 v3, p3

    .line 68
    .line 69
    move/from16 v4, p4

    .line 70
    move v5, v11

    .line 71
    .line 72
    move-object/from16 v6, p6

    .line 73
    .line 74
    .line 75
    invoke-static/range {v0 .. v6}, Lcom/narvii/widget/AutofitHelper;->getAutofitTextSize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FIFFLandroid/util/DisplayMetrics;)F

    .line 76
    move-result v0

    .line 77
    return v0

    .line 78
    .line 79
    :cond_2
    if-ge v0, v10, :cond_3

    .line 80
    .line 81
    move-object/from16 v0, p0

    .line 82
    .line 83
    move-object/from16 v1, p1

    .line 84
    .line 85
    move/from16 v2, p2

    .line 86
    .line 87
    move/from16 v3, p3

    .line 88
    move v4, v11

    .line 89
    .line 90
    move/from16 v5, p5

    .line 91
    .line 92
    move-object/from16 v6, p6

    .line 93
    .line 94
    .line 95
    invoke-static/range {v0 .. v6}, Lcom/narvii/widget/AutofitHelper;->getAutofitTextSize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FIFFLandroid/util/DisplayMetrics;)F

    .line 96
    move-result v0

    .line 97
    return v0

    .line 98
    .line 99
    :cond_3
    if-ne v10, v14, :cond_4

    .line 100
    .line 101
    .line 102
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    .line 103
    move-result v0

    .line 104
    .line 105
    move-object/from16 v1, p0

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8, v1, v12, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 109
    move-result v0

    .line 110
    goto :goto_2

    .line 111
    .line 112
    :cond_4
    move-object/from16 v1, p0

    .line 113
    const/4 v2, 0x0

    .line 114
    .line 115
    :goto_1
    if-ge v12, v0, :cond_6

    .line 116
    .line 117
    .line 118
    invoke-virtual {v15, v12}, Landroid/text/Layout;->getLineWidth(I)F

    .line 119
    move-result v3

    .line 120
    .line 121
    cmpl-float v3, v3, v2

    .line 122
    .line 123
    if-lez v3, :cond_5

    .line 124
    .line 125
    .line 126
    invoke-virtual {v15, v12}, Landroid/text/Layout;->getLineWidth(I)F

    .line 127
    move-result v2

    .line 128
    .line 129
    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 130
    goto :goto_1

    .line 131
    :cond_6
    move v0, v2

    .line 132
    .line 133
    :goto_2
    sub-float v2, p5, p4

    .line 134
    int-to-float v3, v14

    .line 135
    .line 136
    cmpg-float v2, v2, v3

    .line 137
    .line 138
    if-gez v2, :cond_7

    .line 139
    return p4

    .line 140
    .line 141
    :cond_7
    cmpl-float v2, v0, v9

    .line 142
    .line 143
    if-lez v2, :cond_8

    .line 144
    .line 145
    move-object/from16 v0, p0

    .line 146
    .line 147
    move-object/from16 v1, p1

    .line 148
    .line 149
    move/from16 v2, p2

    .line 150
    .line 151
    move/from16 v3, p3

    .line 152
    .line 153
    move/from16 v4, p4

    .line 154
    move v5, v11

    .line 155
    .line 156
    move-object/from16 v6, p6

    .line 157
    .line 158
    .line 159
    invoke-static/range {v0 .. v6}, Lcom/narvii/widget/AutofitHelper;->getAutofitTextSize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FIFFLandroid/util/DisplayMetrics;)F

    .line 160
    move-result v0

    .line 161
    return v0

    .line 162
    .line 163
    :cond_8
    cmpg-float v0, v0, v9

    .line 164
    .line 165
    if-gez v0, :cond_9

    .line 166
    .line 167
    move-object/from16 v0, p0

    .line 168
    .line 169
    move-object/from16 v1, p1

    .line 170
    .line 171
    move/from16 v2, p2

    .line 172
    .line 173
    move/from16 v3, p3

    .line 174
    move v4, v11

    .line 175
    .line 176
    move/from16 v5, p5

    .line 177
    .line 178
    move-object/from16 v6, p6

    .line 179
    .line 180
    .line 181
    invoke-static/range {v0 .. v6}, Lcom/narvii/widget/AutofitHelper;->getAutofitTextSize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FIFFLandroid/util/DisplayMetrics;)F

    .line 182
    move-result v0

    .line 183
    return v0

    .line 184
    :cond_9
    return v11
.end method

.method private static getLineCount(Ljava/lang/CharSequence;Landroid/text/TextPaint;FFLandroid/util/DisplayMetrics;)I
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {v0, p2, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 5
    move-result p2

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 9
    .line 10
    new-instance p2, Landroid/text/StaticLayout;

    .line 11
    float-to-int v3, p3

    .line 12
    .line 13
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 14
    .line 15
    const/high16 v5, 0x3f800000    # 1.0f

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x1

    .line 18
    move-object v0, p2

    .line 19
    move-object v1, p0

    .line 20
    move-object v2, p1

    .line 21
    .line 22
    .line 23
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/text/StaticLayout;->getLineCount()I

    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method private static getMaxLines(Landroid/widget/TextView;)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    instance-of v0, v0, Landroid/text/method/SingleLineTransformationMethod;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result p0

    :goto_0
    return p0
.end method

.method private static getTextHeight(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)F
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4
    .line 5
    new-instance p3, Landroid/text/StaticLayout;

    .line 6
    .line 7
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 8
    .line 9
    const/high16 v5, 0x3f800000    # 1.0f

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x1

    .line 12
    move-object v0, p3

    .line 13
    move-object v1, p0

    .line 14
    move-object v2, p1

    .line 15
    move v3, p2

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Landroid/text/Layout;->getHeight()I

    .line 22
    move-result p0

    .line 23
    int-to-float p0, p0

    .line 24
    return p0
.end method

.method private sendTextSizeChange(FF)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/AutofitHelper;->mListeners:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lcom/narvii/widget/AutofitHelper$OnTextSizeChangeListener;

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, p1, p2}, Lcom/narvii/widget/AutofitHelper$OnTextSizeChangeListener;->onTextSizeChange(FF)V

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return-void
.end method

.method private setRawMaxTextSize(F)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/AutofitHelper;->mMaxTextSize:F

    .line 3
    .line 4
    cmpl-float v0, p1, v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lcom/narvii/widget/AutofitHelper;->mMaxTextSize:F

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/widget/AutofitHelper;->autofit()V

    .line 12
    :cond_0
    return-void
.end method

.method private setRawMinTextSize(F)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/AutofitHelper;->mMinTextSize:F

    .line 3
    .line 4
    cmpl-float v0, p1, v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lcom/narvii/widget/AutofitHelper;->mMinTextSize:F

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/widget/AutofitHelper;->autofit()V

    .line 12
    :cond_0
    return-void
.end method

.method private setRawTextSize(F)V
    .locals 1

    iget v0, p0, Lcom/narvii/widget/AutofitHelper;->mTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/narvii/widget/AutofitHelper;->mTextSize:F

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnTextSizeChangeListener(Lcom/narvii/widget/AutofitHelper$OnTextSizeChangeListener;)Lcom/narvii/widget/AutofitHelper;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/AutofitHelper;->mListeners:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/widget/AutofitHelper;->mListeners:Ljava/util/ArrayList;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/AutofitHelper;->mListeners:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-object p0
.end method

.method public getMaxLines()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/narvii/widget/AutofitHelper;->mMaxLines:I

    return v0
.end method

.method public getMaxTextSize()F
    .locals 1

    iget v0, p0, Lcom/narvii/widget/AutofitHelper;->mMaxTextSize:F

    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    iget v0, p0, Lcom/narvii/widget/AutofitHelper;->mMinTextSize:F

    return v0
.end method

.method public getTextSize()F
    .locals 1

    iget v0, p0, Lcom/narvii/widget/AutofitHelper;->mTextSize:F

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/widget/AutofitHelper;->mEnabled:Z

    return v0
.end method

.method public removeOnTextSizeChangeListener(Lcom/narvii/widget/AutofitHelper$OnTextSizeChangeListener;)Lcom/narvii/widget/AutofitHelper;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/AutofitHelper;->mListeners:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    return-object p0
.end method

.method public setEnabled(Z)Lcom/narvii/widget/AutofitHelper;
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/AutofitHelper;->mEnabled:Z

    .line 3
    .line 4
    if-eq v0, p1, :cond_1

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/widget/AutofitHelper;->mEnabled:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/widget/AutofitHelper;->mTextWatcher:Landroid/text/TextWatcher;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/widget/AutofitHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/narvii/widget/AutofitHelper;->autofit()V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/widget/AutofitHelper;->mTextWatcher:Landroid/text/TextWatcher;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/widget/AutofitHelper;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    .line 43
    const/4 v0, 0x0

    .line 44
    .line 45
    iget v1, p0, Lcom/narvii/widget/AutofitHelper;->mTextSize:F

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 49
    :cond_1
    :goto_0
    return-object p0
.end method

.method public setFitHeight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/widget/AutofitHelper;->fitHeight:Z

    return-void
.end method

.method public setMaxLines(I)Lcom/narvii/widget/AutofitHelper;
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/AutofitHelper;->mMaxLines:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/widget/AutofitHelper;->mMaxLines:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/widget/AutofitHelper;->autofit()V

    .line 10
    :cond_0
    return-object p0
.end method

.method public setMaxTextSize(F)Lcom/narvii/widget/AutofitHelper;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/narvii/widget/AutofitHelper;->setMaxTextSize(IF)Lcom/narvii/widget/AutofitHelper;

    move-result-object p1

    return-object p1
.end method

.method public setMaxTextSize(IF)Lcom/narvii/widget/AutofitHelper;
    .locals 2

    iget-object v0, p0, Lcom/narvii/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5
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

    iput p1, p0, Lcom/narvii/widget/AutofitHelper;->maxWidth:I

    return-void
.end method

.method public setMinTextSize(F)Lcom/narvii/widget/AutofitHelper;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/narvii/widget/AutofitHelper;->setMinTextSize(IF)Lcom/narvii/widget/AutofitHelper;

    move-result-object p1

    return-object p1
.end method

.method public setMinTextSize(IF)Lcom/narvii/widget/AutofitHelper;
    .locals 2

    iget-object v0, p0, Lcom/narvii/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5
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

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/narvii/widget/AutofitHelper;->setTextSize(IF)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 2

    iget-boolean v0, p0, Lcom/narvii/widget/AutofitHelper;->mIsAutofitting:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/AutofitHelper;->mTextView:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/narvii/widget/AutofitHelper;->setRawTextSize(F)V

    return-void
.end method
