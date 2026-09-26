.class Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;
.super Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/AudioRoutingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerStartState"
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/internal/AudioRoutingController;


# direct methods
.method public constructor <init>(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;-><init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2200(Lio/agora/rtc/internal/AudioRoutingController;)I

    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2700(Lio/agora/rtc/internal/AudioRoutingController;)I

    .line 17
    move-result v0

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2800(Lio/agora/rtc/internal/AudioRoutingController;)Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x1

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$2202(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x3

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$2202(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$800(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    const-string v1, "Monitor start: default routing: "

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2200(Lio/agora/rtc/internal/AudioRoutingController;)I

    .line 51
    move-result v1

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2900(Lio/agora/rtc/internal/AudioRoutingController;I)Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v1, ", current routing: "

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2100(Lio/agora/rtc/internal/AudioRoutingController;)I

    .line 67
    move-result v1

    .line 68
    .line 69
    .line 70
    invoke-static {p1, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2900(Lio/agora/rtc/internal/AudioRoutingController;I)Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    const-string v0, "AudioRoute"

    .line 81
    .line 82
    .line 83
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onEvent(II)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "info"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "StartState: onEvent: "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, ", info: "

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const-string v1, "AudioRoute"

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$2400(Lio/agora/rtc/internal/AudioRoutingController;)Landroid/media/AudioManager;

    .line 36
    move-result-object v0

    .line 37
    const/4 v2, 0x5

    .line 38
    const/4 v3, 0x0

    .line 39
    const/4 v4, 0x1

    .line 40
    .line 41
    if-eq p1, v4, :cond_1d

    .line 42
    .line 43
    const-string v5, " mIsBTHeadsetPlugged "

    .line 44
    .line 45
    const-string v6, "BT HEADSET EVENT  "

    .line 46
    const/4 v7, 0x2

    .line 47
    const/4 v8, 0x3

    .line 48
    .line 49
    if-eq p1, v7, :cond_14

    .line 50
    .line 51
    if-eq p1, v8, :cond_10

    .line 52
    .line 53
    const/16 v7, 0xb

    .line 54
    .line 55
    if-eq p1, v7, :cond_c

    .line 56
    .line 57
    const/16 v7, 0x10

    .line 58
    .line 59
    if-eq p1, v7, :cond_a

    .line 60
    .line 61
    const/16 v7, 0x15

    .line 62
    .line 63
    if-eq p1, v7, :cond_9

    .line 64
    .line 65
    const/16 v7, 0x16

    .line 66
    .line 67
    if-eq p1, v7, :cond_6

    .line 68
    .line 69
    const/16 v7, 0x70

    .line 70
    .line 71
    if-eq p1, v7, :cond_2

    .line 72
    .line 73
    const/16 v1, 0x71

    .line 74
    .line 75
    if-eq p1, v1, :cond_0

    .line 76
    .line 77
    .line 78
    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;->onEvent(II)V

    .line 79
    .line 80
    goto/16 :goto_2

    .line 81
    .line 82
    :cond_0
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 83
    .line 84
    .line 85
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Z

    .line 86
    move-result p1

    .line 87
    .line 88
    if-nez p1, :cond_1

    .line 89
    .line 90
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 91
    .line 92
    .line 93
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2300(Lio/agora/rtc/internal/AudioRoutingController;)Z

    .line 94
    .line 95
    :cond_1
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 96
    .line 97
    .line 98
    invoke-static {p1, v4}, Lio/agora/rtc/internal/AudioRoutingController;->access$2302(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 99
    .line 100
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 101
    .line 102
    .line 103
    invoke-static {p1, v3}, Lio/agora/rtc/internal/AudioRoutingController;->access$1602(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    .line 107
    move-result p1

    .line 108
    .line 109
    if-eqz p1, :cond_23

    .line 110
    .line 111
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 112
    .line 113
    .line 114
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 115
    .line 116
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 117
    .line 118
    .line 119
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$3200(Lio/agora/rtc/internal/AudioRoutingController;Landroid/media/AudioManager;)V

    .line 120
    .line 121
    goto/16 :goto_2

    .line 122
    .line 123
    :cond_2
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 124
    .line 125
    .line 126
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Z

    .line 127
    move-result p1

    .line 128
    .line 129
    if-eqz p1, :cond_3

    .line 130
    .line 131
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 132
    .line 133
    .line 134
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2300(Lio/agora/rtc/internal/AudioRoutingController;)Z

    .line 135
    move-result p1

    .line 136
    .line 137
    if-ne p1, v4, :cond_3

    .line 138
    .line 139
    goto/16 :goto_2

    .line 140
    .line 141
    :cond_3
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 142
    .line 143
    .line 144
    invoke-static {p1, v4}, Lio/agora/rtc/internal/AudioRoutingController;->access$1602(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 145
    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 161
    .line 162
    .line 163
    invoke-static {p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$200(Lio/agora/rtc/internal/AudioRoutingController;)Z

    .line 164
    move-result p2

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object p1

    .line 172
    .line 173
    .line 174
    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 177
    .line 178
    .line 179
    invoke-static {p1, v4}, Lio/agora/rtc/internal/AudioRoutingController;->access$2302(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 180
    .line 181
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 182
    .line 183
    .line 184
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$3700(Lio/agora/rtc/internal/AudioRoutingController;)I

    .line 185
    move-result p1

    .line 186
    .line 187
    if-eq p1, v2, :cond_4

    .line 188
    .line 189
    goto/16 :goto_2

    .line 190
    .line 191
    :cond_4
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 192
    .line 193
    .line 194
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$200(Lio/agora/rtc/internal/AudioRoutingController;)Z

    .line 195
    move-result p1

    .line 196
    .line 197
    if-eqz p1, :cond_5

    .line 198
    .line 199
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 200
    .line 201
    .line 202
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$3800(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 203
    .line 204
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 205
    .line 206
    .line 207
    invoke-static {p1, v4}, Lio/agora/rtc/internal/AudioRoutingController;->access$1802(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 208
    .line 209
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 210
    .line 211
    .line 212
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$3300(Lio/agora/rtc/internal/AudioRoutingController;Landroid/media/AudioManager;)V

    .line 213
    .line 214
    goto/16 :goto_2

    .line 215
    .line 216
    :cond_5
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 217
    .line 218
    .line 219
    invoke-static {p1, v3}, Lio/agora/rtc/internal/AudioRoutingController;->access$1802(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 220
    .line 221
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 222
    .line 223
    .line 224
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$800(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 225
    .line 226
    goto/16 :goto_2

    .line 227
    .line 228
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .line 233
    const-string v0, "phone state changed: "

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    move-result-object p1

    .line 244
    .line 245
    .line 246
    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 249
    .line 250
    if-lez p2, :cond_7

    .line 251
    move v3, v4

    .line 252
    .line 253
    .line 254
    :cond_7
    invoke-static {p1, v3}, Lio/agora/rtc/internal/AudioRoutingController;->access$1502(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 255
    .line 256
    if-nez p2, :cond_8

    .line 257
    .line 258
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 259
    .line 260
    .line 261
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$800(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 262
    .line 263
    goto/16 :goto_2

    .line 264
    .line 265
    :cond_8
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 266
    const/4 p2, -0x1

    .line 267
    .line 268
    .line 269
    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$2102(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 270
    .line 271
    goto/16 :goto_2

    .line 272
    .line 273
    :cond_9
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 274
    .line 275
    .line 276
    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$1402(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 277
    .line 278
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 279
    .line 280
    .line 281
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1500(Lio/agora/rtc/internal/AudioRoutingController;)Z

    .line 282
    move-result p1

    .line 283
    .line 284
    if-nez p1, :cond_23

    .line 285
    .line 286
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 287
    .line 288
    .line 289
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2100(Lio/agora/rtc/internal/AudioRoutingController;)I

    .line 290
    move-result p2

    .line 291
    .line 292
    .line 293
    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$3400(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 294
    .line 295
    goto/16 :goto_2

    .line 296
    .line 297
    :cond_a
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 298
    .line 299
    .line 300
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2400(Lio/agora/rtc/internal/AudioRoutingController;)Landroid/media/AudioManager;

    .line 301
    move-result-object p1

    .line 302
    .line 303
    if-nez p2, :cond_b

    .line 304
    .line 305
    .line 306
    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    .line 307
    move-result p2

    .line 308
    .line 309
    if-eqz p2, :cond_23

    .line 310
    .line 311
    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 312
    .line 313
    .line 314
    invoke-static {p2, p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$3200(Lio/agora/rtc/internal/AudioRoutingController;Landroid/media/AudioManager;)V

    .line 315
    .line 316
    goto/16 :goto_2

    .line 317
    .line 318
    .line 319
    :cond_b
    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    .line 320
    move-result p2

    .line 321
    .line 322
    if-eqz p2, :cond_23

    .line 323
    .line 324
    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 325
    .line 326
    .line 327
    invoke-static {p2, p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$3300(Lio/agora/rtc/internal/AudioRoutingController;Landroid/media/AudioManager;)V

    .line 328
    .line 329
    goto/16 :goto_2

    .line 330
    .line 331
    :cond_c
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 332
    .line 333
    .line 334
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$200(Lio/agora/rtc/internal/AudioRoutingController;)Z

    .line 335
    move-result p1

    .line 336
    .line 337
    if-nez p1, :cond_23

    .line 338
    .line 339
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 340
    .line 341
    .line 342
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1000(Lio/agora/rtc/internal/AudioRoutingController;)Z

    .line 343
    move-result p1

    .line 344
    .line 345
    if-nez p1, :cond_23

    .line 346
    .line 347
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 348
    .line 349
    .line 350
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1500(Lio/agora/rtc/internal/AudioRoutingController;)Z

    .line 351
    move-result p1

    .line 352
    .line 353
    if-nez p1, :cond_f

    .line 354
    .line 355
    if-ne p2, v4, :cond_d

    .line 356
    .line 357
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 358
    .line 359
    .line 360
    invoke-static {p1, v8}, Lio/agora/rtc/internal/AudioRoutingController;->access$3100(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 361
    goto :goto_0

    .line 362
    .line 363
    :cond_d
    if-nez p2, :cond_e

    .line 364
    .line 365
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 366
    .line 367
    .line 368
    invoke-static {p1, v4}, Lio/agora/rtc/internal/AudioRoutingController;->access$3100(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 369
    goto :goto_0

    .line 370
    .line 371
    :cond_e
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 372
    .line 373
    .line 374
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$800(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 375
    .line 376
    :cond_f
    :goto_0
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 377
    .line 378
    .line 379
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2100(Lio/agora/rtc/internal/AudioRoutingController;)I

    .line 380
    move-result p2

    .line 381
    .line 382
    .line 383
    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$3002(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 384
    .line 385
    goto/16 :goto_2

    .line 386
    .line 387
    :cond_10
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 388
    .line 389
    if-ne p2, v4, :cond_11

    .line 390
    move v7, v4

    .line 391
    .line 392
    .line 393
    :cond_11
    invoke-static {p1, v7}, Lio/agora/rtc/internal/AudioRoutingController;->access$3502(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 394
    .line 395
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 396
    .line 397
    .line 398
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1500(Lio/agora/rtc/internal/AudioRoutingController;)Z

    .line 399
    move-result p1

    .line 400
    .line 401
    if-eqz p1, :cond_12

    .line 402
    return-void

    .line 403
    .line 404
    :cond_12
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 405
    .line 406
    if-ne p2, v4, :cond_13

    .line 407
    move v3, v4

    .line 408
    .line 409
    .line 410
    :cond_13
    invoke-static {p1, v3}, Lio/agora/rtc/internal/AudioRoutingController;->access$3600(Lio/agora/rtc/internal/AudioRoutingController;Z)V

    .line 411
    .line 412
    if-nez p2, :cond_23

    .line 413
    .line 414
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 415
    .line 416
    .line 417
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$800(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 418
    .line 419
    goto/16 :goto_2

    .line 420
    .line 421
    :cond_14
    if-nez p2, :cond_15

    .line 422
    .line 423
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 424
    .line 425
    .line 426
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$200(Lio/agora/rtc/internal/AudioRoutingController;)Z

    .line 427
    .line 428
    :cond_15
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 429
    .line 430
    .line 431
    invoke-static {p1, v3}, Lio/agora/rtc/internal/AudioRoutingController;->access$2302(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 432
    .line 433
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 434
    .line 435
    if-ne p2, v4, :cond_16

    .line 436
    move v0, v4

    .line 437
    goto :goto_1

    .line 438
    :cond_16
    move v0, v3

    .line 439
    .line 440
    .line 441
    :goto_1
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$202(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 442
    .line 443
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 444
    .line 445
    .line 446
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1500(Lio/agora/rtc/internal/AudioRoutingController;)Z

    .line 447
    move-result p1

    .line 448
    .line 449
    if-eqz p1, :cond_17

    .line 450
    return-void

    .line 451
    .line 452
    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    .line 457
    .line 458
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 467
    .line 468
    .line 469
    invoke-static {p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$200(Lio/agora/rtc/internal/AudioRoutingController;)Z

    .line 470
    move-result p2

    .line 471
    .line 472
    .line 473
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    move-result-object p1

    .line 478
    .line 479
    .line 480
    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    .line 482
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 483
    .line 484
    .line 485
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$200(Lio/agora/rtc/internal/AudioRoutingController;)Z

    .line 486
    move-result p1

    .line 487
    .line 488
    if-eqz p1, :cond_18

    .line 489
    .line 490
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 491
    .line 492
    .line 493
    invoke-static {p1, v2}, Lio/agora/rtc/internal/AudioRoutingController;->access$3100(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 494
    .line 495
    goto/16 :goto_2

    .line 496
    .line 497
    :cond_18
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 498
    .line 499
    .line 500
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2000(Lio/agora/rtc/internal/AudioRoutingController;)I

    .line 501
    move-result p1

    .line 502
    .line 503
    if-ne p1, v4, :cond_19

    .line 504
    .line 505
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 506
    .line 507
    .line 508
    invoke-static {p1, v8}, Lio/agora/rtc/internal/AudioRoutingController;->access$3100(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 509
    .line 510
    goto/16 :goto_2

    .line 511
    .line 512
    :cond_19
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 513
    .line 514
    .line 515
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2000(Lio/agora/rtc/internal/AudioRoutingController;)I

    .line 516
    move-result p1

    .line 517
    .line 518
    if-nez p1, :cond_1b

    .line 519
    .line 520
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 521
    .line 522
    .line 523
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1000(Lio/agora/rtc/internal/AudioRoutingController;)Z

    .line 524
    move-result p1

    .line 525
    .line 526
    if-eqz p1, :cond_1a

    .line 527
    .line 528
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 529
    .line 530
    .line 531
    invoke-static {p1, v3}, Lio/agora/rtc/internal/AudioRoutingController;->access$3100(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 532
    .line 533
    goto/16 :goto_2

    .line 534
    .line 535
    :cond_1a
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 536
    .line 537
    .line 538
    invoke-static {p1, v4}, Lio/agora/rtc/internal/AudioRoutingController;->access$3100(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 539
    goto :goto_2

    .line 540
    .line 541
    :cond_1b
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 542
    .line 543
    .line 544
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1000(Lio/agora/rtc/internal/AudioRoutingController;)Z

    .line 545
    move-result p1

    .line 546
    .line 547
    if-eqz p1, :cond_1c

    .line 548
    .line 549
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 550
    .line 551
    .line 552
    invoke-static {p1, v3}, Lio/agora/rtc/internal/AudioRoutingController;->access$3100(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 553
    goto :goto_2

    .line 554
    .line 555
    :cond_1c
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 556
    .line 557
    .line 558
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$3000(Lio/agora/rtc/internal/AudioRoutingController;)I

    .line 559
    move-result p2

    .line 560
    .line 561
    .line 562
    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$3100(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 563
    goto :goto_2

    .line 564
    .line 565
    :cond_1d
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 566
    .line 567
    .line 568
    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$902(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 569
    .line 570
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 571
    .line 572
    if-ltz p2, :cond_1e

    .line 573
    move v3, v4

    .line 574
    .line 575
    .line 576
    :cond_1e
    invoke-static {p1, v3}, Lio/agora/rtc/internal/AudioRoutingController;->access$1002(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 577
    .line 578
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 579
    .line 580
    .line 581
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1500(Lio/agora/rtc/internal/AudioRoutingController;)Z

    .line 582
    move-result p1

    .line 583
    .line 584
    if-eqz p1, :cond_1f

    .line 585
    return-void

    .line 586
    .line 587
    :cond_1f
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 588
    .line 589
    .line 590
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1000(Lio/agora/rtc/internal/AudioRoutingController;)Z

    .line 591
    move-result p1

    .line 592
    .line 593
    if-eqz p1, :cond_21

    .line 594
    .line 595
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 596
    .line 597
    .line 598
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2100(Lio/agora/rtc/internal/AudioRoutingController;)I

    .line 599
    move-result p1

    .line 600
    .line 601
    if-eq p1, p2, :cond_21

    .line 602
    .line 603
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 604
    .line 605
    .line 606
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$200(Lio/agora/rtc/internal/AudioRoutingController;)Z

    .line 607
    move-result p1

    .line 608
    .line 609
    if-eqz p1, :cond_20

    .line 610
    .line 611
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 612
    .line 613
    .line 614
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$400(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 615
    .line 616
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 617
    .line 618
    .line 619
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1900(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 620
    .line 621
    :cond_20
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 622
    .line 623
    .line 624
    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$3100(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 625
    goto :goto_2

    .line 626
    .line 627
    :cond_21
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 628
    .line 629
    .line 630
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$200(Lio/agora/rtc/internal/AudioRoutingController;)Z

    .line 631
    move-result p1

    .line 632
    .line 633
    if-eqz p1, :cond_22

    .line 634
    .line 635
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 636
    .line 637
    .line 638
    invoke-static {p1, v2}, Lio/agora/rtc/internal/AudioRoutingController;->access$2600(Lio/agora/rtc/internal/AudioRoutingController;I)V

    .line 639
    goto :goto_2

    .line 640
    .line 641
    :cond_22
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 642
    .line 643
    .line 644
    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$800(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 645
    :cond_23
    :goto_2
    return-void
.end method

.method public reset()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$2200(Lio/agora/rtc/internal/AudioRoutingController;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$2700(Lio/agora/rtc/internal/AudioRoutingController;)I

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$2800(Lio/agora/rtc/internal/AudioRoutingController;)Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 28
    const/4 v1, 0x1

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2202(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 35
    const/4 v1, 0x3

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2202(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 39
    .line 40
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$2200(Lio/agora/rtc/internal/AudioRoutingController;)I

    .line 44
    move-result v1

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$3002(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 48
    .line 49
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$800(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    const-string v1, "Monitor reset: default routing: "

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2200(Lio/agora/rtc/internal/AudioRoutingController;)I

    .line 68
    move-result v2

    .line 69
    .line 70
    .line 71
    invoke-static {v1, v2}, Lio/agora/rtc/internal/AudioRoutingController;->access$2900(Lio/agora/rtc/internal/AudioRoutingController;I)Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v1, ", current routing: "

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 83
    .line 84
    .line 85
    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2100(Lio/agora/rtc/internal/AudioRoutingController;)I

    .line 86
    move-result v2

    .line 87
    .line 88
    .line 89
    invoke-static {v1, v2}, Lio/agora/rtc/internal/AudioRoutingController;->access$2900(Lio/agora/rtc/internal/AudioRoutingController;I)Ljava/lang/String;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    const-string v1, "AudioRoute"

    .line 100
    .line 101
    .line 102
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method
