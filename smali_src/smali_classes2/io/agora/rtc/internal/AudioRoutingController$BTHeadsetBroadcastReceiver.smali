.class Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/AudioRoutingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BTHeadsetBroadcastReceiver"
.end annotation


# instance fields
.field private isRegistered:Z

.field final synthetic this$0:Lio/agora/rtc/internal/AudioRoutingController;


# direct methods
.method private constructor <init>(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;->isRegistered:Z

    return-void
.end method

.method synthetic constructor <init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;-><init>(Lio/agora/rtc/internal/AudioRoutingController;)V

    return-void
.end method


# virtual methods
.method public getRegistered()Z
    .locals 1

    iget-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;->isRegistered:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v0, p2

    .line 5
    .line 6
    const-string v2, "AudioRoute"

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 10
    move-result-object v3

    .line 11
    .line 12
    :try_start_0
    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    const-string v5, " disconnected"

    .line 19
    .line 20
    const-string v6, " connecting"

    .line 21
    .line 22
    const-string v7, " connected"

    .line 23
    .line 24
    const-string v8, "android.bluetooth.device.extra.DEVICE"

    .line 25
    .line 26
    const-string v9, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    .line 27
    .line 28
    const-string v10, "android.bluetooth.profile.extra.STATE"

    .line 29
    const/4 v11, 0x3

    .line 30
    .line 31
    const-string v12, ", "

    .line 32
    const/4 v14, 0x1

    .line 33
    .line 34
    const/16 v15, -0x63

    .line 35
    const/4 v13, 0x2

    .line 36
    .line 37
    if-eqz v4, :cond_5

    .line 38
    .line 39
    .line 40
    :try_start_1
    invoke-virtual {v0, v10, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 41
    move-result v3

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v9, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 45
    move-result v4

    .line 46
    .line 47
    new-instance v9, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    const-string v10, "BT ACTION_CONNECTION_STATE_CHANGED prev "

    .line 53
    .line 54
    .line 55
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v4

    .line 69
    .line 70
    .line 71
    invoke-static {v2, v4}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    check-cast v0, Landroid/bluetooth/BluetoothDevice;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 78
    .line 79
    const-string v4, "Bluetooth device "

    .line 80
    .line 81
    if-eqz v3, :cond_4

    .line 82
    .line 83
    if-eq v3, v14, :cond_3

    .line 84
    .line 85
    if-eq v3, v13, :cond_1

    .line 86
    .line 87
    if-eq v3, v11, :cond_0

    .line 88
    .line 89
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v0, " unknown event, state="

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    .line 113
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    goto/16 :goto_1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .line 118
    goto/16 :goto_0

    .line 119
    .line 120
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v0, " disconnecting"

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    .line 141
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    iget-object v0, v1, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 144
    const/4 v3, 0x0

    .line 145
    .line 146
    .line 147
    invoke-static {v0, v3}, Lio/agora/rtc/internal/AudioRoutingController;->access$202(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 148
    .line 149
    goto/16 :goto_1

    .line 150
    .line 151
    :cond_1
    if-eqz v0, :cond_f

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    .line 155
    move-result-object v3

    .line 156
    .line 157
    const/high16 v5, 0x200000

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3, v5}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    .line 161
    move-result v3

    .line 162
    .line 163
    if-nez v3, :cond_2

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    .line 167
    move-result-object v3

    .line 168
    .line 169
    const/high16 v5, 0x400000

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v5}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    .line 173
    move-result v3

    .line 174
    .line 175
    if-eqz v3, :cond_f

    .line 176
    .line 177
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object v0

    .line 194
    .line 195
    .line 196
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    iget-object v0, v1, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 199
    const/4 v3, 0x0

    .line 200
    .line 201
    .line 202
    invoke-static {v0, v3}, Lio/agora/rtc/internal/AudioRoutingController;->access$102(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 203
    .line 204
    iget-object v0, v1, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v13, v14}, Lio/agora/rtc/internal/AudioRoutingController;->sendEvent(II)V

    .line 208
    .line 209
    goto/16 :goto_1

    .line 210
    .line 211
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    move-result-object v0

    .line 228
    .line 229
    .line 230
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    goto/16 :goto_1

    .line 233
    .line 234
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    move-result-object v0

    .line 251
    .line 252
    .line 253
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    iget-object v0, v1, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 256
    const/4 v3, 0x0

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v13, v3}, Lio/agora/rtc/internal/AudioRoutingController;->sendEvent(II)V

    .line 260
    .line 261
    goto/16 :goto_1

    .line 262
    .line 263
    :cond_5
    const-string v4, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    move-result v4

    .line 268
    .line 269
    if-eqz v4, :cond_6

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v10, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 273
    move-result v3

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, v9, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 277
    move-result v4

    .line 278
    .line 279
    new-instance v9, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .line 284
    const-string v10, "BT ACTION_AUDIO_STATE_CHANGED prev "

    .line 285
    .line 286
    .line 287
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    move-result-object v4

    .line 301
    .line 302
    .line 303
    invoke-static {v2, v4}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 307
    move-result-object v0

    .line 308
    .line 309
    check-cast v0, Landroid/bluetooth/BluetoothDevice;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 310
    .line 311
    const-string v4, "Bluetooth audio device "

    .line 312
    .line 313
    .line 314
    packed-switch v3, :pswitch_data_0

    .line 315
    .line 316
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    const-string v0, " event, state="

    .line 328
    .line 329
    .line 330
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    move-result-object v0

    .line 338
    .line 339
    .line 340
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .line 342
    goto/16 :goto_1

    .line 343
    .line 344
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    move-result-object v0

    .line 361
    .line 362
    .line 363
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .line 365
    goto/16 :goto_1

    .line 366
    .line 367
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    move-result-object v0

    .line 384
    .line 385
    .line 386
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .line 388
    goto/16 :goto_1

    .line 389
    .line 390
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    move-result-object v0

    .line 407
    .line 408
    .line 409
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    .line 411
    goto/16 :goto_1

    .line 412
    .line 413
    :cond_6
    const-string v4, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    .line 414
    .line 415
    .line 416
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 417
    move-result v4

    .line 418
    .line 419
    if-eqz v4, :cond_b

    .line 420
    .line 421
    const-string v3, "android.media.extra.SCO_AUDIO_STATE"

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0, v3, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 425
    move-result v3

    .line 426
    .line 427
    const-string v4, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0, v4, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 431
    move-result v0

    .line 432
    .line 433
    new-instance v4, Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .line 438
    const-string v5, "BT ACTION_SCO_AUDIO_STATE_UPDATED prev "

    .line 439
    .line 440
    .line 441
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    move-result-object v0

    .line 455
    .line 456
    .line 457
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const/4 v0, -0x1

    .line 459
    .line 460
    if-eq v3, v0, :cond_a

    .line 461
    .line 462
    if-eqz v3, :cond_9

    .line 463
    .line 464
    if-eq v3, v14, :cond_8

    .line 465
    .line 466
    if-eq v3, v13, :cond_7

    .line 467
    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 472
    .line 473
    const-string v4, "Bluetooth SCO device unknown event, state="

    .line 474
    .line 475
    .line 476
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 483
    move-result-object v0

    .line 484
    .line 485
    .line 486
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    .line 488
    goto/16 :goto_1

    .line 489
    .line 490
    :cond_7
    const-string v0, "Bluetooth SCO device connecting"

    .line 491
    .line 492
    .line 493
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    .line 495
    goto/16 :goto_1

    .line 496
    .line 497
    :cond_8
    iget-object v0, v1, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 498
    .line 499
    .line 500
    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$300(Lio/agora/rtc/internal/AudioRoutingController;)Landroid/bluetooth/BluetoothAdapter;

    .line 501
    move-result-object v0

    .line 502
    .line 503
    .line 504
    invoke-virtual {v0, v14}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    .line 505
    move-result v0

    .line 506
    .line 507
    if-ne v0, v13, :cond_f

    .line 508
    .line 509
    const-string v0, "Bluetooth SCO device connected"

    .line 510
    .line 511
    .line 512
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    .line 514
    iget-object v0, v1, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 515
    .line 516
    .line 517
    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 518
    .line 519
    iget-object v0, v1, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0, v11, v14}, Lio/agora/rtc/internal/AudioRoutingController;->sendEvent(II)V

    .line 523
    .line 524
    goto/16 :goto_1

    .line 525
    .line 526
    :cond_9
    const-string v0, "Bluetooth SCO device disconnected"

    .line 527
    .line 528
    .line 529
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    .line 531
    iget-object v0, v1, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 532
    const/4 v3, 0x0

    .line 533
    .line 534
    .line 535
    invoke-virtual {v0, v11, v3}, Lio/agora/rtc/internal/AudioRoutingController;->sendEvent(II)V

    .line 536
    goto :goto_1

    .line 537
    .line 538
    :cond_a
    const-string v0, "Bluetooth SCO device error"

    .line 539
    .line 540
    .line 541
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    goto :goto_1

    .line 543
    .line 544
    :cond_b
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 545
    .line 546
    .line 547
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 548
    move-result v3

    .line 549
    .line 550
    if-eqz v3, :cond_f

    .line 551
    .line 552
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    .line 553
    .line 554
    .line 555
    invoke-virtual {v0, v3, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 556
    move-result v3

    .line 557
    .line 558
    const-string v4, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    .line 559
    .line 560
    .line 561
    invoke-virtual {v0, v4, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 562
    move-result v0

    .line 563
    .line 564
    new-instance v4, Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    .line 569
    const-string v5, "BluetoothAdapter.ACTION_STATE_CHANGED prev "

    .line 570
    .line 571
    .line 572
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 585
    move-result-object v0

    .line 586
    .line 587
    .line 588
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    .line 590
    const/16 v0, 0xa

    .line 591
    .line 592
    if-eq v3, v0, :cond_e

    .line 593
    .line 594
    const/16 v0, 0xc

    .line 595
    .line 596
    if-eq v3, v0, :cond_c

    .line 597
    goto :goto_1

    .line 598
    .line 599
    :cond_c
    iget-object v0, v1, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 600
    .line 601
    .line 602
    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$300(Lio/agora/rtc/internal/AudioRoutingController;)Landroid/bluetooth/BluetoothAdapter;

    .line 603
    move-result-object v0

    .line 604
    .line 605
    .line 606
    invoke-virtual {v0, v13}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    .line 607
    move-result v0

    .line 608
    .line 609
    if-eq v0, v13, :cond_d

    .line 610
    .line 611
    iget-object v0, v1, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 612
    .line 613
    .line 614
    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$300(Lio/agora/rtc/internal/AudioRoutingController;)Landroid/bluetooth/BluetoothAdapter;

    .line 615
    move-result-object v0

    .line 616
    .line 617
    .line 618
    invoke-virtual {v0, v14}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    .line 619
    move-result v0

    .line 620
    .line 621
    if-ne v0, v13, :cond_f

    .line 622
    .line 623
    :cond_d
    iget-object v0, v1, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 624
    .line 625
    .line 626
    invoke-virtual {v0, v13, v14}, Lio/agora/rtc/internal/AudioRoutingController;->sendEvent(II)V

    .line 627
    goto :goto_1

    .line 628
    .line 629
    :cond_e
    iget-object v0, v1, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 630
    const/4 v3, 0x0

    .line 631
    .line 632
    .line 633
    invoke-virtual {v0, v13, v3}, Lio/agora/rtc/internal/AudioRoutingController;->sendEvent(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 634
    goto :goto_1

    .line 635
    .line 636
    :goto_0
    const-string v3, "BT broadcast receiver onReceive fail "

    .line 637
    .line 638
    .line 639
    invoke-static {v2, v3, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 640
    :cond_f
    :goto_1
    return-void

    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setRegistered(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isReg"
        }
    .end annotation

    iput-boolean p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;->isRegistered:Z

    return-void
.end method
