.class public Lcom/narvii/util/debug/SignallingMonitorHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;
.implements Lcom/narvii/util/ws/WsService$WsListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/util/debug/SignallingMonitorHelper;",
        ">;",
        "Lcom/narvii/util/ws/WsService$WsListener;"
    }
.end annotation


# instance fields
.field private final infoUpdate:Ljava/lang/Runnable;

.field private popup:Landroid/widget/PopupWindow;

.field private prefs:Landroid/content/SharedPreferences;

.field private show:Z

.field private signalling:Lcom/narvii/chat/signalling/SignallingService;

.field private ws:Lcom/narvii/util/ws/WsService;

.field private final wsUpdate:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/debug/SignallingMonitorHelper$2;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/util/debug/SignallingMonitorHelper$2;-><init>(Lcom/narvii/util/debug/SignallingMonitorHelper;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->wsUpdate:Ljava/lang/Runnable;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/util/debug/SignallingMonitorHelper$3;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/util/debug/SignallingMonitorHelper$3;-><init>(Lcom/narvii/util/debug/SignallingMonitorHelper;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->infoUpdate:Ljava/lang/Runnable;

    .line 18
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/util/debug/SignallingMonitorHelper;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->popup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/util/debug/SignallingMonitorHelper;Landroid/widget/PopupWindow;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/util/debug/SignallingMonitorHelper;->updatePopupSignalling(Landroid/widget/PopupWindow;)V

    return-void
.end method

.method static bridge synthetic c(Lcom/narvii/util/debug/SignallingMonitorHelper;Landroid/widget/PopupWindow;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/util/debug/SignallingMonitorHelper;->updatePopupWs(Landroid/widget/PopupWindow;)V

    return-void
.end method

.method private showPopup(Landroid/app/Activity;)Landroid/widget/PopupWindow;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0d06da

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/util/Utils;->getActionBarHeight(Landroid/content/Context;)I

    .line 16
    move-result v1

    .line 17
    .line 18
    new-instance v2, Landroid/widget/PopupWindow;

    .line 19
    .line 20
    const/high16 v3, 0x43340000    # 180.0f

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 24
    move-result v3

    .line 25
    float-to-int v3, v3

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, v0, v3, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v2}, Lcom/narvii/util/debug/SignallingMonitorHelper;->updatePopupWs(Landroid/widget/PopupWindow;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v2}, Lcom/narvii/util/debug/SignallingMonitorHelper;->updatePopupSignalling(Landroid/widget/PopupWindow;)V

    .line 35
    .line 36
    new-instance v0, Lcom/narvii/util/debug/SignallingMonitorHelper$1;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p0, p1, v2}, Lcom/narvii/util/debug/SignallingMonitorHelper$1;-><init>(Lcom/narvii/util/debug/SignallingMonitorHelper;Landroid/app/Activity;Landroid/widget/PopupWindow;)V

    .line 40
    .line 41
    const-wide/16 v3, 0x64

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v3, v4}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 45
    return-object v2
.end method

.method private updatePopupSignalling(Landroid/widget/PopupWindow;)V
    .locals 13

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->signalling:Lcom/narvii/chat/signalling/SignallingService;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/narvii/chat/signalling/SignallingService;->channelList()Ljava/util/Collection;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v4

    .line 22
    .line 23
    const/16 v5, 0xa

    .line 24
    const/4 v6, 0x3

    .line 25
    .line 26
    if-eqz v4, :cond_b

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    check-cast v4, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 33
    .line 34
    new-instance v7, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    iget-object v8, v4, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 40
    .line 41
    .line 42
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 43
    move-result v8

    .line 44
    .line 45
    .line 46
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    .line 50
    move-result v8

    .line 51
    .line 52
    const/16 v9, 0x20

    .line 53
    .line 54
    if-ge v8, v6, :cond_0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :cond_0
    iget v8, v4, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 61
    const/4 v10, 0x4

    .line 62
    .line 63
    const-string v11, "?"

    .line 64
    const/4 v12, 0x1

    .line 65
    .line 66
    if-eq v8, v10, :cond_4

    .line 67
    .line 68
    if-ne v8, v6, :cond_1

    .line 69
    goto :goto_2

    .line 70
    .line 71
    :cond_1
    if-ne v8, v12, :cond_2

    .line 72
    .line 73
    const-string v6, "AUDIO"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    goto :goto_3

    .line 78
    .line 79
    :cond_2
    if-nez v8, :cond_3

    .line 80
    .line 81
    const-string v6, "NONE"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    goto :goto_3

    .line 86
    .line 87
    .line 88
    :cond_3
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    goto :goto_3

    .line 90
    .line 91
    :cond_4
    :goto_2
    const-string v6, "VIDEO"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    :goto_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    .line 98
    move-result v6

    .line 99
    .line 100
    const/16 v8, 0x9

    .line 101
    .line 102
    if-ge v6, v8, :cond_5

    .line 103
    .line 104
    .line 105
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    goto :goto_3

    .line 107
    .line 108
    :cond_5
    iget v6, v4, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 109
    .line 110
    if-nez v6, :cond_6

    .line 111
    .line 112
    const-string v6, "GUEST"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    goto :goto_4

    .line 117
    .line 118
    :cond_6
    if-ne v6, v12, :cond_7

    .line 119
    .line 120
    const-string v6, "HOST"

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    goto :goto_4

    .line 125
    :cond_7
    const/4 v8, 0x2

    .line 126
    .line 127
    if-ne v6, v8, :cond_8

    .line 128
    .line 129
    const-string v6, "AUDIE"

    .line 130
    .line 131
    .line 132
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    goto :goto_4

    .line 134
    .line 135
    .line 136
    :cond_8
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    :goto_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    .line 140
    move-result v6

    .line 141
    .line 142
    const/16 v8, 0xf

    .line 143
    .line 144
    if-ge v6, v8, :cond_9

    .line 145
    .line 146
    .line 147
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    goto :goto_4

    .line 149
    .line 150
    :cond_9
    iget-object v4, v4, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 154
    move-result-object v4

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v4, ".."

    .line 160
    .line 161
    .line 162
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 166
    move-result v4

    .line 167
    .line 168
    if-lez v4, :cond_a

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    :cond_a
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    add-int/lit8 v3, v3, 0x1

    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_b
    if-ge v3, v6, :cond_d

    .line 181
    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 189
    move-result-object v2

    .line 190
    .line 191
    const-string v3, "heap="

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    .line 198
    move-result-wide v3

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    .line 202
    move-result-wide v6

    .line 203
    sub-long/2addr v3, v6

    .line 204
    .line 205
    const-wide/16 v6, 0x400

    .line 206
    div-long/2addr v3, v6

    .line 207
    div-long/2addr v3, v6

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    const-string v2, "m\n"

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    const-string v2, "native="

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    .line 224
    move-result-wide v2

    .line 225
    .line 226
    .line 227
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    .line 228
    move-result-wide v8

    .line 229
    sub-long/2addr v2, v8

    .line 230
    div-long/2addr v2, v6

    .line 231
    div-long/2addr v2, v6

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    const-string v2, "m"

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 243
    move-result v2

    .line 244
    .line 245
    if-lez v2, :cond_c

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 252
    :cond_c
    move-object v0, v1

    .line 253
    .line 254
    .line 255
    :cond_d
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 256
    move-result-object p1

    .line 257
    .line 258
    .line 259
    const v1, 0x7f0a0e51

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 263
    move-result-object p1

    .line 264
    .line 265
    check-cast p1, Landroid/widget/TextView;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    move-result-object v0

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    return-void
.end method

.method private updatePopupWs(Landroid/widget/PopupWindow;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0a0d90

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    const v1, 0x7f0a0d98

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    check-cast p1, Landroid/widget/TextView;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->ws:Lcom/narvii/util/ws/WsService;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/narvii/util/ws/WsService;->getConnectStatus()I

    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x4

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x2

    .line 34
    .line 35
    if-ne v1, v4, :cond_0

    .line 36
    .line 37
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    .line 38
    .line 39
    const/high16 v5, 0x3f800000    # 1.0f

    .line 40
    .line 41
    .line 42
    const v6, 0x3ecccccd    # 0.4f

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 46
    .line 47
    const-wide/16 v5, 0x12c

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 51
    .line 52
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    .line 53
    .line 54
    .line 55
    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 59
    const/4 v5, -0x1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 66
    .line 67
    .line 68
    const v4, 0x7f08084c

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    const/4 v4, 0x1

    .line 83
    .line 84
    const-wide/16 v5, 0xc8

    .line 85
    .line 86
    if-ne v1, v4, :cond_1

    .line 87
    .line 88
    .line 89
    const v1, 0x7f08084f

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 104
    .line 105
    iget-object v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->wsUpdate:Ljava/lang/Runnable;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    .line 110
    iget-object p1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->wsUpdate:Ljava/lang/Runnable;

    .line 111
    .line 112
    .line 113
    invoke-static {p1, v5, v6}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 114
    goto :goto_0

    .line 115
    .line 116
    :cond_1
    if-gtz v1, :cond_2

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 126
    neg-int v0, v1

    .line 127
    .line 128
    .line 129
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 130
    move-result-object v0

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 136
    .line 137
    iget-object v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->wsUpdate:Ljava/lang/Runnable;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 141
    .line 142
    iget-object p1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->wsUpdate:Ljava/lang/Runnable;

    .line 143
    .line 144
    .line 145
    invoke-static {p1, v5, v6}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 146
    goto :goto_0

    .line 147
    .line 148
    .line 149
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 156
    .line 157
    const-string v0, "?"

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :goto_0
    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/debug/SignallingMonitorHelper;
    .locals 3

    const-string v0, "prefs"

    .line 2
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "debugSignallingMonitor"

    const/4 v2, 0x0

    .line 3
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->show:Z

    const-string/jumbo v0, "ws"

    .line 4
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/ws/WsService;

    iput-object v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->ws:Lcom/narvii/util/ws/WsService;

    const-string v0, "signalling"

    .line 5
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/signalling/SignallingService;

    iput-object p1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->signalling:Lcom/narvii/chat/signalling/SignallingService;

    return-object p0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/util/debug/SignallingMonitorHelper;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/debug/SignallingMonitorHelper;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/debug/SignallingMonitorHelper;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/util/debug/SignallingMonitorHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/debug/SignallingMonitorHelper;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/debug/SignallingMonitorHelper;)V

    return-void
.end method

.method public isShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->show:Z

    return v0
.end method

.method public onConnect(Lcom/narvii/util/ws/WsService;)V
    .locals 1

    .line 1
    .line 2
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->wsUpdate:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->wsUpdate:Ljava/lang/Runnable;

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 13
    return-void
.end method

.method public onDisconnect(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    .line 2
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object p2, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->wsUpdate:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->wsUpdate:Ljava/lang/Runnable;

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 13
    return-void
.end method

.method public onWsError(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsError;)V
    .locals 0

    return-void
.end method

.method public onWsMessage(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsMessage;)V
    .locals 0

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/debug/SignallingMonitorHelper;)V
    .locals 1

    iget-object p2, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->popup:Landroid/widget/PopupWindow;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->popup:Landroid/widget/PopupWindow;

    .line 3
    :cond_0
    sget-object p2, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->infoUpdate:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->ws:Lcom/narvii/util/ws/WsService;

    .line 5
    iget-object p1, p1, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {p1, p0}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/util/debug/SignallingMonitorHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/debug/SignallingMonitorHelper;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/debug/SignallingMonitorHelper;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/debug/SignallingMonitorHelper;)V
    .locals 0

    .line 2
    instance-of p2, p1, Landroid/app/Application;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->ws:Lcom/narvii/util/ws/WsService;

    .line 3
    iget-object p2, p2, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {p2, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 4
    :cond_0
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_2

    .line 5
    check-cast p1, Landroid/app/Activity;

    iget-object p2, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->popup:Landroid/widget/PopupWindow;

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->popup:Landroid/widget/PopupWindow;

    :cond_1
    iget-boolean p2, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->show:Z

    if-eqz p2, :cond_2

    .line 7
    invoke-direct {p0, p1}, Lcom/narvii/util/debug/SignallingMonitorHelper;->showPopup(Landroid/app/Activity;)Landroid/widget/PopupWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->popup:Landroid/widget/PopupWindow;

    .line 8
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->infoUpdate:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->infoUpdate:Ljava/lang/Runnable;

    .line 9
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/util/debug/SignallingMonitorHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/debug/SignallingMonitorHelper;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/debug/SignallingMonitorHelper;)V

    return-void
.end method

.method public showShow(Landroid/app/Activity;Z)V
    .locals 2

    .line 1
    .line 2
    iput-boolean p2, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->show:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->prefs:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "debugSignallingMonitor"

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 18
    .line 19
    sget-object p2, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->infoUpdate:Ljava/lang/Runnable;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->show:Z

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->popup:Landroid/widget/PopupWindow;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/util/debug/SignallingMonitorHelper;->showPopup(Landroid/app/Activity;)Landroid/widget/PopupWindow;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    iput-object p1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->popup:Landroid/widget/PopupWindow;

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->infoUpdate:Ljava/lang/Runnable;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_1
    iget-object p1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->popup:Landroid/widget/PopupWindow;

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 57
    const/4 p1, 0x0

    .line 58
    .line 59
    iput-object p1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper;->popup:Landroid/widget/PopupWindow;

    .line 60
    :cond_2
    :goto_0
    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/util/debug/SignallingMonitorHelper;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/util/debug/SignallingMonitorHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/debug/SignallingMonitorHelper;->start(Lcom/narvii/app/NVContext;Lcom/narvii/util/debug/SignallingMonitorHelper;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/debug/SignallingMonitorHelper;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/util/debug/SignallingMonitorHelper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/debug/SignallingMonitorHelper;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/debug/SignallingMonitorHelper;)V

    return-void
.end method
