.class Lcom/narvii/chat/screenroom/widgets/SRVideoController$SeekbarTouchArea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/widgets/SRVideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekbarTouchArea"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;


# direct methods
.method private constructor <init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$SeekbarTouchArea;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;Lcom/narvii/chat/screenroom/widgets/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController$SeekbarTouchArea;-><init>(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$SeekbarTouchArea;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->d(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Landroid/widget/ProgressBar;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$SeekbarTouchArea;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->d(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Landroid/widget/ProgressBar;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 19
    move-result p1

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    goto/16 :goto_1

    .line 24
    .line 25
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    .line 26
    .line 27
    .line 28
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$SeekbarTouchArea;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->d(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Landroid/widget/ProgressBar;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 41
    move-result v1

    .line 42
    .line 43
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 44
    int-to-float v2, v2

    .line 45
    .line 46
    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$SeekbarTouchArea;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    const/high16 v4, 0x41200000    # 10.0f

    .line 53
    .line 54
    .line 55
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 56
    move-result v3

    .line 57
    sub-float/2addr v2, v3

    .line 58
    .line 59
    cmpl-float v1, v1, v2

    .line 60
    .line 61
    if-ltz v1, :cond_3

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 65
    move-result v1

    .line 66
    .line 67
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 68
    int-to-float v2, v2

    .line 69
    .line 70
    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$SeekbarTouchArea;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 74
    move-result-object v3

    .line 75
    .line 76
    .line 77
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 78
    move-result v3

    .line 79
    add-float/2addr v2, v3

    .line 80
    .line 81
    cmpg-float v1, v1, v2

    .line 82
    .line 83
    if-gtz v1, :cond_3

    .line 84
    .line 85
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 89
    move-result v1

    .line 90
    .line 91
    div-int/lit8 v1, v1, 0x2

    .line 92
    add-int/2addr v0, v1

    .line 93
    int-to-float v7, v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 97
    move-result v0

    .line 98
    .line 99
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 100
    int-to-float v1, v1

    .line 101
    sub-float/2addr v0, v1

    .line 102
    const/4 v1, 0x0

    .line 103
    .line 104
    cmpg-float v2, v0, v1

    .line 105
    .line 106
    if-gez v2, :cond_1

    .line 107
    move v6, v1

    .line 108
    goto :goto_0

    .line 109
    .line 110
    .line 111
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 112
    move-result v1

    .line 113
    int-to-float v1, v1

    .line 114
    .line 115
    cmpl-float v1, v0, v1

    .line 116
    .line 117
    if-lez v1, :cond_2

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 121
    move-result p1

    .line 122
    int-to-float p1, p1

    .line 123
    move v6, p1

    .line 124
    goto :goto_0

    .line 125
    :cond_2
    move v6, v0

    .line 126
    .line 127
    .line 128
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    .line 129
    move-result-wide v1

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 133
    move-result-wide v3

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 137
    move-result v5

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getMetaState()I

    .line 141
    move-result v8

    .line 142
    .line 143
    .line 144
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    iget-object p2, p0, Lcom/narvii/chat/screenroom/widgets/SRVideoController$SeekbarTouchArea;->this$0:Lcom/narvii/chat/screenroom/widgets/SRVideoController;

    .line 148
    .line 149
    .line 150
    invoke-static {p2}, Lcom/narvii/chat/screenroom/widgets/SRVideoController;->d(Lcom/narvii/chat/screenroom/widgets/SRVideoController;)Landroid/widget/ProgressBar;

    .line 151
    move-result-object p2

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 155
    move-result p1

    .line 156
    return p1

    .line 157
    :cond_3
    :goto_1
    return v0
.end method
