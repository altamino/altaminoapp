.class Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/protyposis/android/mediaplayer/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;


# direct methods
.method private constructor <init>(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/protyposis/android/mediaplayer/MediaPlayer;Lnet/protyposis/android/mediaplayer/MediaPlayer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;-><init>(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_d

    .line 6
    const/4 v1, 0x2

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eq v0, v1, :cond_b

    .line 10
    const/4 v1, 0x3

    .line 11
    .line 12
    if-eq v0, v1, :cond_9

    .line 13
    const/4 v1, 0x4

    .line 14
    .line 15
    if-eq v0, v1, :cond_7

    .line 16
    const/4 v1, 0x5

    .line 17
    .line 18
    if-eq v0, v1, :cond_5

    .line 19
    .line 20
    const/16 v1, 0x64

    .line 21
    .line 22
    if-eq v0, v1, :cond_2

    .line 23
    .line 24
    const/16 v1, 0xc8

    .line 25
    .line 26
    if-eq v0, v1, :cond_0

    .line 27
    return-void

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$600()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    const-string v1, "onInfo"

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$2500(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$2500(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 53
    .line 54
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 55
    .line 56
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v1, v2, p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;->onInfo(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)Z

    .line 60
    :cond_1
    return-void

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$600()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    const-string v3, "Error ("

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v3, ","

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v3, ")"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 104
    .line 105
    .line 106
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$2400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    if-eqz v0, :cond_3

    .line 110
    .line 111
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 112
    .line 113
    .line 114
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$2400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 118
    .line 119
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 120
    .line 121
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 122
    .line 123
    .line 124
    invoke-interface {v0, v1, v3, p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;->onError(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)Z

    .line 125
    move-result p1

    .line 126
    goto :goto_0

    .line 127
    :cond_3
    move p1, v2

    .line 128
    .line 129
    :goto_0
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 130
    .line 131
    .line 132
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$2100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

    .line 133
    move-result-object v0

    .line 134
    .line 135
    if-eqz v0, :cond_4

    .line 136
    .line 137
    if-nez p1, :cond_4

    .line 138
    .line 139
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 140
    .line 141
    .line 142
    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$2100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

    .line 143
    move-result-object p1

    .line 144
    .line 145
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 146
    .line 147
    .line 148
    invoke-interface {p1, v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;->onCompletion(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V

    .line 149
    .line 150
    :cond_4
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 151
    .line 152
    .line 153
    invoke-static {p1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$2200(Lnet/protyposis/android/mediaplayer/MediaPlayer;Z)V

    .line 154
    return-void

    .line 155
    .line 156
    .line 157
    :cond_5
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$600()Ljava/lang/String;

    .line 158
    move-result-object v0

    .line 159
    .line 160
    const-string v1, "onVideoSizeChanged"

    .line 161
    .line 162
    .line 163
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 166
    .line 167
    .line 168
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$2300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;

    .line 169
    move-result-object v0

    .line 170
    .line 171
    if-eqz v0, :cond_6

    .line 172
    .line 173
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 174
    .line 175
    .line 176
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$2300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;

    .line 177
    move-result-object v0

    .line 178
    .line 179
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 180
    .line 181
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 182
    .line 183
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 184
    .line 185
    .line 186
    invoke-interface {v0, v1, v2, p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)V

    .line 187
    :cond_6
    return-void

    .line 188
    .line 189
    .line 190
    :cond_7
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$600()Ljava/lang/String;

    .line 191
    move-result-object p1

    .line 192
    .line 193
    const-string v0, "onSeekComplete"

    .line 194
    .line 195
    .line 196
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 199
    .line 200
    .line 201
    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$2000(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;

    .line 202
    move-result-object p1

    .line 203
    .line 204
    if-eqz p1, :cond_8

    .line 205
    .line 206
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 207
    .line 208
    .line 209
    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$2000(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;

    .line 210
    move-result-object p1

    .line 211
    .line 212
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 213
    .line 214
    .line 215
    invoke-interface {p1, v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V

    .line 216
    :cond_8
    return-void

    .line 217
    .line 218
    :cond_9
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 219
    .line 220
    .line 221
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$2600(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnBufferingUpdateListener;

    .line 222
    move-result-object v0

    .line 223
    .line 224
    if-eqz v0, :cond_a

    .line 225
    .line 226
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 227
    .line 228
    .line 229
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$2600(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnBufferingUpdateListener;

    .line 230
    move-result-object v0

    .line 231
    .line 232
    iget-object v1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 233
    .line 234
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 235
    .line 236
    .line 237
    invoke-interface {v0, v1, p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lnet/protyposis/android/mediaplayer/MediaPlayer;I)V

    .line 238
    :cond_a
    return-void

    .line 239
    .line 240
    .line 241
    :cond_b
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$600()Ljava/lang/String;

    .line 242
    move-result-object p1

    .line 243
    .line 244
    const-string v0, "onPlaybackComplete"

    .line 245
    .line 246
    .line 247
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 250
    .line 251
    .line 252
    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$2100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

    .line 253
    move-result-object p1

    .line 254
    .line 255
    if-eqz p1, :cond_c

    .line 256
    .line 257
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 258
    .line 259
    .line 260
    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$2100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

    .line 261
    move-result-object p1

    .line 262
    .line 263
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 264
    .line 265
    .line 266
    invoke-interface {p1, v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;->onCompletion(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V

    .line 267
    .line 268
    :cond_c
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 269
    .line 270
    .line 271
    invoke-static {p1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$2200(Lnet/protyposis/android/mediaplayer/MediaPlayer;Z)V

    .line 272
    return-void

    .line 273
    .line 274
    .line 275
    :cond_d
    invoke-static {}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$600()Ljava/lang/String;

    .line 276
    move-result-object p1

    .line 277
    .line 278
    const-string v0, "onPrepared"

    .line 279
    .line 280
    .line 281
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .line 283
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 284
    .line 285
    .line 286
    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1900(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;

    .line 287
    move-result-object p1

    .line 288
    .line 289
    if-eqz p1, :cond_e

    .line 290
    .line 291
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 292
    .line 293
    .line 294
    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$1900(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;

    .line 295
    move-result-object p1

    .line 296
    .line 297
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 298
    .line 299
    .line 300
    invoke-interface {p1, v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;->onPrepared(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V

    .line 301
    :cond_e
    return-void
.end method
