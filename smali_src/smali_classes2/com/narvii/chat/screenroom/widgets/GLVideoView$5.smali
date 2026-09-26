.class Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/widgets/GLVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onPrepared(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->x(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->v(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Z)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->u(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Z)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->t(Lcom/narvii/chat/screenroom/widgets/GLVideoView;Z)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->j(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->j(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 35
    .line 36
    .line 37
    invoke-static {v2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->f(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;->onPrepared(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V

    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->e(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lcom/narvii/chat/screenroom/widgets/VideoController;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->e(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lcom/narvii/chat/screenroom/widgets/VideoController;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, v1}, Lcom/narvii/chat/screenroom/widgets/VideoController;->setEnabled(Z)V

    .line 59
    .line 60
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->getVideoWidth()I

    .line 64
    move-result v1

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->D(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)V

    .line 68
    .line 69
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->getVideoHeight()I

    .line 73
    move-result p1

    .line 74
    .line 75
    .line 76
    invoke-static {v0, p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->C(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)V

    .line 77
    .line 78
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->l(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    .line 82
    move-result p1

    .line 83
    .line 84
    if-eqz p1, :cond_2

    .line 85
    .line 86
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->seekTo(I)V

    .line 90
    .line 91
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->r(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    .line 95
    move-result v0

    .line 96
    const/4 v1, 0x3

    .line 97
    .line 98
    if-eqz v0, :cond_5

    .line 99
    .line 100
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 101
    .line 102
    .line 103
    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->q(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    .line 104
    move-result v0

    .line 105
    .line 106
    if-eqz v0, :cond_5

    .line 107
    .line 108
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 115
    .line 116
    .line 117
    invoke-static {v2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->r(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    .line 118
    move-result v2

    .line 119
    .line 120
    iget-object v3, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 121
    .line 122
    .line 123
    invoke-static {v3}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->q(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    .line 124
    move-result v3

    .line 125
    .line 126
    .line 127
    invoke-interface {v0, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 128
    .line 129
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 130
    .line 131
    .line 132
    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->n(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    .line 133
    move-result v0

    .line 134
    .line 135
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 136
    .line 137
    .line 138
    invoke-static {v2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->r(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    .line 139
    move-result v2

    .line 140
    .line 141
    if-ne v0, v2, :cond_6

    .line 142
    .line 143
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 144
    .line 145
    .line 146
    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->m(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    .line 147
    move-result v0

    .line 148
    .line 149
    iget-object v2, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 150
    .line 151
    .line 152
    invoke-static {v2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->q(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    .line 153
    move-result v2

    .line 154
    .line 155
    if-ne v0, v2, :cond_6

    .line 156
    .line 157
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 158
    .line 159
    .line 160
    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->o(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    .line 161
    move-result v0

    .line 162
    .line 163
    if-ne v0, v1, :cond_3

    .line 164
    .line 165
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->start()V

    .line 169
    .line 170
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 171
    .line 172
    .line 173
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->e(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lcom/narvii/chat/screenroom/widgets/VideoController;

    .line 174
    move-result-object p1

    .line 175
    .line 176
    if-eqz p1, :cond_6

    .line 177
    .line 178
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 179
    .line 180
    .line 181
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->e(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lcom/narvii/chat/screenroom/widgets/VideoController;

    .line 182
    move-result-object p1

    .line 183
    .line 184
    .line 185
    invoke-interface {p1}, Lcom/narvii/chat/screenroom/widgets/VideoController;->show()V

    .line 186
    goto :goto_0

    .line 187
    .line 188
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->isPlaying()Z

    .line 192
    move-result v0

    .line 193
    .line 194
    if-nez v0, :cond_6

    .line 195
    .line 196
    if-nez p1, :cond_4

    .line 197
    .line 198
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->getCurrentPosition()I

    .line 202
    move-result p1

    .line 203
    .line 204
    if-lez p1, :cond_6

    .line 205
    .line 206
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 207
    .line 208
    .line 209
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->e(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lcom/narvii/chat/screenroom/widgets/VideoController;

    .line 210
    move-result-object p1

    .line 211
    .line 212
    if-eqz p1, :cond_6

    .line 213
    .line 214
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 215
    .line 216
    .line 217
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->e(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lcom/narvii/chat/screenroom/widgets/VideoController;

    .line 218
    move-result-object p1

    .line 219
    const/4 v0, 0x0

    .line 220
    .line 221
    .line 222
    invoke-interface {p1, v0}, Lcom/narvii/chat/screenroom/widgets/VideoController;->show(I)V

    .line 223
    goto :goto_0

    .line 224
    .line 225
    :cond_5
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 226
    .line 227
    .line 228
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->o(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)I

    .line 229
    move-result p1

    .line 230
    .line 231
    if-ne p1, v1, :cond_6

    .line 232
    .line 233
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->start()V

    .line 237
    .line 238
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 239
    .line 240
    .line 241
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->e(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lcom/narvii/chat/screenroom/widgets/VideoController;

    .line 242
    move-result-object p1

    .line 243
    .line 244
    if-eqz p1, :cond_6

    .line 245
    .line 246
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$5;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 247
    .line 248
    .line 249
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->e(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lcom/narvii/chat/screenroom/widgets/VideoController;

    .line 250
    move-result-object p1

    .line 251
    .line 252
    .line 253
    invoke-interface {p1}, Lcom/narvii/chat/screenroom/widgets/VideoController;->show()V

    .line 254
    :cond_6
    :goto_0
    return-void
.end method
