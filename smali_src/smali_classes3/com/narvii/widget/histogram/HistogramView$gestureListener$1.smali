.class public final Lcom/narvii/widget/histogram/HistogramView$gestureListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/histogram/HistogramView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/histogram/HistogramView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/histogram/HistogramView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/histogram/HistogramView$gestureListener$1;->this$0:Lcom/narvii/widget/histogram/HistogramView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "e"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 9
    move-result v0

    .line 10
    float-to-int v0, v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 14
    move-result p1

    .line 15
    float-to-int p1, p1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/widget/histogram/HistogramView$gestureListener$1;->this$0:Lcom/narvii/widget/histogram/HistogramView;

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lcom/narvii/widget/histogram/HistogramView;->access$getItemConfigs$p(Lcom/narvii/widget/histogram/HistogramView;)Ljava/util/ArrayList;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x1

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    add-int/lit8 v3, v2, 0x1

    .line 36
    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v5

    .line 40
    .line 41
    check-cast v5, Lcom/narvii/widget/histogram/HistogramItemConfig;

    .line 42
    .line 43
    if-eqz v5, :cond_1

    .line 44
    .line 45
    iget-object v6, p0, Lcom/narvii/widget/histogram/HistogramView$gestureListener$1;->this$0:Lcom/narvii/widget/histogram/HistogramView;

    .line 46
    .line 47
    iget-object v7, v5, Lcom/narvii/widget/histogram/HistogramItemConfig;->displayRect:Landroid/graphics/Rect;

    .line 48
    .line 49
    if-eqz v7, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v7, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    .line 53
    move-result v7

    .line 54
    .line 55
    if-ne v7, v4, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-static {v6, v2}, Lcom/narvii/widget/histogram/HistogramView;->access$setSelectedIndex$p(Lcom/narvii/widget/histogram/HistogramView;I)V

    .line 59
    .line 60
    .line 61
    invoke-static {v6}, Lcom/narvii/widget/histogram/HistogramView;->access$getOnItemClickListeners(Lcom/narvii/widget/histogram/HistogramView;)Ljava/util/ArrayList;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    move-result v0

    .line 71
    .line 72
    if-eqz v0, :cond_0

    .line 73
    .line 74
    .line 75
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    check-cast v0, Lcom/narvii/widget/histogram/OnItemClickListener;

    .line 79
    .line 80
    iget-wide v7, v5, Lcom/narvii/widget/histogram/HistogramItemConfig;->totalValue:D

    .line 81
    .line 82
    iget-object v1, v5, Lcom/narvii/widget/histogram/HistogramItemConfig;->displayRect:Landroid/graphics/Rect;

    .line 83
    .line 84
    const-string v3, "displayRect"

    .line 85
    .line 86
    .line 87
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {v0, v7, v8, v1, v2}, Lcom/narvii/widget/histogram/OnItemClickListener;->onItemClick(DLandroid/graphics/Rect;I)V

    .line 91
    goto :goto_1

    .line 92
    .line 93
    .line 94
    :cond_0
    invoke-virtual {v6}, Lcom/narvii/widget/histogram/HistogramView;->invalidate()V

    .line 95
    return v4

    .line 96
    :cond_1
    move v2, v3

    .line 97
    goto :goto_0

    .line 98
    .line 99
    :cond_2
    iget-object p1, p0, Lcom/narvii/widget/histogram/HistogramView$gestureListener$1;->this$0:Lcom/narvii/widget/histogram/HistogramView;

    .line 100
    const/4 v0, -0x1

    .line 101
    .line 102
    .line 103
    invoke-static {p1, v0}, Lcom/narvii/widget/histogram/HistogramView;->access$setSelectedIndex$p(Lcom/narvii/widget/histogram/HistogramView;I)V

    .line 104
    .line 105
    iget-object p1, p0, Lcom/narvii/widget/histogram/HistogramView$gestureListener$1;->this$0:Lcom/narvii/widget/histogram/HistogramView;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/narvii/widget/histogram/HistogramView;->invalidate()V

    .line 109
    return v4
.end method
