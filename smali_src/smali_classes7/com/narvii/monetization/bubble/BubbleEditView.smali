.class public Lcom/narvii/monetization/bubble/BubbleEditView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/bubble/BubbleEditView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->curFocusedSlot:Lcom/narvii/model/SlotPoint;

    .line 3
    new-instance p2, Lcom/narvii/monetization/bubble/BubbleEditView$2;

    invoke-direct {p2, p0}, Lcom/narvii/monetization/bubble/BubbleEditView$2;-><init>(Lcom/narvii/monetization/bubble/BubbleEditView;)V

    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->slotEditListener:Lcom/narvii/monetization/bubble/SlotEditView$SlotEditListener;

    const p2, 0x7f0d0083

    .line 4
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "bubble"

    .line 6
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/monetization/bubble/BubbleService;

    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    const-string p2, "imageLoader"

    .line 7
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/image/NVImageLoader;

    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->imageLoader:Lcom/narvii/util/image/NVImageLoader;

    .line 8
    new-instance p2, Lcom/narvii/monetization/bubble/BubbleHelper;

    invoke-direct {p2, p1}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->curDensity:F

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->scaleXY:F

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41b00000    # 22.0f

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleSlotSize:I

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/monetization/bubble/BubbleEditView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bgHeight:I

    return p0
.end method

.method static bridge synthetic b(Lcom/narvii/monetization/bubble/BubbleEditView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bgWidth:I

    return p0
.end method

.method static bridge synthetic c(Lcom/narvii/monetization/bubble/BubbleEditView;)Lcom/narvii/model/SlotPoint;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->curFocusedSlot:Lcom/narvii/model/SlotPoint;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/monetization/bubble/BubbleEditView;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bgHeight:I

    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/monetization/bubble/BubbleEditView;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bgWidth:I

    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/monetization/bubble/BubbleEditView;Lcom/narvii/model/SlotPoint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->curFocusedSlot:Lcom/narvii/model/SlotPoint;

    return-void
.end method

.method private hideSlotBackground()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->root:Landroid/widget/RelativeLayout;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->root:Landroid/widget/RelativeLayout;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    instance-of v2, v1, Lcom/narvii/monetization/bubble/SlotEditView;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    check-cast v1, Lcom/narvii/monetization/bubble/SlotEditView;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/narvii/monetization/bubble/SlotEditView;->imgSlot:Lcom/narvii/widget/NVImageView;

    .line 24
    const/4 v2, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    .line 29
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-void
.end method

.method private removeAllSlots()V
    .locals 2

    .line 1
    .line 2
    :goto_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->root:Landroid/widget/RelativeLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->root:Landroid/widget/RelativeLayout;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 15
    goto :goto_0

    .line 16
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

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Lcom/narvii/monetization/bubble/BubbleEditView;->removeAllSlots()V

    .line 6
    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    .line 10
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 11
    move-result v1

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    check-cast v2, Lcom/narvii/model/SlotPoint;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/narvii/model/SlotPoint;->isLegalPoint()Z

    .line 35
    move-result v3

    .line 36
    .line 37
    if-nez v3, :cond_1

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_1
    new-instance v3, Lcom/narvii/monetization/bubble/SlotEditView;

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    move-result-object v4

    .line 45
    .line 46
    .line 47
    invoke-direct {v3, v4}, Lcom/narvii/monetization/bubble/SlotEditView;-><init>(Landroid/content/Context;)V

    .line 48
    .line 49
    iget-object v4, v0, Lcom/narvii/monetization/bubble/BubbleEditView;->slotEditListener:Lcom/narvii/monetization/bubble/SlotEditView$SlotEditListener;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v4}, Lcom/narvii/monetization/bubble/SlotEditView;->setListener(Lcom/narvii/monetization/bubble/SlotEditView$SlotEditListener;)V

    .line 53
    .line 54
    .line 55
    const v4, 0x7f0a0d2a

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/narvii/model/SlotPoint;->getSlotKey()Ljava/lang/String;

    .line 59
    move-result-object v5

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    const v4, 0x7f0a0d2b

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v4, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 69
    .line 70
    iget v4, v0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleSlotSize:I

    .line 71
    .line 72
    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 74
    move-result-object v5

    .line 75
    .line 76
    .line 77
    const v6, 0x7f0700ac

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 81
    move-result v5

    .line 82
    .line 83
    add-int v10, v4, v5

    .line 84
    .line 85
    iget v4, v0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleSlotSize:I

    .line 86
    int-to-float v5, v4

    .line 87
    .line 88
    const/high16 v7, 0x3f000000    # 0.5f

    .line 89
    mul-float/2addr v5, v7

    .line 90
    float-to-int v12, v5

    .line 91
    int-to-float v5, v4

    .line 92
    mul-float/2addr v5, v7

    .line 93
    float-to-int v15, v5

    .line 94
    int-to-float v4, v4

    .line 95
    mul-float/2addr v4, v7

    .line 96
    .line 97
    .line 98
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 99
    move-result-object v5

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 103
    move-result v5

    .line 104
    int-to-float v5, v5

    .line 105
    add-float/2addr v4, v5

    .line 106
    float-to-int v14, v4

    .line 107
    .line 108
    iget v4, v0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleSlotSize:I

    .line 109
    int-to-float v4, v4

    .line 110
    mul-float/2addr v4, v7

    .line 111
    .line 112
    .line 113
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 114
    move-result-object v5

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 118
    move-result v5

    .line 119
    int-to-float v5, v5

    .line 120
    add-float/2addr v4, v5

    .line 121
    float-to-int v13, v4

    .line 122
    .line 123
    iget v4, v2, Lcom/narvii/model/SlotPoint;->x:I

    .line 124
    int-to-float v4, v4

    .line 125
    .line 126
    iget-object v5, v0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 127
    .line 128
    iget v5, v5, Lcom/narvii/monetization/bubble/BubbleService;->scaleXY:F

    .line 129
    mul-float/2addr v4, v5

    .line 130
    .line 131
    const/high16 v6, 0x40000000    # 2.0f

    .line 132
    mul-float/2addr v4, v6

    .line 133
    float-to-int v4, v4

    .line 134
    .line 135
    iget v7, v2, Lcom/narvii/model/SlotPoint;->y:I

    .line 136
    int-to-float v7, v7

    .line 137
    mul-float/2addr v7, v5

    .line 138
    mul-float/2addr v7, v6

    .line 139
    float-to-int v5, v7

    .line 140
    .line 141
    iget-object v7, v0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 142
    .line 143
    .line 144
    const v8, 0x7f0a0222

    .line 145
    .line 146
    iget v11, v2, Lcom/narvii/model/SlotPoint;->align:I

    .line 147
    .line 148
    const/16 v18, 0x1

    .line 149
    move v9, v10

    .line 150
    .line 151
    move/from16 v16, v4

    .line 152
    .line 153
    move/from16 v17, v5

    .line 154
    .line 155
    .line 156
    invoke-virtual/range {v7 .. v18}, Lcom/narvii/monetization/bubble/BubbleHelper;->getSlotLayParams(IIIIIIIIIIZ)Landroid/widget/RelativeLayout$LayoutParams;

    .line 157
    move-result-object v2

    .line 158
    .line 159
    iget-object v4, v0, Lcom/narvii/monetization/bubble/BubbleEditView;->root:Landroid/widget/RelativeLayout;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    :cond_2
    :goto_1
    return-void
.end method

.method public getFlipBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Canvas;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 9
    move-result v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 13
    move-result v2

    .line 14
    .line 15
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 23
    .line 24
    new-instance v2, Landroid/graphics/Matrix;

    .line 25
    .line 26
    .line 27
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 28
    .line 29
    const/high16 v3, -0x40800000    # -1.0f

    .line 30
    .line 31
    const/high16 v4, 0x3f800000    # 1.0f

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 38
    move-result v3

    .line 39
    int-to-float v3, v3

    .line 40
    const/4 v4, 0x0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 44
    const/4 v3, 0x0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 48
    return-object v1
.end method

.method public getPreviewBitmap(Lcom/narvii/model/BubbleInfo;)Landroid/graphics/Bitmap;
    .locals 13

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/BubbleEditView;->loseFocus(Lcom/narvii/model/BubbleInfo;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditView;->hideSlotBackground()V

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lcom/narvii/util/image/Screenshot;->takeScreenshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 13
    .line 14
    iget v2, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleSlotSize:I

    .line 15
    const/4 v3, 0x1

    .line 16
    .line 17
    const/high16 v4, 0x40000000    # 2.0f

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v3, v2, p1, v4}, Lcom/narvii/monetization/bubble/BubbleHelper;->getSlotPadding(IILcom/narvii/model/BubbleInfo;F)I

    .line 21
    move-result v1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 24
    .line 25
    iget v5, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleSlotSize:I

    .line 26
    const/4 v6, 0x2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v6, v5, p1, v4}, Lcom/narvii/monetization/bubble/BubbleHelper;->getSlotPadding(IILcom/narvii/model/BubbleInfo;F)I

    .line 30
    move-result v2

    .line 31
    .line 32
    iget-object v5, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 33
    const/4 v7, 0x4

    .line 34
    .line 35
    iget v8, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleSlotSize:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5, v7, v8, p1, v4}, Lcom/narvii/monetization/bubble/BubbleHelper;->getSlotPadding(IILcom/narvii/model/BubbleInfo;F)I

    .line 39
    move-result v5

    .line 40
    .line 41
    iget-object v7, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 42
    const/4 v8, 0x3

    .line 43
    .line 44
    iget v9, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleSlotSize:I

    .line 45
    .line 46
    .line 47
    invoke-virtual {v7, v8, v9, p1, v4}, Lcom/narvii/monetization/bubble/BubbleHelper;->getSlotPadding(IILcom/narvii/model/BubbleInfo;F)I

    .line 48
    move-result v4

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    move-result-object v7

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    move-result-object v7

    .line 57
    .line 58
    .line 59
    const v8, 0x7f0700a0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 63
    move-result v7

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    move-result-object v8

    .line 68
    .line 69
    .line 70
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 71
    move-result-object v8

    .line 72
    .line 73
    .line 74
    const v9, 0x7f07009f

    .line 75
    .line 76
    .line 77
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 78
    move-result v8

    .line 79
    .line 80
    iget-object v9, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleBg:Lcom/narvii/widget/NVImageView;

    .line 81
    .line 82
    .line 83
    invoke-static {v9}, Landroidx/core/view/ViewCompat;->X(Landroid/view/View;)Z

    .line 84
    move-result v9

    .line 85
    .line 86
    if-eqz v9, :cond_0

    .line 87
    .line 88
    iget-object v7, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleBg:Lcom/narvii/widget/NVImageView;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 92
    move-result v7

    .line 93
    .line 94
    iget-object v8, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleBg:Lcom/narvii/widget/NVImageView;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    .line 98
    move-result v8

    .line 99
    .line 100
    :cond_0
    add-int v9, v8, v1

    .line 101
    add-int/2addr v9, v5

    .line 102
    .line 103
    add-int v5, v7, v2

    .line 104
    add-int/2addr v5, v4

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 108
    move-result v4

    .line 109
    div-int/2addr v4, v6

    .line 110
    div-int/2addr v7, v6

    .line 111
    sub-int/2addr v4, v7

    .line 112
    sub-int/2addr v4, v2

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 116
    move-result v7

    .line 117
    div-int/2addr v7, v6

    .line 118
    div-int/2addr v8, v6

    .line 119
    sub-int/2addr v7, v8

    .line 120
    sub-int/2addr v7, v1

    .line 121
    .line 122
    const-string v6, ": "

    .line 123
    .line 124
    const-string v8, "bubble preview error "

    .line 125
    .line 126
    const-string v10, "bubble"

    .line 127
    .line 128
    if-lez v4, :cond_1

    .line 129
    .line 130
    if-gtz v5, :cond_4

    .line 131
    .line 132
    :cond_1
    if-gtz v4, :cond_2

    .line 133
    move v4, v3

    .line 134
    .line 135
    :cond_2
    if-gtz v5, :cond_3

    .line 136
    move v5, v3

    .line 137
    .line 138
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    iget-object v12, p1, Lcom/narvii/model/BubbleInfo;->id:Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v12, " bitmap width : "

    .line 158
    .line 159
    .line 160
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 164
    move-result v12

    .line 165
    .line 166
    .line 167
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v12, " bg width: "

    .line 170
    .line 171
    .line 172
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    iget-object v12, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleBg:Lcom/narvii/widget/NVImageView;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    .line 178
    move-result v12

    .line 179
    .line 180
    .line 181
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v12, " left offset: "

    .line 184
    .line 185
    .line 186
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object v2

    .line 194
    .line 195
    .line 196
    invoke-static {v10, v2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    :cond_4
    if-lez v7, :cond_5

    .line 199
    .line 200
    if-gtz v9, :cond_8

    .line 201
    .line 202
    :cond_5
    if-gtz v7, :cond_6

    .line 203
    move v7, v3

    .line 204
    .line 205
    :cond_6
    if-gtz v9, :cond_7

    .line 206
    goto :goto_0

    .line 207
    :cond_7
    move v3, v9

    .line 208
    .line 209
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    iget-object v8, p1, Lcom/narvii/model/BubbleInfo;->id:Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string v6, " bitmap height : "

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 235
    move-result v6

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    const-string v6, " bg height: "

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    iget-object v6, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleBg:Lcom/narvii/widget/NVImageView;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 249
    move-result v6

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    const-string v6, " top offset: "

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    move-result-object v1

    .line 265
    .line 266
    .line 267
    invoke-static {v10, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    move v9, v3

    .line 269
    .line 270
    .line 271
    :cond_8
    invoke-static {v0, v4, v7, v5, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 272
    move-result-object v0

    .line 273
    .line 274
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 275
    .line 276
    if-eqz v1, :cond_9

    .line 277
    .line 278
    iget v1, v1, Lcom/narvii/monetization/bubble/BubbleService;->scaleXY:F

    .line 279
    const/4 v2, 0x0

    .line 280
    .line 281
    cmpl-float v2, v1, v2

    .line 282
    .line 283
    if-nez v2, :cond_a

    .line 284
    .line 285
    :cond_9
    const/high16 v1, 0x3f800000    # 1.0f

    .line 286
    :cond_a
    int-to-float v2, v5

    .line 287
    div-float/2addr v2, v1

    .line 288
    float-to-int v2, v2

    .line 289
    int-to-float v3, v9

    .line 290
    div-float/2addr v3, v1

    .line 291
    float-to-int v1, v3

    .line 292
    .line 293
    const/high16 v3, 0x3f000000    # 0.5f

    .line 294
    .line 295
    .line 296
    invoke-static {v0, v2, v1, v3, v3}, Lcom/narvii/util/image/BitmapUtils;->crop(Landroid/graphics/Bitmap;IIFF)Landroid/graphics/Bitmap;

    .line 297
    move-result-object v0

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/BubbleEditView;->updateSlotViews(Lcom/narvii/model/BubbleInfo;)V

    .line 301
    return-object v0
.end method

.method public loseFocus(Lcom/narvii/model/BubbleInfo;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->curFocusedSlot:Lcom/narvii/model/SlotPoint;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/bubble/BubbleEditView;->updateSlotViews(Lcom/narvii/model/BubbleInfo;)V

    .line 7
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0c4c

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    new-instance v2, Lcom/narvii/monetization/bubble/BubbleEditView$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, p0}, Lcom/narvii/monetization/bubble/BubbleEditView$1;-><init>(Lcom/narvii/monetization/bubble/BubbleEditView;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->root:Landroid/widget/RelativeLayout;

    .line 27
    .line 28
    .line 29
    const v0, 0x7f0a0222

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->bubbleBg:Lcom/narvii/widget/NVImageView;

    .line 38
    const/4 v1, 0x0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 42
    return-void
.end method

.method public setListener(Lcom/narvii/monetization/bubble/BubbleEditView$BubbleSlotEditingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->listener:Lcom/narvii/monetization/bubble/BubbleEditView$BubbleSlotEditingListener;

    return-void
.end method

.method public updateEditorView(Lcom/narvii/model/BubbleInfo;)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->imageLoader:Lcom/narvii/util/image/NVImageLoader;

    .line 6
    .line 7
    iget-object v1, p1, Lcom/narvii/model/BubbleInfo;->previewBackgroundUrl:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v2, Lcom/narvii/monetization/bubble/BubbleEditView$3;

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, p0, p1}, Lcom/narvii/monetization/bubble/BubbleEditView$3;-><init>(Lcom/narvii/monetization/bubble/BubbleEditView;Lcom/narvii/model/BubbleInfo;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 16
    return-void
.end method

.method public updateSlotViews(Lcom/narvii/model/BubbleInfo;)V
    .locals 7

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p1, Lcom/narvii/model/BubbleInfo;->allowedSlots:Ljava/util/List;

    .line 6
    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    goto :goto_3

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    .line 17
    :goto_0
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->root:Landroid/widget/RelativeLayout;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    move-result v1

    .line 22
    .line 23
    if-ge v0, v1, :cond_5

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->root:Landroid/widget/RelativeLayout;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    instance-of v2, v1, Lcom/narvii/monetization/bubble/SlotEditView;

    .line 32
    .line 33
    if-eqz v2, :cond_4

    .line 34
    .line 35
    check-cast v1, Lcom/narvii/monetization/bubble/SlotEditView;

    .line 36
    .line 37
    .line 38
    const v2, 0x7f0a0d2a

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    check-cast v2, Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    const v3, 0x7f0a0d2b

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    check-cast v3, Lcom/narvii/model/SlotPoint;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v2}, Lcom/narvii/model/BubbleInfo;->getSlotByPosition(Ljava/lang/String;)Lcom/narvii/model/BubbleSlot;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    iget-object v4, v1, Lcom/narvii/monetization/bubble/SlotEditView;->imgSlot:Lcom/narvii/widget/NVImageView;

    .line 60
    const/4 v5, 0x0

    .line 61
    .line 62
    if-nez v2, :cond_2

    .line 63
    move-object v6, v5

    .line 64
    goto :goto_1

    .line 65
    .line 66
    :cond_2
    iget-object v6, v2, Lcom/narvii/model/BubbleSlot;->path:Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    :goto_1
    invoke-virtual {v4, v6}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 70
    .line 71
    iget-object v4, p0, Lcom/narvii/monetization/bubble/BubbleEditView;->curFocusedSlot:Lcom/narvii/model/SlotPoint;

    .line 72
    .line 73
    .line 74
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    move-result v3

    .line 76
    .line 77
    if-nez v2, :cond_3

    .line 78
    goto :goto_2

    .line 79
    .line 80
    :cond_3
    iget-object v5, v2, Lcom/narvii/model/BubbleSlot;->path:Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    :goto_2
    invoke-virtual {v1, v3, v5}, Lcom/narvii/monetization/bubble/SlotEditView;->updateStatus(ZLjava/lang/String;)V

    .line 84
    .line 85
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 86
    goto :goto_0

    .line 87
    :cond_5
    return-void

    .line 88
    .line 89
    .line 90
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleEditView;->removeAllSlots()V

    .line 91
    return-void
.end method
