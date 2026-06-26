.class public Lcom/narvii/feed/quizzes/HeaderLayout;
.super Landroid/widget/RelativeLayout;
.source "HeaderLayout.java"


# static fields
.field private static final ICON_FINAL_SIZE:I = 0x1e

.field private static final ICON_INIT_SIZE:I = 0x3c


# instance fields
.field private actionbarSize:I

.field private allOverlayHeight:F

.field private baseOverlayHeight:F

.field private finalIconLeft:F

.field private finalIconSize:I

.field private finalTextSize:I

.field private finalTitleWidth:F

.field private iconTextMargin:F

.field infoHint:Landroid/widget/TextView;

.field infoIcon:Landroid/widget/ImageView;

.field infoLayout:Landroid/view/View;

.field infoTitle:Landroid/widget/TextView;

.field private infoTitleContainer:Landroid/view/View;

.field private initIconLeft:F

.field private initIconSize:I

.field private initTextSize:I

.field private initTilteWidth:F

.field private statusBarSize:I

.field private tabOverlayHeight:F

.field private titlePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/narvii/feed/quizzes/HeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/feed/quizzes/HeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/HeaderLayout;->initView()V

    return-void
.end method

.method private initView()V
    .locals 5

    .line 74
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    move-result v0

    iput v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->statusBarSize:I

    .line 75
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    move-result v0

    iput v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->actionbarSize:I

    .line 77
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07023b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->allOverlayHeight:F

    .line 78
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07023c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->tabOverlayHeight:F

    .line 79
    iget v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->tabOverlayHeight:F

    iget v1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->statusBarSize:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->actionbarSize:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->baseOverlayHeight:F

    .line 81
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->initIconSize:I

    .line 82
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->finalIconSize:I

    const/16 v0, 0x18

    .line 83
    iput v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->finalTextSize:I

    .line 84
    iput v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->initTextSize:I

    .line 85
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->iconTextMargin:F

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->titlePaint:Landroid/graphics/Paint;

    .line 88
    iget-object v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->finalTextSize:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 89
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    iput v1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->finalTitleWidth:F

    .line 92
    iget-object v1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->initTextSize:I

    int-to-float v4, v4

    invoke-static {v2, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 93
    iget-object v1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->titlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    iput v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->initTilteWidth:F

    .line 95
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->initIconLeft:F

    .line 97
    invoke-direct {p0}, Lcom/narvii/feed/quizzes/HeaderLayout;->parentLayoutWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->initIconSize:I

    int-to-float v2, v2

    iget v3, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->finalTitleWidth:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->iconTextMargin:F

    add-float/2addr v2, v3

    .line 98
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->finalIconLeft:F

    return-void
.end method

.method private parentLayoutWidth()I
    .locals 2

    .line 183
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 184
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 185
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 186
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 187
    iget v0, v1, Landroid/graphics/Point;->x:I

    return v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 103
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f09059d

    .line 105
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoIcon:Landroid/widget/ImageView;

    const v0, 0x7f09059e

    .line 106
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoTitle:Landroid/widget/TextView;

    const v0, 0x7f09059c

    .line 107
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoHint:Landroid/widget/TextView;

    const v0, 0x7f09080c

    .line 109
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoLayout:Landroid/view/View;

    const v0, 0x7f09059f

    .line 110
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoTitleContainer:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 115
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 116
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    .line 117
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p2

    .line 119
    iget p3, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->allOverlayHeight:F

    iget p4, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->baseOverlayHeight:F

    cmpl-float p5, p3, p4

    if-nez p5, :cond_0

    return-void

    :cond_0
    int-to-float p5, p1

    sub-float v0, p5, p4

    sub-float/2addr p3, p4

    div-float/2addr v0, p3

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float p4, p3, v0

    const/4 v0, 0x0

    cmpg-float v1, p4, v0

    if-gez v1, :cond_1

    const/4 p4, 0x0

    :cond_1
    cmpl-float v1, p4, p3

    if-lez v1, :cond_2

    const/high16 p4, 0x3f800000    # 1.0f

    .line 123
    :cond_2
    iget v1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->initIconSize:I

    int-to-float v2, v1

    iget v3, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->finalIconSize:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float v1, v1, p4

    sub-float/2addr v2, v1

    .line 124
    iget v1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->initTextSize:I

    int-to-float v4, v1

    iget v5, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->finalTextSize:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    mul-float v1, v1, p4

    sub-float/2addr v4, v1

    int-to-float v1, v3

    cmpg-float v1, v2, v1

    .line 129
    iget v1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->finalTextSize:I

    int-to-float v2, v1

    cmpg-float v2, v4, v2

    if-gez v2, :cond_3

    int-to-float v4, v1

    .line 133
    :cond_3
    iget-object v1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    .line 134
    iget-object v1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 136
    iget v2, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->initIconLeft:F

    iget v3, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->finalIconLeft:F

    sub-float v3, v2, v3

    mul-float v3, v3, p4

    sub-float/2addr v2, v3

    add-float v3, v2, v1

    .line 137
    iget v5, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->iconTextMargin:F

    sub-float v6, p3, p4

    mul-float v5, v5, v6

    add-float/2addr v3, v5

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v5, v7}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v5

    mul-float v5, v5, p4

    sub-float/2addr v3, v5

    if-eqz p2, :cond_4

    .line 140
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->initIconLeft:F

    sub-float/2addr v2, v3

    iget v5, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->finalIconLeft:F

    sub-float/2addr v3, v5

    mul-float v3, v3, p4

    add-float/2addr v2, v3

    sub-float/2addr v2, v1

    .line 141
    iget v3, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->iconTextMargin:F

    mul-float v3, v3, v6

    sub-float v3, v2, v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v5

    mul-float v5, v5, p4

    add-float/2addr v3, v5

    .line 144
    :cond_4
    iget-object v5, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoTitle:Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v4, 0x0

    if-eqz p2, :cond_5

    .line 147
    iget-object p2, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoIcon:Landroid/widget/ImageView;

    float-to-int v5, v2

    iget-object v6, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoLayout:Landroid/view/View;

    .line 148
    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    iget v8, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->statusBarSize:I

    add-int/2addr v6, v8

    int-to-float v6, v6

    add-float/2addr v6, p4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, v7}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p4

    add-float/2addr v6, p4

    float-to-int p4, v6

    add-float/2addr v2, v1

    float-to-int v1, v2

    iget-object v2, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoLayout:Landroid/view/View;

    .line 150
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int v2, p1, v2

    int-to-float v2, v2

    iget v6, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->tabOverlayHeight:F

    sub-float/2addr v2, v6

    float-to-int v2, v2

    .line 147
    invoke-virtual {p2, v5, p4, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 151
    iget-object p2, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoTitleContainer:Landroid/view/View;

    iget-object p4, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoLayout:Landroid/view/View;

    .line 152
    invoke-virtual {p4}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    iget v1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->statusBarSize:I

    add-int/2addr p4, v1

    float-to-int v1, v3

    iget-object v2, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoLayout:Landroid/view/View;

    .line 154
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr p1, v2

    int-to-float p1, p1

    iget v2, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->tabOverlayHeight:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    .line 151
    invoke-virtual {p2, v4, p4, v1, p1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 156
    :cond_5
    iget-object p2, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoIcon:Landroid/widget/ImageView;

    float-to-int v5, v2

    iget-object v6, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoLayout:Landroid/view/View;

    .line 157
    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    iget v8, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->statusBarSize:I

    add-int/2addr v6, v8

    int-to-float v6, v6

    add-float/2addr v6, p4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, v7}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p4

    add-float/2addr v6, p4

    float-to-int p4, v6

    add-float/2addr v2, v1

    float-to-int v1, v2

    iget-object v2, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoLayout:Landroid/view/View;

    .line 159
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int v2, p1, v2

    int-to-float v2, v2

    iget v6, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->tabOverlayHeight:F

    sub-float/2addr v2, v6

    float-to-int v2, v2

    .line 156
    invoke-virtual {p2, v5, p4, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 160
    iget-object p2, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoTitleContainer:Landroid/view/View;

    float-to-int p4, v3

    iget-object v1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->statusBarSize:I

    add-int/2addr v1, v2

    .line 161
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoTitleContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoLayout:Landroid/view/View;

    .line 162
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr p1, v3

    int-to-float p1, p1

    iget v3, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->tabOverlayHeight:F

    sub-float/2addr p1, v3

    float-to-int p1, p1

    .line 160
    invoke-virtual {p2, p4, v1, v2, p1}, Landroid/view/View;->layout(IIII)V

    .line 166
    :goto_0
    iget p1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->baseOverlayHeight:F

    iget p2, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->allOverlayHeight:F

    add-float/2addr p1, p2

    div-float/2addr p1, v7

    add-float p4, p1, p2

    div-float/2addr p4, v7

    cmpg-float v1, p5, p1

    if-gtz v1, :cond_6

    .line 170
    iget-object p1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoHint:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 171
    iget-object p1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoHint:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    cmpl-float p4, p5, p4

    if-ltz p4, :cond_7

    .line 173
    iget-object p1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoHint:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object p1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoHint:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1

    :cond_7
    sub-float/2addr p5, p1

    sub-float/2addr p2, p1

    div-float/2addr p5, p2

    .line 177
    iget-object p1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoHint:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object p1, p0, Lcom/narvii/feed/quizzes/HeaderLayout;->infoHint:Landroid/widget/TextView;

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_1
    return-void
.end method
