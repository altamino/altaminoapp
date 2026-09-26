.class Lcom/narvii/drawer/DrawerHost$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final hide:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/narvii/drawer/DrawerHost;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$6;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/drawer/DrawerHost$6$2;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/narvii/drawer/DrawerHost$6$2;-><init>(Lcom/narvii/drawer/DrawerHost$6;)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$6;->hide:Ljava/lang/Runnable;

    .line 13
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0a0475

    .line 8
    .line 9
    const-wide/16 v2, 0xc8

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x1

    .line 12
    .line 13
    if-eqz v0, :cond_6

    .line 14
    const/4 v6, 0x0

    .line 15
    .line 16
    if-eq v0, v5, :cond_4

    .line 17
    const/4 v7, 0x3

    .line 18
    const/4 v8, 0x2

    .line 19
    .line 20
    if-eq v0, v8, :cond_0

    .line 21
    .line 22
    if-eq v0, v7, :cond_4

    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 28
    move-result v0

    .line 29
    .line 30
    cmpg-float v0, v0, v4

    .line 31
    .line 32
    if-ltz v0, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 36
    move-result v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 40
    move-result v2

    .line 41
    int-to-float v2, v2

    .line 42
    .line 43
    cmpl-float v0, v0, v2

    .line 44
    .line 45
    if-gtz v0, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 49
    move-result v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 53
    move-result v2

    .line 54
    neg-int v2, v2

    .line 55
    div-int/2addr v2, v8

    .line 56
    int-to-float v2, v2

    .line 57
    .line 58
    cmpg-float v0, v0, v2

    .line 59
    .line 60
    if-ltz v0, :cond_1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 64
    move-result p2

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 68
    move-result v0

    .line 69
    mul-int/2addr v0, v7

    .line 70
    div-int/2addr v0, v8

    .line 71
    int-to-float v0, v0

    .line 72
    .line 73
    cmpl-float p2, p2, v0

    .line 74
    .line 75
    if-lez p2, :cond_7

    .line 76
    .line 77
    :cond_1
    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost$6;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 78
    .line 79
    .line 80
    invoke-static {p2}, Lcom/narvii/drawer/DrawerHost;->b(Lcom/narvii/drawer/DrawerHost;)Z

    .line 81
    move-result p2

    .line 82
    .line 83
    if-nez p2, :cond_3

    .line 84
    .line 85
    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost$6;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    move-result-object p2

    .line 90
    .line 91
    check-cast p2, Lcom/narvii/checkin/CheckInCircle;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Lcom/narvii/checkin/CheckInCircle;->unpress()Z

    .line 95
    move-result p2

    .line 96
    .line 97
    if-eqz p2, :cond_2

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerHost$6;->shortPress()V

    .line 101
    .line 102
    .line 103
    :cond_2
    invoke-virtual {p1, v6}, Landroid/view/View;->setPressed(Z)V

    .line 104
    :cond_3
    return v6

    .line 105
    .line 106
    :cond_4
    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost$6;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 107
    .line 108
    .line 109
    invoke-static {p2}, Lcom/narvii/drawer/DrawerHost;->b(Lcom/narvii/drawer/DrawerHost;)Z

    .line 110
    move-result p2

    .line 111
    .line 112
    if-nez p2, :cond_7

    .line 113
    .line 114
    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost$6;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    move-result-object p2

    .line 119
    .line 120
    check-cast p2, Lcom/narvii/checkin/CheckInCircle;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2}, Lcom/narvii/checkin/CheckInCircle;->unpress()Z

    .line 124
    move-result p2

    .line 125
    .line 126
    if-eqz p2, :cond_5

    .line 127
    .line 128
    new-instance p2, Lcom/narvii/drawer/DrawerHost$6$1;

    .line 129
    .line 130
    .line 131
    invoke-direct {p2, p0}, Lcom/narvii/drawer/DrawerHost$6$1;-><init>(Lcom/narvii/drawer/DrawerHost$6;)V

    .line 132
    .line 133
    .line 134
    invoke-static {p2, v2, v3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerHost$6;->shortPress()V

    .line 138
    .line 139
    .line 140
    :cond_5
    invoke-virtual {p1, v6}, Landroid/view/View;->setPressed(Z)V

    .line 141
    goto :goto_0

    .line 142
    .line 143
    :cond_6
    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost$6;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    move-result-object p2

    .line 148
    .line 149
    check-cast p2, Lcom/narvii/checkin/CheckInCircle;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2}, Lcom/narvii/checkin/CheckInCircle;->press()V

    .line 153
    .line 154
    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost$6;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 155
    .line 156
    .line 157
    const v0, 0x7f0a0989

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 161
    move-result-object p2

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 165
    move-result-object p2

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 169
    move-result-object p2

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 173
    move-result-object p2

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 177
    .line 178
    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost$6;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 179
    .line 180
    .line 181
    const v0, 0x7f0a010b

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 185
    move-result-object p2

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 189
    move-result-object p2

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 193
    move-result-object p2

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 197
    move-result-object p2

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 201
    .line 202
    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost$6;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 203
    .line 204
    .line 205
    const v0, 0x7f0a010a

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 209
    move-result-object p2

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 213
    move-result-object p2

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 217
    move-result-object p2

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 221
    move-result-object p2

    .line 222
    .line 223
    .line 224
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 231
    move-result-object p1

    .line 232
    .line 233
    .line 234
    invoke-interface {p1, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 235
    :cond_7
    :goto_0
    return v5
.end method

.method shortPress()V
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$6;->hide:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$6;->hide:Ljava/lang/Runnable;

    .line 10
    .line 11
    const-wide/16 v2, 0x3e8

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$6;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 17
    .line 18
    .line 19
    const v1, 0x7f0a0473

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    const/4 v1, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$6;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    const v2, 0x7f010037

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    const v1, 0x7f0a0474

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$6;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    const v2, 0x7f01006e

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 73
    return-void
.end method
