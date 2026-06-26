.class public Lcom/narvii/transition/TransitionManager;
.super Ljava/lang/Object;
.source "TransitionManager.java"


# instance fields
.field protected endBoundsArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field protected endLineHeightArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected endTextSizeArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected endWindowXArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected endWindowYArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private matchParentIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected startBoundsArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field protected startLineHeightArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected startTextSizeArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected startWindowXArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected startWindowYArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected transitionTargetIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected waitingLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/transition/TransitionManager;->startBoundsArray:Landroid/util/SparseArray;

    .line 26
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/transition/TransitionManager;->endBoundsArray:Landroid/util/SparseArray;

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/transition/TransitionManager;->startWindowXArray:Landroid/util/SparseArray;

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/transition/TransitionManager;->startWindowYArray:Landroid/util/SparseArray;

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/transition/TransitionManager;->endWindowXArray:Landroid/util/SparseArray;

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/transition/TransitionManager;->endWindowYArray:Landroid/util/SparseArray;

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/transition/TransitionManager;->startTextSizeArray:Landroid/util/SparseArray;

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/transition/TransitionManager;->endTextSizeArray:Landroid/util/SparseArray;

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/transition/TransitionManager;->startLineHeightArray:Landroid/util/SparseArray;

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/transition/TransitionManager;->endLineHeightArray:Landroid/util/SparseArray;

    return-void
.end method

.method private captureLocation(Landroid/view/View;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/narvii/transition/TransitionManager;->transitionTargetIds:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 93
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 97
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    const/4 v2, 0x0

    .line 98
    aget v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x1

    .line 99
    aget v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private captureRect(Landroid/view/View;Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/narvii/transition/TransitionManager;->transitionTargetIds:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 111
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 113
    sget v3, Lcom/narvii/lib/R$id;->title:I

    if-ne v1, v3, :cond_2

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capture title:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/narvii/transition/TransitionManager;->getViewRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 116
    :cond_2
    invoke-direct {p0, v2}, Lcom/narvii/transition/TransitionManager;->getViewRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private captureTextScale(Landroid/view/View;Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/narvii/transition/TransitionManager;->transitionTargetIds:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 70
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 71
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 72
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getCurrentBounds(IF)Landroid/graphics/Rect;
    .locals 8

    .line 173
    iget-object v0, p0, Lcom/narvii/transition/TransitionManager;->startBoundsArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 174
    iget-object v1, p0, Lcom/narvii/transition/TransitionManager;->startWindowXArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 175
    iget-object v2, p0, Lcom/narvii/transition/TransitionManager;->startWindowYArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 176
    iget-object v3, p0, Lcom/narvii/transition/TransitionManager;->endWindowXArray:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 177
    iget-object v4, p0, Lcom/narvii/transition/TransitionManager;->endWindowYArray:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 178
    iget-object v5, p0, Lcom/narvii/transition/TransitionManager;->endBoundsArray:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 179
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 180
    iget v6, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    iget v7, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v7

    sub-int/2addr v3, v1

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 181
    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    sub-int/2addr v4, v2

    sub-int/2addr v1, v4

    iput v1, v5, Landroid/graphics/Rect;->top:I

    .line 182
    iget v1, v5, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v5, Landroid/graphics/Rect;->right:I

    .line 183
    iget v1, v5, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    .line 185
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 187
    iget v1, v5, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float v1, v1, p2

    add-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 188
    iget v1, v5, Landroid/graphics/Rect;->right:I

    int-to-float v2, v1

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float v1, v1, p2

    add-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 189
    iget v1, v5, Landroid/graphics/Rect;->top:I

    int-to-float v2, v1

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float v1, v1, p2

    add-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 190
    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr v2, p1

    float-to-int p1, v2

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method private getViewRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    .line 122
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method public animateViews(Landroid/view/View;F)V
    .locals 8

    .line 154
    iget-object v0, p0, Lcom/narvii/transition/TransitionManager;->transitionTargetIds:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 158
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 160
    invoke-direct {p0, v1, p2}, Lcom/narvii/transition/TransitionManager;->getCurrentBounds(IF)Landroid/graphics/Rect;

    move-result-object v1

    .line 161
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 162
    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    mul-float v4, v4, v6

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 163
    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v5

    sub-float/2addr v7, v5

    mul-float v4, v4, v7

    sub-float/2addr v1, v4

    float-to-int v1, v1

    .line 164
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 166
    :cond_2
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public captureEndTextSize(Landroid/view/View;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/narvii/transition/TransitionManager;->endLineHeightArray:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v0}, Lcom/narvii/transition/TransitionManager;->captureTextScale(Landroid/view/View;Landroid/util/SparseArray;)V

    return-void
.end method

.method public captureEndValues(Landroid/view/View;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/narvii/transition/TransitionManager;->endBoundsArray:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v0}, Lcom/narvii/transition/TransitionManager;->captureRect(Landroid/view/View;Landroid/util/SparseArray;)V

    .line 128
    iget-object v0, p0, Lcom/narvii/transition/TransitionManager;->endWindowXArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/narvii/transition/TransitionManager;->endWindowYArray:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v0, v1}, Lcom/narvii/transition/TransitionManager;->captureLocation(Landroid/view/View;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    const/4 p1, 0x0

    .line 129
    iput-boolean p1, p0, Lcom/narvii/transition/TransitionManager;->waitingLayout:Z

    return-void
.end method

.method public captureStartValues(Landroid/view/View;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/narvii/transition/TransitionManager;->startBoundsArray:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v0}, Lcom/narvii/transition/TransitionManager;->captureRect(Landroid/view/View;Landroid/util/SparseArray;)V

    .line 56
    iget-object v0, p0, Lcom/narvii/transition/TransitionManager;->startLineHeightArray:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v0}, Lcom/narvii/transition/TransitionManager;->captureTextScale(Landroid/view/View;Landroid/util/SparseArray;)V

    .line 57
    iget-object v0, p0, Lcom/narvii/transition/TransitionManager;->startWindowXArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/narvii/transition/TransitionManager;->startWindowYArray:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v0, v1}, Lcom/narvii/transition/TransitionManager;->captureLocation(Landroid/view/View;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/narvii/transition/TransitionManager;->waitingLayout:Z

    return-void
.end method

.method public changeTextViewScale(Landroid/view/View;F)V
    .locals 6

    .line 133
    iget-object v0, p0, Lcom/narvii/transition/TransitionManager;->transitionTargetIds:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 137
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 139
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 142
    iget-object v3, p0, Lcom/narvii/transition/TransitionManager;->startLineHeightArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v3, v3, v4

    iget-object v5, p0, Lcom/narvii/transition/TransitionManager;->endLineHeightArray:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v3, v1

    sub-float/2addr v4, v3

    mul-float v4, v4, p2

    add-float/2addr v3, v4

    .line 146
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 147
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public measureMatchParentViews(Landroid/view/View;)V
    .locals 5

    .line 78
    iget-object v0, p0, Lcom/narvii/transition/TransitionManager;->matchParentIds:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 80
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 83
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMatchParentIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/narvii/transition/TransitionManager;->matchParentIds:Ljava/util/List;

    return-void
.end method

.method public setTransitionTargetIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/narvii/transition/TransitionManager;->transitionTargetIds:Ljava/util/List;

    return-void
.end method
