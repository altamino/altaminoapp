.class public final Lcom/narvii/user/follow/UserFollowView$updateView$2$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/follow/UserFollowView;->updateView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $animationLayout:Landroid/view/View;

.field final synthetic $startWidth:I

.field final synthetic this$0:Lcom/narvii/user/follow/UserFollowView;


# direct methods
.method constructor <init>(Lcom/narvii/user/follow/UserFollowView;Landroid/view/View;I)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$2$2;->this$0:Lcom/narvii/user/follow/UserFollowView;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/user/follow/UserFollowView$updateView$2$2;->$animationLayout:Landroid/view/View;

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/user/follow/UserFollowView$updateView$2$2;->$startWidth:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 12
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "animation"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$2$2;->this$0:Lcom/narvii/user/follow/UserFollowView;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowView;->access$getFollowSuccessLayout(Lcom/narvii/user/follow/UserFollowView;)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$2$2;->this$0:Lcom/narvii/user/follow/UserFollowView;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowView;->access$getFollowLayout(Lcom/narvii/user/follow/UserFollowView;)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    const/4 v1, 0x4

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$2$2;->this$0:Lcom/narvii/user/follow/UserFollowView;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowView;->access$getNotificationLayout(Lcom/narvii/user/follow/UserFollowView;)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$2$2;->$animationLayout:Landroid/view/View;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    iget v1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$2$2;->$startWidth:I

    .line 43
    .line 44
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 45
    .line 46
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowView$updateView$2$2;->this$0:Lcom/narvii/user/follow/UserFollowView;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    const v1, 0x7f12045d

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    const-string v1, "getString(...)"

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 66
    move-result p1

    .line 67
    .line 68
    const-wide/16 v1, 0x4b0

    .line 69
    .line 70
    const/16 v3, 0x8

    .line 71
    .line 72
    if-ge p1, v3, :cond_0

    .line 73
    goto :goto_0

    .line 74
    .line 75
    :cond_0
    const/16 v4, 0x14

    .line 76
    .line 77
    if-le p1, v4, :cond_1

    .line 78
    .line 79
    const-wide/16 v1, 0x7d0

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    sub-int/2addr p1, v3

    .line 82
    int-to-long v3, p1

    .line 83
    .line 84
    const-wide/16 v5, 0x320

    .line 85
    mul-long/2addr v5, v3

    .line 86
    .line 87
    const/16 p1, 0xc

    .line 88
    int-to-long v3, p1

    .line 89
    div-long/2addr v5, v3

    .line 90
    add-long/2addr v1, v5

    .line 91
    .line 92
    :goto_0
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 93
    .line 94
    .line 95
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 96
    .line 97
    iget-object v3, p0, Lcom/narvii/user/follow/UserFollowView$updateView$2$2;->this$0:Lcom/narvii/user/follow/UserFollowView;

    .line 98
    .line 99
    new-instance v4, Landroid/animation/AnimatorSet;

    .line 100
    .line 101
    .line 102
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-static {v3}, Lcom/narvii/user/follow/UserFollowView;->access$getFollowSuccessLayout(Lcom/narvii/user/follow/UserFollowView;)Landroid/view/View;

    .line 106
    move-result-object v5

    .line 107
    const/4 v6, 0x7

    .line 108
    .line 109
    new-array v7, v6, [F

    .line 110
    .line 111
    .line 112
    fill-array-data v7, :array_0

    .line 113
    .line 114
    const-string v8, "scaleX"

    .line 115
    .line 116
    .line 117
    invoke-static {v5, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 118
    move-result-object v5

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 122
    .line 123
    .line 124
    invoke-static {v3}, Lcom/narvii/user/follow/UserFollowView;->access$getFollowSuccessLayout(Lcom/narvii/user/follow/UserFollowView;)Landroid/view/View;

    .line 125
    move-result-object v7

    .line 126
    .line 127
    new-array v6, v6, [F

    .line 128
    .line 129
    .line 130
    fill-array-data v6, :array_1

    .line 131
    .line 132
    const-string v9, "scaleY"

    .line 133
    .line 134
    .line 135
    invoke-static {v7, v9, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 136
    move-result-object v6

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 140
    const/4 v1, 0x2

    .line 141
    .line 142
    new-array v2, v1, [Landroid/animation/Animator;

    .line 143
    .line 144
    aput-object v5, v2, v0

    .line 145
    const/4 v5, 0x1

    .line 146
    .line 147
    aput-object v6, v2, v5

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 151
    .line 152
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 153
    .line 154
    .line 155
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-static {v3}, Lcom/narvii/user/follow/UserFollowView;->access$getFollowSuccessLayout(Lcom/narvii/user/follow/UserFollowView;)Landroid/view/View;

    .line 159
    move-result-object v6

    .line 160
    .line 161
    new-array v7, v1, [F

    .line 162
    .line 163
    .line 164
    fill-array-data v7, :array_2

    .line 165
    .line 166
    .line 167
    invoke-static {v6, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 168
    move-result-object v6

    .line 169
    .line 170
    const-wide/16 v7, 0x190

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 174
    .line 175
    .line 176
    invoke-static {v3}, Lcom/narvii/user/follow/UserFollowView;->access$getFollowSuccessLayout(Lcom/narvii/user/follow/UserFollowView;)Landroid/view/View;

    .line 177
    move-result-object v10

    .line 178
    .line 179
    new-array v11, v1, [F

    .line 180
    .line 181
    .line 182
    fill-array-data v11, :array_3

    .line 183
    .line 184
    .line 185
    invoke-static {v10, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 186
    move-result-object v9

    .line 187
    .line 188
    .line 189
    invoke-virtual {v9, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 190
    .line 191
    new-array v7, v1, [Landroid/animation/Animator;

    .line 192
    .line 193
    aput-object v6, v7, v0

    .line 194
    .line 195
    aput-object v9, v7, v5

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 199
    .line 200
    new-array v1, v1, [Landroid/animation/Animator;

    .line 201
    .line 202
    aput-object v4, v1, v0

    .line 203
    .line 204
    aput-object v2, v1, v5

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 208
    .line 209
    new-instance v0, Lcom/narvii/user/follow/UserFollowView$updateView$2$2$onAnimationEnd$1$1;

    .line 210
    .line 211
    .line 212
    invoke-direct {v0, v3}, Lcom/narvii/user/follow/UserFollowView$updateView$2$2$onAnimationEnd$1$1;-><init>(Lcom/narvii/user/follow/UserFollowView;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 219
    return-void

    .line 220
    nop

    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
