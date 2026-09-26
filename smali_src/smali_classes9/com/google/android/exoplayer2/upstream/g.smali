.class public final Lcom/google/android/exoplayer2/upstream/g;
.super Lcom/google/android/exoplayer2/upstream/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/g$a;
    }
.end annotation


# instance fields
.field private assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private bytesRemaining:J

.field private inputStream:Ljava/io/FileInputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private opened:Z

.field private final resolver:Landroid/content/ContentResolver;

.field private uri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/f;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/g;->resolver:Landroid/content/ContentResolver;

    .line 11
    return-void
.end method


# virtual methods
.method public c(Lcom/google/android/exoplayer2/upstream/o;)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/g$a;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v0, p1

    .line 5
    .line 6
    const/16 v2, 0x7d0

    .line 7
    .line 8
    :try_start_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/upstream/o;->uri:Landroid/net/Uri;

    .line 9
    .line 10
    iput-object v3, v1, Lcom/google/android/exoplayer2/upstream/g;->uri:Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/upstream/f;->f(Lcom/google/android/exoplayer2/upstream/o;)V

    .line 14
    .line 15
    const-string v4, "content"

    .line 16
    .line 17
    iget-object v5, v0, Lcom/google/android/exoplayer2/upstream/o;->uri:Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 21
    move-result-object v5

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v4

    .line 26
    const/4 v5, 0x1

    .line 27
    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    new-instance v4, Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 34
    .line 35
    const-string v6, "android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    .line 40
    iget-object v6, v1, Lcom/google/android/exoplayer2/upstream/g;->resolver:Landroid/content/ContentResolver;

    .line 41
    .line 42
    const-string v7, "*/*"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v3, v7, v4}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    .line 46
    move-result-object v4

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .line 50
    goto/16 :goto_5

    .line 51
    :catch_1
    move-exception v0

    .line 52
    .line 53
    goto/16 :goto_6

    .line 54
    .line 55
    :cond_0
    iget-object v4, v1, Lcom/google/android/exoplayer2/upstream/g;->resolver:Landroid/content/ContentResolver;

    .line 56
    .line 57
    const-string v6, "r"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v3, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 61
    move-result-object v4

    .line 62
    .line 63
    :goto_0
    iput-object v4, v1, Lcom/google/android/exoplayer2/upstream/g;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 64
    .line 65
    if-eqz v4, :cond_b

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 69
    move-result-wide v6

    .line 70
    .line 71
    new-instance v3, Ljava/io/FileInputStream;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 75
    move-result-object v8

    .line 76
    .line 77
    .line 78
    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 79
    .line 80
    iput-object v3, v1, Lcom/google/android/exoplayer2/upstream/g;->inputStream:Ljava/io/FileInputStream;

    .line 81
    .line 82
    const-wide/16 v8, -0x1

    .line 83
    .line 84
    cmp-long v10, v6, v8

    .line 85
    .line 86
    const/16 v11, 0x7d8

    .line 87
    const/4 v12, 0x0

    .line 88
    .line 89
    if-eqz v10, :cond_2

    .line 90
    .line 91
    iget-wide v13, v0, Lcom/google/android/exoplayer2/upstream/o;->position:J

    .line 92
    .line 93
    cmp-long v13, v13, v6

    .line 94
    .line 95
    if-gtz v13, :cond_1

    .line 96
    goto :goto_1

    .line 97
    .line 98
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/g$a;

    .line 99
    .line 100
    .line 101
    invoke-direct {v0, v12, v11}, Lcom/google/android/exoplayer2/upstream/g$a;-><init>(Ljava/io/IOException;I)V

    .line 102
    throw v0

    .line 103
    .line 104
    .line 105
    :cond_2
    :goto_1
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 106
    move-result-wide v13

    .line 107
    move-wide v15, v6

    .line 108
    .line 109
    iget-wide v5, v0, Lcom/google/android/exoplayer2/upstream/o;->position:J

    .line 110
    add-long/2addr v5, v13

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v5, v6}, Ljava/io/FileInputStream;->skip(J)J

    .line 114
    move-result-wide v5

    .line 115
    sub-long/2addr v5, v13

    .line 116
    .line 117
    iget-wide v13, v0, Lcom/google/android/exoplayer2/upstream/o;->position:J

    .line 118
    .line 119
    cmp-long v7, v5, v13

    .line 120
    .line 121
    if-nez v7, :cond_a

    .line 122
    .line 123
    const-wide/16 v13, 0x0

    .line 124
    .line 125
    if-nez v10, :cond_5

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 129
    move-result-object v3

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    .line 133
    move-result-wide v5

    .line 134
    .line 135
    cmp-long v7, v5, v13

    .line 136
    .line 137
    if-nez v7, :cond_3

    .line 138
    .line 139
    iput-wide v8, v1, Lcom/google/android/exoplayer2/upstream/g;->bytesRemaining:J

    .line 140
    goto :goto_2

    .line 141
    .line 142
    .line 143
    :cond_3
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    .line 144
    move-result-wide v15

    .line 145
    sub-long/2addr v5, v15

    .line 146
    .line 147
    iput-wide v5, v1, Lcom/google/android/exoplayer2/upstream/g;->bytesRemaining:J

    .line 148
    .line 149
    cmp-long v3, v5, v13

    .line 150
    .line 151
    if-ltz v3, :cond_4

    .line 152
    goto :goto_2

    .line 153
    .line 154
    :cond_4
    new-instance v0, Lcom/google/android/exoplayer2/upstream/g$a;

    .line 155
    .line 156
    .line 157
    invoke-direct {v0, v12, v11}, Lcom/google/android/exoplayer2/upstream/g$a;-><init>(Ljava/io/IOException;I)V

    .line 158
    throw v0

    .line 159
    .line 160
    :cond_5
    sub-long v6, v15, v5

    .line 161
    .line 162
    iput-wide v6, v1, Lcom/google/android/exoplayer2/upstream/g;->bytesRemaining:J
    :try_end_0
    .catch Lcom/google/android/exoplayer2/upstream/g$a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .line 164
    cmp-long v3, v6, v13

    .line 165
    .line 166
    if-ltz v3, :cond_9

    .line 167
    .line 168
    :goto_2
    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/o;->length:J

    .line 169
    .line 170
    cmp-long v5, v2, v8

    .line 171
    .line 172
    if-eqz v5, :cond_7

    .line 173
    .line 174
    iget-wide v5, v1, Lcom/google/android/exoplayer2/upstream/g;->bytesRemaining:J

    .line 175
    .line 176
    cmp-long v7, v5, v8

    .line 177
    .line 178
    if-nez v7, :cond_6

    .line 179
    goto :goto_3

    .line 180
    .line 181
    .line 182
    :cond_6
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 183
    move-result-wide v2

    .line 184
    .line 185
    :goto_3
    iput-wide v2, v1, Lcom/google/android/exoplayer2/upstream/g;->bytesRemaining:J

    .line 186
    :cond_7
    const/4 v2, 0x1

    .line 187
    .line 188
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/upstream/g;->opened:Z

    .line 189
    .line 190
    .line 191
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/upstream/f;->g(Lcom/google/android/exoplayer2/upstream/o;)V

    .line 192
    .line 193
    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/o;->length:J

    .line 194
    .line 195
    cmp-long v0, v2, v8

    .line 196
    .line 197
    if-eqz v0, :cond_8

    .line 198
    goto :goto_4

    .line 199
    .line 200
    :cond_8
    iget-wide v2, v1, Lcom/google/android/exoplayer2/upstream/g;->bytesRemaining:J

    .line 201
    :goto_4
    return-wide v2

    .line 202
    .line 203
    :cond_9
    :try_start_1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/g$a;

    .line 204
    .line 205
    .line 206
    invoke-direct {v0, v12, v11}, Lcom/google/android/exoplayer2/upstream/g$a;-><init>(Ljava/io/IOException;I)V

    .line 207
    throw v0

    .line 208
    .line 209
    :cond_a
    new-instance v0, Lcom/google/android/exoplayer2/upstream/g$a;

    .line 210
    .line 211
    .line 212
    invoke-direct {v0, v12, v11}, Lcom/google/android/exoplayer2/upstream/g$a;-><init>(Ljava/io/IOException;I)V

    .line 213
    throw v0

    .line 214
    .line 215
    :cond_b
    new-instance v0, Lcom/google/android/exoplayer2/upstream/g$a;

    .line 216
    .line 217
    new-instance v4, Ljava/io/IOException;

    .line 218
    .line 219
    new-instance v5, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    const-string v6, "Could not open file descriptor for: "

    .line 225
    .line 226
    .line 227
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    move-result-object v3

    .line 235
    .line 236
    .line 237
    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-direct {v0, v4, v2}, Lcom/google/android/exoplayer2/upstream/g$a;-><init>(Ljava/io/IOException;I)V

    .line 241
    throw v0
    :try_end_1
    .catch Lcom/google/android/exoplayer2/upstream/g$a; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 242
    .line 243
    :goto_5
    new-instance v3, Lcom/google/android/exoplayer2/upstream/g$a;

    .line 244
    .line 245
    instance-of v4, v0, Ljava/io/FileNotFoundException;

    .line 246
    .line 247
    if-eqz v4, :cond_c

    .line 248
    .line 249
    const/16 v2, 0x7d5

    .line 250
    .line 251
    .line 252
    :cond_c
    invoke-direct {v3, v0, v2}, Lcom/google/android/exoplayer2/upstream/g$a;-><init>(Ljava/io/IOException;I)V

    .line 253
    throw v3

    .line 254
    :goto_6
    throw v0
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/g$a;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/g;->uri:Landroid/net/Uri;

    .line 4
    .line 5
    const/16 v1, 0x7d0

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/g;->inputStream:Ljava/io/FileInputStream;

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v3

    .line 16
    goto :goto_5

    .line 17
    :catch_0
    move-exception v3

    .line 18
    goto :goto_4

    .line 19
    .line 20
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/g;->inputStream:Ljava/io/FileInputStream;

    .line 21
    .line 22
    :try_start_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/g;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    goto :goto_1

    .line 29
    :catchall_1
    move-exception v1

    .line 30
    goto :goto_3

    .line 31
    :catch_1
    move-exception v3

    .line 32
    goto :goto_2

    .line 33
    .line 34
    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/g;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 35
    .line 36
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/g;->opened:Z

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/g;->opened:Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/f;->e()V

    .line 44
    :cond_2
    return-void

    .line 45
    .line 46
    :goto_2
    :try_start_2
    new-instance v4, Lcom/google/android/exoplayer2/upstream/g$a;

    .line 47
    .line 48
    .line 49
    invoke-direct {v4, v3, v1}, Lcom/google/android/exoplayer2/upstream/g$a;-><init>(Ljava/io/IOException;I)V

    .line 50
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    .line 52
    :goto_3
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/g;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 53
    .line 54
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/g;->opened:Z

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/g;->opened:Z

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/f;->e()V

    .line 62
    :cond_3
    throw v1

    .line 63
    .line 64
    :goto_4
    :try_start_3
    new-instance v4, Lcom/google/android/exoplayer2/upstream/g$a;

    .line 65
    .line 66
    .line 67
    invoke-direct {v4, v3, v1}, Lcom/google/android/exoplayer2/upstream/g$a;-><init>(Ljava/io/IOException;I)V

    .line 68
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    .line 70
    :goto_5
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/g;->inputStream:Ljava/io/FileInputStream;

    .line 71
    .line 72
    :try_start_4
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/g;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 73
    .line 74
    if-eqz v4, :cond_4

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 78
    goto :goto_6

    .line 79
    :catchall_2
    move-exception v1

    .line 80
    goto :goto_8

    .line 81
    :catch_2
    move-exception v3

    .line 82
    goto :goto_7

    .line 83
    .line 84
    :cond_4
    :goto_6
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/g;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 85
    .line 86
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/g;->opened:Z

    .line 87
    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/g;->opened:Z

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/f;->e()V

    .line 94
    :cond_5
    throw v3

    .line 95
    .line 96
    :goto_7
    :try_start_5
    new-instance v4, Lcom/google/android/exoplayer2/upstream/g$a;

    .line 97
    .line 98
    .line 99
    invoke-direct {v4, v3, v1}, Lcom/google/android/exoplayer2/upstream/g$a;-><init>(Ljava/io/IOException;I)V

    .line 100
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 101
    .line 102
    :goto_8
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/g;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 103
    .line 104
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/g;->opened:Z

    .line 105
    .line 106
    if-eqz v0, :cond_6

    .line 107
    .line 108
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/g;->opened:Z

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/f;->e()V

    .line 112
    :cond_6
    throw v1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/g;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/g$a;
        }
    .end annotation

    .line 1
    .line 2
    if-nez p3, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    .line 6
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/g;->bytesRemaining:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    const/4 v3, -0x1

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    return v3

    .line 15
    .line 16
    :cond_1
    const-wide/16 v4, -0x1

    .line 17
    .line 18
    cmp-long v2, v0, v4

    .line 19
    .line 20
    if-nez v2, :cond_2

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    int-to-long v6, p3

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 26
    move-result-wide v0

    .line 27
    long-to-int p3, v0

    .line 28
    .line 29
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/g;->inputStream:Ljava/io/FileInputStream;

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, Ljava/io/FileInputStream;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    .line 39
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    if-ne p1, v3, :cond_3

    .line 42
    return v3

    .line 43
    .line 44
    :cond_3
    iget-wide p2, p0, Lcom/google/android/exoplayer2/upstream/g;->bytesRemaining:J

    .line 45
    .line 46
    cmp-long v0, p2, v4

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    int-to-long v0, p1

    .line 50
    sub-long/2addr p2, v0

    .line 51
    .line 52
    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/g;->bytesRemaining:J

    .line 53
    .line 54
    .line 55
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/f;->d(I)V

    .line 56
    return p1

    .line 57
    :catch_0
    move-exception p1

    .line 58
    .line 59
    new-instance p2, Lcom/google/android/exoplayer2/upstream/g$a;

    .line 60
    .line 61
    const/16 p3, 0x7d0

    .line 62
    .line 63
    .line 64
    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/upstream/g$a;-><init>(Ljava/io/IOException;I)V

    .line 65
    throw p2
.end method
