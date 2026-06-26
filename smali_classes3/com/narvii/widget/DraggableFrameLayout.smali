.class public final Lcom/narvii/widget/DraggableFrameLayout;
.super Landroid/widget/FrameLayout;
.source "DraggableFrameLayout.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDraggableFrameLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DraggableFrameLayout.kt\ncom/narvii/widget/DraggableFrameLayout\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,123:1\n1313#2:124\n1382#2,3:125\n*E\n*S KotlinDebug\n*F\n+ 1 DraggableFrameLayout.kt\ncom/narvii/widget/DraggableFrameLayout\n*L\n114#1:124\n114#1,3:125\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private endMargin:I

.field private hasMovedOverTouchSlop:Z

.field private minViewVisibleWidth:I

.field private onTap:Landroid/view/View$OnClickListener;

.field private final viewDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

.field private viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance p1, Lcom/narvii/widget/DraggableFrameLayout$1;

    invoke-direct {p1, p0}, Lcom/narvii/widget/DraggableFrameLayout$1;-><init>(Lcom/narvii/widget/DraggableFrameLayout;)V

    iput-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout;->viewDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 67
    iget-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout;->viewDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-static {p0, p1}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object p1

    const-string v0, "ViewDragHelper.create(this, viewDragCallback)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance p1, Lcom/narvii/widget/DraggableFrameLayout$1;

    invoke-direct {p1, p0}, Lcom/narvii/widget/DraggableFrameLayout$1;-><init>(Lcom/narvii/widget/DraggableFrameLayout;)V

    iput-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout;->viewDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 67
    iget-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout;->viewDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-static {p0, p1}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object p1

    const-string p2, "ViewDragHelper.create(this, viewDragCallback)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance p1, Lcom/narvii/widget/DraggableFrameLayout$1;

    invoke-direct {p1, p0}, Lcom/narvii/widget/DraggableFrameLayout$1;-><init>(Lcom/narvii/widget/DraggableFrameLayout;)V

    iput-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout;->viewDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 67
    iget-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout;->viewDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-static {p0, p1}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object p1

    const-string p2, "ViewDragHelper.create(this, viewDragCallback)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    return-void
.end method

.method public static final synthetic access$getViewDragHelper$p(Lcom/narvii/widget/DraggableFrameLayout;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/narvii/widget/DraggableFrameLayout;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "viewDragHelper"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$setViewDragHelper$p(Lcom/narvii/widget/DraggableFrameLayout;Landroid/support/v4/widget/ViewDragHelper;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    return-void
.end method

.method private final requestDisallowInterceptTouchEventFromDrawer(Z)V
    .locals 2

    .line 120
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f090393

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/drawer/MyDrawerLayout;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, p1}, Lcom/narvii/drawer/DrawerLayout;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private final smoothSlideViewTo(I)V
    .locals 6

    .line 114
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 125
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lkotlin/collections/IntIterator;

    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v3

    .line 114
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/view/View;

    const-string v5, "it"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_5

    .line 115
    iget-object v0, p0, Lcom/narvii/widget/DraggableFrameLayout;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2, p1, v1}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 116
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    :cond_4
    const-string p1, "viewDragHelper"

    .line 115
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_5
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/DraggableFrameLayout;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/widget/DraggableFrameLayout;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/DraggableFrameLayout;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/DraggableFrameLayout;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/widget/DraggableFrameLayout;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public computeScroll()V
    .locals 2

    .line 102
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 103
    iget-object v0, p0, Lcom/narvii/widget/DraggableFrameLayout;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void

    :cond_1
    const-string v0, "viewDragHelper"

    .line 103
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getEndMargin()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/narvii/widget/DraggableFrameLayout;->endMargin:I

    return v0
.end method

.method public final getMinViewVisibleWidth()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/narvii/widget/DraggableFrameLayout;->minViewVisibleWidth:I

    return v0
.end method

.method public final getOnTap()Landroid/view/View$OnClickListener;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/narvii/widget/DraggableFrameLayout;->onTap:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final hide()V
    .locals 2

    .line 109
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    neg-int v0, v0

    iget v1, p0, Lcom/narvii/widget/DraggableFrameLayout;->minViewVisibleWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/narvii/widget/DraggableFrameLayout;->endMargin:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/narvii/widget/DraggableFrameLayout;->minViewVisibleWidth:I

    sub-int/2addr v0, v1

    .line 110
    :goto_0
    invoke-direct {p0, v0}, Lcom/narvii/widget/DraggableFrameLayout;->smoothSlideViewTo(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/narvii/widget/DraggableFrameLayout;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "viewDragHelper"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/narvii/widget/DraggableFrameLayout;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x0

    const-string v2, "viewDragHelper"

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iput-boolean v0, p0, Lcom/narvii/widget/DraggableFrameLayout;->hasMovedOverTouchSlop:Z

    .line 95
    invoke-direct {p0, v0}, Lcom/narvii/widget/DraggableFrameLayout;->requestDisallowInterceptTouchEventFromDrawer(Z)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v3}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 83
    iput-boolean v3, p0, Lcom/narvii/widget/DraggableFrameLayout;->hasMovedOverTouchSlop:Z

    goto :goto_0

    .line 82
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_3
    iget-boolean p1, p0, Lcom/narvii/widget/DraggableFrameLayout;->hasMovedOverTouchSlop:Z

    if-nez p1, :cond_5

    .line 88
    iget-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout;->onTap:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_4

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 89
    :cond_4
    iput-boolean v0, p0, Lcom/narvii/widget/DraggableFrameLayout;->hasMovedOverTouchSlop:Z

    .line 91
    :cond_5
    invoke-direct {p0, v0}, Lcom/narvii/widget/DraggableFrameLayout;->requestDisallowInterceptTouchEventFromDrawer(Z)V

    goto :goto_0

    .line 78
    :cond_6
    invoke-direct {p0, v3}, Lcom/narvii/widget/DraggableFrameLayout;->requestDisallowInterceptTouchEventFromDrawer(Z)V

    .line 79
    iput-boolean v0, p0, Lcom/narvii/widget/DraggableFrameLayout;->hasMovedOverTouchSlop:Z

    :cond_7
    :goto_0
    return v3

    .line 75
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final setEndMargin(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/narvii/widget/DraggableFrameLayout;->endMargin:I

    return-void
.end method

.method public final setMinViewVisibleWidth(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/narvii/widget/DraggableFrameLayout;->minViewVisibleWidth:I

    return-void
.end method

.method public final setOnTap(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/narvii/widget/DraggableFrameLayout;->onTap:Landroid/view/View$OnClickListener;

    return-void
.end method
