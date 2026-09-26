.class Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrivateOnTouchListener"
.end annotation


# instance fields
.field private last:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/narvii/widget/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/narvii/widget/TouchImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/o;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;-><init>(Lcom/narvii/widget/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->r(Lcom/narvii/widget/TouchImageView;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->h(Lcom/narvii/widget/TouchImageView;)Landroid/view/ScaleGestureDetector;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->g(Lcom/narvii/widget/TouchImageView;)Landroid/view/GestureDetector;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 29
    .line 30
    new-instance v0, Landroid/graphics/PointF;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 34
    move-result v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 38
    move-result v2

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Lcom/narvii/widget/TouchImageView;->m(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$State;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    sget-object v2, Lcom/narvii/widget/TouchImageView$State;->NONE:Lcom/narvii/widget/TouchImageView$State;

    .line 50
    const/4 v3, 0x1

    .line 51
    .line 52
    if-eq v1, v2, :cond_1

    .line 53
    .line 54
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Lcom/narvii/widget/TouchImageView;->m(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$State;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    sget-object v4, Lcom/narvii/widget/TouchImageView$State;->DRAG:Lcom/narvii/widget/TouchImageView$State;

    .line 61
    .line 62
    if-eq v1, v4, :cond_1

    .line 63
    .line 64
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Lcom/narvii/widget/TouchImageView;->m(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$State;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    sget-object v4, Lcom/narvii/widget/TouchImageView$State;->FLING:Lcom/narvii/widget/TouchImageView$State;

    .line 71
    .line 72
    if-ne v1, v4, :cond_6

    .line 73
    .line 74
    .line 75
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 76
    move-result v1

    .line 77
    .line 78
    if-eqz v1, :cond_4

    .line 79
    .line 80
    if-eq v1, v3, :cond_3

    .line 81
    const/4 v4, 0x2

    .line 82
    .line 83
    if-eq v1, v4, :cond_2

    .line 84
    const/4 v0, 0x6

    .line 85
    .line 86
    if-eq v1, v0, :cond_3

    .line 87
    goto :goto_0

    .line 88
    .line 89
    :cond_2
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 90
    .line 91
    .line 92
    invoke-static {v1}, Lcom/narvii/widget/TouchImageView;->m(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$State;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    sget-object v2, Lcom/narvii/widget/TouchImageView$State;->DRAG:Lcom/narvii/widget/TouchImageView$State;

    .line 96
    .line 97
    if-ne v1, v2, :cond_6

    .line 98
    .line 99
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 100
    .line 101
    iget-object v2, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    .line 102
    .line 103
    iget v4, v2, Landroid/graphics/PointF;->x:F

    .line 104
    sub-float/2addr v1, v4

    .line 105
    .line 106
    iget v4, v0, Landroid/graphics/PointF;->y:F

    .line 107
    .line 108
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 109
    sub-float/2addr v4, v2

    .line 110
    .line 111
    iget-object v2, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 112
    .line 113
    .line 114
    invoke-static {v2}, Lcom/narvii/widget/TouchImageView;->q(Lcom/narvii/widget/TouchImageView;)I

    .line 115
    move-result v5

    .line 116
    int-to-float v5, v5

    .line 117
    .line 118
    iget-object v6, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 119
    .line 120
    .line 121
    invoke-static {v6}, Lcom/narvii/widget/TouchImageView;->y(Lcom/narvii/widget/TouchImageView;)F

    .line 122
    move-result v6

    .line 123
    .line 124
    .line 125
    invoke-static {v2, v1, v5, v6}, Lcom/narvii/widget/TouchImageView;->w(Lcom/narvii/widget/TouchImageView;FFF)F

    .line 126
    move-result v1

    .line 127
    .line 128
    iget-object v2, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 129
    .line 130
    .line 131
    invoke-static {v2}, Lcom/narvii/widget/TouchImageView;->p(Lcom/narvii/widget/TouchImageView;)I

    .line 132
    move-result v5

    .line 133
    int-to-float v5, v5

    .line 134
    .line 135
    iget-object v6, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 136
    .line 137
    .line 138
    invoke-static {v6}, Lcom/narvii/widget/TouchImageView;->x(Lcom/narvii/widget/TouchImageView;)F

    .line 139
    move-result v6

    .line 140
    .line 141
    .line 142
    invoke-static {v2, v4, v5, v6}, Lcom/narvii/widget/TouchImageView;->w(Lcom/narvii/widget/TouchImageView;FFF)F

    .line 143
    move-result v2

    .line 144
    .line 145
    iget-object v4, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 146
    .line 147
    .line 148
    invoke-static {v4}, Lcom/narvii/widget/TouchImageView;->i(Lcom/narvii/widget/TouchImageView;)Landroid/graphics/Matrix;

    .line 149
    move-result-object v4

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 153
    .line 154
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 155
    .line 156
    .line 157
    invoke-static {v1}, Lcom/narvii/widget/TouchImageView;->v(Lcom/narvii/widget/TouchImageView;)V

    .line 158
    .line 159
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    .line 160
    .line 161
    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 162
    .line 163
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 167
    goto :goto_0

    .line 168
    .line 169
    :cond_3
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 170
    .line 171
    .line 172
    invoke-static {v0, v2}, Lcom/narvii/widget/TouchImageView;->A(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/TouchImageView$State;)V

    .line 173
    goto :goto_0

    .line 174
    .line 175
    :cond_4
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 179
    .line 180
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 181
    .line 182
    .line 183
    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->e(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$Fling;

    .line 184
    move-result-object v0

    .line 185
    .line 186
    if-eqz v0, :cond_5

    .line 187
    .line 188
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 189
    .line 190
    .line 191
    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->e(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$Fling;

    .line 192
    move-result-object v0

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Lcom/narvii/widget/TouchImageView$Fling;->cancelFling()V

    .line 196
    .line 197
    :cond_5
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 198
    .line 199
    sget-object v1, Lcom/narvii/widget/TouchImageView$State;->DRAG:Lcom/narvii/widget/TouchImageView$State;

    .line 200
    .line 201
    .line 202
    invoke-static {v0, v1}, Lcom/narvii/widget/TouchImageView;->A(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/TouchImageView$State;)V

    .line 203
    .line 204
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 205
    .line 206
    .line 207
    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->i(Lcom/narvii/widget/TouchImageView;)Landroid/graphics/Matrix;

    .line 208
    move-result-object v1

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 212
    .line 213
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 214
    .line 215
    .line 216
    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->o(Lcom/narvii/widget/TouchImageView;)Landroid/view/View$OnTouchListener;

    .line 217
    move-result-object v0

    .line 218
    .line 219
    if-eqz v0, :cond_7

    .line 220
    .line 221
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 222
    .line 223
    .line 224
    invoke-static {v0}, Lcom/narvii/widget/TouchImageView;->o(Lcom/narvii/widget/TouchImageView;)Landroid/view/View$OnTouchListener;

    .line 225
    move-result-object v0

    .line 226
    .line 227
    .line 228
    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 229
    .line 230
    :cond_7
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 231
    .line 232
    .line 233
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->n(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;

    .line 234
    move-result-object p1

    .line 235
    .line 236
    if-eqz p1, :cond_8

    .line 237
    .line 238
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/narvii/widget/TouchImageView;

    .line 239
    .line 240
    .line 241
    invoke-static {p1}, Lcom/narvii/widget/TouchImageView;->n(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;

    .line 242
    move-result-object p1

    .line 243
    .line 244
    .line 245
    invoke-interface {p1}, Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;->onMove()V

    .line 246
    :cond_8
    return v3
.end method
