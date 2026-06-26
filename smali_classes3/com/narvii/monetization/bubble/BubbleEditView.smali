.class public Lcom/narvii/monetization/bubble/BubbleEditView;
.super Landroid/widget/FrameLayout;
.source "BubbleEditView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/bubble/BubbleEditView$BubbleSlotEditingListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCALE:F = 2.0f


# instance fields
.field private bgHeight:I

.field private bgWidth:I

.field public bubbleBg:Lcom/narvii/widget/NVImageView;

.field private bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

.field bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

.field private bubbleSlotSize:I

.field curDensity:F

.field private curFocusedSlot:Lcom/narvii/model/SlotPoint;

.field private final imageLoader:Lcom/narvii/util/image/NVImageLoader;

.field listener:Lcom/narvii/monetization/bubble/BubbleEditView$BubbleSlotEditingListener;

.field private root:Landroid/widget/RelativeLayout;

.field private scaleXY:F

.field slotEditListener:Lcom/narvii/monetization/bubble/SlotEditView$SlotEditListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/bubble/BubbleEditView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 38
    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->curFocusedSlot:Lcom/narvii/model/SlotPoint;

    .line 104
    new-instance p2, Lcom/narvii/monetization/bubble/BubbleEditView$2;

    invoke-direct {p2, p0}, Lcom/narvii/monetization/bubble/BubbleEditView$2;-><init>(Lcom/narvii/monetization/bubble/BubbleEditView;)V

    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->slotEditListener:Lcom/narvii/monetization/bubble/SlotEditView$SlotEditListener;

    const p2, 0x7f0b006d

    .line 75
    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 76
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "bubble"

    .line 77
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/monetization/bubble/BubbleService;

    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    const-string p2, "imageLoader"

    .line 78
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/image/NVImageLoader;

    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->imageLoader:Lcom/narvii/util/image/NVImageLoader;

    .line 79
    new-instance p2, Lcom/narvii/monetization/bubble/BubbleHelper;

    invoke-direct {p2, p1}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 80
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->curDensity:F

    .line 81
    iget p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->curDensity:F

    const/high16 p2, 0x40000000    # 2.0f

    mul-float p1, p1, p2

    iput p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->scaleXY:F

    .line 84
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41b00000    # 22.0f

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleSlotSize:I

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/bubble/BubbleEditView;)Lcom/narvii/model/SlotPoint;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->curFocusedSlot:Lcom/narvii/model/SlotPoint;

    return-object p0
.end method

.method static synthetic access$002(Lcom/narvii/monetization/bubble/BubbleEditView;Lcom/narvii/model/SlotPoint;)Lcom/narvii/model/SlotPoint;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->curFocusedSlot:Lcom/narvii/model/SlotPoint;

    return-object p1
.end method

.method static synthetic access$100(Lcom/narvii/monetization/bubble/BubbleEditView;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bgWidth:I

    return p0
.end method

.method static synthetic access$102(Lcom/narvii/monetization/bubble/BubbleEditView;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bgWidth:I

    return p1
.end method

.method static synthetic access$200(Lcom/narvii/monetization/bubble/BubbleEditView;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bgHeight:I

    return p0
.end method

.method static synthetic access$202(Lcom/narvii/monetization/bubble/BubbleEditView;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bgHeight:I

    return p1
.end method

.method private hideSlotBackground()V
    .locals 3

    const/4 v0, 0x0

    .line 290
    :goto_0
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->root:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->root:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 292
    instance-of v2, v1, Lcom/narvii/monetization/bubble/SlotEditView;

    if-eqz v2, :cond_0

    .line 293
    check-cast v1, Lcom/narvii/monetization/bubble/SlotEditView;

    .line 294
    iget-object v1, v1, Lcom/narvii/monetization/bubble/SlotEditView;->imgSlot:Lcom/narvii/widget/NVImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeAllSlots()V
    .locals 2

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->root:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->root:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeViewAt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public configAllowSlots(Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/SlotPoint;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 201
    invoke-direct/range {p0 .. p0}, Lcom/narvii/monetization/bubble/BubbleEditView;->removeAllSlots()V

    if-eqz p1, :cond_2

    .line 202
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 205
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/SlotPoint;

    .line 206
    invoke-virtual {v2}, Lcom/narvii/model/SlotPoint;->isLegalPoint()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 210
    :cond_1
    new-instance v3, Lcom/narvii/monetization/bubble/SlotEditView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/narvii/monetization/bubble/SlotEditView;-><init>(Landroid/content/Context;)V

    .line 211
    iget-object v4, v0, Lcom/narvii/monetization/bubble/BubbleEditView;->slotEditListener:Lcom/narvii/monetization/bubble/SlotEditView$SlotEditListener;

    invoke-virtual {v3, v4}, Lcom/narvii/monetization/bubble/SlotEditView;->setListener(Lcom/narvii/monetization/bubble/SlotEditView$SlotEditListener;)V

    const v4, 0x7f090a53

    .line 212
    invoke-virtual {v2}, Lcom/narvii/model/SlotPoint;->getSlotKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    const v4, 0x7f090a54

    .line 213
    invoke-virtual {v3, v4, v2}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 214
    iget v4, v0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleSlotSize:I

    .line 215
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070072

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int v10, v4, v5

    .line 216
    iget v4, v0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleSlotSize:I

    int-to-float v5, v4

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v5, v5, v7

    float-to-int v12, v5

    int-to-float v5, v4

    mul-float v5, v5, v7

    float-to-int v15, v5

    int-to-float v4, v4

    mul-float v4, v4, v7

    .line 219
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v14, v4

    .line 220
    iget v4, v0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleSlotSize:I

    int-to-float v4, v4

    mul-float v4, v4, v7

    .line 221
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v13, v4

    .line 223
    iget v4, v2, Lcom/narvii/model/SlotPoint;->x:I

    int-to-float v4, v4

    iget-object v5, v0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    iget v5, v5, Lcom/narvii/monetization/bubble/BubbleService;->scaleXY:F

    mul-float v4, v4, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v4, v4, v6

    float-to-int v4, v4

    .line 224
    iget v7, v2, Lcom/narvii/model/SlotPoint;->y:I

    int-to-float v7, v7

    mul-float v7, v7, v5

    mul-float v7, v7, v6

    float-to-int v5, v7

    .line 227
    iget-object v7, v0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

    const v8, 0x7f090178

    iget v11, v2, Lcom/narvii/model/SlotPoint;->align:I

    const/16 v18, 0x1

    move v9, v10

    move/from16 v16, v4

    move/from16 v17, v5

    invoke-virtual/range {v7 .. v18}, Lcom/narvii/monetization/bubble/BubbleHelper;->getSlotLayParams(IIIIIIIIIIZ)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    .line 229
    iget-object v4, v0, Lcom/narvii/monetization/bubble/BubbleEditView;->root:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public getFlipBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .line 189
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 190
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 190
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 192
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 193
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 194
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 195
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v3, 0x0

    .line 196
    invoke-virtual {v0, p1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object v1
.end method

.method public getPreviewBitmap(Lcom/narvii/model/BubbleInfo;)Landroid/graphics/Bitmap;
    .locals 13

    .line 239
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/BubbleEditView;->loseFocus(Lcom/narvii/model/BubbleInfo;)V

    .line 240
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditView;->hideSlotBackground()V

    .line 241
    invoke-static {p0}, Lcom/narvii/util/image/Screenshot;->takeScreenshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

    iget v2, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleSlotSize:I

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, p1, v3}, Lcom/narvii/monetization/bubble/BubbleHelper;->getSlotPadding(IILcom/narvii/model/BubbleInfo;F)I

    move-result v1

    .line 244
    iget-object v2, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

    iget v5, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleSlotSize:I

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v5, p1, v3}, Lcom/narvii/monetization/bubble/BubbleHelper;->getSlotPadding(IILcom/narvii/model/BubbleInfo;F)I

    move-result v2

    .line 245
    iget-object v5, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

    iget v7, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleSlotSize:I

    const/4 v8, 0x4

    invoke-virtual {v5, v8, v7, p1, v3}, Lcom/narvii/monetization/bubble/BubbleHelper;->getSlotPadding(IILcom/narvii/model/BubbleInfo;F)I

    move-result v5

    .line 246
    iget-object v7, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

    iget v8, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleSlotSize:I

    const/4 v9, 0x3

    invoke-virtual {v7, v9, v8, p1, v3}, Lcom/narvii/monetization/bubble/BubbleHelper;->getSlotPadding(IILcom/narvii/model/BubbleInfo;F)I

    move-result v3

    .line 248
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070066

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 249
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070065

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 250
    iget-object v9, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleBg:Lcom/narvii/widget/NVImageView;

    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 251
    iget-object v7, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleBg:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    .line 252
    iget-object v8, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleBg:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    :cond_0
    add-int v9, v8, v1

    add-int/2addr v5, v9

    add-int v9, v7, v2

    add-int/2addr v3, v9

    .line 256
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/2addr v9, v6

    div-int/2addr v7, v6

    sub-int/2addr v9, v7

    sub-int v7, v9, v2

    .line 257
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/2addr v9, v6

    div-int/2addr v8, v6

    sub-int/2addr v9, v8

    sub-int v6, v9, v1

    const-string v8, ": "

    const-string v9, "bubble preview error "

    const-string v10, "bubble"

    if-lez v7, :cond_1

    if-gtz v3, :cond_4

    :cond_1
    if-gtz v7, :cond_2

    const/4 v7, 0x1

    :cond_2
    if-gtz v3, :cond_3

    const/4 v3, 0x1

    .line 265
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p1, Lcom/narvii/model/BubbleInfo;->id:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " bitmap width : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " bg width: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleBg:Lcom/narvii/widget/NVImageView;

    .line 267
    invoke-virtual {v12}, Landroid/widget/ImageView;->getWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " left offset: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-static {v10, v2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-lez v6, :cond_5

    if-gtz v5, :cond_8

    :cond_5
    if-gtz v6, :cond_6

    const/4 v6, 0x1

    :cond_6
    if-gtz v5, :cond_7

    const/4 v5, 0x1

    .line 277
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/narvii/model/BubbleInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bitmap height : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bg height: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleBg:Lcom/narvii/widget/NVImageView;

    .line 279
    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " top offset: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-static {v10, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_8
    invoke-static {v0, v7, v6, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    if-eqz v1, :cond_9

    iget v1, v1, Lcom/narvii/monetization/bubble/BubbleService;->scaleXY:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_a

    :cond_9
    const/high16 v1, 0x3f800000    # 1.0f

    :cond_a
    int-to-float v2, v3

    div-float/2addr v2, v1

    float-to-int v2, v2

    int-to-float v3, v5

    div-float/2addr v3, v1

    float-to-int v1, v3

    const/high16 v3, 0x3f000000    # 0.5f

    .line 284
    invoke-static {v0, v2, v1, v3, v3}, Lcom/narvii/util/image/BitmapUtils;->crop(Landroid/graphics/Bitmap;IIFF)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 285
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/BubbleEditView;->updateSlotViews(Lcom/narvii/model/BubbleInfo;)V

    return-object v0
.end method

.method public loseFocus(Lcom/narvii/model/BubbleInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->curFocusedSlot:Lcom/narvii/model/SlotPoint;

    .line 235
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/BubbleEditView;->updateSlotViews(Lcom/narvii/model/BubbleInfo;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 89
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f09098b

    .line 90
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/narvii/monetization/bubble/BubbleEditView$1;

    invoke-direct {v2, p0}, Lcom/narvii/monetization/bubble/BubbleEditView$1;-><init>(Lcom/narvii/monetization/bubble/BubbleEditView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->root:Landroid/widget/RelativeLayout;

    const v0, 0x7f090178

    .line 99
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleBg:Lcom/narvii/widget/NVImageView;

    .line 100
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleBg:Lcom/narvii/widget/NVImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    return-void
.end method

.method public setListener(Lcom/narvii/monetization/bubble/BubbleEditView$BubbleSlotEditingListener;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->listener:Lcom/narvii/monetization/bubble/BubbleEditView$BubbleSlotEditingListener;

    return-void
.end method

.method public updateEditorView(Lcom/narvii/model/BubbleInfo;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->imageLoader:Lcom/narvii/util/image/NVImageLoader;

    iget-object v1, p1, Lcom/narvii/model/BubbleInfo;->previewBackgroundUrl:Ljava/lang/String;

    new-instance v2, Lcom/narvii/monetization/bubble/BubbleEditView$3;

    invoke-direct {v2, p0, p1}, Lcom/narvii/monetization/bubble/BubbleEditView$3;-><init>(Lcom/narvii/monetization/bubble/BubbleEditView;Lcom/narvii/model/BubbleInfo;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    return-void
.end method

.method public updateSlotViews(Lcom/narvii/model/BubbleInfo;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 127
    :cond_0
    iget-object v0, p1, Lcom/narvii/model/BubbleInfo;->allowedSlots:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 128
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    const/4 v0, 0x0

    .line 133
    :goto_0
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->root:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 134
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->root:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 135
    instance-of v2, v1, Lcom/narvii/monetization/bubble/SlotEditView;

    if-eqz v2, :cond_4

    .line 136
    check-cast v1, Lcom/narvii/monetization/bubble/SlotEditView;

    const v2, 0x7f090a53

    .line 137
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const v3, 0x7f090a54

    .line 138
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/SlotPoint;

    .line 139
    invoke-virtual {p1, v2}, Lcom/narvii/model/BubbleInfo;->getSlotByPosition(Ljava/lang/String;)Lcom/narvii/model/BubbleSlot;

    move-result-object v2

    .line 140
    iget-object v4, v1, Lcom/narvii/monetization/bubble/SlotEditView;->imgSlot:Lcom/narvii/widget/NVImageView;

    const/4 v5, 0x0

    if-nez v2, :cond_2

    move-object v6, v5

    goto :goto_1

    :cond_2
    iget-object v6, v2, Lcom/narvii/model/BubbleSlot;->path:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v6}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 141
    iget-object v4, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->curFocusedSlot:Lcom/narvii/model/SlotPoint;

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v5, v2, Lcom/narvii/model/BubbleSlot;->path:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v3, v5}, Lcom/narvii/monetization/bubble/SlotEditView;->updateStatus(ZLjava/lang/String;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void

    .line 129
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditView;->removeAllSlots()V

    return-void
.end method
