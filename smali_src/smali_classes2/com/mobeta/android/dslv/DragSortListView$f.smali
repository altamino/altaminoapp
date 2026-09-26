.class Lcom/mobeta/android/dslv/DragSortListView$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobeta/android/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# static fields
.field public static final DOWN:I = 0x1

.field public static final STOP:I = -0x1

.field public static final UP:I


# instance fields
.field private dt:F

.field private dy:I

.field private mAbort:Z

.field private mCurrTime:J

.field private mFirstFooter:I

.field private mLastHeader:I

.field private mPrevTime:J

.field private mScrollSpeed:F

.field private mScrolling:Z

.field private scrollDir:I

.field private tStart:J

.field final synthetic this$0:Lcom/mobeta/android/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->mScrolling:Z

    .line 9
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->mScrolling:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->scrollDir:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->mScrolling:Z

    return v0
.end method

.method public c(I)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->mScrolling:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->mAbort:Z

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->mScrolling:Z

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->tStart:J

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->mPrevTime:J

    .line 19
    .line 20
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->scrollDir:I

    .line 21
    .line 22
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 26
    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    const/4 p1, 0x0

    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->mScrolling:Z

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x1

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->mAbort:Z

    .line 15
    :goto_0
    return-void
.end method

.method public run()V
    .locals 12

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->mAbort:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->mScrolling:Z

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 14
    move-result v0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 20
    move-result v2

    .line 21
    .line 22
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    .line 26
    move-result v3

    .line 27
    .line 28
    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    .line 32
    move-result v4

    .line 33
    .line 34
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 38
    move-result v5

    .line 39
    sub-int/2addr v5, v4

    .line 40
    .line 41
    iget-object v6, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    .line 45
    move-result v6

    .line 46
    sub-int/2addr v5, v6

    .line 47
    .line 48
    iget-object v6, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 49
    .line 50
    .line 51
    invoke-static {v6}, Lcom/mobeta/android/dslv/DragSortListView;->t(Lcom/mobeta/android/dslv/DragSortListView;)I

    .line 52
    move-result v6

    .line 53
    .line 54
    iget-object v7, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 55
    .line 56
    .line 57
    invoke-static {v7}, Lcom/mobeta/android/dslv/DragSortListView;->l(Lcom/mobeta/android/dslv/DragSortListView;)I

    .line 58
    move-result v7

    .line 59
    .line 60
    iget-object v8, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 61
    .line 62
    .line 63
    invoke-static {v8}, Lcom/mobeta/android/dslv/DragSortListView;->k(Lcom/mobeta/android/dslv/DragSortListView;)I

    .line 64
    move-result v8

    .line 65
    add-int/2addr v7, v8

    .line 66
    .line 67
    .line 68
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 69
    move-result v6

    .line 70
    .line 71
    iget-object v7, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 72
    .line 73
    .line 74
    invoke-static {v7}, Lcom/mobeta/android/dslv/DragSortListView;->t(Lcom/mobeta/android/dslv/DragSortListView;)I

    .line 75
    move-result v7

    .line 76
    .line 77
    iget-object v8, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 78
    .line 79
    .line 80
    invoke-static {v8}, Lcom/mobeta/android/dslv/DragSortListView;->l(Lcom/mobeta/android/dslv/DragSortListView;)I

    .line 81
    move-result v8

    .line 82
    .line 83
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 84
    .line 85
    .line 86
    invoke-static {v9}, Lcom/mobeta/android/dslv/DragSortListView;->k(Lcom/mobeta/android/dslv/DragSortListView;)I

    .line 87
    move-result v9

    .line 88
    sub-int/2addr v8, v9

    .line 89
    .line 90
    .line 91
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 92
    move-result v7

    .line 93
    .line 94
    iget v8, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->scrollDir:I

    .line 95
    const/4 v9, 0x1

    .line 96
    .line 97
    if-nez v8, :cond_3

    .line 98
    .line 99
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 103
    move-result-object v3

    .line 104
    .line 105
    if-nez v3, :cond_1

    .line 106
    .line 107
    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->mScrolling:Z

    .line 108
    return-void

    .line 109
    .line 110
    :cond_1
    if-nez v0, :cond_2

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 114
    move-result v3

    .line 115
    .line 116
    if-ne v3, v4, :cond_2

    .line 117
    .line 118
    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->mScrolling:Z

    .line 119
    return-void

    .line 120
    .line 121
    :cond_2
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 122
    .line 123
    .line 124
    invoke-static {v3}, Lcom/mobeta/android/dslv/DragSortListView;->p(Lcom/mobeta/android/dslv/DragSortListView;)Lcom/mobeta/android/dslv/DragSortListView$e;

    .line 125
    move-result-object v3

    .line 126
    .line 127
    iget-object v6, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 128
    .line 129
    .line 130
    invoke-static {v6}, Lcom/mobeta/android/dslv/DragSortListView;->s(Lcom/mobeta/android/dslv/DragSortListView;)F

    .line 131
    move-result v6

    .line 132
    int-to-float v7, v7

    .line 133
    sub-float/2addr v6, v7

    .line 134
    .line 135
    iget-object v7, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 136
    .line 137
    .line 138
    invoke-static {v7}, Lcom/mobeta/android/dslv/DragSortListView;->f(Lcom/mobeta/android/dslv/DragSortListView;)F

    .line 139
    move-result v7

    .line 140
    div-float/2addr v6, v7

    .line 141
    .line 142
    iget-wide v7, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->mPrevTime:J

    .line 143
    .line 144
    .line 145
    invoke-interface {v3, v6, v7, v8}, Lcom/mobeta/android/dslv/DragSortListView$e;->a(FJ)F

    .line 146
    move-result v3

    .line 147
    .line 148
    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->mScrollSpeed:F

    .line 149
    goto :goto_0

    .line 150
    .line 151
    :cond_3
    iget-object v7, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 152
    .line 153
    sub-int v8, v2, v0

    .line 154
    .line 155
    .line 156
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 157
    move-result-object v7

    .line 158
    .line 159
    if-nez v7, :cond_4

    .line 160
    .line 161
    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->mScrolling:Z

    .line 162
    return-void

    .line 163
    :cond_4
    sub-int/2addr v3, v9

    .line 164
    .line 165
    if-ne v2, v3, :cond_5

    .line 166
    .line 167
    .line 168
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    .line 169
    move-result v3

    .line 170
    .line 171
    add-int v7, v5, v4

    .line 172
    .line 173
    if-gt v3, v7, :cond_5

    .line 174
    .line 175
    iput-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->mScrolling:Z

    .line 176
    return-void

    .line 177
    .line 178
    :cond_5
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 179
    .line 180
    .line 181
    invoke-static {v3}, Lcom/mobeta/android/dslv/DragSortListView;->p(Lcom/mobeta/android/dslv/DragSortListView;)Lcom/mobeta/android/dslv/DragSortListView$e;

    .line 182
    move-result-object v3

    .line 183
    int-to-float v6, v6

    .line 184
    .line 185
    iget-object v7, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 186
    .line 187
    .line 188
    invoke-static {v7}, Lcom/mobeta/android/dslv/DragSortListView;->b(Lcom/mobeta/android/dslv/DragSortListView;)F

    .line 189
    move-result v7

    .line 190
    sub-float/2addr v6, v7

    .line 191
    .line 192
    iget-object v7, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 193
    .line 194
    .line 195
    invoke-static {v7}, Lcom/mobeta/android/dslv/DragSortListView;->d(Lcom/mobeta/android/dslv/DragSortListView;)F

    .line 196
    move-result v7

    .line 197
    div-float/2addr v6, v7

    .line 198
    .line 199
    iget-wide v7, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->mPrevTime:J

    .line 200
    .line 201
    .line 202
    invoke-interface {v3, v6, v7, v8}, Lcom/mobeta/android/dslv/DragSortListView$e;->a(FJ)F

    .line 203
    move-result v3

    .line 204
    neg-float v3, v3

    .line 205
    .line 206
    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->mScrollSpeed:F

    .line 207
    .line 208
    .line 209
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 210
    move-result-wide v6

    .line 211
    .line 212
    iput-wide v6, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->mCurrTime:J

    .line 213
    .line 214
    iget-wide v10, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->mPrevTime:J

    .line 215
    sub-long/2addr v6, v10

    .line 216
    long-to-float v3, v6

    .line 217
    .line 218
    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->dt:F

    .line 219
    .line 220
    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->mScrollSpeed:F

    .line 221
    mul-float/2addr v6, v3

    .line 222
    .line 223
    .line 224
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 225
    move-result v3

    .line 226
    .line 227
    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->dy:I

    .line 228
    .line 229
    if-ltz v3, :cond_6

    .line 230
    .line 231
    .line 232
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    .line 233
    move-result v2

    .line 234
    .line 235
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->dy:I

    .line 236
    move v2, v0

    .line 237
    goto :goto_1

    .line 238
    :cond_6
    neg-int v5, v5

    .line 239
    .line 240
    .line 241
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 242
    move-result v3

    .line 243
    .line 244
    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->dy:I

    .line 245
    .line 246
    :goto_1
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 247
    .line 248
    sub-int v0, v2, v0

    .line 249
    .line 250
    .line 251
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 252
    move-result-object v0

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 256
    move-result v3

    .line 257
    .line 258
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->dy:I

    .line 259
    add-int/2addr v3, v5

    .line 260
    .line 261
    if-nez v2, :cond_7

    .line 262
    .line 263
    if-le v3, v4, :cond_7

    .line 264
    move v3, v4

    .line 265
    .line 266
    :cond_7
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 267
    .line 268
    .line 269
    invoke-static {v5, v9}, Lcom/mobeta/android/dslv/DragSortListView;->u(Lcom/mobeta/android/dslv/DragSortListView;Z)V

    .line 270
    .line 271
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 272
    sub-int/2addr v3, v4

    .line 273
    .line 274
    .line 275
    invoke-virtual {v5, v2, v3}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 276
    .line 277
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v3}, Lcom/mobeta/android/dslv/DragSortListView;->layoutChildren()V

    .line 281
    .line 282
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 286
    .line 287
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 288
    .line 289
    .line 290
    invoke-static {v3, v1}, Lcom/mobeta/android/dslv/DragSortListView;->u(Lcom/mobeta/android/dslv/DragSortListView;Z)V

    .line 291
    .line 292
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 293
    .line 294
    .line 295
    invoke-static {v3, v2, v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->y(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)V

    .line 296
    .line 297
    iget-wide v0, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->mCurrTime:J

    .line 298
    .line 299
    iput-wide v0, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->mPrevTime:J

    .line 300
    .line 301
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$f;->this$0:Lcom/mobeta/android/dslv/DragSortListView;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 305
    return-void
.end method
