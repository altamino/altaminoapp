.class Lcom/narvii/media/MediaPlayerManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/media/MediaLoader$OnMediaLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/MediaPlayerManager;->playAudio(Ljava/lang/String;ILcom/narvii/media/MediaStatusChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/MediaPlayerManager;

.field final synthetic val$seekTime:I


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaPlayerManager;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/media/MediaPlayerManager$4;->val$seekTime:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/media/MediaPlayerManager;->g(Lcom/narvii/media/MediaPlayerManager;Ljava/lang/String;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->b(Lcom/narvii/media/MediaPlayerManager;)Lcom/narvii/app/NVContext;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    const v0, 0x7f120726

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->f(Lcom/narvii/media/MediaPlayerManager;)Lcom/narvii/media/MediaStatusChangeListener;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    sget-object v0, Lcom/narvii/media/MediaStatus;->IDLE:Lcom/narvii/media/MediaStatus;

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v0}, Lcom/narvii/media/MediaStatusChangeListener;->onStatusChange(Lcom/narvii/media/MediaStatus;)V

    .line 43
    :cond_0
    return-void
.end method

.method public onLoading(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/media/MediaPlayerManager;->g(Lcom/narvii/media/MediaPlayerManager;Ljava/lang/String;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->f(Lcom/narvii/media/MediaPlayerManager;)Lcom/narvii/media/MediaStatusChangeListener;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    sget-object v0, Lcom/narvii/media/MediaStatus;->DOWNLOADING:Lcom/narvii/media/MediaStatus;

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0}, Lcom/narvii/media/MediaStatusChangeListener;->onStatusChange(Lcom/narvii/media/MediaStatus;)V

    .line 22
    :cond_0
    return-void
.end method

.method public onLocalReady(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/media/MediaPlayerManager;->f(Lcom/narvii/media/MediaPlayerManager;)Lcom/narvii/media/MediaStatusChangeListener;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/narvii/media/MediaPlayerManager;->g(Lcom/narvii/media/MediaPlayerManager;Ljava/lang/String;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_5

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/media/MediaPlayerManager;->a(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 28
    .line 29
    new-instance v1, Landroid/media/MediaPlayer;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Lcom/narvii/media/MediaPlayerManager;->d(Lcom/narvii/media/MediaPlayerManager;Landroid/media/MediaPlayer;)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lcom/narvii/media/MediaPlayerManager;->a(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 46
    .line 47
    :goto_0
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 48
    const/4 v1, 0x0

    .line 49
    .line 50
    iput-boolean v1, v0, Lcom/narvii/media/MediaPlayerManager;->isPlaying:Z

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lcom/narvii/media/MediaPlayerManager;->b(Lcom/narvii/media/MediaPlayerManager;)Lcom/narvii/app/NVContext;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    const-string v3, "audio"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    check-cast v2, Landroid/media/AudioManager;

    .line 67
    .line 68
    iput-object v2, v0, Lcom/narvii/media/MediaPlayerManager;->audioManager:Landroid/media/AudioManager;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Lcom/narvii/media/MediaPlayerManager;->a(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    new-instance v2, Lcom/narvii/media/MediaPlayerManager$4$1;

    .line 77
    .line 78
    .line 79
    invoke-direct {v2, p0, p1}, Lcom/narvii/media/MediaPlayerManager$4$1;-><init>(Lcom/narvii/media/MediaPlayerManager$4;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 83
    .line 84
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->a(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    new-instance v0, Lcom/narvii/media/MediaPlayerManager$4$2;

    .line 91
    .line 92
    .line 93
    invoke-direct {v0, p0}, Lcom/narvii/media/MediaPlayerManager$4$2;-><init>(Lcom/narvii/media/MediaPlayerManager$4;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 97
    .line 98
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->a(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    new-instance v0, Lcom/narvii/media/MediaPlayerManager$4$3;

    .line 105
    .line 106
    .line 107
    invoke-direct {v0, p0}, Lcom/narvii/media/MediaPlayerManager$4$3;-><init>(Lcom/narvii/media/MediaPlayerManager$4;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 111
    .line 112
    :try_start_0
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 113
    .line 114
    iget-object p1, p1, Lcom/narvii/media/MediaPlayerManager;->audioManager:Landroid/media/AudioManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    const/4 v0, 0x3

    .line 116
    .line 117
    if-eqz p1, :cond_2

    .line 118
    const/4 v2, 0x0

    .line 119
    const/4 v3, 0x2

    .line 120
    .line 121
    .line 122
    :try_start_1
    invoke-virtual {p1, v2, v0, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 123
    .line 124
    :catch_0
    :cond_2
    :try_start_2
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 125
    .line 126
    .line 127
    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->a(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    .line 128
    move-result-object p1

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 132
    .line 133
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 134
    .line 135
    .line 136
    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->a(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    .line 137
    move-result-object p1

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 141
    .line 142
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 143
    .line 144
    .line 145
    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->a(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    .line 146
    move-result-object p1

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 150
    .line 151
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 152
    .line 153
    .line 154
    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->a(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    .line 155
    move-result-object p1

    .line 156
    .line 157
    iget p2, p0, Lcom/narvii/media/MediaPlayerManager$4;->val$seekTime:I

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 161
    .line 162
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 163
    .line 164
    iget-object p1, p1, Lcom/narvii/media/MediaPlayerManager;->audioManager:Landroid/media/AudioManager;

    .line 165
    .line 166
    if-eqz p1, :cond_3

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    .line 170
    move-result p1

    .line 171
    .line 172
    if-eqz p1, :cond_3

    .line 173
    .line 174
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 175
    .line 176
    iget-object p1, p1, Lcom/narvii/media/MediaPlayerManager;->audioManager:Landroid/media/AudioManager;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    .line 180
    move-result p1

    .line 181
    .line 182
    if-nez p1, :cond_3

    .line 183
    .line 184
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 185
    .line 186
    iget-object p1, p1, Lcom/narvii/media/MediaPlayerManager;->audioManager:Landroid/media/AudioManager;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 190
    move-result p1

    .line 191
    .line 192
    iget-object p2, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 193
    .line 194
    iget-object p2, p2, Lcom/narvii/media/MediaPlayerManager;->audioManager:Landroid/media/AudioManager;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 198
    move-result p2

    .line 199
    int-to-float p1, p1

    .line 200
    int-to-float p2, p2

    .line 201
    .line 202
    .line 203
    const v2, 0x3e4ccccd    # 0.2f

    .line 204
    mul-float/2addr p2, v2

    .line 205
    .line 206
    cmpg-float p1, p1, p2

    .line 207
    .line 208
    if-gez p1, :cond_3

    .line 209
    .line 210
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 211
    .line 212
    .line 213
    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->b(Lcom/narvii/media/MediaPlayerManager;)Lcom/narvii/app/NVContext;

    .line 214
    move-result-object p1

    .line 215
    .line 216
    .line 217
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 218
    move-result-object p1

    .line 219
    .line 220
    .line 221
    const p2, 0x7f120839

    .line 222
    .line 223
    .line 224
    invoke-static {p1, p2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 225
    move-result-object p1

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 229
    .line 230
    :cond_3
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 231
    .line 232
    .line 233
    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->a(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    .line 234
    move-result-object p1

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 238
    .line 239
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 240
    const/4 p2, 0x1

    .line 241
    .line 242
    iput-boolean p2, p1, Lcom/narvii/media/MediaPlayerManager;->isPlaying:Z

    .line 243
    .line 244
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 245
    .line 246
    const/16 v2, 0x21

    .line 247
    .line 248
    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    .line 249
    .line 250
    if-lt v1, v2, :cond_4

    .line 251
    .line 252
    .line 253
    :try_start_3
    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->b(Lcom/narvii/media/MediaPlayerManager;)Lcom/narvii/app/NVContext;

    .line 254
    move-result-object p1

    .line 255
    .line 256
    .line 257
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 258
    move-result-object p1

    .line 259
    .line 260
    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 261
    .line 262
    iget-object v1, v1, Lcom/narvii/media/MediaPlayerManager;->headsetReceiver:Landroid/content/BroadcastReceiver;

    .line 263
    .line 264
    new-instance v2, Landroid/content/IntentFilter;

    .line 265
    .line 266
    .line 267
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 268
    const/4 v3, 0x4

    .line 269
    .line 270
    .line 271
    invoke-static {p1, v1, v2, v3}, Lh1/d;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 272
    goto :goto_1

    .line 273
    .line 274
    .line 275
    :cond_4
    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->b(Lcom/narvii/media/MediaPlayerManager;)Lcom/narvii/app/NVContext;

    .line 276
    move-result-object p1

    .line 277
    .line 278
    .line 279
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 280
    move-result-object p1

    .line 281
    .line 282
    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 283
    .line 284
    iget-object v1, v1, Lcom/narvii/media/MediaPlayerManager;->headsetReceiver:Landroid/content/BroadcastReceiver;

    .line 285
    .line 286
    new-instance v2, Landroid/content/IntentFilter;

    .line 287
    .line 288
    .line 289
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 293
    .line 294
    :goto_1
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 295
    .line 296
    iget-object v1, p1, Lcom/narvii/media/MediaPlayerManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 297
    .line 298
    iget-object v2, p1, Lcom/narvii/media/MediaPlayerManager;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 299
    .line 300
    iget-object p1, p1, Lcom/narvii/media/MediaPlayerManager;->sensor:Landroid/hardware/Sensor;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v2, p1, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 304
    .line 305
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 306
    .line 307
    iput-boolean p2, p1, Lcom/narvii/media/MediaPlayerManager;->receiverRegistered:Z

    .line 308
    .line 309
    iget-object p1, p1, Lcom/narvii/media/MediaPlayerManager;->updateProgressRunnable:Ljava/lang/Runnable;

    .line 310
    .line 311
    .line 312
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 313
    .line 314
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 315
    .line 316
    .line 317
    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->f(Lcom/narvii/media/MediaPlayerManager;)Lcom/narvii/media/MediaStatusChangeListener;

    .line 318
    move-result-object p1

    .line 319
    .line 320
    if-eqz p1, :cond_5

    .line 321
    .line 322
    new-instance v0, Lcom/narvii/media/MediaStatus;

    .line 323
    .line 324
    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 325
    .line 326
    .line 327
    invoke-static {v1}, Lcom/narvii/media/MediaPlayerManager;->a(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    .line 328
    move-result-object v1

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 332
    move-result v1

    .line 333
    .line 334
    .line 335
    invoke-direct {v0, p2, v1}, Lcom/narvii/media/MediaStatus;-><init>(II)V

    .line 336
    .line 337
    .line 338
    invoke-interface {p1, v0}, Lcom/narvii/media/MediaStatusChangeListener;->onStatusChange(Lcom/narvii/media/MediaStatus;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 339
    goto :goto_2

    .line 340
    .line 341
    :catch_1
    iget-object p1, p0, Lcom/narvii/media/MediaPlayerManager$4;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 342
    .line 343
    .line 344
    invoke-static {p1}, Lcom/narvii/media/MediaPlayerManager;->h(Lcom/narvii/media/MediaPlayerManager;)V

    .line 345
    :cond_5
    :goto_2
    return-void
.end method
