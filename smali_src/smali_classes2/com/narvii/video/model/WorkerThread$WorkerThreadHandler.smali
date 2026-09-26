.class final Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/model/WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WorkerThreadHandler"
.end annotation


# instance fields
.field private mWorkerThread:Lcom/narvii/video/model/WorkerThread;


# direct methods
.method constructor <init>(Lcom/narvii/video/model/WorkerThread;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;->mWorkerThread:Lcom/narvii/video/model/WorkerThread;

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;->mWorkerThread:Lcom/narvii/video/model/WorkerThread;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/narvii/video/model/WorkerThread;->access$000()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    const-string v2, "handler is already released! "

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    iget p1, p1, Landroid/os/Message;->what:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-static {v0, p1}, Lcom/narvii/video/ui/Utils;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void

    .line 32
    .line 33
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 34
    .line 35
    const/16 v2, 0x1010

    .line 36
    .line 37
    if-eq v1, v2, :cond_1

    .line 38
    const/4 v2, 0x2

    .line 39
    const/4 v3, 0x1

    .line 40
    const/4 v4, 0x0

    .line 41
    .line 42
    .line 43
    packed-switch v1, :pswitch_data_0

    .line 44
    .line 45
    goto/16 :goto_0

    .line 46
    .line 47
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p1, [Ljava/lang/Object;

    .line 50
    .line 51
    aget-object p1, p1, v4

    .line 52
    .line 53
    check-cast p1, Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 57
    move-result p1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Lcom/narvii/video/model/WorkerThread;->changeRole(I)V

    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p1, [Ljava/lang/Object;

    .line 67
    .line 68
    aget-object p1, p1, v4

    .line 69
    .line 70
    check-cast p1, Ljava/lang/Boolean;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 74
    move-result p1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p1}, Lcom/narvii/video/model/WorkerThread;->configAudioManger(Z)V

    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p1, [Ljava/lang/Object;

    .line 84
    .line 85
    aget-object v1, p1, v4

    .line 86
    .line 87
    check-cast v1, Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 91
    move-result v1

    .line 92
    .line 93
    aget-object p1, p1, v3

    .line 94
    .line 95
    check-cast p1, Ljava/lang/Boolean;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 99
    move-result p1

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1, p1}, Lcom/narvii/video/model/WorkerThread;->changeVideoProfile(IZ)V

    .line 103
    .line 104
    goto/16 :goto_0

    .line 105
    .line 106
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast p1, [Ljava/lang/Object;

    .line 109
    .line 110
    aget-object v1, p1, v4

    .line 111
    .line 112
    check-cast v1, Ljava/lang/Boolean;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 116
    move-result v1

    .line 117
    .line 118
    aget-object v3, p1, v3

    .line 119
    .line 120
    check-cast v3, Landroid/view/SurfaceView;

    .line 121
    .line 122
    aget-object p1, p1, v2

    .line 123
    .line 124
    check-cast p1, Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 128
    move-result p1

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1, v3, p1}, Lcom/narvii/video/model/WorkerThread;->preview(ZLandroid/view/SurfaceView;I)V

    .line 132
    .line 133
    goto/16 :goto_0

    .line 134
    .line 135
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast p1, [Ljava/lang/Object;

    .line 138
    .line 139
    aget-object v1, p1, v4

    .line 140
    .line 141
    check-cast v1, Ljava/lang/Boolean;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 145
    move-result v1

    .line 146
    .line 147
    aget-object v3, p1, v3

    .line 148
    .line 149
    check-cast v3, Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 153
    move-result v3

    .line 154
    .line 155
    aget-object p1, p1, v2

    .line 156
    .line 157
    check-cast p1, Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 161
    move-result p1

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v1, v3, p1}, Lcom/narvii/video/model/WorkerThread;->configAudioSource(ZII)V

    .line 165
    goto :goto_0

    .line 166
    .line 167
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast p1, [Ljava/lang/Object;

    .line 170
    .line 171
    aget-object v1, p1, v4

    .line 172
    .line 173
    check-cast v1, Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 177
    move-result v1

    .line 178
    .line 179
    aget-object v3, p1, v3

    .line 180
    .line 181
    check-cast v3, Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 185
    move-result v3

    .line 186
    .line 187
    aget-object v2, p1, v2

    .line 188
    .line 189
    check-cast v2, Ljava/lang/Boolean;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 193
    move-result v4

    .line 194
    const/4 v2, 0x3

    .line 195
    .line 196
    aget-object v2, p1, v2

    .line 197
    .line 198
    check-cast v2, Ljava/lang/Boolean;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 202
    move-result v5

    .line 203
    const/4 v2, 0x4

    .line 204
    .line 205
    aget-object p1, p1, v2

    .line 206
    .line 207
    check-cast p1, Ljava/lang/Boolean;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 211
    move-result p1

    .line 212
    move v2, v3

    .line 213
    move v3, v4

    .line 214
    move v4, v5

    .line 215
    move v5, p1

    .line 216
    .line 217
    .line 218
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/video/model/WorkerThread;->configEngine(IIZZZ)V

    .line 219
    goto :goto_0

    .line 220
    .line 221
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast p1, [Ljava/lang/Object;

    .line 224
    .line 225
    aget-object v1, p1, v4

    .line 226
    .line 227
    check-cast v1, Ljava/lang/String;

    .line 228
    .line 229
    aget-object p1, p1, v3

    .line 230
    .line 231
    check-cast p1, Lcom/narvii/video/model/ChannelActionCallback;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v1, p1}, Lcom/narvii/video/model/WorkerThread;->leaveChannel(Ljava/lang/String;Lcom/narvii/video/model/ChannelActionCallback;)V

    .line 235
    goto :goto_0

    .line 236
    .line 237
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v1, [Ljava/lang/String;

    .line 240
    .line 241
    aget-object v2, v1, v4

    .line 242
    .line 243
    aget-object v1, v1, v3

    .line 244
    .line 245
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v2, v1, p1}, Lcom/narvii/video/model/WorkerThread;->joinChannel(Ljava/lang/String;Ljava/lang/String;I)V

    .line 249
    goto :goto_0

    .line 250
    .line 251
    .line 252
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/video/model/WorkerThread;->exit()V

    .line 253
    :goto_0
    return-void

    .line 254
    nop

    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    :pswitch_data_0
    .packed-switch 0x2010
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/video/model/WorkerThread$WorkerThreadHandler;->mWorkerThread:Lcom/narvii/video/model/WorkerThread;

    return-void
.end method
