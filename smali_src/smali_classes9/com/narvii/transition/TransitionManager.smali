.class public Lcom/narvii/transition/TransitionManager;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/transition/TransitionManager;->startBoundsArray:Landroid/util/SparseArray;

    .line 11
    .line 12
    new-instance v0, Landroid/util/SparseArray;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/transition/TransitionManager;->endBoundsArray:Landroid/util/SparseArray;

    .line 18
    .line 19
    new-instance v0, Landroid/util/SparseArray;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/transition/TransitionManager;->startWindowXArray:Landroid/util/SparseArray;

    .line 25
    .line 26
    new-instance v0, Landroid/util/SparseArray;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/transition/TransitionManager;->startWindowYArray:Landroid/util/SparseArray;

    .line 32
    .line 33
    new-instance v0, Landroid/util/SparseArray;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 37
    .line 38
    iput-object v0, p0, Lcom/narvii/transition/TransitionManager;->endWindowXArray:Landroid/util/SparseArray;

    .line 39
    .line 40
    new-instance v0, Landroid/util/SparseArray;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/transition/TransitionManager;->endWindowYArray:Landroid/util/SparseArray;

    .line 46
    .line 47
    new-instance v0, Landroid/util/SparseArray;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 51
    .line 52
    iput-object v0, p0, Lcom/narvii/transition/TransitionManager;->startTextSizeArray:Landroid/util/SparseArray;

    .line 53
    .line 54
    new-instance v0, Landroid/util/SparseArray;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 58
    .line 59
    iput-object v0, p0, Lcom/narvii/transition/TransitionManager;->endTextSizeArray:Landroid/util/SparseArray;

    .line 60
    .line 61
    new-instance v0, Landroid/util/SparseArray;

    .line 62
    .line 63
    .line 64
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 65
    .line 66
    iput-object v0, p0, Lcom/narvii/transition/TransitionManager;->startLineHeightArray:Landroid/util/SparseArray;

    .line 67
    .line 68
    new-instance v0, Landroid/util/SparseArray;

    .line 69
    .line 70
    .line 71
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 72
    .line 73
    iput-object v0, p0, Lcom/narvii/transition/TransitionManager;->endLineHeightArray:Landroid/util/SparseArray;

    .line 74
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/transition/TransitionManager;->transitionTargetIds:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 25
    move-result v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    instance-of v3, v3, Landroid/view/ViewGroup;

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    const/4 v3, 0x2

    .line 41
    .line 42
    new-array v3, v3, [I

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    check-cast v2, Landroid/view/ViewGroup;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 52
    const/4 v2, 0x0

    .line 53
    .line 54
    aget v2, v3, v2

    .line 55
    .line 56
    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    const/4 v2, 0x1

    .line 63
    .line 64
    aget v2, v3, v2

    .line 65
    .line 66
    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    goto :goto_0

    .line 73
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/transition/TransitionManager;->transitionTargetIds:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 25
    move-result v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    sget v3, Lcom/narvii/lib/R$id;->title:I

    .line 34
    .line 35
    if-ne v1, v3, :cond_2

    .line 36
    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    const-string v4, "capture title:"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v2}, Lcom/narvii/transition/TransitionManager;->getViewRect(Landroid/view/View;)Landroid/graphics/Rect;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    .line 58
    .line 59
    invoke-static {v3}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-direct {p0, v2}, Lcom/narvii/transition/TransitionManager;->getViewRect(Landroid/view/View;)Landroid/graphics/Rect;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    goto :goto_0

    .line 68
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/transition/TransitionManager;->transitionTargetIds:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 25
    move-result v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    instance-of v3, v2, Landroid/widget/TextView;

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    check-cast v2, Landroid/widget/TextView;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/widget/TextView;->getLineHeight()I

    .line 39
    move-result v2

    .line 40
    .line 41
    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    return-void
.end method

.method private getCurrentBounds(IF)Landroid/graphics/Rect;
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/transition/TransitionManager;->startBoundsArray:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/graphics/Rect;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/transition/TransitionManager;->startWindowXArray:Landroid/util/SparseArray;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result v1

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/transition/TransitionManager;->startWindowYArray:Landroid/util/SparseArray;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    check-cast v2, Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result v2

    .line 33
    .line 34
    iget-object v3, p0, Lcom/narvii/transition/TransitionManager;->endWindowXArray:Landroid/util/SparseArray;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    check-cast v3, Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 44
    move-result v3

    .line 45
    .line 46
    iget-object v4, p0, Lcom/narvii/transition/TransitionManager;->endWindowYArray:Landroid/util/SparseArray;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v4

    .line 51
    .line 52
    check-cast v4, Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 56
    move-result v4

    .line 57
    .line 58
    iget-object v5, p0, Lcom/narvii/transition/TransitionManager;->endBoundsArray:Landroid/util/SparseArray;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    check-cast p1, Landroid/graphics/Rect;

    .line 65
    .line 66
    new-instance v5, Landroid/graphics/Rect;

    .line 67
    .line 68
    .line 69
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 70
    .line 71
    iget v6, p1, Landroid/graphics/Rect;->left:I

    .line 72
    add-int/2addr v3, v6

    .line 73
    .line 74
    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 75
    add-int/2addr v1, v7

    .line 76
    sub-int/2addr v3, v1

    .line 77
    sub-int/2addr v6, v3

    .line 78
    .line 79
    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 80
    .line 81
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 82
    add-int/2addr v4, v1

    .line 83
    .line 84
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 85
    add-int/2addr v2, v3

    .line 86
    sub-int/2addr v4, v2

    .line 87
    sub-int/2addr v1, v4

    .line 88
    .line 89
    iput v1, v5, Landroid/graphics/Rect;->top:I

    .line 90
    .line 91
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 92
    .line 93
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 94
    sub-int/2addr v2, v3

    .line 95
    add-int/2addr v6, v2

    .line 96
    .line 97
    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 98
    .line 99
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 100
    .line 101
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 102
    sub-int/2addr v2, v0

    .line 103
    add-int/2addr v1, v2

    .line 104
    .line 105
    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    .line 106
    .line 107
    new-instance v0, Landroid/graphics/Rect;

    .line 108
    .line 109
    .line 110
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 111
    .line 112
    iget v1, v5, Landroid/graphics/Rect;->left:I

    .line 113
    int-to-float v2, v1

    .line 114
    .line 115
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 116
    sub-int/2addr v3, v1

    .line 117
    int-to-float v1, v3

    .line 118
    mul-float/2addr v1, p2

    .line 119
    add-float/2addr v2, v1

    .line 120
    float-to-int v1, v2

    .line 121
    .line 122
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 123
    .line 124
    iget v1, v5, Landroid/graphics/Rect;->right:I

    .line 125
    int-to-float v2, v1

    .line 126
    .line 127
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 128
    sub-int/2addr v3, v1

    .line 129
    int-to-float v1, v3

    .line 130
    mul-float/2addr v1, p2

    .line 131
    add-float/2addr v2, v1

    .line 132
    float-to-int v1, v2

    .line 133
    .line 134
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 135
    .line 136
    iget v1, v5, Landroid/graphics/Rect;->top:I

    .line 137
    int-to-float v2, v1

    .line 138
    .line 139
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 140
    sub-int/2addr v3, v1

    .line 141
    int-to-float v1, v3

    .line 142
    mul-float/2addr v1, p2

    .line 143
    add-float/2addr v2, v1

    .line 144
    float-to-int v1, v2

    .line 145
    .line 146
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 147
    .line 148
    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    .line 149
    int-to-float v2, v1

    .line 150
    .line 151
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 152
    sub-int/2addr p1, v1

    .line 153
    int-to-float p1, p1

    .line 154
    mul-float/2addr p1, p2

    .line 155
    add-float/2addr v2, p1

    .line 156
    float-to-int p1, v2

    .line 157
    .line 158
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 159
    return-object v0
.end method

.method private getViewRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 10
    move-result v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 14
    move-result v3

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 18
    move-result p1

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 22
    return-object v0
.end method


# virtual methods
.method public animateViews(Landroid/view/View;F)V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/transition/TransitionManager;->transitionTargetIds:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 25
    move-result v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v1, p2}, Lcom/narvii/transition/TransitionManager;->getCurrentBounds(IF)Landroid/graphics/Rect;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    instance-of v3, v2, Landroid/widget/TextView;

    .line 38
    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 42
    int-to-float v3, v3

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 46
    move-result v4

    .line 47
    int-to-float v4, v4

    .line 48
    .line 49
    const/high16 v5, 0x40000000    # 2.0f

    .line 50
    div-float/2addr v4, v5

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    .line 54
    move-result v6

    .line 55
    .line 56
    const/high16 v7, 0x3f800000    # 1.0f

    .line 57
    .line 58
    sub-float v6, v7, v6

    .line 59
    mul-float/2addr v4, v6

    .line 60
    sub-float/2addr v3, v4

    .line 61
    float-to-int v3, v3

    .line 62
    .line 63
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 64
    int-to-float v1, v1

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 68
    move-result v4

    .line 69
    int-to-float v4, v4

    .line 70
    div-float/2addr v4, v5

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    .line 74
    move-result v5

    .line 75
    sub-float/2addr v7, v5

    .line 76
    mul-float/2addr v4, v7

    .line 77
    sub-float/2addr v1, v4

    .line 78
    float-to-int v1, v1

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 82
    move-result v4

    .line 83
    add-int/2addr v4, v3

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 87
    move-result v5

    .line 88
    add-int/2addr v5, v1

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 92
    goto :goto_0

    .line 93
    .line 94
    :cond_2
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 95
    .line 96
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 97
    .line 98
    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 99
    .line 100
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/view/View;->layout(IIII)V

    .line 104
    goto :goto_0

    .line 105
    :cond_3
    return-void
.end method

.method public captureEndTextSize(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/transition/TransitionManager;->endLineHeightArray:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lcom/narvii/transition/TransitionManager;->captureTextScale(Landroid/view/View;Landroid/util/SparseArray;)V

    .line 6
    return-void
.end method

.method public captureEndValues(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/transition/TransitionManager;->endBoundsArray:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lcom/narvii/transition/TransitionManager;->captureRect(Landroid/view/View;Landroid/util/SparseArray;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/transition/TransitionManager;->endWindowXArray:Landroid/util/SparseArray;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/transition/TransitionManager;->endWindowYArray:Landroid/util/SparseArray;

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1, v0, v1}, Lcom/narvii/transition/TransitionManager;->captureLocation(Landroid/view/View;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 13
    const/4 p1, 0x0

    .line 14
    .line 15
    iput-boolean p1, p0, Lcom/narvii/transition/TransitionManager;->waitingLayout:Z

    .line 16
    return-void
.end method

.method public captureStartValues(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/transition/TransitionManager;->startBoundsArray:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lcom/narvii/transition/TransitionManager;->captureRect(Landroid/view/View;Landroid/util/SparseArray;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/transition/TransitionManager;->startLineHeightArray:Landroid/util/SparseArray;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, v0}, Lcom/narvii/transition/TransitionManager;->captureTextScale(Landroid/view/View;Landroid/util/SparseArray;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/transition/TransitionManager;->startWindowXArray:Landroid/util/SparseArray;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/transition/TransitionManager;->startWindowYArray:Landroid/util/SparseArray;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1, v0, v1}, Lcom/narvii/transition/TransitionManager;->captureLocation(Landroid/view/View;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 18
    const/4 p1, 0x1

    .line 19
    .line 20
    iput-boolean p1, p0, Lcom/narvii/transition/TransitionManager;->waitingLayout:Z

    .line 21
    return-void
.end method

.method public changeTextViewScale(Landroid/view/View;F)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/transition/TransitionManager;->transitionTargetIds:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 25
    move-result v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    instance-of v3, v2, Landroid/widget/TextView;

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    iget-object v3, p0, Lcom/narvii/transition/TransitionManager;->startLineHeightArray:Landroid/util/SparseArray;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    check-cast v3, Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 47
    move-result v3

    .line 48
    int-to-float v3, v3

    .line 49
    .line 50
    const/high16 v4, 0x3f800000    # 1.0f

    .line 51
    mul-float/2addr v3, v4

    .line 52
    .line 53
    iget-object v5, p0, Lcom/narvii/transition/TransitionManager;->endLineHeightArray:Landroid/util/SparseArray;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    check-cast v1, Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 63
    move-result v1

    .line 64
    int-to-float v1, v1

    .line 65
    div-float/2addr v3, v1

    .line 66
    sub-float/2addr v4, v3

    .line 67
    mul-float/2addr v4, p2

    .line 68
    add-float/2addr v3, v4

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    return-void
.end method

.method public measureMatchParentViews(Landroid/view/View;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/transition/TransitionManager;->matchParentIds:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 32
    move-result v2

    .line 33
    .line 34
    const/high16 v3, 0x40000000    # 2.0f

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 38
    move-result v2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 42
    move-result v4

    .line 43
    .line 44
    .line 45
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 46
    move-result v3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 50
    goto :goto_0

    .line 51
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

    iput-object p1, p0, Lcom/narvii/transition/TransitionManager;->transitionTargetIds:Ljava/util/List;

    return-void
.end method
