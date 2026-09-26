.class public final Lcom/narvii/widget/DraggableFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDraggableFrameLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DraggableFrameLayout.kt\ncom/narvii/widget/DraggableFrameLayout\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,123:1\n1549#2:124\n1620#2,3:125\n1#3:128\n*S KotlinDebug\n*F\n+ 1 DraggableFrameLayout.kt\ncom/narvii/widget/DraggableFrameLayout\n*L\n114#1:124\n114#1:125,3\n*E\n"
.end annotation


# instance fields
.field private endMargin:I

.field private hasMovedOverTouchSlop:Z

.field private minViewVisibleWidth:I

.field private onTap:Landroid/view/View$OnClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final viewDragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private viewDragHelper:Landroidx/customview/widget/ViewDragHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/narvii/widget/DraggableFrameLayout$1;

    invoke-direct {p1, p0}, Lcom/narvii/widget/DraggableFrameLayout$1;-><init>(Lcom/narvii/widget/DraggableFrameLayout;)V

    iput-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout;->viewDragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 3
    invoke-static {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->p(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p1

    const-string v0, "create(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Lcom/narvii/widget/DraggableFrameLayout$1;

    invoke-direct {p1, p0}, Lcom/narvii/widget/DraggableFrameLayout$1;-><init>(Lcom/narvii/widget/DraggableFrameLayout;)V

    iput-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout;->viewDragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 6
    invoke-static {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->p(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p1

    const-string p2, "create(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Lcom/narvii/widget/DraggableFrameLayout$1;

    invoke-direct {p1, p0}, Lcom/narvii/widget/DraggableFrameLayout$1;-><init>(Lcom/narvii/widget/DraggableFrameLayout;)V

    iput-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout;->viewDragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 9
    invoke-static {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->p(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p1

    const-string p2, "create(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    return-void
.end method

.method public static final synthetic access$getViewDragHelper$p(Lcom/narvii/widget/DraggableFrameLayout;)Landroidx/customview/widget/ViewDragHelper;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/widget/DraggableFrameLayout;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 3
    return-object p0
.end method

.method private final requestDisallowInterceptTouchEventFromDrawer(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a0482

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/drawer/MyDrawerLayout;

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    .line 19
    :goto_0
    if-nez v0, :cond_1

    .line 20
    return-void

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {v0, p1}, Lcom/narvii/drawer/DrawerLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 24
    return-void
.end method

.method private final smoothSlideViewTo(I)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {v1, v0}, Lj8/m;->v(II)Lj8/i;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    const/16 v3, 0xa

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v3}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 17
    move-result v3

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v3

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    move-object v3, v0

    .line 32
    .line 33
    check-cast v3, Lkotlin/collections/m0;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Lkotlin/collections/m0;->nextInt()I

    .line 37
    move-result v3

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    .line 44
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v2

    .line 54
    const/4 v3, 0x0

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v2

    .line 61
    move-object v4, v2

    .line 62
    .line 63
    check-cast v4, Landroid/view/View;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 67
    move-result v4

    .line 68
    .line 69
    if-nez v4, :cond_1

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    move-object v2, v3

    .line 72
    .line 73
    :goto_1
    check-cast v2, Landroid/view/View;

    .line 74
    .line 75
    if-nez v2, :cond_3

    .line 76
    return-void

    .line 77
    .line 78
    :cond_3
    iget-object v0, p0, Lcom/narvii/widget/DraggableFrameLayout;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 79
    .line 80
    if-nez v0, :cond_4

    .line 81
    .line 82
    .line 83
    const-string/jumbo v0, "viewDragHelper"

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 87
    goto :goto_2

    .line 88
    :cond_4
    move-object v3, v0

    .line 89
    .line 90
    .line 91
    :goto_2
    invoke-virtual {v3, v2, p1, v1}, Landroidx/customview/widget/ViewDragHelper;->R(Landroid/view/View;II)Z

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 95
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/DraggableFrameLayout;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    const-string/jumbo v0, "viewDragHelper"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x0

    .line 15
    :cond_0
    const/4 v1, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->n(Z)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 25
    :cond_1
    return-void
.end method

.method public final getEndMargin()I
    .locals 1

    iget v0, p0, Lcom/narvii/widget/DraggableFrameLayout;->endMargin:I

    return v0
.end method

.method public final getMinViewVisibleWidth()I
    .locals 1

    iget v0, p0, Lcom/narvii/widget/DraggableFrameLayout;->minViewVisibleWidth:I

    return v0
.end method

.method public final getOnTap()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/widget/DraggableFrameLayout;->onTap:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final hide()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 10
    move-result v0

    .line 11
    neg-int v0, v0

    .line 12
    .line 13
    iget v1, p0, Lcom/narvii/widget/DraggableFrameLayout;->minViewVisibleWidth:I

    .line 14
    add-int/2addr v0, v1

    .line 15
    .line 16
    iget v1, p0, Lcom/narvii/widget/DraggableFrameLayout;->endMargin:I

    .line 17
    add-int/2addr v0, v1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 22
    move-result v0

    .line 23
    .line 24
    iget v1, p0, Lcom/narvii/widget/DraggableFrameLayout;->minViewVisibleWidth:I

    .line 25
    sub-int/2addr v0, v1

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-direct {p0, v0}, Lcom/narvii/widget/DraggableFrameLayout;->smoothSlideViewTo(I)V

    .line 29
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ev"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/widget/DraggableFrameLayout;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "viewDragHelper"

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->Q(Landroid/view/MotionEvent;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "event"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/widget/DraggableFrameLayout;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    const-string/jumbo v2, "viewDragHelper"

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 17
    move-object v0, v1

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->G(Landroid/view/MotionEvent;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 24
    move-result p1

    .line 25
    const/4 v0, 0x0

    .line 26
    const/4 v3, 0x1

    .line 27
    .line 28
    if-eqz p1, :cond_7

    .line 29
    .line 30
    if-eq p1, v3, :cond_4

    .line 31
    const/4 v4, 0x2

    .line 32
    .line 33
    if-eq p1, v4, :cond_2

    .line 34
    const/4 v1, 0x3

    .line 35
    .line 36
    if-eq p1, v1, :cond_1

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_1
    iput-boolean v0, p0, Lcom/narvii/widget/DraggableFrameLayout;->hasMovedOverTouchSlop:Z

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v0}, Lcom/narvii/widget/DraggableFrameLayout;->requestDisallowInterceptTouchEventFromDrawer(Z)V

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_2
    iget-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 46
    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    move-object v1, p1

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {v1, v3}, Landroidx/customview/widget/ViewDragHelper;->e(I)Z

    .line 56
    move-result p1

    .line 57
    .line 58
    if-eqz p1, :cond_8

    .line 59
    .line 60
    iput-boolean v3, p0, Lcom/narvii/widget/DraggableFrameLayout;->hasMovedOverTouchSlop:Z

    .line 61
    goto :goto_1

    .line 62
    .line 63
    :cond_4
    iget-boolean p1, p0, Lcom/narvii/widget/DraggableFrameLayout;->hasMovedOverTouchSlop:Z

    .line 64
    .line 65
    if-nez p1, :cond_6

    .line 66
    .line 67
    iget-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout;->onTap:Landroid/view/View$OnClickListener;

    .line 68
    .line 69
    if-eqz p1, :cond_5

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 73
    .line 74
    :cond_5
    iput-boolean v0, p0, Lcom/narvii/widget/DraggableFrameLayout;->hasMovedOverTouchSlop:Z

    .line 75
    .line 76
    .line 77
    :cond_6
    invoke-direct {p0, v0}, Lcom/narvii/widget/DraggableFrameLayout;->requestDisallowInterceptTouchEventFromDrawer(Z)V

    .line 78
    goto :goto_1

    .line 79
    .line 80
    .line 81
    :cond_7
    invoke-direct {p0, v3}, Lcom/narvii/widget/DraggableFrameLayout;->requestDisallowInterceptTouchEventFromDrawer(Z)V

    .line 82
    .line 83
    iput-boolean v0, p0, Lcom/narvii/widget/DraggableFrameLayout;->hasMovedOverTouchSlop:Z

    .line 84
    :cond_8
    :goto_1
    return v3
.end method

.method public final setEndMargin(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/DraggableFrameLayout;->endMargin:I

    return-void
.end method

.method public final setMinViewVisibleWidth(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/DraggableFrameLayout;->minViewVisibleWidth:I

    return-void
.end method

.method public final setOnTap(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout;->onTap:Landroid/view/View$OnClickListener;

    return-void
.end method
