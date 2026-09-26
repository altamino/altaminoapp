.class public abstract Landroid/support/v4/media/session/a$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/a$a$a;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.v4.media.session.IMediaControllerCallback"

.field static final TRANSACTION_onCaptioningEnabledChanged:I = 0xb

.field static final TRANSACTION_onEvent:I = 0x1

.field static final TRANSACTION_onExtrasChanged:I = 0x7

.field static final TRANSACTION_onMetadataChanged:I = 0x4

.field static final TRANSACTION_onPlaybackStateChanged:I = 0x3

.field static final TRANSACTION_onQueueChanged:I = 0x5

.field static final TRANSACTION_onQueueTitleChanged:I = 0x6

.field static final TRANSACTION_onRepeatModeChanged:I = 0x9

.field static final TRANSACTION_onSessionDestroyed:I = 0x2

.field static final TRANSACTION_onSessionReady:I = 0xd

.field static final TRANSACTION_onShuffleModeChanged:I = 0xc

.field static final TRANSACTION_onShuffleModeChangedRemoved:I = 0xa

.field static final TRANSACTION_onVolumeInfoChanged:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    const-string v0, "android.support.v4.media.session.IMediaControllerCallback"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static x1(Landroid/os/IBinder;)Landroid/support/v4/media/session/a;
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
    const-string v0, "android.support.v4.media.session.IMediaControllerCallback"

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
    instance-of v1, v0, Landroid/support/v4/media/session/a;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    check-cast v0, Landroid/support/v4/media/session/a;

    .line 19
    return-object v0

    .line 20
    .line 21
    :cond_1
    new-instance v0, Landroid/support/v4/media/session/a$a$a;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0}, Landroid/support/v4/media/session/a$a$a;-><init>(Landroid/os/IBinder;)V

    .line 25
    return-object v0
.end method

.method public static y1()Landroid/support/v4/media/session/a;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/media/session/a$a$a;->sDefaultImpl:Landroid/support/v4/media/session/a;

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
    const-string v2, "android.support.v4.media.session.IMediaControllerCallback"

    .line 7
    .line 8
    if-eq p1, v0, :cond_8

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
    invoke-interface {p0}, Landroid/support/v4/media/session/a;->n()V

    .line 25
    return v1

    .line 26
    .line 27
    .line 28
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 32
    move-result p1

    .line 33
    .line 34
    .line 35
    invoke-interface {p0, p1}, Landroid/support/v4/media/session/a;->F0(I)V

    .line 36
    return v1

    .line 37
    .line 38
    .line 39
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 43
    move-result p1

    .line 44
    .line 45
    if-eqz p1, :cond_0

    .line 46
    move v0, v1

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-interface {p0, v0}, Landroid/support/v4/media/session/a;->a1(Z)V

    .line 50
    return v1

    .line 51
    .line 52
    .line 53
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 57
    move-result p1

    .line 58
    .line 59
    if-eqz p1, :cond_1

    .line 60
    move v0, v1

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-interface {p0, v0}, Landroid/support/v4/media/session/a;->g1(Z)V

    .line 64
    return v1

    .line 65
    .line 66
    .line 67
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 71
    move-result p1

    .line 72
    .line 73
    .line 74
    invoke-interface {p0, p1}, Landroid/support/v4/media/session/a;->onRepeatModeChanged(I)V

    .line 75
    return v1

    .line 76
    .line 77
    .line 78
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 82
    move-result p1

    .line 83
    .line 84
    if-eqz p1, :cond_2

    .line 85
    .line 86
    sget-object p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 87
    .line 88
    .line 89
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 90
    move-result-object p1

    .line 91
    move-object v3, p1

    .line 92
    .line 93
    check-cast v3, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    .line 94
    .line 95
    .line 96
    :cond_2
    invoke-interface {p0, v3}, Landroid/support/v4/media/session/a;->N0(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    .line 97
    return v1

    .line 98
    .line 99
    .line 100
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 104
    move-result p1

    .line 105
    .line 106
    if-eqz p1, :cond_3

    .line 107
    .line 108
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 109
    .line 110
    .line 111
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 112
    move-result-object p1

    .line 113
    move-object v3, p1

    .line 114
    .line 115
    check-cast v3, Landroid/os/Bundle;

    .line 116
    .line 117
    .line 118
    :cond_3
    invoke-interface {p0, v3}, Landroid/support/v4/media/session/a;->U0(Landroid/os/Bundle;)V

    .line 119
    return v1

    .line 120
    .line 121
    .line 122
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 126
    move-result p1

    .line 127
    .line 128
    if-eqz p1, :cond_4

    .line 129
    .line 130
    sget-object p1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 131
    .line 132
    .line 133
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 134
    move-result-object p1

    .line 135
    move-object v3, p1

    .line 136
    .line 137
    check-cast v3, Ljava/lang/CharSequence;

    .line 138
    .line 139
    .line 140
    :cond_4
    invoke-interface {p0, v3}, Landroid/support/v4/media/session/a;->h1(Ljava/lang/CharSequence;)V

    .line 141
    return v1

    .line 142
    .line 143
    .line 144
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    .line 146
    sget-object p1, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 150
    move-result-object p1

    .line 151
    .line 152
    .line 153
    invoke-interface {p0, p1}, Landroid/support/v4/media/session/a;->o(Ljava/util/List;)V

    .line 154
    return v1

    .line 155
    .line 156
    .line 157
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 161
    move-result p1

    .line 162
    .line 163
    if-eqz p1, :cond_5

    .line 164
    .line 165
    sget-object p1, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 166
    .line 167
    .line 168
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 169
    move-result-object p1

    .line 170
    move-object v3, p1

    .line 171
    .line 172
    check-cast v3, Landroid/support/v4/media/MediaMetadataCompat;

    .line 173
    .line 174
    .line 175
    :cond_5
    invoke-interface {p0, v3}, Landroid/support/v4/media/session/a;->v0(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 176
    return v1

    .line 177
    .line 178
    .line 179
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 183
    move-result p1

    .line 184
    .line 185
    if-eqz p1, :cond_6

    .line 186
    .line 187
    sget-object p1, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 188
    .line 189
    .line 190
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 191
    move-result-object p1

    .line 192
    move-object v3, p1

    .line 193
    .line 194
    check-cast v3, Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 195
    .line 196
    .line 197
    :cond_6
    invoke-interface {p0, v3}, Landroid/support/v4/media/session/a;->v1(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 198
    return v1

    .line 199
    .line 200
    .line 201
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-interface {p0}, Landroid/support/v4/media/session/a;->y()V

    .line 205
    return v1

    .line 206
    .line 207
    .line 208
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 212
    move-result-object p1

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 216
    move-result p3

    .line 217
    .line 218
    if-eqz p3, :cond_7

    .line 219
    .line 220
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 221
    .line 222
    .line 223
    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 224
    move-result-object p2

    .line 225
    move-object v3, p2

    .line 226
    .line 227
    check-cast v3, Landroid/os/Bundle;

    .line 228
    .line 229
    .line 230
    :cond_7
    invoke-interface {p0, p1, v3}, Landroid/support/v4/media/session/a;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 231
    return v1

    .line 232
    .line 233
    .line 234
    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    return v1

    .line 236
    nop

    .line 237
    .line 238
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
    :pswitch_data_0
    .packed-switch 0x1
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
