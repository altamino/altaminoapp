.class Lcom/narvii/livelayer/LiveLayerOnlineBar$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerOnlineBar;->onUserJoined(Lcom/narvii/model/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

.field final synthetic val$user:Lcom/narvii/model/User;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerOnlineBar;Lcom/narvii/model/User;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->val$user:Lcom/narvii/model/User;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->val$user:Lcom/narvii/model/User;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/LiveLayerDataSource;->moveFromQueueIntoList(Lcom/narvii/model/User;)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 12
    .line 13
    new-instance v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar$7;)V

    .line 17
    .line 18
    iput-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animEndRunnable:Ljava/lang/Runnable;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 21
    .line 22
    iget-boolean v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fromCBB:Z

    .line 23
    .line 24
    if-nez v1, :cond_4

    .line 25
    .line 26
    new-instance v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$2;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$2;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar$7;)V

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 32
    .line 33
    iget-boolean v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    .line 34
    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 39
    move-result v1

    .line 40
    const/4 v2, 0x0

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 45
    .line 46
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    .line 47
    .line 48
    iget-object v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    move-result-object v4

    .line 53
    .line 54
    .line 55
    invoke-static {v4}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 56
    move-result v4

    .line 57
    neg-int v4, v4

    .line 58
    int-to-float v4, v4

    .line 59
    .line 60
    .line 61
    invoke-direct {v3, v4, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 62
    .line 63
    iput-object v3, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedAnim:Landroid/view/animation/Animation;

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_0
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 67
    .line 68
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    .line 69
    .line 70
    iget-object v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 74
    move-result-object v4

    .line 75
    .line 76
    .line 77
    invoke-static {v4}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 78
    move-result v4

    .line 79
    int-to-float v4, v4

    .line 80
    .line 81
    .line 82
    invoke-direct {v3, v4, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 83
    .line 84
    iput-object v3, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedAnim:Landroid/view/animation/Animation;

    .line 85
    .line 86
    :goto_0
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 87
    .line 88
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedAnim:Landroid/view/animation/Animation;

    .line 89
    .line 90
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    .line 91
    .line 92
    .line 93
    const v3, 0x3f333333    # 0.7f

    .line 94
    .line 95
    .line 96
    invoke-direct {v2, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 100
    .line 101
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 102
    .line 103
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedAnim:Landroid/view/animation/Animation;

    .line 104
    .line 105
    const-wide/16 v2, 0x12c

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 109
    goto :goto_1

    .line 110
    .line 111
    .line 112
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 113
    move-result-object v2

    .line 114
    .line 115
    .line 116
    const v3, 0x7f010037

    .line 117
    .line 118
    .line 119
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 120
    move-result-object v2

    .line 121
    .line 122
    iput-object v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedAnim:Landroid/view/animation/Animation;

    .line 123
    .line 124
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 125
    .line 126
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedAnim:Landroid/view/animation/Animation;

    .line 127
    .line 128
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 129
    .line 130
    .line 131
    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 135
    .line 136
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 137
    .line 138
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedAnim:Landroid/view/animation/Animation;

    .line 139
    .line 140
    const-wide/16 v2, 0x3e8

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 144
    .line 145
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 146
    .line 147
    iget-object v4, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldGreenOval:Landroid/view/View;

    .line 148
    .line 149
    if-eqz v4, :cond_2

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 153
    move-result-object v4

    .line 154
    .line 155
    .line 156
    const v5, 0x7f010038

    .line 157
    .line 158
    .line 159
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 160
    move-result-object v4

    .line 161
    .line 162
    iput-object v4, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dotFadeAnimation:Landroid/view/animation/Animation;

    .line 163
    .line 164
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 165
    .line 166
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dotFadeAnimation:Landroid/view/animation/Animation;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 170
    .line 171
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 172
    .line 173
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dotFadeAnimation:Landroid/view/animation/Animation;

    .line 174
    const/4 v2, 0x1

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 178
    .line 179
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 180
    .line 181
    iget-object v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldGreenOval:Landroid/view/View;

    .line 182
    .line 183
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dotFadeAnimation:Landroid/view/animation/Animation;

    .line 184
    const/4 v3, 0x0

    .line 185
    .line 186
    .line 187
    invoke-static {v2, v1, v3}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 188
    .line 189
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 190
    .line 191
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    .line 192
    const/4 v2, 0x0

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 196
    .line 197
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 198
    .line 199
    iget-boolean v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    .line 200
    .line 201
    if-nez v2, :cond_3

    .line 202
    .line 203
    iget-object v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    .line 204
    .line 205
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedAnim:Landroid/view/animation/Animation;

    .line 206
    .line 207
    .line 208
    invoke-static {v2, v1, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 209
    goto :goto_2

    .line 210
    .line 211
    :cond_3
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    .line 212
    .line 213
    .line 214
    const v2, 0x7f0a0f36

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 218
    move-result-object v1

    .line 219
    .line 220
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 221
    .line 222
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedAnim:Landroid/view/animation/Animation;

    .line 223
    .line 224
    .line 225
    invoke-static {v1, v2, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 226
    goto :goto_2

    .line 227
    .line 228
    :cond_4
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    .line 229
    const/4 v1, 0x4

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    .line 234
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 235
    .line 236
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 237
    .line 238
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animEndRunnable:Ljava/lang/Runnable;

    .line 239
    .line 240
    const-wide/16 v2, 0x1f4

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 244
    :goto_2
    return-void
.end method
