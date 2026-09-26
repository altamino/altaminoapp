.class public Lcom/ss/android/tea/common/applog/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/tea/common/utility/collection/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/tea/common/applog/b0$a;,
        Lcom/ss/android/tea/common/applog/b0$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/ss/android/tea/common/applog/b0$a;

.field private d:[J

.field private e:[J

.field private f:[J

.field private g:J

.field private h:J

.field private i:I

.field private j:J


# direct methods
.method private b([J)V
    .locals 6

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    array-length v0, p1

    .line 4
    const/4 v1, 0x2

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    const-wide/16 v0, -0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    :try_start_0
    aput-wide v0, p1, v2

    .line 13
    const/4 v3, 0x1

    .line 14
    .line 15
    aput-wide v0, p1, v3

    .line 16
    .line 17
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/b0;->a:Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 26
    .line 27
    if-ge v1, v3, :cond_1

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-static {v1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    .line 32
    move-result-wide v4

    .line 33
    .line 34
    aput-wide v4, p1, v2

    .line 35
    .line 36
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    .line 40
    move-result-wide v0

    .line 41
    .line 42
    aput-wide v0, p1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    nop

    .line 44
    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method private d()V
    .locals 13

    .line 1
    .line 2
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/b0;->d:[J

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/ss/android/tea/common/applog/b0;->b([J)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    const-string v4, "check traffic: "

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    iget v4, p0, Lcom/ss/android/tea/common/applog/b0;->i:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v4, " "

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    aget-wide v5, v0, v2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    aget-wide v5, v0, v3

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    new-instance v4, Ljava/util/Date;

    .line 52
    .line 53
    .line 54
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    .line 58
    move-result-object v4

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    const-string v4, "TrafficGuard"

    .line 68
    .line 69
    .line 70
    invoke-static {v4, v1}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 74
    move-result-wide v4

    .line 75
    .line 76
    iput-wide v4, p0, Lcom/ss/android/tea/common/applog/b0;->h:J

    .line 77
    move v1, v2

    .line 78
    :goto_0
    const/4 v4, 0x2

    .line 79
    .line 80
    const-wide/16 v5, 0x0

    .line 81
    .line 82
    if-ge v1, v4, :cond_7

    .line 83
    .line 84
    aget-wide v7, v0, v1

    .line 85
    .line 86
    cmp-long v4, v7, v5

    .line 87
    .line 88
    if-gez v4, :cond_1

    .line 89
    .line 90
    goto/16 :goto_3

    .line 91
    .line 92
    :cond_1
    iget-object v4, p0, Lcom/ss/android/tea/common/applog/b0;->e:[J

    .line 93
    .line 94
    aget-wide v9, v4, v1

    .line 95
    .line 96
    cmp-long v4, v9, v5

    .line 97
    .line 98
    if-ltz v4, :cond_3

    .line 99
    .line 100
    sub-long v9, v7, v9

    .line 101
    .line 102
    .line 103
    const-wide/32 v11, 0x500000

    .line 104
    .line 105
    cmp-long v4, v9, v11

    .line 106
    .line 107
    if-lez v4, :cond_3

    .line 108
    .line 109
    new-instance v4, Lcom/ss/android/tea/common/applog/b0$b;

    .line 110
    .line 111
    .line 112
    invoke-direct {v4}, Lcom/ss/android/tea/common/applog/b0$b;-><init>()V

    .line 113
    .line 114
    if-nez v1, :cond_2

    .line 115
    move v11, v3

    .line 116
    goto :goto_1

    .line 117
    :cond_2
    move v11, v2

    .line 118
    .line 119
    :goto_1
    iput-boolean v11, v4, Lcom/ss/android/tea/common/applog/b0$b;->a:Z

    .line 120
    .line 121
    iput-wide v9, v4, Lcom/ss/android/tea/common/applog/b0$b;->b:J

    .line 122
    .line 123
    iget-object v9, p0, Lcom/ss/android/tea/common/applog/b0;->e:[J

    .line 124
    .line 125
    aget-wide v10, v9, v1

    .line 126
    .line 127
    iput-wide v10, v4, Lcom/ss/android/tea/common/applog/b0$b;->c:J

    .line 128
    .line 129
    iput-wide v7, v4, Lcom/ss/android/tea/common/applog/b0$b;->d:J

    .line 130
    .line 131
    iget-wide v9, p0, Lcom/ss/android/tea/common/applog/b0;->h:J

    .line 132
    .line 133
    iput-wide v9, v4, Lcom/ss/android/tea/common/applog/b0$b;->e:J

    .line 134
    .line 135
    iget-wide v9, p0, Lcom/ss/android/tea/common/applog/b0;->g:J

    .line 136
    .line 137
    iput-wide v9, v4, Lcom/ss/android/tea/common/applog/b0$b;->f:J

    .line 138
    .line 139
    iput-boolean v2, v4, Lcom/ss/android/tea/common/applog/b0$b;->g:Z

    .line 140
    .line 141
    iget-object v9, p0, Lcom/ss/android/tea/common/applog/b0;->c:Lcom/ss/android/tea/common/applog/b0$a;

    .line 142
    .line 143
    if-eqz v9, :cond_3

    .line 144
    .line 145
    .line 146
    invoke-interface {v9, v4}, Lcom/ss/android/tea/common/applog/b0$a;->a(Lcom/ss/android/tea/common/applog/b0$b;)V

    .line 147
    .line 148
    :cond_3
    iget-object v4, p0, Lcom/ss/android/tea/common/applog/b0;->e:[J

    .line 149
    .line 150
    aput-wide v7, v4, v1

    .line 151
    .line 152
    iget-object v4, p0, Lcom/ss/android/tea/common/applog/b0;->f:[J

    .line 153
    .line 154
    aget-wide v9, v4, v1

    .line 155
    .line 156
    cmp-long v5, v9, v5

    .line 157
    .line 158
    if-ltz v5, :cond_5

    .line 159
    .line 160
    sub-long v4, v7, v9

    .line 161
    .line 162
    .line 163
    const-wide/32 v9, 0x1400000

    .line 164
    .line 165
    cmp-long v6, v4, v9

    .line 166
    .line 167
    if-lez v6, :cond_6

    .line 168
    .line 169
    new-instance v6, Lcom/ss/android/tea/common/applog/b0$b;

    .line 170
    .line 171
    .line 172
    invoke-direct {v6}, Lcom/ss/android/tea/common/applog/b0$b;-><init>()V

    .line 173
    .line 174
    if-nez v1, :cond_4

    .line 175
    move v9, v3

    .line 176
    goto :goto_2

    .line 177
    :cond_4
    move v9, v2

    .line 178
    .line 179
    :goto_2
    iput-boolean v9, v6, Lcom/ss/android/tea/common/applog/b0$b;->a:Z

    .line 180
    .line 181
    iput-wide v4, v6, Lcom/ss/android/tea/common/applog/b0$b;->b:J

    .line 182
    .line 183
    iget-object v4, p0, Lcom/ss/android/tea/common/applog/b0;->f:[J

    .line 184
    .line 185
    aget-wide v9, v4, v1

    .line 186
    .line 187
    iput-wide v9, v6, Lcom/ss/android/tea/common/applog/b0$b;->c:J

    .line 188
    .line 189
    iput-wide v7, v6, Lcom/ss/android/tea/common/applog/b0$b;->d:J

    .line 190
    .line 191
    iget-wide v4, p0, Lcom/ss/android/tea/common/applog/b0;->h:J

    .line 192
    .line 193
    iput-wide v4, v6, Lcom/ss/android/tea/common/applog/b0$b;->e:J

    .line 194
    .line 195
    iget-wide v4, p0, Lcom/ss/android/tea/common/applog/b0;->g:J

    .line 196
    .line 197
    iput-wide v4, v6, Lcom/ss/android/tea/common/applog/b0$b;->f:J

    .line 198
    .line 199
    iput-boolean v3, v6, Lcom/ss/android/tea/common/applog/b0$b;->g:Z

    .line 200
    .line 201
    iget-object v4, p0, Lcom/ss/android/tea/common/applog/b0;->c:Lcom/ss/android/tea/common/applog/b0$a;

    .line 202
    .line 203
    if-eqz v4, :cond_6

    .line 204
    .line 205
    .line 206
    invoke-interface {v4, v6}, Lcom/ss/android/tea/common/applog/b0$a;->a(Lcom/ss/android/tea/common/applog/b0$b;)V

    .line 207
    goto :goto_3

    .line 208
    .line 209
    :cond_5
    aput-wide v7, v4, v1

    .line 210
    .line 211
    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :cond_7
    iget v0, p0, Lcom/ss/android/tea/common/applog/b0;->i:I

    .line 216
    .line 217
    if-gtz v0, :cond_8

    .line 218
    .line 219
    iput v2, p0, Lcom/ss/android/tea/common/applog/b0;->i:I

    .line 220
    .line 221
    :cond_8
    iget-wide v0, p0, Lcom/ss/android/tea/common/applog/b0;->j:J

    .line 222
    .line 223
    cmp-long v0, v0, v5

    .line 224
    .line 225
    if-gtz v0, :cond_9

    .line 226
    .line 227
    .line 228
    const-wide/32 v0, 0x493e0

    .line 229
    .line 230
    iput-wide v0, p0, Lcom/ss/android/tea/common/applog/b0;->j:J

    .line 231
    .line 232
    :cond_9
    iget v0, p0, Lcom/ss/android/tea/common/applog/b0;->i:I

    .line 233
    add-int/2addr v0, v3

    .line 234
    .line 235
    iput v0, p0, Lcom/ss/android/tea/common/applog/b0;->i:I

    .line 236
    .line 237
    if-lez v0, :cond_a

    .line 238
    const/4 v1, 0x5

    .line 239
    .line 240
    if-gt v0, v1, :cond_a

    .line 241
    .line 242
    iget-wide v0, p0, Lcom/ss/android/tea/common/applog/b0;->j:J

    .line 243
    .line 244
    const-wide/16 v4, 0x2

    .line 245
    mul-long/2addr v0, v4

    .line 246
    .line 247
    iput-wide v0, p0, Lcom/ss/android/tea/common/applog/b0;->j:J

    .line 248
    .line 249
    :cond_a
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/b0;->b:Landroid/os/Handler;

    .line 250
    .line 251
    iget-wide v1, p0, Lcom/ss/android/tea/common/applog/b0;->j:J

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 255
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/tea/common/applog/b0;->b:Landroid/os/Handler;

    const/4 v1, 0x3

    .line 1
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 7

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ss/android/tea/common/applog/b0;->b:Landroid/os/Handler;

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/ss/android/tea/common/applog/b0;->b:Landroid/os/Handler;

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iput v3, p0, Lcom/ss/android/tea/common/applog/b0;->i:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ss/android/tea/common/applog/b0;->j:J

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ss/android/tea/common/applog/b0;->b:Landroid/os/Handler;

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/ss/android/tea/common/applog/b0;->b:Landroid/os/Handler;

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput v3, p0, Lcom/ss/android/tea/common/applog/b0;->i:I

    const-wide/32 v1, 0x493e0

    iput-wide v1, p0, Lcom/ss/android/tea/common/applog/b0;->j:J

    iget-object p1, p0, Lcom/ss/android/tea/common/applog/b0;->f:[J

    .line 7
    invoke-direct {p0, p1}, Lcom/ss/android/tea/common/applog/b0;->b([J)V

    iget-object p1, p0, Lcom/ss/android/tea/common/applog/b0;->e:[J

    iget-object v4, p0, Lcom/ss/android/tea/common/applog/b0;->f:[J

    .line 8
    aget-wide v5, v4, v3

    aput-wide v5, p1, v3

    .line 9
    aget-wide v5, v4, v0

    aput-wide v5, p1, v0

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ss/android/tea/common/applog/b0;->g:J

    iput-wide v4, p0, Lcom/ss/android/tea/common/applog/b0;->h:J

    iget-object p1, p0, Lcom/ss/android/tea/common/applog/b0;->b:Landroid/os/Handler;

    .line 11
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 12
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init check traffic: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/tea/common/applog/b0;->i:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/tea/common/applog/b0;->f:[J

    aget-wide v3, v2, v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/tea/common/applog/b0;->f:[J

    aget-wide v3, v2, v0

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 14
    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TrafficGuard"

    .line 15
    invoke-static {v0, p1}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/ss/android/tea/common/applog/b0;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    :goto_0
    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/b0;->b:Landroid/os/Handler;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/b0;->b:Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    const-wide/32 v2, 0x2bf20

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 15
    return-void
.end method
