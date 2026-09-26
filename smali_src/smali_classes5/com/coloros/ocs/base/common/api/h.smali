.class Lcom/coloros/ocs/base/common/api/h;
.super Ld1/a;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/coloros/ocs/base/common/api/b;


# direct methods
.method private constructor <init>(Landroid/os/Looper;Lcom/coloros/ocs/base/common/api/b;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Ld1/a;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    const-class p1, Lcom/coloros/ocs/base/common/api/h;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/h;->a:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/coloros/ocs/base/common/api/h;->b:Lcom/coloros/ocs/base/common/api/b;

    .line 14
    return-void
.end method

.method static a(Lcom/coloros/ocs/base/common/api/b;)Lcom/coloros/ocs/base/common/api/h;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    .line 3
    .line 4
    const-string v1, "base_client"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 11
    .line 12
    new-instance v1, Lcom/coloros/ocs/base/common/api/h;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v0, p0}, Lcom/coloros/ocs/base/common/api/h;-><init>(Landroid/os/Looper;Lcom/coloros/ocs/base/common/api/b;)V

    .line 20
    return-object v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/coloros/ocs/base/common/api/h;->a:Ljava/lang/String;

    .line 5
    .line 6
    const-string v2, "base client handler what "

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 10
    move-result-object v3

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2}, Lc1/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    if-eq v0, v2, :cond_8

    .line 22
    const/4 v2, 0x2

    .line 23
    const/4 v3, 0x4

    .line 24
    .line 25
    if-eq v0, v2, :cond_4

    .line 26
    const/4 p1, 0x3

    .line 27
    .line 28
    if-eq v0, p1, :cond_2

    .line 29
    .line 30
    if-eq v0, v3, :cond_1

    .line 31
    const/4 p1, 0x5

    .line 32
    .line 33
    if-eq v0, p1, :cond_0

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/h;->b:Lcom/coloros/ocs/base/common/api/b;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/b;->p()V

    .line 40
    :goto_0
    return-void

    .line 41
    .line 42
    :cond_1
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/h;->b:Lcom/coloros/ocs/base/common/api/b;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/b;->r()V

    .line 46
    return-void

    .line 47
    .line 48
    :cond_2
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/h;->b:Lcom/coloros/ocs/base/common/api/b;

    .line 49
    .line 50
    iget-object v0, p1, Lcom/coloros/ocs/base/common/api/b;->h:Lcom/coloros/ocs/base/b;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    .line 55
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    iget-object v0, p1, Lcom/coloros/ocs/base/common/api/b;->h:Lcom/coloros/ocs/base/b;

    .line 61
    .line 62
    .line 63
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 68
    move-result v0

    .line 69
    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    :try_start_0
    sget-object v0, Lcom/coloros/ocs/base/common/api/b;->a:Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    const-string/jumbo v1, "thread handle authenticate"

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v1}, Lc1/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    iget-object v0, p1, Lcom/coloros/ocs/base/common/api/b;->h:Lcom/coloros/ocs/base/b;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/b;->z()Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    const-string v2, "1.0.1"

    .line 87
    .line 88
    new-instance v3, Lcom/coloros/ocs/base/common/api/b$a;

    .line 89
    .line 90
    .line 91
    invoke-direct {v3, p1}, Lcom/coloros/ocs/base/common/api/b$a;-><init>(Lcom/coloros/ocs/base/common/api/b;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {v0, v1, v2, v3}, Lcom/coloros/ocs/base/b;->H(Ljava/lang/String;Ljava/lang/String;Lcom/coloros/ocs/base/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    return-void

    .line 96
    :catch_0
    move-exception p1

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    .line 101
    sget-object v0, Lcom/coloros/ocs/base/common/api/b;->a:Ljava/lang/String;

    .line 102
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string/jumbo v2, "the exception that service broker authenticates is "

    .line 107
    .line 108
    .line 109
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 113
    move-result-object p1

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    .line 123
    invoke-static {v0, p1}, Lc1/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_3
    return-void

    .line 125
    .line 126
    :cond_4
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/h;->b:Lcom/coloros/ocs/base/common/api/b;

    .line 127
    .line 128
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 129
    .line 130
    sget-object v2, Lcom/coloros/ocs/base/common/api/b;->a:Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    const-string/jumbo v4, "onFailed time"

    .line 134
    .line 135
    .line 136
    invoke-static {v2, v4}, Lc1/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    iget-object v4, v0, Lcom/coloros/ocs/base/common/api/b;->e:Lcom/coloros/ocs/base/common/api/b$c;

    .line 139
    .line 140
    if-eqz v4, :cond_5

    .line 141
    .line 142
    iget-object v4, v0, Lcom/coloros/ocs/base/common/api/b;->c:Landroid/content/Context;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 146
    move-result-object v4

    .line 147
    .line 148
    iget-object v5, v0, Lcom/coloros/ocs/base/common/api/b;->e:Lcom/coloros/ocs/base/common/api/b$c;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 152
    .line 153
    iput-object v1, v0, Lcom/coloros/ocs/base/common/api/b;->h:Lcom/coloros/ocs/base/b;

    .line 154
    .line 155
    :cond_5
    iput v3, v0, Lcom/coloros/ocs/base/common/api/b;->b:I

    .line 156
    .line 157
    .line 158
    invoke-static {p1}, Lcom/coloros/ocs/base/common/api/b;->o(I)Lcom/coloros/ocs/base/common/CapabilityInfo;

    .line 159
    move-result-object v1

    .line 160
    .line 161
    iput-object v1, v0, Lcom/coloros/ocs/base/common/api/b;->d:Lcom/coloros/ocs/base/common/CapabilityInfo;

    .line 162
    .line 163
    const-string v1, "connect failed , error code is "

    .line 164
    .line 165
    .line 166
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 167
    move-result-object v3

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    move-result-object v1

    .line 172
    .line 173
    .line 174
    invoke-static {v2, v1}, Lc1/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    const/16 v1, 0x3ea

    .line 177
    .line 178
    if-eq p1, v1, :cond_6

    .line 179
    .line 180
    const/16 v1, 0x3eb

    .line 181
    .line 182
    if-eq p1, v1, :cond_6

    .line 183
    .line 184
    const/16 v1, 0x3ec

    .line 185
    .line 186
    if-eq p1, v1, :cond_6

    .line 187
    .line 188
    const/16 v1, 0x3ed

    .line 189
    .line 190
    if-eq p1, v1, :cond_6

    .line 191
    .line 192
    const/16 v1, 0x3ee

    .line 193
    .line 194
    if-eq p1, v1, :cond_6

    .line 195
    .line 196
    const/16 v1, 0x3ef

    .line 197
    .line 198
    if-eq p1, v1, :cond_6

    .line 199
    .line 200
    const/16 v1, 0x3f0

    .line 201
    .line 202
    if-ne p1, v1, :cond_7

    .line 203
    .line 204
    .line 205
    :cond_6
    invoke-virtual {v0, p1}, Lcom/coloros/ocs/base/common/api/b;->i(I)V

    .line 206
    .line 207
    iget-object p1, v0, Lcom/coloros/ocs/base/common/api/b;->f:Lcom/coloros/ocs/base/common/api/l;

    .line 208
    .line 209
    if-eqz p1, :cond_7

    .line 210
    .line 211
    .line 212
    invoke-interface {p1}, Lcom/coloros/ocs/base/common/api/l;->a()V

    .line 213
    :cond_7
    return-void

    .line 214
    .line 215
    :cond_8
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/h;->b:Lcom/coloros/ocs/base/common/api/b;

    .line 216
    .line 217
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast p1, Lcom/coloros/ocs/base/common/CapabilityInfo;

    .line 220
    .line 221
    sget-object v3, Lcom/coloros/ocs/base/common/api/b;->a:Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    const-string/jumbo v4, "onAuthenticateSucceed"

    .line 225
    .line 226
    .line 227
    invoke-static {v3, v4}, Lc1/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    iput v2, v0, Lcom/coloros/ocs/base/common/api/b;->b:I

    .line 230
    .line 231
    iput-object p1, v0, Lcom/coloros/ocs/base/common/api/b;->d:Lcom/coloros/ocs/base/common/CapabilityInfo;

    .line 232
    .line 233
    const-string p1, "handleAuthenticateSuccess"

    .line 234
    .line 235
    .line 236
    invoke-static {v3, p1}, Lc1/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    iget-object p1, v0, Lcom/coloros/ocs/base/common/api/b;->g:Lcom/coloros/ocs/base/common/api/i;

    .line 239
    .line 240
    if-nez p1, :cond_9

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v1}, Lcom/coloros/ocs/base/common/api/b;->j(Landroid/os/Handler;)V

    .line 244
    .line 245
    .line 246
    :cond_9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 247
    move-result-object p1

    .line 248
    .line 249
    const/16 v1, 0x64

    .line 250
    .line 251
    iput v1, p1, Landroid/os/Message;->what:I

    .line 252
    .line 253
    iget-object v1, v0, Lcom/coloros/ocs/base/common/api/b;->g:Lcom/coloros/ocs/base/common/api/i;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/api/b;->h()V

    .line 260
    return-void
.end method
