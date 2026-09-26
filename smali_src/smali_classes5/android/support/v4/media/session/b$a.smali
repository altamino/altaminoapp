.class public abstract Landroid/support/v4/media/session/b$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/b$a$a;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.v4.media.session.IMediaSession"

.field static final TRANSACTION_addQueueItem:I = 0x29

.field static final TRANSACTION_addQueueItemAt:I = 0x2a

.field static final TRANSACTION_adjustVolume:I = 0xb

.field static final TRANSACTION_fastForward:I = 0x16

.field static final TRANSACTION_getExtras:I = 0x1f

.field static final TRANSACTION_getFlags:I = 0x9

.field static final TRANSACTION_getLaunchPendingIntent:I = 0x8

.field static final TRANSACTION_getMetadata:I = 0x1b

.field static final TRANSACTION_getPackageName:I = 0x6

.field static final TRANSACTION_getPlaybackState:I = 0x1c

.field static final TRANSACTION_getQueue:I = 0x1d

.field static final TRANSACTION_getQueueTitle:I = 0x1e

.field static final TRANSACTION_getRatingType:I = 0x20

.field static final TRANSACTION_getRepeatMode:I = 0x25

.field static final TRANSACTION_getSessionInfo:I = 0x32

.field static final TRANSACTION_getShuffleMode:I = 0x2f

.field static final TRANSACTION_getTag:I = 0x7

.field static final TRANSACTION_getVolumeAttributes:I = 0xa

.field static final TRANSACTION_isCaptioningEnabled:I = 0x2d

.field static final TRANSACTION_isShuffleModeEnabledRemoved:I = 0x26

.field static final TRANSACTION_isTransportControlEnabled:I = 0x5

.field static final TRANSACTION_next:I = 0x14

.field static final TRANSACTION_pause:I = 0x12

.field static final TRANSACTION_play:I = 0xd

.field static final TRANSACTION_playFromMediaId:I = 0xe

.field static final TRANSACTION_playFromSearch:I = 0xf

.field static final TRANSACTION_playFromUri:I = 0x10

.field static final TRANSACTION_prepare:I = 0x21

.field static final TRANSACTION_prepareFromMediaId:I = 0x22

.field static final TRANSACTION_prepareFromSearch:I = 0x23

.field static final TRANSACTION_prepareFromUri:I = 0x24

.field static final TRANSACTION_previous:I = 0x15

.field static final TRANSACTION_rate:I = 0x19

.field static final TRANSACTION_rateWithExtras:I = 0x33

.field static final TRANSACTION_registerCallbackListener:I = 0x3

.field static final TRANSACTION_removeQueueItem:I = 0x2b

.field static final TRANSACTION_removeQueueItemAt:I = 0x2c

.field static final TRANSACTION_rewind:I = 0x17

.field static final TRANSACTION_seekTo:I = 0x18

.field static final TRANSACTION_sendCommand:I = 0x1

.field static final TRANSACTION_sendCustomAction:I = 0x1a

.field static final TRANSACTION_sendMediaButton:I = 0x2

.field static final TRANSACTION_setCaptioningEnabled:I = 0x2e

.field static final TRANSACTION_setPlaybackSpeed:I = 0x31

.field static final TRANSACTION_setRepeatMode:I = 0x27

.field static final TRANSACTION_setShuffleMode:I = 0x30

.field static final TRANSACTION_setShuffleModeEnabledRemoved:I = 0x28

.field static final TRANSACTION_setVolumeTo:I = 0xc

.field static final TRANSACTION_skipToQueueItem:I = 0x11

.field static final TRANSACTION_stop:I = 0x13

.field static final TRANSACTION_unregisterCallbackListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    const-string v0, "android.support.v4.media.session.IMediaSession"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static x1(Landroid/os/IBinder;)Landroid/support/v4/media/session/b;
    .locals 2

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    const-string v0, "android.support.v4.media.session.IMediaSession"

    .line 7
    .line 8
    .line 9
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    instance-of v1, v0, Landroid/support/v4/media/session/b;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    check-cast v0, Landroid/support/v4/media/session/b;

    .line 19
    return-object v0

    .line 20
    .line 21
    :cond_1
    new-instance v0, Landroid/support/v4/media/session/b$a$a;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0}, Landroid/support/v4/media/session/b$a$a;-><init>(Landroid/os/IBinder;)V

    .line 25
    return-object v0
.end method

.method public static y1()Landroid/support/v4/media/session/b;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/media/session/b$a$a;->sDefaultImpl:Landroid/support/v4/media/session/b;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x5f4e5446

    .line 4
    const/4 v1, 0x1

    .line 5
    .line 6
    const-string v2, "android.support.v4.media.session.IMediaSession"

    .line 7
    .line 8
    if-eq p1, v0, :cond_1b

    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    .line 13
    packed-switch p1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    .line 20
    .line 21
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 25
    move-result p1

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    sget-object p1, Landroid/support/v4/media/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    check-cast p1, Landroid/support/v4/media/RatingCompat;

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object p1, v3

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 41
    move-result p4

    .line 42
    .line 43
    if-eqz p4, :cond_1

    .line 44
    .line 45
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 46
    .line 47
    .line 48
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 49
    move-result-object p2

    .line 50
    move-object v3, p2

    .line 51
    .line 52
    check-cast v3, Landroid/os/Bundle;

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-interface {p0, p1, v3}, Landroid/support/v4/media/session/b;->w(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    return v1

    .line 60
    .line 61
    .line 62
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p0}, Landroid/support/v4/media/session/b;->m0()Landroid/os/Bundle;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 78
    goto :goto_1

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    :goto_1
    return v1

    .line 83
    .line 84
    .line 85
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    .line 89
    move-result p1

    .line 90
    .line 91
    .line 92
    invoke-interface {p0, p1}, Landroid/support/v4/media/session/b;->d1(F)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    return v1

    .line 97
    .line 98
    .line 99
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 103
    move-result p1

    .line 104
    .line 105
    .line 106
    invoke-interface {p0, p1}, Landroid/support/v4/media/session/b;->L0(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    return v1

    .line 111
    .line 112
    .line 113
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-interface {p0}, Landroid/support/v4/media/session/b;->D0()I

    .line 117
    move-result p1

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    return v1

    .line 125
    .line 126
    .line 127
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 131
    move-result p1

    .line 132
    .line 133
    if-eqz p1, :cond_3

    .line 134
    move v0, v1

    .line 135
    .line 136
    .line 137
    :cond_3
    invoke-interface {p0, v0}, Landroid/support/v4/media/session/b;->Y(Z)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    return v1

    .line 142
    .line 143
    .line 144
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-interface {p0}, Landroid/support/v4/media/session/b;->B()Z

    .line 148
    move-result p1

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    return v1

    .line 156
    .line 157
    .line 158
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 162
    move-result p1

    .line 163
    .line 164
    .line 165
    invoke-interface {p0, p1}, Landroid/support/v4/media/session/b;->z(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    return v1

    .line 170
    .line 171
    .line 172
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 176
    move-result p1

    .line 177
    .line 178
    if-eqz p1, :cond_4

    .line 179
    .line 180
    sget-object p1, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 181
    .line 182
    .line 183
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 184
    move-result-object p1

    .line 185
    move-object v3, p1

    .line 186
    .line 187
    check-cast v3, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 188
    .line 189
    .line 190
    :cond_4
    invoke-interface {p0, v3}, Landroid/support/v4/media/session/b;->Q0(Landroid/support/v4/media/MediaDescriptionCompat;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    return v1

    .line 195
    .line 196
    .line 197
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 201
    move-result p1

    .line 202
    .line 203
    if-eqz p1, :cond_5

    .line 204
    .line 205
    sget-object p1, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 206
    .line 207
    .line 208
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 209
    move-result-object p1

    .line 210
    move-object v3, p1

    .line 211
    .line 212
    check-cast v3, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 213
    .line 214
    .line 215
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 216
    move-result p1

    .line 217
    .line 218
    .line 219
    invoke-interface {p0, v3, p1}, Landroid/support/v4/media/session/b;->u0(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    return v1

    .line 224
    .line 225
    .line 226
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 230
    move-result p1

    .line 231
    .line 232
    if-eqz p1, :cond_6

    .line 233
    .line 234
    sget-object p1, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 235
    .line 236
    .line 237
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 238
    move-result-object p1

    .line 239
    move-object v3, p1

    .line 240
    .line 241
    check-cast v3, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 242
    .line 243
    .line 244
    :cond_6
    invoke-interface {p0, v3}, Landroid/support/v4/media/session/b;->R0(Landroid/support/v4/media/MediaDescriptionCompat;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    return v1

    .line 249
    .line 250
    .line 251
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 255
    move-result p1

    .line 256
    .line 257
    if-eqz p1, :cond_7

    .line 258
    move v0, v1

    .line 259
    .line 260
    .line 261
    :cond_7
    invoke-interface {p0, v0}, Landroid/support/v4/media/session/b;->I(Z)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    return v1

    .line 266
    .line 267
    .line 268
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 272
    move-result p1

    .line 273
    .line 274
    .line 275
    invoke-interface {p0, p1}, Landroid/support/v4/media/session/b;->setRepeatMode(I)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    return v1

    .line 280
    .line 281
    .line 282
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-interface {p0}, Landroid/support/v4/media/session/b;->f()Z

    .line 286
    move-result p1

    .line 287
    .line 288
    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    return v1

    .line 294
    .line 295
    .line 296
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-interface {p0}, Landroid/support/v4/media/session/b;->getRepeatMode()I

    .line 300
    move-result p1

    .line 301
    .line 302
    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    return v1

    .line 308
    .line 309
    .line 310
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 314
    move-result p1

    .line 315
    .line 316
    if-eqz p1, :cond_8

    .line 317
    .line 318
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 319
    .line 320
    .line 321
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 322
    move-result-object p1

    .line 323
    .line 324
    check-cast p1, Landroid/net/Uri;

    .line 325
    goto :goto_2

    .line 326
    :cond_8
    move-object p1, v3

    .line 327
    .line 328
    .line 329
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 330
    move-result p4

    .line 331
    .line 332
    if-eqz p4, :cond_9

    .line 333
    .line 334
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 335
    .line 336
    .line 337
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 338
    move-result-object p2

    .line 339
    move-object v3, p2

    .line 340
    .line 341
    check-cast v3, Landroid/os/Bundle;

    .line 342
    .line 343
    .line 344
    :cond_9
    invoke-interface {p0, p1, v3}, Landroid/support/v4/media/session/b;->g(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    return v1

    .line 349
    .line 350
    .line 351
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 355
    move-result-object p1

    .line 356
    .line 357
    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 359
    move-result p4

    .line 360
    .line 361
    if-eqz p4, :cond_a

    .line 362
    .line 363
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 364
    .line 365
    .line 366
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 367
    move-result-object p2

    .line 368
    move-object v3, p2

    .line 369
    .line 370
    check-cast v3, Landroid/os/Bundle;

    .line 371
    .line 372
    .line 373
    :cond_a
    invoke-interface {p0, p1, v3}, Landroid/support/v4/media/session/b;->T0(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    return v1

    .line 378
    .line 379
    .line 380
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 384
    move-result-object p1

    .line 385
    .line 386
    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 388
    move-result p4

    .line 389
    .line 390
    if-eqz p4, :cond_b

    .line 391
    .line 392
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 393
    .line 394
    .line 395
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 396
    move-result-object p2

    .line 397
    move-object v3, p2

    .line 398
    .line 399
    check-cast v3, Landroid/os/Bundle;

    .line 400
    .line 401
    .line 402
    :cond_b
    invoke-interface {p0, p1, v3}, Landroid/support/v4/media/session/b;->q(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    return v1

    .line 407
    .line 408
    .line 409
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    invoke-interface {p0}, Landroid/support/v4/media/session/b;->prepare()V

    .line 413
    .line 414
    .line 415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    return v1

    .line 417
    .line 418
    .line 419
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    invoke-interface {p0}, Landroid/support/v4/media/session/b;->i0()I

    .line 423
    move-result p1

    .line 424
    .line 425
    .line 426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    .line 428
    .line 429
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    return v1

    .line 431
    .line 432
    .line 433
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    invoke-interface {p0}, Landroid/support/v4/media/session/b;->getExtras()Landroid/os/Bundle;

    .line 437
    move-result-object p1

    .line 438
    .line 439
    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    .line 442
    if-eqz p1, :cond_c

    .line 443
    .line 444
    .line 445
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 449
    goto :goto_3

    .line 450
    .line 451
    .line 452
    :cond_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    :goto_3
    return v1

    .line 454
    .line 455
    .line 456
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    invoke-interface {p0}, Landroid/support/v4/media/session/b;->T()Ljava/lang/CharSequence;

    .line 460
    move-result-object p1

    .line 461
    .line 462
    .line 463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    .line 465
    if-eqz p1, :cond_d

    .line 466
    .line 467
    .line 468
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    .line 470
    .line 471
    invoke-static {p1, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 472
    goto :goto_4

    .line 473
    .line 474
    .line 475
    :cond_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    :goto_4
    return v1

    .line 477
    .line 478
    .line 479
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    invoke-interface {p0}, Landroid/support/v4/media/session/b;->m1()Ljava/util/List;

    .line 483
    move-result-object p1

    .line 484
    .line 485
    .line 486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    .line 488
    .line 489
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 490
    return v1

    .line 491
    .line 492
    .line 493
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    invoke-interface {p0}, Landroid/support/v4/media/session/b;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 497
    move-result-object p1

    .line 498
    .line 499
    .line 500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    .line 502
    if-eqz p1, :cond_e

    .line 503
    .line 504
    .line 505
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {p1, p3, v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->writeToParcel(Landroid/os/Parcel;I)V

    .line 509
    goto :goto_5

    .line 510
    .line 511
    .line 512
    :cond_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    :goto_5
    return v1

    .line 514
    .line 515
    .line 516
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    invoke-interface {p0}, Landroid/support/v4/media/session/b;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    .line 520
    move-result-object p1

    .line 521
    .line 522
    .line 523
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    .line 525
    if-eqz p1, :cond_f

    .line 526
    .line 527
    .line 528
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {p1, p3, v1}, Landroid/support/v4/media/MediaMetadataCompat;->writeToParcel(Landroid/os/Parcel;I)V

    .line 532
    goto :goto_6

    .line 533
    .line 534
    .line 535
    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    :goto_6
    return v1

    .line 537
    .line 538
    .line 539
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 543
    move-result-object p1

    .line 544
    .line 545
    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 547
    move-result p4

    .line 548
    .line 549
    if-eqz p4, :cond_10

    .line 550
    .line 551
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 552
    .line 553
    .line 554
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 555
    move-result-object p2

    .line 556
    move-object v3, p2

    .line 557
    .line 558
    check-cast v3, Landroid/os/Bundle;

    .line 559
    .line 560
    .line 561
    :cond_10
    invoke-interface {p0, p1, v3}, Landroid/support/v4/media/session/b;->e(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    return v1

    .line 566
    .line 567
    .line 568
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 572
    move-result p1

    .line 573
    .line 574
    if-eqz p1, :cond_11

    .line 575
    .line 576
    sget-object p1, Landroid/support/v4/media/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 577
    .line 578
    .line 579
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 580
    move-result-object p1

    .line 581
    move-object v3, p1

    .line 582
    .line 583
    check-cast v3, Landroid/support/v4/media/RatingCompat;

    .line 584
    .line 585
    .line 586
    :cond_11
    invoke-interface {p0, v3}, Landroid/support/v4/media/session/b;->O0(Landroid/support/v4/media/RatingCompat;)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    return v1

    .line 591
    .line 592
    .line 593
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 597
    move-result-wide p1

    .line 598
    .line 599
    .line 600
    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/session/b;->seekTo(J)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    return v1

    .line 605
    .line 606
    .line 607
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    invoke-interface {p0}, Landroid/support/v4/media/session/b;->F()V

    .line 611
    .line 612
    .line 613
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    return v1

    .line 615
    .line 616
    .line 617
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    invoke-interface {p0}, Landroid/support/v4/media/session/b;->Z0()V

    .line 621
    .line 622
    .line 623
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    return v1

    .line 625
    .line 626
    .line 627
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    invoke-interface {p0}, Landroid/support/v4/media/session/b;->previous()V

    .line 631
    .line 632
    .line 633
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    return v1

    .line 635
    .line 636
    .line 637
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    .line 639
    .line 640
    invoke-interface {p0}, Landroid/support/v4/media/session/b;->next()V

    .line 641
    .line 642
    .line 643
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    return v1

    .line 645
    .line 646
    .line 647
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    invoke-interface {p0}, Landroid/support/v4/media/session/b;->stop()V

    .line 651
    .line 652
    .line 653
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    return v1

    .line 655
    .line 656
    .line 657
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    invoke-interface {p0}, Landroid/support/v4/media/session/b;->pause()V

    .line 661
    .line 662
    .line 663
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    return v1

    .line 665
    .line 666
    .line 667
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 671
    move-result-wide p1

    .line 672
    .line 673
    .line 674
    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/session/b;->J0(J)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    return v1

    .line 679
    .line 680
    .line 681
    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 685
    move-result p1

    .line 686
    .line 687
    if-eqz p1, :cond_12

    .line 688
    .line 689
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 690
    .line 691
    .line 692
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 693
    move-result-object p1

    .line 694
    .line 695
    check-cast p1, Landroid/net/Uri;

    .line 696
    goto :goto_7

    .line 697
    :cond_12
    move-object p1, v3

    .line 698
    .line 699
    .line 700
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 701
    move-result p4

    .line 702
    .line 703
    if-eqz p4, :cond_13

    .line 704
    .line 705
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 706
    .line 707
    .line 708
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 709
    move-result-object p2

    .line 710
    move-object v3, p2

    .line 711
    .line 712
    check-cast v3, Landroid/os/Bundle;

    .line 713
    .line 714
    .line 715
    :cond_13
    invoke-interface {p0, p1, v3}, Landroid/support/v4/media/session/b;->q0(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 716
    .line 717
    .line 718
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    return v1

    .line 720
    .line 721
    .line 722
    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 726
    move-result-object p1

    .line 727
    .line 728
    .line 729
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 730
    move-result p4

    .line 731
    .line 732
    if-eqz p4, :cond_14

    .line 733
    .line 734
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 735
    .line 736
    .line 737
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 738
    move-result-object p2

    .line 739
    move-object v3, p2

    .line 740
    .line 741
    check-cast v3, Landroid/os/Bundle;

    .line 742
    .line 743
    .line 744
    :cond_14
    invoke-interface {p0, p1, v3}, Landroid/support/v4/media/session/b;->n0(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    return v1

    .line 749
    .line 750
    .line 751
    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 755
    move-result-object p1

    .line 756
    .line 757
    .line 758
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 759
    move-result p4

    .line 760
    .line 761
    if-eqz p4, :cond_15

    .line 762
    .line 763
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 764
    .line 765
    .line 766
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 767
    move-result-object p2

    .line 768
    move-object v3, p2

    .line 769
    .line 770
    check-cast v3, Landroid/os/Bundle;

    .line 771
    .line 772
    .line 773
    :cond_15
    invoke-interface {p0, p1, v3}, Landroid/support/v4/media/session/b;->s(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 774
    .line 775
    .line 776
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    return v1

    .line 778
    .line 779
    .line 780
    :pswitch_26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    .line 782
    .line 783
    invoke-interface {p0}, Landroid/support/v4/media/session/b;->play()V

    .line 784
    .line 785
    .line 786
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 787
    return v1

    .line 788
    .line 789
    .line 790
    :pswitch_27
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 794
    move-result p1

    .line 795
    .line 796
    .line 797
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 798
    move-result p4

    .line 799
    .line 800
    .line 801
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 802
    move-result-object p2

    .line 803
    .line 804
    .line 805
    invoke-interface {p0, p1, p4, p2}, Landroid/support/v4/media/session/b;->P0(IILjava/lang/String;)V

    .line 806
    .line 807
    .line 808
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    return v1

    .line 810
    .line 811
    .line 812
    :pswitch_28
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 816
    move-result p1

    .line 817
    .line 818
    .line 819
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 820
    move-result p4

    .line 821
    .line 822
    .line 823
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 824
    move-result-object p2

    .line 825
    .line 826
    .line 827
    invoke-interface {p0, p1, p4, p2}, Landroid/support/v4/media/session/b;->i1(IILjava/lang/String;)V

    .line 828
    .line 829
    .line 830
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 831
    return v1

    .line 832
    .line 833
    .line 834
    :pswitch_29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    invoke-interface {p0}, Landroid/support/v4/media/session/b;->e0()Landroid/support/v4/media/session/ParcelableVolumeInfo;

    .line 838
    move-result-object p1

    .line 839
    .line 840
    .line 841
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    .line 843
    if-eqz p1, :cond_16

    .line 844
    .line 845
    .line 846
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 847
    .line 848
    .line 849
    invoke-virtual {p1, p3, v1}, Landroid/support/v4/media/session/ParcelableVolumeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 850
    goto :goto_8

    .line 851
    .line 852
    .line 853
    :cond_16
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 854
    :goto_8
    return v1

    .line 855
    .line 856
    .line 857
    :pswitch_2a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    .line 859
    .line 860
    invoke-interface {p0}, Landroid/support/v4/media/session/b;->a()J

    .line 861
    move-result-wide p1

    .line 862
    .line 863
    .line 864
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    .line 866
    .line 867
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 868
    return v1

    .line 869
    .line 870
    .line 871
    :pswitch_2b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    .line 873
    .line 874
    invoke-interface {p0}, Landroid/support/v4/media/session/b;->j()Landroid/app/PendingIntent;

    .line 875
    move-result-object p1

    .line 876
    .line 877
    .line 878
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 879
    .line 880
    if-eqz p1, :cond_17

    .line 881
    .line 882
    .line 883
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 884
    .line 885
    .line 886
    invoke-virtual {p1, p3, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 887
    goto :goto_9

    .line 888
    .line 889
    .line 890
    :cond_17
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    :goto_9
    return v1

    .line 892
    .line 893
    .line 894
    :pswitch_2c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    .line 896
    .line 897
    invoke-interface {p0}, Landroid/support/v4/media/session/b;->getTag()Ljava/lang/String;

    .line 898
    move-result-object p1

    .line 899
    .line 900
    .line 901
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    .line 903
    .line 904
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 905
    return v1

    .line 906
    .line 907
    .line 908
    :pswitch_2d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 909
    .line 910
    .line 911
    invoke-interface {p0}, Landroid/support/v4/media/session/b;->J()Ljava/lang/String;

    .line 912
    move-result-object p1

    .line 913
    .line 914
    .line 915
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    .line 917
    .line 918
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 919
    return v1

    .line 920
    .line 921
    .line 922
    :pswitch_2e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 923
    .line 924
    .line 925
    invoke-interface {p0}, Landroid/support/v4/media/session/b;->R()Z

    .line 926
    move-result p1

    .line 927
    .line 928
    .line 929
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    .line 931
    .line 932
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 933
    return v1

    .line 934
    .line 935
    .line 936
    :pswitch_2f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 937
    .line 938
    .line 939
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 940
    move-result-object p1

    .line 941
    .line 942
    .line 943
    invoke-static {p1}, Landroid/support/v4/media/session/a$a;->x1(Landroid/os/IBinder;)Landroid/support/v4/media/session/a;

    .line 944
    move-result-object p1

    .line 945
    .line 946
    .line 947
    invoke-interface {p0, p1}, Landroid/support/v4/media/session/b;->U(Landroid/support/v4/media/session/a;)V

    .line 948
    .line 949
    .line 950
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 951
    return v1

    .line 952
    .line 953
    .line 954
    :pswitch_30
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 955
    .line 956
    .line 957
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 958
    move-result-object p1

    .line 959
    .line 960
    .line 961
    invoke-static {p1}, Landroid/support/v4/media/session/a$a;->x1(Landroid/os/IBinder;)Landroid/support/v4/media/session/a;

    .line 962
    move-result-object p1

    .line 963
    .line 964
    .line 965
    invoke-interface {p0, p1}, Landroid/support/v4/media/session/b;->O(Landroid/support/v4/media/session/a;)V

    .line 966
    .line 967
    .line 968
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    return v1

    .line 970
    .line 971
    .line 972
    :pswitch_31
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    .line 974
    .line 975
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 976
    move-result p1

    .line 977
    .line 978
    if-eqz p1, :cond_18

    .line 979
    .line 980
    sget-object p1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 981
    .line 982
    .line 983
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 984
    move-result-object p1

    .line 985
    move-object v3, p1

    .line 986
    .line 987
    check-cast v3, Landroid/view/KeyEvent;

    .line 988
    .line 989
    .line 990
    :cond_18
    invoke-interface {p0, v3}, Landroid/support/v4/media/session/b;->s0(Landroid/view/KeyEvent;)Z

    .line 991
    move-result p1

    .line 992
    .line 993
    .line 994
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 995
    .line 996
    .line 997
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 998
    return v1

    .line 999
    .line 1000
    .line 1001
    :pswitch_32
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1005
    move-result-object p1

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1009
    move-result p4

    .line 1010
    .line 1011
    if-eqz p4, :cond_19

    .line 1012
    .line 1013
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1014
    .line 1015
    .line 1016
    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1017
    move-result-object p4

    .line 1018
    .line 1019
    check-cast p4, Landroid/os/Bundle;

    .line 1020
    goto :goto_a

    .line 1021
    :cond_19
    move-object p4, v3

    .line 1022
    .line 1023
    .line 1024
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1025
    move-result v0

    .line 1026
    .line 1027
    if-eqz v0, :cond_1a

    .line 1028
    .line 1029
    sget-object v0, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1030
    .line 1031
    .line 1032
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1033
    move-result-object p2

    .line 1034
    move-object v3, p2

    .line 1035
    .line 1036
    check-cast v3, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;

    .line 1037
    .line 1038
    .line 1039
    :cond_1a
    invoke-interface {p0, p1, p4, v3}, Landroid/support/v4/media/session/b;->E(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    return v1

    .line 1044
    .line 1045
    .line 1046
    :cond_1b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1047
    return v1

    .line 1048
    nop

    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
