.class public Lcom/narvii/widget/Flipper;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/Flipper$FlipperAdapter;,
        Lcom/narvii/widget/Flipper$OnFlipperScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/FrameLayout;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field protected static final ANIM_NONE:I = 0x0

.field private static final ANIM_TRANS:I = 0x2

.field private static final ANIM_TRANS_DURATION1:I = 0x1e

.field private static final ANIM_TRANS_DURATION2:I = 0x96

.field private static final ANIM_TRANS_TO_NEXT:I = 0x1

.field private static final ANIM_TRANS_TO_PREVIOUS:I = -0x1

.field private static final FLING_VELOCITY:I = 0x1f4

.field private static final HANDLER:Landroid/os/Handler;


# instance fields
.field private activePointId:I

.field protected adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/widget/Flipper$FlipperAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private animationDuration:I

.field protected animationMode:I

.field private animationStartMs:J

.field private animationX1:I

.field private animationX2:I

.field public autoFilp:Z

.field private autoFlipDuration:I

.field private bind:Lcom/narvii/widget/Flipper;

.field protected currentItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected currentView:Landroid/view/View;

.field private flipDistance:F

.field protected gestureDetector:Landroid/view/GestureDetector;

.field protected gestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field protected isScrolling:Z

.field private isTouching:Z

.field isallowInterceptTouchEvent:Z

.field private mItemSpaceAdjust:I

.field protected nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected nextView:Landroid/view/View;

.field protected previousItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected previousView:Landroid/view/View;

.field private scrollListener:Lcom/narvii/widget/Flipper$OnFlipperScrollListener;

.field private startX:F

.field private startY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/os/Handler;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    .line 11
    sput-object v0, Lcom/narvii/widget/Flipper;->HANDLER:Landroid/os/Handler;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/Flipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/narvii/widget/Flipper;->animationMode:I

    .line 3
    new-instance p2, Lcom/narvii/widget/Flipper$1;

    invoke-direct {p2, p0}, Lcom/narvii/widget/Flipper$1;-><init>(Lcom/narvii/widget/Flipper;)V

    iput-object p2, p0, Lcom/narvii/widget/Flipper;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    const/4 p2, 0x0

    iput p2, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/narvii/widget/Flipper;->isallowInterceptTouchEvent:Z

    .line 4
    new-instance p2, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/narvii/widget/Flipper;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/narvii/widget/Flipper;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    .line 2
    if-eq p1, p2, :cond_1

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 15
    :goto_1
    return p1
.end method

.method private recycle(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/narvii/widget/Flipper$FlipperAdapter;->recycleView(Landroid/view/View;)V

    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/Flipper;->animationMode:I

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, -0x1

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    if-eq v0, v3, :cond_0

    .line 10
    .line 11
    if-ne v0, v2, :cond_6

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 15
    move-result-wide v0

    .line 16
    .line 17
    iget-wide v4, p0, Lcom/narvii/widget/Flipper;->animationStartMs:J

    .line 18
    .line 19
    iget v6, p0, Lcom/narvii/widget/Flipper;->animationDuration:I

    .line 20
    int-to-long v7, v6

    .line 21
    add-long/2addr v7, v4

    .line 22
    .line 23
    cmp-long v7, v7, v0

    .line 24
    .line 25
    if-gez v7, :cond_4

    .line 26
    .line 27
    iget v0, p0, Lcom/narvii/widget/Flipper;->animationMode:I

    .line 28
    .line 29
    if-ne v0, v3, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/widget/Flipper;->nextItem:Ljava/lang/Object;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1, v2}, Lcom/narvii/widget/Flipper$FlipperAdapter;->onMoved(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_1
    if-ne v0, v2, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/widget/Flipper;->previousItem:Ljava/lang/Object;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, v1, v2}, Lcom/narvii/widget/Flipper$FlipperAdapter;->onMoved(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 52
    .line 53
    iput v0, p0, Lcom/narvii/widget/Flipper;->animationMode:I

    .line 54
    const/4 v0, 0x0

    .line 55
    .line 56
    iput v0, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/widget/Flipper;->scrollListener:Lcom/narvii/widget/Flipper$OnFlipperScrollListener;

    .line 59
    .line 60
    if-eqz v1, :cond_3

    .line 61
    float-to-int v0, v0

    .line 62
    .line 63
    .line 64
    invoke-interface {v1, v0}, Lcom/narvii/widget/Flipper$OnFlipperScrollListener;->onScroll(I)V

    .line 65
    .line 66
    :cond_3
    iget v0, p0, Lcom/narvii/widget/Flipper;->autoFlipDuration:I

    .line 67
    .line 68
    if-lez v0, :cond_6

    .line 69
    .line 70
    sget-object v0, Lcom/narvii/widget/Flipper;->HANDLER:Landroid/os/Handler;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 74
    .line 75
    iget v1, p0, Lcom/narvii/widget/Flipper;->autoFlipDuration:I

    .line 76
    int-to-long v1, v1

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    goto :goto_1

    .line 81
    :cond_4
    sub-long/2addr v0, v4

    .line 82
    long-to-float v0, v0

    .line 83
    int-to-float v1, v6

    .line 84
    div-float/2addr v0, v1

    .line 85
    .line 86
    iget v1, p0, Lcom/narvii/widget/Flipper;->animationX1:I

    .line 87
    .line 88
    iget v2, p0, Lcom/narvii/widget/Flipper;->animationX2:I

    .line 89
    sub-int/2addr v2, v1

    .line 90
    int-to-float v2, v2

    .line 91
    mul-float/2addr v0, v2

    .line 92
    float-to-int v0, v0

    .line 93
    add-int/2addr v1, v0

    .line 94
    int-to-float v0, v1

    .line 95
    .line 96
    iput v0, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    .line 97
    .line 98
    iget-object v1, p0, Lcom/narvii/widget/Flipper;->scrollListener:Lcom/narvii/widget/Flipper$OnFlipperScrollListener;

    .line 99
    .line 100
    if-eqz v1, :cond_5

    .line 101
    float-to-int v0, v0

    .line 102
    .line 103
    .line 104
    invoke-interface {v1, v0}, Lcom/narvii/widget/Flipper$OnFlipperScrollListener;->onScroll(I)V

    .line 105
    .line 106
    .line 107
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 108
    .line 109
    .line 110
    :cond_6
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 111
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_6

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->b(Landroid/view/MotionEvent;)I

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->f(Landroid/view/MotionEvent;I)F

    .line 15
    move-result v2

    .line 16
    .line 17
    iput v2, p0, Lcom/narvii/widget/Flipper;->startX:F

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->g(Landroid/view/MotionEvent;I)F

    .line 21
    move-result v0

    .line 22
    .line 23
    iput v0, p0, Lcom/narvii/widget/Flipper;->startY:F

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->e(Landroid/view/MotionEvent;I)I

    .line 27
    move-result v0

    .line 28
    .line 29
    iput v0, p0, Lcom/narvii/widget/Flipper;->activePointId:I

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    .line 32
    const/4 v2, 0x4

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 38
    move-result v0

    .line 39
    .line 40
    iget-object v3, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move v0, v1

    .line 46
    .line 47
    :goto_0
    iget-object v3, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 53
    move-result v1

    .line 54
    .line 55
    iget-object v3, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    :cond_1
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 62
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    .line 65
    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    :cond_3
    return p1

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    .line 80
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    .line 81
    .line 82
    if-eqz v2, :cond_4

    .line 83
    .line 84
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    :cond_4
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    .line 90
    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    :cond_5
    throw p1

    .line 96
    .line 97
    .line 98
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 99
    move-result v0

    .line 100
    const/4 v2, 0x2

    .line 101
    const/4 v3, 0x1

    .line 102
    .line 103
    if-ne v0, v2, :cond_a

    .line 104
    .line 105
    iget v0, p0, Lcom/narvii/widget/Flipper;->activePointId:I

    .line 106
    .line 107
    .line 108
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->a(Landroid/view/MotionEvent;I)I

    .line 109
    move-result v0

    .line 110
    const/4 v2, -0x1

    .line 111
    .line 112
    if-eq v0, v2, :cond_9

    .line 113
    .line 114
    .line 115
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->d(Landroid/view/MotionEvent;)I

    .line 116
    move-result v2

    .line 117
    sub-int/2addr v2, v3

    .line 118
    .line 119
    if-le v0, v2, :cond_7

    .line 120
    goto :goto_1

    .line 121
    .line 122
    .line 123
    :cond_7
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->f(Landroid/view/MotionEvent;I)F

    .line 124
    move-result v2

    .line 125
    .line 126
    .line 127
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->g(Landroid/view/MotionEvent;I)F

    .line 128
    move-result v0

    .line 129
    .line 130
    iget v4, p0, Lcom/narvii/widget/Flipper;->startX:F

    .line 131
    sub-float/2addr v2, v4

    .line 132
    .line 133
    iget v4, p0, Lcom/narvii/widget/Flipper;->startY:F

    .line 134
    sub-float/2addr v0, v4

    .line 135
    .line 136
    .line 137
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 138
    move-result v2

    .line 139
    .line 140
    .line 141
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 142
    move-result v0

    .line 143
    .line 144
    cmpl-float v0, v2, v0

    .line 145
    .line 146
    if-ltz v0, :cond_8

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 150
    move-result-object v0

    .line 151
    .line 152
    if-eqz v0, :cond_c

    .line 153
    .line 154
    iget-boolean v0, p0, Lcom/narvii/widget/Flipper;->isallowInterceptTouchEvent:Z

    .line 155
    .line 156
    if-nez v0, :cond_c

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 160
    move-result-object v0

    .line 161
    .line 162
    .line 163
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 164
    goto :goto_2

    .line 165
    .line 166
    .line 167
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 168
    move-result-object v0

    .line 169
    .line 170
    if-eqz v0, :cond_c

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 174
    move-result-object v0

    .line 175
    .line 176
    .line 177
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 178
    goto :goto_2

    .line 179
    .line 180
    .line 181
    :cond_9
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 182
    move-result p1

    .line 183
    return p1

    .line 184
    .line 185
    .line 186
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 187
    move-result v0

    .line 188
    const/4 v1, 0x3

    .line 189
    .line 190
    if-eq v0, v1, :cond_b

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 194
    move-result v0

    .line 195
    .line 196
    if-ne v0, v3, :cond_c

    .line 197
    :cond_b
    const/4 v0, 0x0

    .line 198
    .line 199
    iput v0, p0, Lcom/narvii/widget/Flipper;->startY:F

    .line 200
    .line 201
    iput v0, p0, Lcom/narvii/widget/Flipper;->startX:F

    .line 202
    .line 203
    .line 204
    :cond_c
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 205
    move-result p1

    .line 206
    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-ne p2, v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 12
    move-result v0

    .line 13
    neg-int v0, v0

    .line 14
    .line 15
    iget v2, p0, Lcom/narvii/widget/Flipper;->mItemSpaceAdjust:I

    .line 16
    add-int/2addr v0, v2

    .line 17
    int-to-float v0, v0

    .line 18
    .line 19
    iget v2, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    .line 20
    sub-float/2addr v0, v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 24
    .line 25
    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x1

    .line 33
    .line 34
    :goto_0
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    .line 35
    .line 36
    if-ne p2, v2, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 43
    move-result v0

    .line 44
    .line 45
    iget v2, p0, Lcom/narvii/widget/Flipper;->mItemSpaceAdjust:I

    .line 46
    sub-int/2addr v0, v2

    .line 47
    int-to-float v0, v0

    .line 48
    .line 49
    iget v2, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    .line 50
    sub-float/2addr v0, v2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 54
    .line 55
    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 57
    move-result v0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 61
    .line 62
    :cond_1
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    .line 63
    .line 64
    if-ne p2, v2, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 68
    .line 69
    iget v0, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    .line 70
    neg-float v0, v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 74
    .line 75
    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 77
    move-result v0

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 81
    :cond_2
    return v0
.end method

.method public flipDistance()F
    .locals 1

    iget v0, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    return v0
.end method

.method public getCurrentItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    return-object v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    return-object v0
.end method

.method public getNextView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    return-object v0
.end method

.method public getPreviousView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    return-object v0
.end method

.method public moveToNext(Z)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->bind:Lcom/narvii/widget/Flipper;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/widget/Flipper;->moveToNext(Z)Z

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->nextItem:Ljava/lang/Object;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-eqz v0, :cond_7

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 20
    .line 21
    :cond_1
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    .line 22
    .line 23
    iput-object v2, p0, Lcom/narvii/widget/Flipper;->previousItem:Ljava/lang/Object;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    .line 26
    .line 27
    iput-object v2, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->nextItem:Ljava/lang/Object;

    .line 30
    .line 31
    iput-object v2, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    .line 34
    .line 35
    iput-object v2, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 39
    move-result v2

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    .line 44
    .line 45
    iget-object v3, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-interface {v2, v3}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getPreviousItem(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_2
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    invoke-interface {v2, v3}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getNextItem(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    :goto_0
    iput-object v2, p0, Lcom/narvii/widget/Flipper;->nextItem:Ljava/lang/Object;

    .line 61
    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    iget-object v3, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    .line 65
    .line 66
    .line 67
    invoke-interface {v3, v2, v0}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getView(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    iput-object v0, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    .line 71
    goto :goto_1

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-direct {p0, v0}, Lcom/narvii/widget/Flipper;->recycle(Landroid/view/View;)V

    .line 75
    const/4 v0, 0x0

    .line 76
    .line 77
    iput-object v0, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    .line 78
    .line 79
    :goto_1
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    :cond_4
    const/4 v0, 0x1

    .line 86
    .line 87
    if-eqz p1, :cond_5

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 91
    move-result p1

    .line 92
    .line 93
    iget v2, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    .line 94
    int-to-float p1, p1

    .line 95
    sub-float/2addr v2, p1

    .line 96
    .line 97
    iput v2, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    .line 98
    .line 99
    iput v0, p0, Lcom/narvii/widget/Flipper;->animationMode:I

    .line 100
    float-to-int v2, v2

    .line 101
    .line 102
    iput v2, p0, Lcom/narvii/widget/Flipper;->animationX1:I

    .line 103
    .line 104
    iput v1, p0, Lcom/narvii/widget/Flipper;->animationX2:I

    .line 105
    .line 106
    .line 107
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 108
    move-result-wide v1

    .line 109
    .line 110
    iput-wide v1, p0, Lcom/narvii/widget/Flipper;->animationStartMs:J

    .line 111
    .line 112
    iget v1, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    .line 113
    .line 114
    .line 115
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 116
    move-result v1

    .line 117
    div-float/2addr v1, p1

    .line 118
    .line 119
    const/high16 p1, 0x42f00000    # 120.0f

    .line 120
    mul-float/2addr v1, p1

    .line 121
    float-to-int p1, v1

    .line 122
    .line 123
    add-int/lit8 p1, p1, 0x1e

    .line 124
    .line 125
    iput p1, p0, Lcom/narvii/widget/Flipper;->animationDuration:I

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 129
    .line 130
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    .line 131
    .line 132
    iget-object v1, p0, Lcom/narvii/widget/Flipper;->previousItem:Ljava/lang/Object;

    .line 133
    .line 134
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    invoke-interface {p1, v1, v2}, Lcom/narvii/widget/Flipper$FlipperAdapter;->onMoving(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    goto :goto_2

    .line 139
    :cond_5
    const/4 p1, 0x0

    .line 140
    .line 141
    iput p1, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    .line 142
    .line 143
    iput v1, p0, Lcom/narvii/widget/Flipper;->animationMode:I

    .line 144
    .line 145
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    .line 146
    .line 147
    iget-object v1, p0, Lcom/narvii/widget/Flipper;->previousItem:Ljava/lang/Object;

    .line 148
    .line 149
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    invoke-interface {p1, v1, v2}, Lcom/narvii/widget/Flipper$FlipperAdapter;->onMoved(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 156
    .line 157
    :goto_2
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->scrollListener:Lcom/narvii/widget/Flipper$OnFlipperScrollListener;

    .line 158
    .line 159
    if-eqz p1, :cond_6

    .line 160
    .line 161
    iget v1, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    .line 162
    float-to-int v1, v1

    .line 163
    .line 164
    .line 165
    invoke-interface {p1, v1}, Lcom/narvii/widget/Flipper$OnFlipperScrollListener;->onScroll(I)V

    .line 166
    :cond_6
    return v0

    .line 167
    .line 168
    .line 169
    :cond_7
    invoke-virtual {p0, p1}, Lcom/narvii/widget/Flipper;->restorePosition(Z)V

    .line 170
    return v1
.end method

.method public moveToPrevious(Z)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->bind:Lcom/narvii/widget/Flipper;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/widget/Flipper;->moveToPrevious(Z)Z

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->previousItem:Ljava/lang/Object;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-eqz v0, :cond_7

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 20
    .line 21
    :cond_1
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    .line 22
    .line 23
    iput-object v2, p0, Lcom/narvii/widget/Flipper;->nextItem:Ljava/lang/Object;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    .line 26
    .line 27
    iput-object v2, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->previousItem:Ljava/lang/Object;

    .line 30
    .line 31
    iput-object v2, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    .line 34
    .line 35
    iput-object v2, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 39
    move-result v2

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    .line 44
    .line 45
    iget-object v3, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-interface {v2, v3}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getNextItem(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_2
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    invoke-interface {v2, v3}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getPreviousItem(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    :goto_0
    iput-object v2, p0, Lcom/narvii/widget/Flipper;->previousItem:Ljava/lang/Object;

    .line 61
    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    iget-object v3, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    .line 65
    .line 66
    .line 67
    invoke-interface {v3, v2, v0}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getView(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    iput-object v0, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    .line 71
    goto :goto_1

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-direct {p0, v0}, Lcom/narvii/widget/Flipper;->recycle(Landroid/view/View;)V

    .line 75
    const/4 v0, 0x0

    .line 76
    .line 77
    iput-object v0, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    .line 78
    .line 79
    :goto_1
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    .line 86
    :cond_4
    if-eqz p1, :cond_5

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 90
    move-result p1

    .line 91
    .line 92
    iget v0, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    .line 93
    int-to-float p1, p1

    .line 94
    add-float/2addr v0, p1

    .line 95
    .line 96
    iput v0, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    .line 97
    const/4 v2, -0x1

    .line 98
    .line 99
    iput v2, p0, Lcom/narvii/widget/Flipper;->animationMode:I

    .line 100
    float-to-int v0, v0

    .line 101
    .line 102
    iput v0, p0, Lcom/narvii/widget/Flipper;->animationX1:I

    .line 103
    .line 104
    iput v1, p0, Lcom/narvii/widget/Flipper;->animationX2:I

    .line 105
    .line 106
    .line 107
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 108
    move-result-wide v0

    .line 109
    .line 110
    iput-wide v0, p0, Lcom/narvii/widget/Flipper;->animationStartMs:J

    .line 111
    .line 112
    iget v0, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    .line 113
    .line 114
    .line 115
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 116
    move-result v0

    .line 117
    div-float/2addr v0, p1

    .line 118
    .line 119
    const/high16 p1, 0x42f00000    # 120.0f

    .line 120
    mul-float/2addr v0, p1

    .line 121
    float-to-int p1, v0

    .line 122
    .line 123
    add-int/lit8 p1, p1, 0x1e

    .line 124
    .line 125
    iput p1, p0, Lcom/narvii/widget/Flipper;->animationDuration:I

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 129
    .line 130
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    .line 131
    .line 132
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->nextItem:Ljava/lang/Object;

    .line 133
    .line 134
    iget-object v1, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    invoke-interface {p1, v0, v1}, Lcom/narvii/widget/Flipper$FlipperAdapter;->onMoving(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    goto :goto_2

    .line 139
    :cond_5
    const/4 p1, 0x0

    .line 140
    .line 141
    iput p1, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    .line 142
    .line 143
    iput v1, p0, Lcom/narvii/widget/Flipper;->animationMode:I

    .line 144
    .line 145
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    .line 146
    .line 147
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->nextItem:Ljava/lang/Object;

    .line 148
    .line 149
    iget-object v1, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    invoke-interface {p1, v0, v1}, Lcom/narvii/widget/Flipper$FlipperAdapter;->onMoved(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 156
    .line 157
    :goto_2
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->scrollListener:Lcom/narvii/widget/Flipper$OnFlipperScrollListener;

    .line 158
    .line 159
    if-eqz p1, :cond_6

    .line 160
    .line 161
    iget v0, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    .line 162
    float-to-int v0, v0

    .line 163
    .line 164
    .line 165
    invoke-interface {p1, v0}, Lcom/narvii/widget/Flipper$OnFlipperScrollListener;->onScroll(I)V

    .line 166
    :cond_6
    const/4 p1, 0x1

    .line 167
    return p1

    .line 168
    .line 169
    .line 170
    :cond_7
    invoke-virtual {p0, p1}, Lcom/narvii/widget/Flipper;->restorePosition(Z)V

    .line 171
    return v1
.end method

.method public onFling(F)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/high16 v1, -0x3c060000    # -500.0f

    .line 7
    .line 8
    cmpg-float v1, p1, v1

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    if-ltz v1, :cond_3

    .line 12
    .line 13
    iget v1, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    .line 14
    int-to-float v3, v0

    .line 15
    .line 16
    const/high16 v4, 0x40000000    # 2.0f

    .line 17
    div-float/2addr v3, v4

    .line 18
    .line 19
    cmpl-float v3, v1, v3

    .line 20
    .line 21
    if-lez v3, :cond_0

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_0
    const/high16 v3, 0x43fa0000    # 500.0f

    .line 25
    .line 26
    cmpl-float p1, p1, v3

    .line 27
    .line 28
    if-gtz p1, :cond_2

    .line 29
    neg-int p1, v0

    .line 30
    int-to-float p1, p1

    .line 31
    div-float/2addr p1, v4

    .line 32
    .line 33
    cmpg-float p1, v1, p1

    .line 34
    .line 35
    if-gez p1, :cond_1

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p0, v2}, Lcom/narvii/widget/Flipper;->restorePosition(Z)V

    .line 40
    return-void

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Lcom/narvii/widget/Flipper;->moveToPrevious(Z)Z

    .line 44
    return-void

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_1
    invoke-virtual {p0, v2}, Lcom/narvii/widget/Flipper;->moveToNext(Z)Z

    .line 48
    return-void
.end method

.method protected onScrollX(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->bind:Lcom/narvii/widget/Flipper;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/widget/Flipper;->onScrollX(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)V

    .line 8
    .line 9
    :cond_0
    iget p1, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    .line 10
    add-float/2addr p1, p3

    .line 11
    .line 12
    iput p1, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    .line 13
    .line 14
    iget-object p2, p0, Lcom/narvii/widget/Flipper;->scrollListener:Lcom/narvii/widget/Flipper$OnFlipperScrollListener;

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    float-to-int p1, p1

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, p1}, Lcom/narvii/widget/Flipper$OnFlipperScrollListener;->onScroll(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 24
    return-void
.end method

.method public onScrollXEnd()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    .line 7
    neg-int v2, v0

    .line 8
    int-to-float v2, v2

    .line 9
    .line 10
    const/high16 v3, 0x40000000    # 2.0f

    .line 11
    div-float/2addr v2, v3

    .line 12
    .line 13
    cmpg-float v2, v1, v2

    .line 14
    const/4 v4, 0x1

    .line 15
    .line 16
    if-gez v2, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v4}, Lcom/narvii/widget/Flipper;->moveToPrevious(Z)Z

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    int-to-float v0, v0

    .line 22
    div-float/2addr v0, v3

    .line 23
    .line 24
    cmpl-float v0, v1, v0

    .line 25
    .line 26
    if-lez v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v4}, Lcom/narvii/widget/Flipper;->moveToNext(Z)Z

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0, v4}, Lcom/narvii/widget/Flipper;->restorePosition(Z)V

    .line 34
    :goto_0
    return-void
.end method

.method protected onTap()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/widget/Flipper$FlipperAdapter;->onTap(Ljava/lang/Object;)V

    .line 8
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->gestureDetector:Landroid/view/GestureDetector;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x3

    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 26
    move-result v0

    .line 27
    .line 28
    if-ne v0, v2, :cond_1

    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/narvii/widget/Flipper;->isScrolling:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/widget/Flipper;->onScrollXEnd()V

    .line 36
    .line 37
    iput-boolean v3, p0, Lcom/narvii/widget/Flipper;->isScrolling:Z

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 41
    move-result v0

    .line 42
    .line 43
    if-ne v0, v1, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/widget/Flipper;->onScrollXEnd()V

    .line 47
    .line 48
    iput-boolean v3, p0, Lcom/narvii/widget/Flipper;->isScrolling:Z

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 52
    move-result p1

    .line 53
    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    if-eq p1, v2, :cond_3

    .line 57
    .line 58
    if-eq p1, v1, :cond_3

    .line 59
    goto :goto_0

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 63
    .line 64
    iget p1, p0, Lcom/narvii/widget/Flipper;->autoFlipDuration:I

    .line 65
    .line 66
    if-lez p1, :cond_4

    .line 67
    .line 68
    sget-object p1, Lcom/narvii/widget/Flipper;->HANDLER:Landroid/os/Handler;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 72
    .line 73
    iget v0, p0, Lcom/narvii/widget/Flipper;->autoFlipDuration:I

    .line 74
    int-to-long v0, v0

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    .line 79
    :cond_4
    iput-boolean v3, p0, Lcom/narvii/widget/Flipper;->isScrolling:Z

    .line 80
    .line 81
    iput-boolean v3, p0, Lcom/narvii/widget/Flipper;->isTouching:Z

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :cond_5
    sget-object p1, Lcom/narvii/widget/Flipper;->HANDLER:Landroid/os/Handler;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 88
    .line 89
    iput-boolean v2, p0, Lcom/narvii/widget/Flipper;->isTouching:Z

    .line 90
    :goto_0
    return v2
.end method

.method public restorePosition(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->bind:Lcom/narvii/widget/Flipper;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/widget/Flipper;->restorePosition(Z)V

    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    cmpl-float v0, v0, v1

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    return-void

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 22
    move-result p1

    .line 23
    const/4 v1, 0x2

    .line 24
    .line 25
    iput v1, p0, Lcom/narvii/widget/Flipper;->animationMode:I

    .line 26
    .line 27
    iget v1, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    .line 28
    float-to-int v1, v1

    .line 29
    .line 30
    iput v1, p0, Lcom/narvii/widget/Flipper;->animationX1:I

    .line 31
    .line 32
    iput v0, p0, Lcom/narvii/widget/Flipper;->animationX2:I

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 36
    move-result-wide v0

    .line 37
    .line 38
    iput-wide v0, p0, Lcom/narvii/widget/Flipper;->animationStartMs:J

    .line 39
    .line 40
    iget v0, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 44
    move-result v0

    .line 45
    int-to-float p1, p1

    .line 46
    div-float/2addr v0, p1

    .line 47
    .line 48
    const/high16 p1, 0x42f00000    # 120.0f

    .line 49
    mul-float/2addr v0, p1

    .line 50
    float-to-int p1, v0

    .line 51
    .line 52
    add-int/lit8 p1, p1, 0x1e

    .line 53
    .line 54
    iput p1, p0, Lcom/narvii/widget/Flipper;->animationDuration:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_2
    iput v1, p0, Lcom/narvii/widget/Flipper;->flipDistance:F

    .line 61
    .line 62
    iput v0, p0, Lcom/narvii/widget/Flipper;->animationMode:I

    .line 63
    .line 64
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->scrollListener:Lcom/narvii/widget/Flipper$OnFlipperScrollListener;

    .line 65
    .line 66
    if-eqz p1, :cond_3

    .line 67
    float-to-int v0, v1

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v0}, Lcom/narvii/widget/Flipper$OnFlipperScrollListener;->onScroll(I)V

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 74
    :goto_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/Flipper;->autoFlipDuration:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/widget/Flipper;->isTouching:Z

    .line 8
    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/narvii/widget/Flipper;->isScrolling:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v0, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/narvii/widget/Flipper;->moveToNext(Z)Z

    .line 19
    goto :goto_1

    .line 20
    .line 21
    :cond_2
    :goto_0
    sget-object v0, Lcom/narvii/widget/Flipper;->HANDLER:Landroid/os/Handler;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    iget v1, p0, Lcom/narvii/widget/Flipper;->autoFlipDuration:I

    .line 27
    int-to-long v1, v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 31
    :goto_1
    return-void
.end method

.method public setAdapter(Lcom/narvii/widget/Flipper$FlipperAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/widget/Flipper$FlipperAdapter<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    return-void
.end method

.method public setBindFlipper(Lcom/narvii/widget/Flipper;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/Flipper;->bind:Lcom/narvii/widget/Flipper;

    return-void
.end method

.method public setCurrentItem(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/widget/Flipper;->previousItem:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->nextItem:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 12
    move-result v3

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    iget-object v3, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    .line 17
    .line 18
    .line 19
    invoke-interface {v3, p1}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getNextItem(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object v3, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    .line 24
    .line 25
    .line 26
    invoke-interface {v3, p1}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getPreviousItem(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    :goto_0
    iput-object v3, p0, Lcom/narvii/widget/Flipper;->previousItem:Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 33
    move-result v3

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    iget-object v3, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    .line 38
    .line 39
    .line 40
    invoke-interface {v3, p1}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getPreviousItem(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_1
    iget-object v3, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    .line 45
    .line 46
    .line 47
    invoke-interface {v3, p1}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getNextItem(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    :goto_1
    iput-object p1, p0, Lcom/narvii/widget/Flipper;->nextItem:Ljava/lang/Object;

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/Flipper;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    move-result p1

    .line 57
    const/4 v3, 0x0

    .line 58
    .line 59
    if-nez p1, :cond_4

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    .line 62
    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 67
    .line 68
    :cond_2
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    iget-object v4, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    .line 73
    .line 74
    iget-object v5, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    .line 75
    .line 76
    .line 77
    invoke-interface {v4, p1, v5}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getView(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    iput-object p1, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    .line 81
    goto :goto_2

    .line 82
    .line 83
    :cond_3
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, p1}, Lcom/narvii/widget/Flipper;->recycle(Landroid/view/View;)V

    .line 87
    .line 88
    iput-object v3, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    .line 89
    .line 90
    :goto_2
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    .line 91
    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 96
    .line 97
    :cond_4
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->previousItem:Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, p1, v1}, Lcom/narvii/widget/Flipper;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    move-result p1

    .line 102
    .line 103
    if-nez p1, :cond_7

    .line 104
    .line 105
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    .line 106
    .line 107
    if-eqz p1, :cond_5

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 111
    .line 112
    :cond_5
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->previousItem:Ljava/lang/Object;

    .line 113
    .line 114
    if-eqz p1, :cond_6

    .line 115
    .line 116
    iget-object v1, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    .line 117
    .line 118
    iget-object v4, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    .line 119
    .line 120
    .line 121
    invoke-interface {v1, p1, v4}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getView(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    iput-object p1, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    .line 125
    goto :goto_3

    .line 126
    .line 127
    :cond_6
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    .line 128
    .line 129
    .line 130
    invoke-direct {p0, p1}, Lcom/narvii/widget/Flipper;->recycle(Landroid/view/View;)V

    .line 131
    .line 132
    iput-object v3, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    .line 133
    .line 134
    :goto_3
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    .line 135
    .line 136
    if-eqz p1, :cond_7

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 140
    .line 141
    :cond_7
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->nextItem:Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    invoke-direct {p0, p1, v2}, Lcom/narvii/widget/Flipper;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 145
    move-result p1

    .line 146
    .line 147
    if-nez p1, :cond_a

    .line 148
    .line 149
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    .line 150
    .line 151
    if-eqz p1, :cond_8

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 155
    .line 156
    :cond_8
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->nextItem:Ljava/lang/Object;

    .line 157
    .line 158
    if-eqz p1, :cond_9

    .line 159
    .line 160
    iget-object v1, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    .line 161
    .line 162
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    .line 163
    .line 164
    .line 165
    invoke-interface {v1, p1, v2}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getView(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View;

    .line 166
    move-result-object p1

    .line 167
    .line 168
    iput-object p1, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    .line 169
    goto :goto_4

    .line 170
    .line 171
    :cond_9
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    .line 172
    .line 173
    .line 174
    invoke-direct {p0, p1}, Lcom/narvii/widget/Flipper;->recycle(Landroid/view/View;)V

    .line 175
    .line 176
    iput-object v3, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    .line 177
    .line 178
    :goto_4
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    .line 179
    .line 180
    if-eqz p1, :cond_a

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 184
    .line 185
    :cond_a
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    invoke-direct {p0, v0, p1}, Lcom/narvii/widget/Flipper;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    move-result p1

    .line 190
    .line 191
    if-nez p1, :cond_b

    .line 192
    .line 193
    iget-object p1, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    .line 194
    .line 195
    iget-object v1, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    invoke-interface {p1, v0, v1}, Lcom/narvii/widget/Flipper$FlipperAdapter;->onMoved(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    :cond_b
    return-void
.end method

.method public setIsallowInterceptTouchEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/widget/Flipper;->isallowInterceptTouchEvent:Z

    return-void
.end method

.method public setItemSpaceSpanAdjust(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/Flipper;->mItemSpaceAdjust:I

    return-void
.end method

.method public setOnFlipperScrollListener(Lcom/narvii/widget/Flipper$OnFlipperScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/Flipper;->scrollListener:Lcom/narvii/widget/Flipper$OnFlipperScrollListener;

    return-void
.end method

.method public startAutoFlip(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/widget/Flipper;->autoFilp:Z

    .line 4
    .line 5
    iput p1, p0, Lcom/narvii/widget/Flipper;->autoFlipDuration:I

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/widget/Flipper;->HANDLER:Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    int-to-long v1, p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    return-void
.end method

.method public stopAutoFlip()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/widget/Flipper;->autoFilp:Z

    .line 4
    .line 5
    iput v0, p0, Lcom/narvii/widget/Flipper;->autoFlipDuration:I

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/widget/Flipper;->HANDLER:Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    return-void
.end method

.method public update()V
    .locals 4

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
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getNextItem(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getPreviousItem(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    :goto_0
    iput-object v0, p0, Lcom/narvii/widget/Flipper;->previousItem:Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getPreviousItem(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v1}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getNextItem(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    :goto_1
    iput-object v0, p0, Lcom/narvii/widget/Flipper;->nextItem:Ljava/lang/Object;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 58
    .line 59
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->currentItem:Ljava/lang/Object;

    .line 60
    const/4 v1, 0x0

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    .line 65
    .line 66
    iget-object v3, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    .line 67
    .line 68
    .line 69
    invoke-interface {v2, v0, v3}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getView(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    iput-object v0, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    .line 73
    goto :goto_2

    .line 74
    .line 75
    :cond_3
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, v0}, Lcom/narvii/widget/Flipper;->recycle(Landroid/view/View;)V

    .line 79
    .line 80
    iput-object v1, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    .line 81
    .line 82
    :goto_2
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->currentView:Landroid/view/View;

    .line 83
    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    .line 89
    :cond_4
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    .line 90
    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 95
    .line 96
    :cond_5
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->previousItem:Ljava/lang/Object;

    .line 97
    .line 98
    if-eqz v0, :cond_6

    .line 99
    .line 100
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    .line 101
    .line 102
    iget-object v3, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    .line 103
    .line 104
    .line 105
    invoke-interface {v2, v0, v3}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getView(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    iput-object v0, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    .line 109
    goto :goto_3

    .line 110
    .line 111
    :cond_6
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    .line 112
    .line 113
    .line 114
    invoke-direct {p0, v0}, Lcom/narvii/widget/Flipper;->recycle(Landroid/view/View;)V

    .line 115
    .line 116
    iput-object v1, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    .line 117
    .line 118
    :goto_3
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->previousView:Landroid/view/View;

    .line 119
    .line 120
    if-eqz v0, :cond_7

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 124
    .line 125
    :cond_7
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    .line 126
    .line 127
    if-eqz v0, :cond_8

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 131
    .line 132
    :cond_8
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->nextItem:Ljava/lang/Object;

    .line 133
    .line 134
    if-eqz v0, :cond_9

    .line 135
    .line 136
    iget-object v1, p0, Lcom/narvii/widget/Flipper;->adapter:Lcom/narvii/widget/Flipper$FlipperAdapter;

    .line 137
    .line 138
    iget-object v2, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    .line 139
    .line 140
    .line 141
    invoke-interface {v1, v0, v2}, Lcom/narvii/widget/Flipper$FlipperAdapter;->getView(Ljava/lang/Object;Landroid/view/View;)Landroid/view/View;

    .line 142
    move-result-object v0

    .line 143
    .line 144
    iput-object v0, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    .line 145
    goto :goto_4

    .line 146
    .line 147
    :cond_9
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    .line 148
    .line 149
    .line 150
    invoke-direct {p0, v0}, Lcom/narvii/widget/Flipper;->recycle(Landroid/view/View;)V

    .line 151
    .line 152
    iput-object v1, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    .line 153
    .line 154
    :goto_4
    iget-object v0, p0, Lcom/narvii/widget/Flipper;->nextView:Landroid/view/View;

    .line 155
    .line 156
    if-eqz v0, :cond_a

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 160
    :cond_a
    return-void
.end method
