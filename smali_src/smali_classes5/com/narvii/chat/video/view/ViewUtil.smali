.class public Lcom/narvii/chat/video/view/ViewUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final DEBUG_ENABLED:Z = false

.field private static final DEFAULT_TOUCH_TIMESTAMP:I = -0x1

.field private static final TOUCH_COOL_DOWN_TIME:I = 0x1f4

.field private static mLastTouchTime:J = -0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static final checkDoubleKeyEvent(Landroid/view/KeyEvent;Landroid/view/View;)Z
    .locals 7

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "dispatchKeyEvent "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    sget-wide v1, Lcom/narvii/chat/video/view/ViewUtil;->mLastTouchTime:J

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, " "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    .line 34
    move-result v0

    .line 35
    const/4 v2, 0x0

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 41
    move-result p0

    .line 42
    .line 43
    const/16 v0, 0x42

    .line 44
    .line 45
    if-ne p0, v0, :cond_1

    .line 46
    .line 47
    sget-wide v3, Lcom/narvii/chat/video/view/ViewUtil;->mLastTouchTime:J

    .line 48
    .line 49
    const-wide/16 v5, -0x1

    .line 50
    .line 51
    cmp-long p0, v3, v5

    .line 52
    .line 53
    if-eqz p0, :cond_0

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 57
    move-result-wide v3

    .line 58
    .line 59
    sget-wide v5, Lcom/narvii/chat/video/view/ViewUtil;->mLastTouchTime:J

    .line 60
    sub-long/2addr v3, v5

    .line 61
    .line 62
    const-wide/16 v5, 0x1f4

    .line 63
    .line 64
    cmp-long p0, v3, v5

    .line 65
    .line 66
    if-gez p0, :cond_0

    .line 67
    .line 68
    new-instance p0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    const-string v0, "too many key events "

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 90
    .line 91
    .line 92
    invoke-static {p0}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;)V

    .line 93
    const/4 p0, 0x1

    .line 94
    return p0

    .line 95
    .line 96
    .line 97
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 98
    move-result-wide p0

    .line 99
    .line 100
    sput-wide p0, Lcom/narvii/chat/video/view/ViewUtil;->mLastTouchTime:J

    .line 101
    :cond_1
    return v2
.end method

.method static final checkDoubleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 6

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "dispatchTouchEvent "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    sget-wide v1, Lcom/narvii/chat/video/view/ViewUtil;->mLastTouchTime:J

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, " "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    .line 34
    move-result p0

    .line 35
    const/4 v0, 0x0

    .line 36
    .line 37
    if-nez p0, :cond_2

    .line 38
    .line 39
    sget-wide v2, Lcom/narvii/chat/video/view/ViewUtil;->mLastTouchTime:J

    .line 40
    .line 41
    const-wide/16 v4, -0x1

    .line 42
    .line 43
    cmp-long p0, v2, v4

    .line 44
    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 49
    move-result-wide v2

    .line 50
    .line 51
    sget-wide v4, Lcom/narvii/chat/video/view/ViewUtil;->mLastTouchTime:J

    .line 52
    sub-long/2addr v2, v4

    .line 53
    .line 54
    const-wide/16 v4, 0x1f4

    .line 55
    .line 56
    cmp-long p0, v2, v4

    .line 57
    .line 58
    if-ltz p0, :cond_0

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    const-string v2, "too many touch events "

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 83
    .line 84
    .line 85
    invoke-static {p0}, Lcom/narvii/video/ui/Utils;->log(Ljava/lang/String;)V

    .line 86
    const/4 p0, 0x1

    .line 87
    return p0

    .line 88
    .line 89
    .line 90
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 91
    move-result-wide p0

    .line 92
    .line 93
    sput-wide p0, Lcom/narvii/chat/video/view/ViewUtil;->mLastTouchTime:J

    .line 94
    :cond_2
    return v0
.end method

.method public static composeVideoInfoString(Landroid/content/Context;Lcom/narvii/video/ui/VideoInfoData;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    iget v0, p1, Lcom/narvii/video/ui/VideoInfoData;->mWidth:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v0, "x"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    iget v0, p1, Lcom/narvii/video/ui/VideoInfoData;->mHeight:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v0, ", "

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    iget v1, p1, Lcom/narvii/video/ui/VideoInfoData;->mFrameRate:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    iget p1, p1, Lcom/narvii/video/ui/VideoInfoData;->mBitRate:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    return-void
.end method
