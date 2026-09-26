.class public Lcom/narvii/widget/LongPushButton;
.super Lcom/narvii/widget/PushButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/LongPushButton$AllowLongPushListener;,
        Lcom/narvii/widget/LongPushButton$DispatchSetPressedListener;
    }
.end annotation


# static fields
.field static final hsv:[F


# instance fields
.field allowLongPushListener:Lcom/narvii/widget/LongPushButton$AllowLongPushListener;

.field contentColorEnd:I

.field contentColorStart:I

.field private contentGradientDelegate:Lcom/narvii/widget/shader/LinearGradientDelegate;

.field dispatchSetPressedListener:Lcom/narvii/widget/LongPushButton$DispatchSetPressedListener;

.field dropDuration:J

.field growDuration:J

.field lock:Z

.field public longPressCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/widget/LongPushButton;",
            ">;"
        }
    .end annotation
.end field

.field lt:J

.field p:F

.field resetPress:Z

.field shadowColorEnd:I

.field shadowColorStart:I

.field private shadowGradientDelegate:Lcom/narvii/widget/shader/LinearGradientDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    sput-object v0, Lcom/narvii/widget/LongPushButton;->hsv:[F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/PushButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    const-wide/16 p1, 0x190

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/narvii/widget/LongPushButton;->growDuration:J

    .line 8
    .line 9
    const-wide/16 p1, 0x12c

    .line 10
    .line 11
    iput-wide p1, p0, Lcom/narvii/widget/LongPushButton;->dropDuration:J

    .line 12
    .line 13
    new-instance p1, Lcom/narvii/widget/shader/LinearGradientDelegate;

    .line 14
    .line 15
    .line 16
    invoke-direct {p1}, Lcom/narvii/widget/shader/LinearGradientDelegate;-><init>()V

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/widget/LongPushButton;->contentGradientDelegate:Lcom/narvii/widget/shader/LinearGradientDelegate;

    .line 19
    .line 20
    new-instance p1, Lcom/narvii/widget/shader/LinearGradientDelegate;

    .line 21
    .line 22
    .line 23
    invoke-direct {p1}, Lcom/narvii/widget/shader/LinearGradientDelegate;-><init>()V

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/widget/LongPushButton;->shadowGradientDelegate:Lcom/narvii/widget/shader/LinearGradientDelegate;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    sget p2, Lcom/narvii/lib/R$color;->poll_vote_btn_start_color:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 35
    move-result p1

    .line 36
    .line 37
    iput p1, p0, Lcom/narvii/widget/LongPushButton;->contentColorStart:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    sget p2, Lcom/narvii/lib/R$color;->poll_vote_btn_end_color:I

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 47
    move-result p1

    .line 48
    .line 49
    iput p1, p0, Lcom/narvii/widget/LongPushButton;->contentColorEnd:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    sget p2, Lcom/narvii/lib/R$color;->long_push_btn_shadow_start_color:I

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 59
    move-result p1

    .line 60
    .line 61
    iput p1, p0, Lcom/narvii/widget/LongPushButton;->shadowColorStart:I

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    sget p2, Lcom/narvii/lib/R$color;->long_push_btn_shadow_end_color:I

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 71
    move-result p1

    .line 72
    .line 73
    iput p1, p0, Lcom/narvii/widget/LongPushButton;->shadowColorEnd:I

    .line 74
    return-void
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 5

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/widget/LongPushButton;->allowLongPushListener:Lcom/narvii/widget/LongPushButton$AllowLongPushListener;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Lcom/narvii/widget/LongPushButton$AllowLongPushListener;->allowLongPush()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/widget/PushButton;->dispatchSetPressed(Z)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/widget/LongPushButton;->dispatchSetPressedListener:Lcom/narvii/widget/LongPushButton$DispatchSetPressedListener;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p1}, Lcom/narvii/widget/LongPushButton$DispatchSetPressedListener;->onPress(Z)V

    .line 24
    .line 25
    :cond_1
    const-wide/16 v0, 0x190

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iput-wide v0, p0, Lcom/narvii/widget/LongPushButton;->growDuration:J

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_2
    iget v2, p0, Lcom/narvii/widget/LongPushButton;->p:F

    .line 33
    .line 34
    const/high16 v3, 0x43480000    # 200.0f

    .line 35
    mul-float/2addr v2, v3

    .line 36
    float-to-int v2, v2

    .line 37
    .line 38
    const/16 v3, 0x96

    .line 39
    .line 40
    .line 41
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 42
    move-result v2

    .line 43
    int-to-long v2, v2

    .line 44
    .line 45
    iput-wide v2, p0, Lcom/narvii/widget/LongPushButton;->dropDuration:J

    .line 46
    .line 47
    :goto_0
    iget-boolean v2, p0, Lcom/narvii/widget/LongPushButton;->lock:Z

    .line 48
    or-int/2addr p1, v2

    .line 49
    .line 50
    .line 51
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 52
    move-result-wide v2

    .line 53
    .line 54
    iput-wide v2, p0, Lcom/narvii/widget/LongPushButton;->lt:J

    .line 55
    const/4 v2, 0x0

    .line 56
    .line 57
    if-nez p1, :cond_5

    .line 58
    .line 59
    iget v3, p0, Lcom/narvii/widget/LongPushButton;->p:F

    .line 60
    .line 61
    .line 62
    const v4, 0x3d4ccccd    # 0.05f

    .line 63
    .line 64
    cmpl-float v4, v3, v4

    .line 65
    .line 66
    if-lez v4, :cond_5

    .line 67
    .line 68
    const/high16 v4, 0x3f800000    # 1.0f

    .line 69
    .line 70
    cmpg-float v3, v3, v4

    .line 71
    .line 72
    if-gez v3, :cond_5

    .line 73
    .line 74
    iput-wide v0, p0, Lcom/narvii/widget/LongPushButton;->dropDuration:J

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 78
    move-result p1

    .line 79
    .line 80
    :goto_1
    if-ge v2, p1, :cond_6

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 88
    move-result v1

    .line 89
    .line 90
    sget v3, Lcom/narvii/lib/R$id;->hold_longer:I

    .line 91
    .line 92
    if-ne v1, v3, :cond_3

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    sget v3, Lcom/narvii/lib/R$anim;->poll_hold_longer_shake:I

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 106
    goto :goto_2

    .line 107
    .line 108
    .line 109
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 110
    move-result v1

    .line 111
    .line 112
    if-nez v1, :cond_4

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 116
    move-result-object v1

    .line 117
    .line 118
    sget v3, Lcom/narvii/lib/R$anim;->poll_fade_out_in:I

    .line 119
    .line 120
    .line 121
    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 122
    move-result-object v1

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 126
    .line 127
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 128
    goto :goto_1

    .line 129
    .line 130
    :cond_5
    if-eqz p1, :cond_6

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 134
    move-result p1

    .line 135
    .line 136
    :goto_3
    if-ge v2, p1, :cond_6

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 144
    .line 145
    add-int/lit8 v2, v2, 0x1

    .line 146
    goto :goto_3

    .line 147
    :cond_6
    return-void
.end method

.method public isPressed()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/LongPushButton;->lock:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Landroid/widget/FrameLayout;->isPressed()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method public lock(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/LongPushButton;->lock:Z

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/widget/LongPushButton;->lock:Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/widget/PushButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/widget/LongPushButton;->isPressed()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/narvii/widget/LongPushButton;->lock:Z

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    const/high16 v3, 0x3f800000    # 1.0f

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iput v3, p0, Lcom/narvii/widget/LongPushButton;->p:F

    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_0
    iget-boolean v1, p0, Lcom/narvii/widget/LongPushButton;->resetPress:Z

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :cond_1
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget v1, p0, Lcom/narvii/widget/LongPushButton;->p:F

    .line 29
    .line 30
    cmpg-float v1, v1, v3

    .line 31
    .line 32
    if-ltz v1, :cond_3

    .line 33
    .line 34
    :cond_2
    if-nez v0, :cond_7

    .line 35
    .line 36
    iget v1, p0, Lcom/narvii/widget/LongPushButton;->p:F

    .line 37
    .line 38
    cmpl-float v1, v1, v2

    .line 39
    .line 40
    if-lez v1, :cond_7

    .line 41
    .line 42
    .line 43
    :cond_3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 44
    move-result-wide v4

    .line 45
    .line 46
    const-wide/16 v6, 0xf

    .line 47
    .line 48
    const-wide/16 v8, 0xc8

    .line 49
    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    iget-wide v0, p0, Lcom/narvii/widget/LongPushButton;->lt:J

    .line 53
    .line 54
    sub-long v0, v4, v0

    .line 55
    .line 56
    .line 57
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 58
    move-result-wide v0

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 62
    move-result-wide v0

    .line 63
    long-to-float v0, v0

    .line 64
    mul-float/2addr v0, v3

    .line 65
    .line 66
    iget-wide v6, p0, Lcom/narvii/widget/LongPushButton;->growDuration:J

    .line 67
    long-to-float v1, v6

    .line 68
    div-float/2addr v0, v1

    .line 69
    .line 70
    iget v1, p0, Lcom/narvii/widget/LongPushButton;->p:F

    .line 71
    .line 72
    .line 73
    const v6, 0x3f266666    # 0.65f

    .line 74
    mul-float/2addr v6, v1

    .line 75
    .line 76
    sub-float v6, v3, v6

    .line 77
    mul-float/2addr v0, v6

    .line 78
    add-float/2addr v1, v0

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    .line 82
    move-result v0

    .line 83
    .line 84
    iput v0, p0, Lcom/narvii/widget/LongPushButton;->p:F

    .line 85
    .line 86
    cmpl-float v0, v0, v3

    .line 87
    .line 88
    if-ltz v0, :cond_6

    .line 89
    .line 90
    iget-object v0, p0, Lcom/narvii/widget/LongPushButton;->longPressCallback:Lcom/narvii/util/Callback;

    .line 91
    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    .line 95
    invoke-interface {v0, p0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    .line 102
    const-string/jumbo v1, "vibrator"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    check-cast v0, Landroid/os/Vibrator;

    .line 109
    .line 110
    const-wide/16 v6, 0x32

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    goto :goto_0

    .line 115
    .line 116
    :cond_5
    iget-wide v0, p0, Lcom/narvii/widget/LongPushButton;->lt:J

    .line 117
    .line 118
    sub-long v0, v4, v0

    .line 119
    .line 120
    .line 121
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 122
    move-result-wide v0

    .line 123
    .line 124
    .line 125
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 126
    move-result-wide v0

    .line 127
    long-to-float v0, v0

    .line 128
    mul-float/2addr v0, v3

    .line 129
    .line 130
    iget-wide v6, p0, Lcom/narvii/widget/LongPushButton;->dropDuration:J

    .line 131
    long-to-float v1, v6

    .line 132
    div-float/2addr v0, v1

    .line 133
    .line 134
    iget v1, p0, Lcom/narvii/widget/LongPushButton;->p:F

    .line 135
    sub-float/2addr v1, v0

    .line 136
    .line 137
    .line 138
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 139
    move-result v0

    .line 140
    .line 141
    iput v0, p0, Lcom/narvii/widget/LongPushButton;->p:F

    .line 142
    .line 143
    :catch_0
    :cond_6
    :goto_0
    iput-wide v4, p0, Lcom/narvii/widget/LongPushButton;->lt:J

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 147
    .line 148
    :cond_7
    :goto_1
    iget v0, p0, Lcom/narvii/widget/LongPushButton;->p:F

    .line 149
    .line 150
    cmpl-float v0, v0, v2

    .line 151
    .line 152
    if-lez v0, :cond_9

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 156
    move-result v0

    .line 157
    .line 158
    .line 159
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 160
    move-result v1

    .line 161
    .line 162
    if-eqz v1, :cond_8

    .line 163
    .line 164
    iget-object v1, p0, Lcom/narvii/widget/PushButton;->rectf:Landroid/graphics/RectF;

    .line 165
    .line 166
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 170
    move-result v1

    .line 171
    .line 172
    iget v4, p0, Lcom/narvii/widget/LongPushButton;->p:F

    .line 173
    sub-float/2addr v3, v4

    .line 174
    mul-float/2addr v1, v3

    .line 175
    add-float/2addr v2, v1

    .line 176
    .line 177
    iget-object v1, p0, Lcom/narvii/widget/PushButton;->rectf:Landroid/graphics/RectF;

    .line 178
    .line 179
    iget v3, v1, Landroid/graphics/RectF;->top:F

    .line 180
    .line 181
    iget v4, v1, Landroid/graphics/RectF;->right:F

    .line 182
    .line 183
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 187
    goto :goto_2

    .line 188
    .line 189
    :cond_8
    iget-object v1, p0, Lcom/narvii/widget/PushButton;->rectf:Landroid/graphics/RectF;

    .line 190
    .line 191
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 192
    .line 193
    iget v3, v1, Landroid/graphics/RectF;->top:F

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 197
    move-result v1

    .line 198
    .line 199
    iget v4, p0, Lcom/narvii/widget/LongPushButton;->p:F

    .line 200
    mul-float/2addr v1, v4

    .line 201
    add-float/2addr v1, v2

    .line 202
    .line 203
    iget-object v4, p0, Lcom/narvii/widget/PushButton;->rectf:Landroid/graphics/RectF;

    .line 204
    .line 205
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 209
    .line 210
    :goto_2
    iget-object v1, p0, Lcom/narvii/widget/PushButton;->paint:Landroid/graphics/Paint;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, v1}, Lcom/narvii/widget/LongPushButton;->setShadowPaintStyle(Landroid/graphics/Paint;)V

    .line 214
    .line 215
    iget-object v1, p0, Lcom/narvii/widget/PushButton;->rectf:Landroid/graphics/RectF;

    .line 216
    .line 217
    iget v2, p0, Lcom/narvii/widget/PushButton;->cornerRadius:F

    .line 218
    .line 219
    iget-object v3, p0, Lcom/narvii/widget/PushButton;->paint:Landroid/graphics/Paint;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 226
    :cond_9
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    const/4 v2, 0x3

    .line 11
    .line 12
    if-eq v0, v2, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/narvii/widget/LongPushButton;->resetPress:Z

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 20
    move-result p1

    .line 21
    or-int/2addr p1, v1

    .line 22
    return p1
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/widget/LongPushButton;->lock:Z

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/widget/LongPushButton;->resetPress:Z

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput v0, p0, Lcom/narvii/widget/LongPushButton;->p:F

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 13
    return-void
.end method

.method public setAllowLongPushListener(Lcom/narvii/widget/LongPushButton$AllowLongPushListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/LongPushButton;->allowLongPushListener:Lcom/narvii/widget/LongPushButton$AllowLongPushListener;

    return-void
.end method

.method protected setContentPaintStyle(Landroid/graphics/Paint;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/widget/LongPushButton;->contentGradientDelegate:Lcom/narvii/widget/shader/LinearGradientDelegate;

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 13
    move-result v0

    .line 14
    int-to-float v0, v0

    .line 15
    .line 16
    const/high16 v5, 0x3f800000    # 1.0f

    .line 17
    mul-float/2addr v5, v0

    .line 18
    .line 19
    iget v6, p0, Lcom/narvii/widget/LongPushButton;->contentColorStart:I

    .line 20
    .line 21
    iget v7, p0, Lcom/narvii/widget/LongPushButton;->contentColorEnd:I

    .line 22
    .line 23
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 24
    .line 25
    .line 26
    invoke-virtual/range {v1 .. v8}, Lcom/narvii/widget/shader/LinearGradientDelegate;->setShade(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/widget/LongPushButton;->contentGradientDelegate:Lcom/narvii/widget/shader/LinearGradientDelegate;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/widget/shader/LinearGradientDelegate;->getShade()Landroid/graphics/LinearGradient;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 36
    return-void
.end method

.method public setDispatchSetPressedListener(Lcom/narvii/widget/LongPushButton$DispatchSetPressedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/LongPushButton;->dispatchSetPressedListener:Lcom/narvii/widget/LongPushButton$DispatchSetPressedListener;

    return-void
.end method

.method protected setShadowPaintStyle(Landroid/graphics/Paint;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/widget/LongPushButton;->shadowGradientDelegate:Lcom/narvii/widget/shader/LinearGradientDelegate;

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 13
    move-result v0

    .line 14
    int-to-float v0, v0

    .line 15
    .line 16
    const/high16 v5, 0x3f800000    # 1.0f

    .line 17
    mul-float/2addr v5, v0

    .line 18
    .line 19
    iget v6, p0, Lcom/narvii/widget/LongPushButton;->shadowColorStart:I

    .line 20
    .line 21
    iget v7, p0, Lcom/narvii/widget/LongPushButton;->shadowColorEnd:I

    .line 22
    .line 23
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 24
    .line 25
    .line 26
    invoke-virtual/range {v1 .. v8}, Lcom/narvii/widget/shader/LinearGradientDelegate;->setShade(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/widget/LongPushButton;->shadowGradientDelegate:Lcom/narvii/widget/shader/LinearGradientDelegate;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/widget/shader/LinearGradientDelegate;->getShade()Landroid/graphics/LinearGradient;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 36
    return-void
.end method
