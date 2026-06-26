.class public Lcom/narvii/widget/cofetti/CofettiView;
.super Landroid/view/View;
.source "CofettiView.java"


# instance fields
.field density:F

.field density2:F

.field drawStarted:Z

.field paint:Landroid/graphics/Paint;

.field particals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/widget/cofetti/CofettiPartical;",
            ">;"
        }
    .end annotation
.end field

.field random:Ljava/util/Random;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/cofetti/CofettiView;->particals:Ljava/util/List;

    .line 29
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/cofetti/CofettiView;->random:Ljava/util/Random;

    .line 30
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/cofetti/CofettiView;->paint:Landroid/graphics/Paint;

    .line 31
    iget-object p1, p0, Lcom/narvii/widget/cofetti/CofettiView;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    iget-object p1, p0, Lcom/narvii/widget/cofetti/CofettiView;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/narvii/widget/cofetti/CofettiView;->density:F

    .line 34
    iget p1, p0, Lcom/narvii/widget/cofetti/CofettiView;->density:F

    mul-float p1, p1, p1

    iput p1, p0, Lcom/narvii/widget/cofetti/CofettiView;->density2:F

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/cofetti/CofettiView;->particals:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/narvii/widget/cofetti/CofettiView;->particals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public fire()V
    .locals 1

    const/16 v0, 0x1f4

    .line 43
    invoke-virtual {p0, v0}, Lcom/narvii/widget/cofetti/CofettiView;->fire(I)V

    return-void
.end method

.method public fire(I)V
    .locals 10

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 48
    new-instance v8, Lcom/narvii/widget/cofetti/CofettiPartical;

    invoke-direct {v8}, Lcom/narvii/widget/cofetti/CofettiPartical;-><init>()V

    .line 49
    iget-object v2, p0, Lcom/narvii/widget/cofetti/CofettiView;->random:Ljava/util/Random;

    const/high16 v1, 0x41f00000    # 30.0f

    iget v3, p0, Lcom/narvii/widget/cofetti/CofettiView;->density2:F

    mul-float v4, v3, v1

    const/high16 v1, 0x42f00000    # 120.0f

    mul-float v5, v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v9, p0, Lcom/narvii/widget/cofetti/CofettiView;->density:F

    move-object v1, v8

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v9

    invoke-virtual/range {v1 .. v7}, Lcom/narvii/widget/cofetti/CofettiPartical;->reset(Ljava/util/Random;FFIIF)V

    .line 50
    iget-object v1, p0, Lcom/narvii/widget/cofetti/CofettiView;->particals:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 57
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 59
    iget-object v0, p0, Lcom/narvii/widget/cofetti/CofettiView;->particals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 60
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v7

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 63
    iget-object v1, p0, Lcom/narvii/widget/cofetti/CofettiView;->particals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/cofetti/CofettiPartical;

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 66
    iget-object v5, p0, Lcom/narvii/widget/cofetti/CofettiView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move-wide v3, v7

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/narvii/widget/cofetti/CofettiPartical;->draw(Landroid/graphics/Canvas;JLandroid/graphics/Paint;I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v11, v11, 0x1

    .line 70
    :cond_0
    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_1
    if-nez v11, :cond_3

    .line 74
    iget-boolean p1, p0, Lcom/narvii/widget/cofetti/CofettiView;->drawStarted:Z

    if-eqz p1, :cond_2

    .line 75
    iget-object p1, p0, Lcom/narvii/widget/cofetti/CofettiView;->particals:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 76
    iput-boolean v10, p0, Lcom/narvii/widget/cofetti/CofettiView;->drawStarted:Z

    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 82
    :cond_3
    iget-boolean p1, p0, Lcom/narvii/widget/cofetti/CofettiView;->drawStarted:Z

    if-nez p1, :cond_4

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lcom/narvii/widget/cofetti/CofettiView;->drawStarted:Z

    .line 86
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    :goto_1
    return-void
.end method
