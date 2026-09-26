.class public Lcom/narvii/widget/cofetti/CofettiView;
.super Landroid/view/View;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/widget/cofetti/CofettiView;->particals:Ljava/util/List;

    .line 11
    .line 12
    new-instance p1, Ljava/util/Random;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/widget/cofetti/CofettiView;->random:Ljava/util/Random;

    .line 18
    .line 19
    new-instance p1, Landroid/graphics/Paint;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/widget/cofetti/CofettiView;->paint:Landroid/graphics/Paint;

    .line 25
    const/4 p2, 0x1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/widget/cofetti/CofettiView;->paint:Landroid/graphics/Paint;

    .line 31
    .line 32
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 46
    .line 47
    iput p1, p0, Lcom/narvii/widget/cofetti/CofettiView;->density:F

    .line 48
    mul-float/2addr p1, p1

    .line 49
    .line 50
    iput p1, p0, Lcom/narvii/widget/cofetti/CofettiView;->density2:F

    .line 51
    .line 52
    new-instance p1, Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    iput-object p1, p0, Lcom/narvii/widget/cofetti/CofettiView;->particals:Ljava/util/List;

    .line 58
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/cofetti/CofettiView;->particals:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    return-void
.end method

.method public fire()V
    .locals 1

    const/16 v0, 0x1f4

    .line 1
    invoke-virtual {p0, v0}, Lcom/narvii/widget/cofetti/CofettiView;->fire(I)V

    return-void
.end method

.method public fire(I)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 2
    new-instance v8, Lcom/narvii/widget/cofetti/CofettiPartical;

    invoke-direct {v8}, Lcom/narvii/widget/cofetti/CofettiPartical;-><init>()V

    iget-object v2, p0, Lcom/narvii/widget/cofetti/CofettiView;->random:Ljava/util/Random;

    iget v1, p0, Lcom/narvii/widget/cofetti/CofettiView;->density2:F

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float/2addr v3, v1

    const/high16 v4, 0x42f00000    # 120.0f

    mul-float/2addr v4, v1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/narvii/widget/cofetti/CofettiView;->density:F

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Lcom/narvii/widget/cofetti/CofettiPartical;->reset(Ljava/util/Random;FFIIF)V

    iget-object v1, p0, Lcom/narvii/widget/cofetti/CofettiView;->particals:Ljava/util/List;

    .line 4
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/cofetti/CofettiView;->particals:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-lez v0, :cond_5

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 15
    move-result-wide v7

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 19
    move-result v0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/widget/cofetti/CofettiView;->particals:Ljava/util/List;

    .line 22
    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v9

    .line 26
    const/4 v10, 0x0

    .line 27
    move v11, v10

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    check-cast v1, Lcom/narvii/widget/cofetti/CofettiPartical;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 43
    move-result v12

    .line 44
    .line 45
    iget-object v5, p0, Lcom/narvii/widget/cofetti/CofettiView;->paint:Landroid/graphics/Paint;

    .line 46
    move-object v2, p1

    .line 47
    move-wide v3, v7

    .line 48
    move v6, v0

    .line 49
    .line 50
    .line 51
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/widget/cofetti/CofettiPartical;->draw(Landroid/graphics/Canvas;JLandroid/graphics/Paint;I)Z

    .line 52
    move-result v1

    .line 53
    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    add-int/lit8 v11, v11, 0x1

    .line 57
    .line 58
    .line 59
    :cond_0
    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_1
    if-nez v11, :cond_3

    .line 63
    .line 64
    iget-boolean p1, p0, Lcom/narvii/widget/cofetti/CofettiView;->drawStarted:Z

    .line 65
    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    iget-object p1, p0, Lcom/narvii/widget/cofetti/CofettiView;->particals:Ljava/util/List;

    .line 69
    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 72
    .line 73
    iput-boolean v10, p0, Lcom/narvii/widget/cofetti/CofettiView;->drawStarted:Z

    .line 74
    goto :goto_1

    .line 75
    .line 76
    .line 77
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 78
    goto :goto_1

    .line 79
    .line 80
    :cond_3
    iget-boolean p1, p0, Lcom/narvii/widget/cofetti/CofettiView;->drawStarted:Z

    .line 81
    .line 82
    if-nez p1, :cond_4

    .line 83
    const/4 p1, 0x1

    .line 84
    .line 85
    iput-boolean p1, p0, Lcom/narvii/widget/cofetti/CofettiView;->drawStarted:Z

    .line 86
    .line 87
    .line 88
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 89
    :cond_5
    :goto_1
    return-void
.end method
