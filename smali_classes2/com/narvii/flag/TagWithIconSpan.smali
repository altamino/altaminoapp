.class public Lcom/narvii/flag/TagWithIconSpan;
.super Landroid/text/style/ReplacementSpan;
.source "TagWithIconSpan.java"


# static fields
.field private static DEFAULT_BACK_COLOR:I = -0x10000

.field private static DEFAULT_CORNER_RADIUS:I = 0x8

.field private static DEFAULT_FLAG_ICON:Ljava/lang/String; = "ion_ios_flag"

.field private static DEFAULT_TEXT_COLOR:I = -0x1

.field private static final DIRECTION_NORMAL:I = 0x0

.field private static final DIRECTION_REVERSAL:I = 0x1


# instance fields
.field private direction:F

.field private iconCharacters:Ljava/lang/String;

.field private mBackColor:I

.field private mColor:I

.field private mContentStr:Ljava/lang/String;

.field private mContentTextSize:F

.field private mContext:Landroid/content/Context;

.field private mIconStr:Ljava/lang/String;

.field private mIconTextSie:F

.field private mSameBaseLine:Z

.field private mShowRoundRect:Z

.field rect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 43
    sget-object v0, Lcom/narvii/flag/TagWithIconSpan;->DEFAULT_FLAG_ICON:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/narvii/flag/TagWithIconSpan;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    .line 47
    sget v4, Lcom/narvii/flag/TagWithIconSpan;->DEFAULT_TEXT_COLOR:I

    sget v5, Lcom/narvii/flag/TagWithIconSpan;->DEFAULT_BACK_COLOR:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/narvii/flag/TagWithIconSpan;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIFFZZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIFFZZI)V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/narvii/flag/TagWithIconSpan;->mIconStr:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/narvii/flag/TagWithIconSpan;->mContentStr:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/narvii/flag/TagWithIconSpan;->mContext:Landroid/content/Context;

    .line 57
    iput p4, p0, Lcom/narvii/flag/TagWithIconSpan;->mColor:I

    .line 58
    iput p5, p0, Lcom/narvii/flag/TagWithIconSpan;->mBackColor:I

    .line 59
    iput-boolean p8, p0, Lcom/narvii/flag/TagWithIconSpan;->mShowRoundRect:Z

    .line 60
    iput-boolean p9, p0, Lcom/narvii/flag/TagWithIconSpan;->mSameBaseLine:Z

    .line 61
    iput p6, p0, Lcom/narvii/flag/TagWithIconSpan;->mIconTextSie:F

    .line 62
    iput p7, p0, Lcom/narvii/flag/TagWithIconSpan;->mContentTextSize:F

    int-to-float p1, p10

    .line 63
    iput p1, p0, Lcom/narvii/flag/TagWithIconSpan;->direction:F

    .line 64
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/flag/TagWithIconSpan;->rect:Landroid/graphics/RectF;

    return-void
.end method

.method private getTypeFace()Landroid/graphics/Typeface;
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/narvii/flag/TagWithIconSpan;->mIconStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/fonticon/FontAwesomeUtil;->getNvTypeface(Ljava/lang/String;)Lcom/narvii/util/fonticon/NVTypeface;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 127
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/narvii/util/fonticon/NVTypeface;->getCharacters()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/flag/TagWithIconSpan;->mIconStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/flag/TagWithIconSpan;->iconCharacters:Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lcom/narvii/flag/TagWithIconSpan;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/narvii/util/fonticon/NVTypeface;->getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p5

    move/from16 v1, p6

    move-object/from16 v10, p9

    .line 74
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 75
    iget v2, v0, Lcom/narvii/flag/TagWithIconSpan;->mIconTextSie:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_0

    .line 76
    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 80
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/narvii/flag/TagWithIconSpan;->getTypeFace()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 81
    iget-object v2, v0, Lcom/narvii/flag/TagWithIconSpan;->iconCharacters:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v11, v2, v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    .line 82
    iget-object v4, v0, Lcom/narvii/flag/TagWithIconSpan;->mContentStr:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v10, v4, v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v12

    int-to-float v4, v1

    sub-int v1, p8, v1

    int-to-float v1, v1

    .line 83
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->descent()F

    move-result v5

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    sub-float/2addr v1, v5

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v1, v13

    add-float/2addr v4, v1

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v4, v1

    float-to-int v1, v4

    const-string/jumbo v4, "x"

    .line 84
    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v14, v4, v5

    .line 86
    iget-object v4, v0, Lcom/narvii/flag/TagWithIconSpan;->rect:Landroid/graphics/RectF;

    iput v9, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v9

    add-float v5, v2, v12

    const/high16 v6, 0x40800000    # 4.0f

    mul-float v6, v6, v14

    add-float/2addr v5, v6

    .line 87
    iput v5, v4, Landroid/graphics/RectF;->right:F

    int-to-float v15, v1

    .line 88
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    add-float/2addr v1, v15

    iput v1, v4, Landroid/graphics/RectF;->top:F

    .line 89
    iget-object v1, v0, Lcom/narvii/flag/TagWithIconSpan;->rect:Landroid/graphics/RectF;

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->descent()F

    move-result v4

    add-float/2addr v4, v15

    iput v4, v1, Landroid/graphics/RectF;->bottom:F

    .line 92
    iget v1, v0, Lcom/narvii/flag/TagWithIconSpan;->mBackColor:I

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-boolean v1, v0, Lcom/narvii/flag/TagWithIconSpan;->mShowRoundRect:Z

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, v0, Lcom/narvii/flag/TagWithIconSpan;->rect:Landroid/graphics/RectF;

    sget v4, Lcom/narvii/flag/TagWithIconSpan;->DEFAULT_CORNER_RADIUS:I

    int-to-float v5, v4

    int-to-float v4, v4

    invoke-virtual {v8, v1, v5, v4, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 97
    :cond_1
    iget v1, v0, Lcom/narvii/flag/TagWithIconSpan;->mColor:I

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget v1, v0, Lcom/narvii/flag/TagWithIconSpan;->mColor:I

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget v1, v0, Lcom/narvii/flag/TagWithIconSpan;->mContentTextSize:F

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_2

    .line 100
    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 103
    :cond_2
    iget v1, v0, Lcom/narvii/flag/TagWithIconSpan;->direction:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_4

    .line 105
    iget-boolean v1, v0, Lcom/narvii/flag/TagWithIconSpan;->mSameBaseLine:Z

    if-eqz v1, :cond_3

    .line 106
    iget-object v1, v0, Lcom/narvii/flag/TagWithIconSpan;->iconCharacters:Ljava/lang/String;

    add-float v3, v9, v14

    invoke-virtual {v8, v1, v3, v15, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 108
    :cond_3
    iget-object v1, v0, Lcom/narvii/flag/TagWithIconSpan;->iconCharacters:Ljava/lang/String;

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->descent()F

    move-result v3

    add-float/2addr v3, v15

    invoke-virtual {v8, v1, v9, v3, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 110
    :goto_1
    iget-object v1, v0, Lcom/narvii/flag/TagWithIconSpan;->mContentStr:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    mul-float v14, v14, v13

    add-float/2addr v2, v14

    move-object/from16 p2, v1

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v2

    move/from16 p6, v15

    move-object/from16 p7, p9

    invoke-virtual/range {p1 .. p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 112
    :cond_4
    iget-object v2, v0, Lcom/narvii/flag/TagWithIconSpan;->mContentStr:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-float v5, v9, v14

    move-object/from16 v1, p1

    move v6, v15

    move-object/from16 v7, p9

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 113
    iget-boolean v1, v0, Lcom/narvii/flag/TagWithIconSpan;->mSameBaseLine:Z

    if-eqz v1, :cond_5

    .line 114
    iget-object v1, v0, Lcom/narvii/flag/TagWithIconSpan;->iconCharacters:Ljava/lang/String;

    mul-float v14, v14, v13

    add-float v2, v9, v14

    add-float/2addr v2, v12

    invoke-virtual {v8, v1, v2, v15, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 116
    :cond_5
    iget-object v1, v0, Lcom/narvii/flag/TagWithIconSpan;->iconCharacters:Ljava/lang/String;

    add-float v2, v9, v12

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->descent()F

    move-result v3

    add-float/2addr v15, v3

    invoke-virtual {v8, v1, v2, v15, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_2
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 69
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method
