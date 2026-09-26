.class public Lcom/narvii/widget/NVScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/NVScrollView$OnScrollListener;
    }
.end annotation


# static fields
.field public static final OVERSCROLL_STRETCH_TAG:I

.field private static final TAG:Ljava/lang/String; = "NVScrollView"

.field private static fEdgeGlowBottom:Ljava/lang/reflect/Field;

.field private static fEdgeGlowTop:Ljava/lang/reflect/Field;

.field private static fOverflingDistance:Ljava/lang/reflect/Field;

.field private static fOverscrollDistance:Ljava/lang/reflect/Field;

.field private static fScroller:Ljava/lang/reflect/Field;

.field private static fScrollerInited:Z

.field private static inited:Z

.field private static removeEdgeGlowInited:Z


# instance fields
.field private blockLayout:Z

.field bottomDrawable:Landroid/graphics/drawable/Drawable;

.field private overscrollY:I

.field private pendingLayout:Z

.field private scrollListener:Lcom/narvii/widget/NVScrollView$OnScrollListener;

.field private swipeRefreshActivePointerId:I

.field public swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

.field private swipeRefreshOverscrollY:I

.field private swipeRefreshStartY:I

.field private swipeRefreshStatus:I

.field private swipeRefreshY:I

.field topDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    sget v0, Lcom/narvii/widget/NVListView;->OVERSCROLL_STRETCH_TAG:I

    .line 3
    .line 4
    sput v0, Lcom/narvii/widget/NVScrollView;->OVERSCROLL_STRETCH_TAG:I

    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/NVScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/narvii/widget/NVListView;->getNoEdgeGlowEffectContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-direct {p0}, Lcom/narvii/widget/NVScrollView;->initOverscroll()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p0}, Lcom/narvii/widget/NVScrollView;->removeEdgeGlowEffect(Landroid/widget/ScrollView;)V

    :cond_0
    return-void
.end method

.method private getContHeight()I
    .locals 2

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
    if-lez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 15
    move-result v0

    .line 16
    return v0

    .line 17
    :cond_0
    return v1
.end method

.method private initOverscroll()Z
    .locals 5

    .line 1
    .line 2
    const-class v0, Landroid/widget/ScrollView;

    .line 3
    .line 4
    sget-boolean v1, Lcom/narvii/widget/NVScrollView;->inited:Z

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    const-string v1, "mOverflingDistance"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    sput-object v1, Lcom/narvii/widget/NVScrollView;->fOverflingDistance:Ljava/lang/reflect/Field;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 19
    .line 20
    const-string v1, "mOverscrollDistance"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    sput-object v0, Lcom/narvii/widget/NVScrollView;->fOverscrollDistance:Ljava/lang/reflect/Field;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 30
    .line 31
    sput-boolean v2, Lcom/narvii/widget/NVScrollView;->inited:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .line 35
    const-string v1, "fail to init overscroll"

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    :cond_0
    :goto_0
    sget-object v0, Lcom/narvii/widget/NVScrollView;->fOverscrollDistance:Ljava/lang/reflect/Field;

    .line 41
    const/4 v1, 0x0

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    sget-object v0, Lcom/narvii/widget/NVScrollView;->fOverflingDistance:Ljava/lang/reflect/Field;

    .line 46
    .line 47
    if-nez v0, :cond_1

    .line 48
    goto :goto_1

    .line 49
    .line 50
    .line 51
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    sget v3, Lcom/narvii/lib/R$dimen;->overscroll_height:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 58
    move-result v0

    .line 59
    .line 60
    sget-object v3, Lcom/narvii/widget/NVScrollView;->fOverflingDistance:Ljava/lang/reflect/Field;

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object v4

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .line 69
    sget-object v3, Lcom/narvii/widget/NVScrollView;->fOverscrollDistance:Ljava/lang/reflect/Field;

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    return v2

    .line 87
    :catch_1
    :cond_2
    :goto_1
    return v1
.end method

.method private isScrollerFinished()Ljava/lang/Boolean;
    .locals 4

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/widget/NVScrollView;->fScrollerInited:Z

    .line 3
    .line 4
    const-string v1, "overscroll unknown scroller"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    sput-boolean v0, Lcom/narvii/widget/NVScrollView;->fScrollerInited:Z

    .line 10
    .line 11
    :try_start_0
    const-class v2, Landroid/widget/ScrollView;

    .line 12
    .line 13
    const-string v3, "mScroller"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 21
    .line 22
    sput-object v2, Lcom/narvii/widget/NVScrollView;->fScroller:Ljava/lang/reflect/Field;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Landroid/widget/OverScroller;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    .line 32
    move-result v0

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return-object v0

    .line 38
    .line 39
    .line 40
    :catch_0
    invoke-static {v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_0
    sget-object v0, Lcom/narvii/widget/NVScrollView;->fScroller:Ljava/lang/reflect/Field;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    .line 48
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    check-cast v0, Landroid/widget/OverScroller;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    .line 55
    move-result v0

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 59
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    return-object v0

    .line 61
    .line 62
    .line 63
    :catch_1
    invoke-static {v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 64
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 65
    return-object v0
.end method

.method private onSwipeRefreshOverscroll(I)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshOverscrollY:I

    iget v0, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-gez p1, :cond_1

    const/4 p1, 0x2

    iput p1, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshStatus:I

    iget p1, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshY:I

    iput p1, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshStartY:I

    :cond_1
    return-void
.end method

.method private onSwipeRefreshTouch(Landroid/view/MotionEvent;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x2

    .line 12
    const/4 v3, 0x1

    .line 13
    .line 14
    if-eqz v0, :cond_8

    .line 15
    .line 16
    if-eq v0, v3, :cond_6

    .line 17
    .line 18
    if-eq v0, v2, :cond_4

    .line 19
    const/4 v4, 0x3

    .line 20
    .line 21
    if-eq v0, v4, :cond_6

    .line 22
    const/4 v2, 0x5

    .line 23
    .line 24
    if-eq v0, v2, :cond_3

    .line 25
    const/4 v2, 0x6

    .line 26
    .line 27
    if-eq v0, v2, :cond_1

    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 33
    move-result v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 37
    move-result v0

    .line 38
    .line 39
    iget v2, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshActivePointerId:I

    .line 40
    .line 41
    if-ne v0, v2, :cond_b

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    move v1, v3

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 48
    move-result p1

    .line 49
    .line 50
    iput p1, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshActivePointerId:I

    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 56
    move-result v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 60
    move-result p1

    .line 61
    .line 62
    iput p1, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshActivePointerId:I

    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :cond_4
    iget v0, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshActivePointerId:I

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 70
    move-result v0

    .line 71
    .line 72
    if-ltz v0, :cond_b

    .line 73
    .line 74
    iget v1, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshStatus:I

    .line 75
    .line 76
    if-lt v1, v2, :cond_b

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 80
    move-result p1

    .line 81
    float-to-int p1, p1

    .line 82
    .line 83
    iget v0, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshStartY:I

    .line 84
    sub-int/2addr p1, v0

    .line 85
    .line 86
    iget-object v0, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 87
    .line 88
    iput-boolean v3, v0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 89
    .line 90
    if-lez p1, :cond_5

    .line 91
    int-to-float p1, p1

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->moveSpinner(F)V

    .line 95
    goto :goto_0

    .line 96
    :cond_5
    const/4 p1, 0x0

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->finishSpinner(F)V

    .line 100
    goto :goto_0

    .line 101
    .line 102
    :cond_6
    iget v0, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshStatus:I

    .line 103
    .line 104
    if-lt v0, v2, :cond_7

    .line 105
    .line 106
    iget v0, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshActivePointerId:I

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 110
    move-result v0

    .line 111
    .line 112
    if-ltz v0, :cond_7

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 116
    move-result p1

    .line 117
    float-to-int p1, p1

    .line 118
    .line 119
    iget v0, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshStartY:I

    .line 120
    sub-int/2addr p1, v0

    .line 121
    .line 122
    if-lez p1, :cond_7

    .line 123
    .line 124
    iget-object v0, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 125
    .line 126
    iput-boolean v3, v0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    .line 127
    int-to-float p1, p1

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->finishSpinner(F)V

    .line 131
    .line 132
    :cond_7
    iput v1, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshStatus:I

    .line 133
    goto :goto_0

    .line 134
    .line 135
    :cond_8
    iget-object v0, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->isRefreshing()Z

    .line 139
    move-result v0

    .line 140
    .line 141
    if-eqz v0, :cond_9

    .line 142
    .line 143
    iput v1, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshStatus:I

    .line 144
    goto :goto_0

    .line 145
    .line 146
    .line 147
    :cond_9
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 148
    move-result v0

    .line 149
    .line 150
    iput v0, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshActivePointerId:I

    .line 151
    .line 152
    iget v0, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshOverscrollY:I

    .line 153
    .line 154
    if-gez v0, :cond_a

    .line 155
    move v3, v2

    .line 156
    .line 157
    :cond_a
    iput v3, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshStatus:I

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 161
    move-result p1

    .line 162
    float-to-int p1, p1

    .line 163
    .line 164
    iput p1, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshY:I

    .line 165
    .line 166
    iget v0, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshStatus:I

    .line 167
    .line 168
    if-ne v0, v2, :cond_b

    .line 169
    .line 170
    iput p1, p0, Lcom/narvii/widget/NVScrollView;->swipeRefreshStartY:I

    .line 171
    :cond_b
    :goto_0
    return-void
.end method

.method static removeEdgeGlowEffect(Landroid/widget/ScrollView;)V
    .locals 3

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/widget/NVScrollView;->removeEdgeGlowInited:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "mEdgeGlowTop"

    .line 7
    .line 8
    const-class v1, Landroid/widget/ScrollView;

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v0}, Lcom/narvii/widget/NVListView;->searchDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    sput-object v0, Lcom/narvii/widget/NVScrollView;->fEdgeGlowTop:Ljava/lang/reflect/Field;

    .line 15
    .line 16
    const-string v0, "mEdgeGlowBottom"

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/narvii/widget/NVListView;->searchDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    sput-object v0, Lcom/narvii/widget/NVScrollView;->fEdgeGlowBottom:Ljava/lang/reflect/Field;

    .line 23
    const/4 v0, 0x1

    .line 24
    .line 25
    sput-boolean v0, Lcom/narvii/widget/NVScrollView;->removeEdgeGlowInited:Z

    .line 26
    .line 27
    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v1, 0x1e

    .line 30
    .line 31
    if-gt v0, v1, :cond_2

    .line 32
    .line 33
    sget-object v0, Lcom/narvii/widget/NVScrollView;->fEdgeGlowTop:Ljava/lang/reflect/Field;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    new-instance v1, Lcom/narvii/widget/NVListView$NoEdgeEffect;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, v2}, Lcom/narvii/widget/NVListView$NoEdgeEffect;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    :cond_1
    sget-object v0, Lcom/narvii/widget/NVScrollView;->fEdgeGlowBottom:Ljava/lang/reflect/Field;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    new-instance v1, Lcom/narvii/widget/NVListView$NoEdgeEffect;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    .line 60
    invoke-direct {v1, v2}, Lcom/narvii/widget/NVListView$NoEdgeEffect;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :catch_0
    const-string p0, "Removing edge glow effect failed"

    .line 67
    .line 68
    .line 69
    invoke-static {p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 70
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/narvii/widget/NVScrollView;->onSwipeRefreshTouch(Landroid/view/MotionEvent;)V

    .line 8
    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/NVScrollView;->overscrollY:I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-gez v0, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/NVScrollView;->getVerticalLayout()Landroid/view/ViewGroup;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-ne v0, p2, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/widget/NVScrollView;->getOverscrollStretchView()Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 21
    move-result v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 28
    .line 29
    if-gez v3, :cond_0

    .line 30
    .line 31
    const-string v0, "overscroll stretch view must have a specific height"

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    iget v4, p0, Lcom/narvii/widget/NVScrollView;->overscrollY:I

    .line 38
    neg-int v4, v4

    .line 39
    add-int/2addr v3, v4

    .line 40
    .line 41
    const/high16 v4, 0x40000000    # 2.0f

    .line 42
    .line 43
    .line 44
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 45
    move-result v2

    .line 46
    .line 47
    .line 48
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 49
    move-result v4

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2, v4}, Landroid/view/View;->measure(II)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 56
    move-result v2

    .line 57
    .line 58
    iget v4, p0, Lcom/narvii/widget/NVScrollView;->overscrollY:I

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 62
    move-result v5

    .line 63
    .line 64
    iget v6, p0, Lcom/narvii/widget/NVScrollView;->overscrollY:I

    .line 65
    add-int/2addr v6, v3

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 69
    .line 70
    iput v1, p0, Lcom/narvii/widget/NVScrollView;->overscrollY:I

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_1
    iget v0, p0, Lcom/narvii/widget/NVScrollView;->overscrollY:I

    .line 74
    .line 75
    if-gez v0, :cond_2

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 79
    move-result v0

    .line 80
    .line 81
    if-lez v0, :cond_2

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/widget/NVScrollView;->topDrawable:Landroid/graphics/drawable/Drawable;

    .line 84
    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    if-ne p2, v0, :cond_2

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 95
    move-result v0

    .line 96
    .line 97
    if-ltz v0, :cond_2

    .line 98
    .line 99
    iget-object v0, p0, Lcom/narvii/widget/NVScrollView;->topDrawable:Landroid/graphics/drawable/Drawable;

    .line 100
    .line 101
    iget v2, p0, Lcom/narvii/widget/NVScrollView;->overscrollY:I

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 105
    move-result v3

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 109
    move-result v4

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 113
    .line 114
    iget-object v0, p0, Lcom/narvii/widget/NVScrollView;->topDrawable:Landroid/graphics/drawable/Drawable;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 118
    .line 119
    .line 120
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 121
    move-result v0

    .line 122
    .line 123
    if-lez v0, :cond_3

    .line 124
    .line 125
    iget-object v0, p0, Lcom/narvii/widget/NVScrollView;->bottomDrawable:Landroid/graphics/drawable/Drawable;

    .line 126
    .line 127
    if-eqz v0, :cond_3

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 131
    move-result v0

    .line 132
    .line 133
    add-int/lit8 v0, v0, -0x1

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 137
    move-result-object v0

    .line 138
    .line 139
    if-ne p2, v0, :cond_3

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 143
    move-result v0

    .line 144
    .line 145
    iget-object v2, p0, Lcom/narvii/widget/NVScrollView;->bottomDrawable:Landroid/graphics/drawable/Drawable;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 149
    move-result v3

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 153
    move-result v4

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 157
    move-result v5

    .line 158
    .line 159
    iget v6, p0, Lcom/narvii/widget/NVScrollView;->overscrollY:I

    .line 160
    add-int/2addr v5, v6

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 164
    .line 165
    iget-object v2, p0, Lcom/narvii/widget/NVScrollView;->bottomDrawable:Landroid/graphics/drawable/Drawable;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 172
    .line 173
    .line 174
    :cond_3
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 175
    move-result p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    return p1

    .line 177
    :catch_0
    move-exception p1

    .line 178
    .line 179
    const-string p2, "NVScrollView"

    .line 180
    .line 181
    const-string p3, "drawChild: unable to draw in scroll view"

    .line 182
    .line 183
    .line 184
    invoke-static {p2, p3, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    return v1
.end method

.method protected getOverscrollStretchView()Landroid/view/View;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/widget/NVScrollView;->getVerticalLayout()Landroid/view/ViewGroup;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    :goto_0
    if-ge v2, v1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    sget v4, Lcom/narvii/widget/NVScrollView;->OVERSCROLL_STRETCH_TAG:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 23
    move-result-object v4

    .line 24
    .line 25
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 26
    .line 27
    if-ne v4, v5, :cond_0

    .line 28
    return-object v3

    .line 29
    .line 30
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    return-object v0
.end method

.method protected getVerticalLayout()Landroid/view/ViewGroup;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    instance-of v1, v0, Landroid/widget/LinearLayout;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    check-cast v0, Landroid/view/ViewGroup;

    .line 18
    return-object v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/widget/NVScrollView;->getVerticalLayout()Landroid/view/ViewGroup;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 17
    :cond_0
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 2

    .line 1
    .line 2
    iput p2, p0, Lcom/narvii/widget/NVScrollView;->overscrollY:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/widget/NVScrollView;->onSwipeRefreshOverscroll(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/NVScrollView;->getOverscrollStretchView()Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    if-gez p2, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v1

    .line 18
    .line 19
    :goto_0
    iput-boolean v0, p0, Lcom/narvii/widget/NVScrollView;->blockLayout:Z

    .line 20
    .line 21
    .line 22
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onOverScrolled(IIZZ)V

    .line 23
    .line 24
    iget-boolean p1, p0, Lcom/narvii/widget/NVScrollView;->blockLayout:Z

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    iget-boolean p1, p0, Lcom/narvii/widget/NVScrollView;->pendingLayout:Z

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iput-boolean v1, p0, Lcom/narvii/widget/NVScrollView;->pendingLayout:Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/widget/NVScrollView;->requestLayout()V

    .line 36
    :cond_1
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/NVScrollView;->scrollListener:Lcom/narvii/widget/NVScrollView$OnScrollListener;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/narvii/widget/NVScrollView$OnScrollListener;->onScroll(IIII)V

    .line 11
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    if-eq v1, v2, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 15
    move-result p1

    .line 16
    const/4 v1, 0x3

    .line 17
    .line 18
    if-ne p1, v1, :cond_2

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 22
    move-result p1

    .line 23
    const/4 v1, -0x1

    .line 24
    .line 25
    if-ge p1, v1, :cond_1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-direct {p0}, Lcom/narvii/widget/NVScrollView;->getContHeight()I

    .line 30
    move-result v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 34
    move-result v2

    .line 35
    sub-int/2addr v1, v2

    .line 36
    .line 37
    if-le p1, v1, :cond_2

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-direct {p0}, Lcom/narvii/widget/NVScrollView;->isScrollerFinished()Ljava/lang/Boolean;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 44
    .line 45
    if-ne p1, v1, :cond_2

    .line 46
    const/4 p1, 0x0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 50
    move-result v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1, v1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 54
    :cond_2
    return v0
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/NVScrollView;->blockLayout:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/narvii/widget/NVScrollView;->pendingLayout:Z

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 12
    :goto_0
    return-void
.end method

.method public setBottomOverScrollColor(I)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/widget/NVScrollView;->bottomDrawable:Landroid/graphics/drawable/Drawable;

    .line 8
    return-void
.end method

.method public setOnScrollListener(Lcom/narvii/widget/NVScrollView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/NVScrollView;->scrollListener:Lcom/narvii/widget/NVScrollView$OnScrollListener;

    return-void
.end method

.method public setTopOverScrollColor(I)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/widget/NVScrollView;->topDrawable:Landroid/graphics/drawable/Drawable;

    .line 8
    return-void
.end method
