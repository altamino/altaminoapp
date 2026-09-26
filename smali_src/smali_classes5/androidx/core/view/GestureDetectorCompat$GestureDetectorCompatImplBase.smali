.class Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/GestureDetectorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GestureDetectorCompatImplBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final LONG_PRESS:I = 0x2

.field private static final SHOW_PRESS:I = 0x1

.field private static final TAP:I = 0x3

.field private static final TAP_TIMEOUT:I


# instance fields
.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field mCurrentDownEvent:Landroid/view/MotionEvent;

.field mDeferConfirmSingleTap:Z

.field mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private final mHandler:Landroid/os/Handler;

.field private mInLongPress:Z

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field final mListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field mStillDown:Z

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sput v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->TAP_TIMEOUT:I

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    .line 10
    move-result v0

    .line 11
    .line 12
    sput v0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->DOUBLE_TAP_TIMEOUT:I

    .line 13
    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    .line 9
    const/4 v1, 0x2

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    .line 15
    const/4 v1, 0x3

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 24
    const/4 v0, 0x0

    .line 25
    .line 26
    iput-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 27
    const/4 v0, 0x0

    .line 28
    .line 29
    iput-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mStillDown:Z

    .line 32
    .line 33
    iput-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    .line 36
    .line 37
    iput-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    .line 38
    .line 39
    iget-boolean v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    iput-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    .line 44
    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    .line 9
    const/4 v1, 0x2

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    .line 15
    const/4 v1, 0x3

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    iput-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    .line 28
    .line 29
    iget-boolean v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    iput-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    .line 34
    :cond_0
    return-void
.end method

.method private d(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    .line 10
    move-result-wide v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 14
    move-result-wide v4

    .line 15
    sub-long/2addr v2, v4

    .line 16
    .line 17
    sget p2, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->DOUBLE_TAP_TIMEOUT:I

    .line 18
    int-to-long v4, p2

    .line 19
    .line 20
    cmp-long p2, v2, v4

    .line 21
    .line 22
    if-lez p2, :cond_1

    .line 23
    return v1

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 27
    move-result p2

    .line 28
    float-to-int p2, p2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 32
    move-result v0

    .line 33
    float-to-int v0, v0

    .line 34
    sub-int/2addr p2, v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 38
    move-result p1

    .line 39
    float-to-int p1, p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 43
    move-result p3

    .line 44
    float-to-int p3, p3

    .line 45
    sub-int/2addr p1, p3

    .line 46
    mul-int/2addr p2, p2

    .line 47
    mul-int/2addr p1, p1

    .line 48
    add-int/2addr p2, p1

    .line 49
    .line 50
    iget p1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapSlopSquare:I

    .line 51
    .line 52
    if-ge p2, p1, :cond_2

    .line 53
    const/4 v1, 0x1

    .line 54
    :cond_2
    return v1
.end method


# virtual methods
.method c()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    .line 3
    const/4 v1, 0x3

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    .line 10
    const/4 v0, 0x1

    .line 11
    .line 12
    iput-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 20
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    iput-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 20
    .line 21
    and-int/lit16 v0, v0, 0xff

    .line 22
    const/4 v1, 0x6

    .line 23
    const/4 v2, 0x1

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    move v4, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v4, v3

    .line 30
    .line 31
    :goto_0
    if-eqz v4, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 35
    move-result v5

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const/4 v5, -0x1

    .line 38
    .line 39
    .line 40
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 41
    move-result v6

    .line 42
    const/4 v7, 0x0

    .line 43
    move v8, v3

    .line 44
    move v9, v7

    .line 45
    move v10, v9

    .line 46
    .line 47
    :goto_2
    if-ge v8, v6, :cond_4

    .line 48
    .line 49
    if-ne v5, v8, :cond_3

    .line 50
    goto :goto_3

    .line 51
    .line 52
    .line 53
    :cond_3
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    .line 54
    move-result v11

    .line 55
    add-float/2addr v9, v11

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    .line 59
    move-result v11

    .line 60
    add-float/2addr v10, v11

    .line 61
    .line 62
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 63
    goto :goto_2

    .line 64
    .line 65
    :cond_4
    if-eqz v4, :cond_5

    .line 66
    .line 67
    add-int/lit8 v4, v6, -0x1

    .line 68
    goto :goto_4

    .line 69
    :cond_5
    move v4, v6

    .line 70
    :goto_4
    int-to-float v4, v4

    .line 71
    div-float/2addr v9, v4

    .line 72
    div-float/2addr v10, v4

    .line 73
    const/4 v4, 0x2

    .line 74
    const/4 v5, 0x3

    .line 75
    .line 76
    if-eqz v0, :cond_1b

    .line 77
    .line 78
    const/16 v8, 0x3e8

    .line 79
    .line 80
    if-eq v0, v2, :cond_12

    .line 81
    .line 82
    if-eq v0, v4, :cond_b

    .line 83
    .line 84
    if-eq v0, v5, :cond_a

    .line 85
    const/4 v2, 0x5

    .line 86
    .line 87
    if-eq v0, v2, :cond_9

    .line 88
    .line 89
    if-eq v0, v1, :cond_6

    .line 90
    .line 91
    goto/16 :goto_d

    .line 92
    .line 93
    :cond_6
    iput v9, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    .line 94
    .line 95
    iput v9, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusX:F

    .line 96
    .line 97
    iput v10, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    .line 98
    .line 99
    iput v10, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusY:F

    .line 100
    .line 101
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 102
    .line 103
    iget v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMaximumFlingVelocity:I

    .line 104
    int-to-float v1, v1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v8, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 111
    move-result v0

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 115
    move-result v1

    .line 116
    .line 117
    iget-object v2, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 121
    move-result v2

    .line 122
    .line 123
    iget-object v4, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 127
    move-result v1

    .line 128
    move v4, v3

    .line 129
    .line 130
    :goto_5
    if-ge v4, v6, :cond_21

    .line 131
    .line 132
    if-ne v4, v0, :cond_7

    .line 133
    goto :goto_6

    .line 134
    .line 135
    .line 136
    :cond_7
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 137
    move-result v5

    .line 138
    .line 139
    iget-object v8, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v8, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 143
    move-result v8

    .line 144
    mul-float/2addr v8, v2

    .line 145
    .line 146
    iget-object v9, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v9, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 150
    move-result v5

    .line 151
    mul-float/2addr v5, v1

    .line 152
    add-float/2addr v8, v5

    .line 153
    .line 154
    cmpg-float v5, v8, v7

    .line 155
    .line 156
    if-gez v5, :cond_8

    .line 157
    .line 158
    iget-object p1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 162
    .line 163
    goto/16 :goto_d

    .line 164
    .line 165
    :cond_8
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 166
    goto :goto_5

    .line 167
    .line 168
    :cond_9
    iput v9, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    .line 169
    .line 170
    iput v9, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusX:F

    .line 171
    .line 172
    iput v10, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    .line 173
    .line 174
    iput v10, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusY:F

    .line 175
    .line 176
    .line 177
    invoke-direct {p0}, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->b()V

    .line 178
    .line 179
    goto/16 :goto_d

    .line 180
    .line 181
    .line 182
    :cond_a
    invoke-direct {p0}, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->a()V

    .line 183
    .line 184
    goto/16 :goto_d

    .line 185
    .line 186
    :cond_b
    iget-boolean v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    .line 187
    .line 188
    if-eqz v0, :cond_c

    .line 189
    .line 190
    goto/16 :goto_d

    .line 191
    .line 192
    :cond_c
    iget v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    .line 193
    sub-float/2addr v0, v9

    .line 194
    .line 195
    iget v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    .line 196
    sub-float/2addr v1, v10

    .line 197
    .line 198
    iget-boolean v6, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    .line 199
    .line 200
    if-eqz v6, :cond_d

    .line 201
    .line 202
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 203
    .line 204
    .line 205
    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    .line 206
    move-result v3

    .line 207
    .line 208
    goto/16 :goto_d

    .line 209
    .line 210
    :cond_d
    iget-boolean v6, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    .line 211
    .line 212
    if-eqz v6, :cond_10

    .line 213
    .line 214
    iget v6, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusX:F

    .line 215
    .line 216
    sub-float v6, v9, v6

    .line 217
    float-to-int v6, v6

    .line 218
    .line 219
    iget v7, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusY:F

    .line 220
    .line 221
    sub-float v7, v10, v7

    .line 222
    float-to-int v7, v7

    .line 223
    mul-int/2addr v6, v6

    .line 224
    mul-int/2addr v7, v7

    .line 225
    add-int/2addr v6, v7

    .line 226
    .line 227
    iget v7, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mTouchSlopSquare:I

    .line 228
    .line 229
    if-le v6, v7, :cond_e

    .line 230
    .line 231
    iget-object v7, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 232
    .line 233
    iget-object v8, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 234
    .line 235
    .line 236
    invoke-interface {v7, v8, p1, v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 237
    move-result p1

    .line 238
    .line 239
    iput v9, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    .line 240
    .line 241
    iput v10, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    .line 242
    .line 243
    iput-boolean v3, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    .line 244
    .line 245
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 249
    .line 250
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 254
    .line 255
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 259
    goto :goto_7

    .line 260
    :cond_e
    move p1, v3

    .line 261
    .line 262
    :goto_7
    iget v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mTouchSlopSquare:I

    .line 263
    .line 264
    if-le v6, v0, :cond_f

    .line 265
    .line 266
    iput-boolean v3, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    .line 267
    :cond_f
    :goto_8
    move v3, p1

    .line 268
    .line 269
    goto/16 :goto_d

    .line 270
    .line 271
    .line 272
    :cond_10
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 273
    move-result v2

    .line 274
    .line 275
    const/high16 v4, 0x3f800000    # 1.0f

    .line 276
    .line 277
    cmpl-float v2, v2, v4

    .line 278
    .line 279
    if-gez v2, :cond_11

    .line 280
    .line 281
    .line 282
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 283
    move-result v2

    .line 284
    .line 285
    cmpl-float v2, v2, v4

    .line 286
    .line 287
    if-ltz v2, :cond_21

    .line 288
    .line 289
    :cond_11
    iget-object v2, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 290
    .line 291
    iget-object v3, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 292
    .line 293
    .line 294
    invoke-interface {v2, v3, p1, v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 295
    move-result v3

    .line 296
    .line 297
    iput v9, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    .line 298
    .line 299
    iput v10, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    .line 300
    .line 301
    goto/16 :goto_d

    .line 302
    .line 303
    :cond_12
    iput-boolean v3, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mStillDown:Z

    .line 304
    .line 305
    .line 306
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 307
    move-result-object v0

    .line 308
    .line 309
    iget-boolean v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    .line 310
    .line 311
    if-eqz v1, :cond_13

    .line 312
    .line 313
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 314
    .line 315
    .line 316
    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    .line 317
    move-result p1

    .line 318
    goto :goto_b

    .line 319
    .line 320
    :cond_13
    iget-boolean v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    .line 321
    .line 322
    if-eqz v1, :cond_14

    .line 323
    .line 324
    iget-object p1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 328
    .line 329
    iput-boolean v3, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    .line 330
    goto :goto_9

    .line 331
    .line 332
    :cond_14
    iget-boolean v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    .line 333
    .line 334
    if-eqz v1, :cond_16

    .line 335
    .line 336
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 337
    .line 338
    .line 339
    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    .line 340
    move-result v1

    .line 341
    .line 342
    iget-boolean v5, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    .line 343
    .line 344
    if-eqz v5, :cond_15

    .line 345
    .line 346
    iget-object v5, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 347
    .line 348
    if-eqz v5, :cond_15

    .line 349
    .line 350
    .line 351
    invoke-interface {v5, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    .line 352
    :cond_15
    move p1, v1

    .line 353
    goto :goto_b

    .line 354
    .line 355
    :cond_16
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 356
    .line 357
    .line 358
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 359
    move-result v5

    .line 360
    .line 361
    iget v6, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMaximumFlingVelocity:I

    .line 362
    int-to-float v6, v6

    .line 363
    .line 364
    .line 365
    invoke-virtual {v1, v8, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v1, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 369
    move-result v6

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 373
    move-result v1

    .line 374
    .line 375
    .line 376
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 377
    move-result v5

    .line 378
    .line 379
    iget v7, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMinimumFlingVelocity:I

    .line 380
    int-to-float v7, v7

    .line 381
    .line 382
    cmpl-float v5, v5, v7

    .line 383
    .line 384
    if-gtz v5, :cond_18

    .line 385
    .line 386
    .line 387
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 388
    move-result v5

    .line 389
    .line 390
    iget v7, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mMinimumFlingVelocity:I

    .line 391
    int-to-float v7, v7

    .line 392
    .line 393
    cmpl-float v5, v5, v7

    .line 394
    .line 395
    if-lez v5, :cond_17

    .line 396
    goto :goto_a

    .line 397
    :cond_17
    :goto_9
    move p1, v3

    .line 398
    goto :goto_b

    .line 399
    .line 400
    :cond_18
    :goto_a
    iget-object v5, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 401
    .line 402
    iget-object v7, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 403
    .line 404
    .line 405
    invoke-interface {v5, v7, p1, v1, v6}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 406
    move-result p1

    .line 407
    .line 408
    :goto_b
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 409
    .line 410
    if-eqz v1, :cond_19

    .line 411
    .line 412
    .line 413
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 414
    .line 415
    :cond_19
    iput-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 416
    .line 417
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 418
    .line 419
    if-eqz v0, :cond_1a

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 423
    const/4 v0, 0x0

    .line 424
    .line 425
    iput-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 426
    .line 427
    :cond_1a
    iput-boolean v3, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    .line 428
    .line 429
    iput-boolean v3, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    .line 430
    .line 431
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 435
    .line 436
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 440
    .line 441
    goto/16 :goto_8

    .line 442
    .line 443
    :cond_1b
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 444
    .line 445
    if-eqz v0, :cond_1e

    .line 446
    .line 447
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    .line 451
    move-result v0

    .line 452
    .line 453
    if-eqz v0, :cond_1c

    .line 454
    .line 455
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 459
    .line 460
    :cond_1c
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 461
    .line 462
    if-eqz v1, :cond_1d

    .line 463
    .line 464
    iget-object v6, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 465
    .line 466
    if-eqz v6, :cond_1d

    .line 467
    .line 468
    if-eqz v0, :cond_1d

    .line 469
    .line 470
    .line 471
    invoke-direct {p0, v1, v6, p1}, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->d(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    .line 472
    move-result v0

    .line 473
    .line 474
    if-eqz v0, :cond_1d

    .line 475
    .line 476
    iput-boolean v2, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    .line 477
    .line 478
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 479
    .line 480
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 481
    .line 482
    .line 483
    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    .line 484
    move-result v0

    .line 485
    .line 486
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 487
    .line 488
    .line 489
    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    .line 490
    move-result v1

    .line 491
    or-int/2addr v0, v1

    .line 492
    goto :goto_c

    .line 493
    .line 494
    :cond_1d
    iget-object v0, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    .line 495
    .line 496
    sget v1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->DOUBLE_TAP_TIMEOUT:I

    .line 497
    int-to-long v6, v1

    .line 498
    .line 499
    .line 500
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 501
    :cond_1e
    move v0, v3

    .line 502
    .line 503
    :goto_c
    iput v9, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusX:F

    .line 504
    .line 505
    iput v9, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusX:F

    .line 506
    .line 507
    iput v10, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mLastFocusY:F

    .line 508
    .line 509
    iput v10, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDownFocusY:F

    .line 510
    .line 511
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 512
    .line 513
    if-eqz v1, :cond_1f

    .line 514
    .line 515
    .line 516
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 517
    .line 518
    .line 519
    :cond_1f
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 520
    move-result-object v1

    .line 521
    .line 522
    iput-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 523
    .line 524
    iput-boolean v2, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    .line 525
    .line 526
    iput-boolean v2, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    .line 527
    .line 528
    iput-boolean v2, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mStillDown:Z

    .line 529
    .line 530
    iput-boolean v3, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mInLongPress:Z

    .line 531
    .line 532
    iput-boolean v3, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    .line 533
    .line 534
    iget-boolean v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mIsLongpressEnabled:Z

    .line 535
    .line 536
    if-eqz v1, :cond_20

    .line 537
    .line 538
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 542
    .line 543
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    .line 544
    .line 545
    iget-object v3, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 546
    .line 547
    .line 548
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    .line 549
    move-result-wide v5

    .line 550
    .line 551
    sget v3, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->TAP_TIMEOUT:I

    .line 552
    int-to-long v7, v3

    .line 553
    add-long/2addr v5, v7

    .line 554
    .line 555
    .line 556
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 557
    move-result v3

    .line 558
    int-to-long v7, v3

    .line 559
    add-long/2addr v5, v7

    .line 560
    .line 561
    .line 562
    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 563
    .line 564
    :cond_20
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    .line 565
    .line 566
    iget-object v3, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    .line 570
    move-result-wide v3

    .line 571
    .line 572
    sget v5, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->TAP_TIMEOUT:I

    .line 573
    int-to-long v5, v5

    .line 574
    add-long/2addr v3, v5

    .line 575
    .line 576
    .line 577
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 578
    .line 579
    iget-object v1, p0, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 580
    .line 581
    .line 582
    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    .line 583
    move-result p1

    .line 584
    .line 585
    or-int v3, v0, p1

    .line 586
    :cond_21
    :goto_d
    return v3
.end method
