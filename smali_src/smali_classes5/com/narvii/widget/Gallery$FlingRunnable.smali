.class Lcom/narvii/widget/Gallery$FlingRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingX:I

.field private final mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/narvii/widget/Gallery;


# direct methods
.method public constructor <init>(Lcom/narvii/widget/Gallery;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    new-instance v0, Landroid/widget/Scroller;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 17
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/widget/Gallery$FlingRunnable;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/widget/Gallery$FlingRunnable;->endFling(Z)V

    return-void
.end method

.method private endFling(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/widget/Gallery;->i(Lcom/narvii/widget/Gallery;)V

    .line 14
    :cond_0
    return-void
.end method

.method private startCommon()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    .line 3
    .line 4
    iget v1, v0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v2}, Lcom/narvii/widget/Gallery$FlingRunnable;->endFling(Z)V

    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/narvii/widget/Gallery;->f(Lcom/narvii/widget/Gallery;Z)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    .line 25
    move-result v0

    .line 26
    .line 27
    iget v3, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 28
    sub-int/2addr v3, v0

    .line 29
    .line 30
    if-lez v3, :cond_2

    .line 31
    .line 32
    iget-object v4, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    .line 33
    .line 34
    .line 35
    invoke-static {v4}, Lcom/narvii/widget/Gallery;->c(Lcom/narvii/widget/Gallery;)Z

    .line 36
    move-result v5

    .line 37
    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    iget-object v5, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    .line 41
    .line 42
    iget v6, v5, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 46
    move-result v5

    .line 47
    add-int/2addr v6, v5

    .line 48
    sub-int/2addr v6, v2

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_1
    iget-object v5, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    .line 52
    .line 53
    iget v6, v5, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-static {v4, v6}, Lcom/narvii/widget/Gallery;->e(Lcom/narvii/widget/Gallery;I)V

    .line 57
    .line 58
    iget-object v4, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 62
    move-result v4

    .line 63
    .line 64
    iget-object v5, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    .line 68
    move-result v5

    .line 69
    sub-int/2addr v4, v5

    .line 70
    .line 71
    iget-object v5, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    .line 75
    move-result v5

    .line 76
    sub-int/2addr v4, v5

    .line 77
    sub-int/2addr v4, v2

    .line 78
    .line 79
    .line 80
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    .line 81
    move-result v3

    .line 82
    goto :goto_2

    .line 83
    .line 84
    :cond_2
    iget-object v4, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    .line 85
    .line 86
    .line 87
    invoke-static {v4}, Lcom/narvii/widget/Gallery;->c(Lcom/narvii/widget/Gallery;)Z

    .line 88
    move-result v5

    .line 89
    .line 90
    if-eqz v5, :cond_3

    .line 91
    .line 92
    iget-object v5, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    .line 93
    .line 94
    iget v5, v5, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 95
    goto :goto_1

    .line 96
    .line 97
    :cond_3
    iget-object v5, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    .line 98
    .line 99
    iget v6, v5, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 103
    move-result v5

    .line 104
    add-int/2addr v6, v5

    .line 105
    .line 106
    add-int/lit8 v5, v6, -0x1

    .line 107
    .line 108
    .line 109
    :goto_1
    invoke-static {v4, v5}, Lcom/narvii/widget/Gallery;->e(Lcom/narvii/widget/Gallery;I)V

    .line 110
    .line 111
    iget-object v4, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 115
    move-result v4

    .line 116
    .line 117
    iget-object v5, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    .line 121
    move-result v5

    .line 122
    sub-int/2addr v4, v5

    .line 123
    .line 124
    iget-object v5, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    .line 128
    move-result v5

    .line 129
    sub-int/2addr v4, v5

    .line 130
    sub-int/2addr v4, v2

    .line 131
    neg-int v4, v4

    .line 132
    .line 133
    .line 134
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 135
    move-result v3

    .line 136
    .line 137
    :goto_2
    iget-object v4, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v3}, Lcom/narvii/widget/Gallery;->trackMotionScroll(I)V

    .line 141
    .line 142
    if-eqz v1, :cond_4

    .line 143
    .line 144
    iget-object v1, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    .line 145
    .line 146
    .line 147
    invoke-static {v1}, Lcom/narvii/widget/Gallery;->d(Lcom/narvii/widget/Gallery;)Z

    .line 148
    move-result v1

    .line 149
    .line 150
    if-nez v1, :cond_4

    .line 151
    .line 152
    iput v0, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 153
    .line 154
    iget-object v0, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 158
    goto :goto_3

    .line 159
    .line 160
    .line 161
    :cond_4
    invoke-direct {p0, v2}, Lcom/narvii/widget/Gallery$FlingRunnable;->endFling(Z)V

    .line 162
    :goto_3
    return-void
.end method

.method public startUsingDistance(I)V
    .locals 7

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/narvii/widget/Gallery$FlingRunnable;->startCommon()V

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput v0, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    neg-int v4, p1

    .line 15
    const/4 v5, 0x0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/narvii/widget/Gallery;->b(Lcom/narvii/widget/Gallery;)I

    .line 21
    move-result v6

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 30
    return-void
.end method

.method public startUsingVelocity(I)V
    .locals 10

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/narvii/widget/Gallery$FlingRunnable;->startCommon()V

    .line 7
    .line 8
    if-gez p1, :cond_1

    .line 9
    .line 10
    .line 11
    const v0, 0x7fffffff

    .line 12
    :goto_0
    move v2, v0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :goto_1
    iput v2, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v6, 0x0

    .line 23
    .line 24
    .line 25
    const v7, 0x7fffffff

    .line 26
    const/4 v8, 0x0

    .line 27
    .line 28
    .line 29
    const v9, 0x7fffffff

    .line 30
    move v4, p1

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 39
    return-void
.end method

.method public stop(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/Gallery$FlingRunnable;->this$0:Lcom/narvii/widget/Gallery;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/narvii/widget/Gallery$FlingRunnable;->endFling(Z)V

    .line 9
    return-void
.end method
