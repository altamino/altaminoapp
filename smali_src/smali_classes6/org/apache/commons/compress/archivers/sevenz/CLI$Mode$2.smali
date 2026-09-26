.class final enum Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode$2;
.super Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# instance fields
.field private final buf:[B


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/compress/archivers/sevenz/CLI$1;)V

    .line 5
    .line 6
    const/16 p1, 0x2000

    .line 7
    .line 8
    new-array p1, p1, [B

    .line 9
    .line 10
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode$2;->buf:[B

    .line 11
    return-void
.end method


# virtual methods
.method public takeAction(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getName()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->isDirectory()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 25
    move-result p1

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 31
    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    const-string v1, "Cannot create directory "

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p1

    .line 52
    .line 53
    :cond_1
    :goto_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 54
    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    const-string v1, "created directory "

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    return-void

    .line 75
    .line 76
    :cond_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 77
    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    const-string v3, "extracting to "

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v2

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    if-eqz v1, :cond_4

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 106
    move-result v2

    .line 107
    .line 108
    if-nez v2, :cond_4

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 112
    move-result v2

    .line 113
    .line 114
    if-eqz v2, :cond_3

    .line 115
    goto :goto_1

    .line 116
    .line 117
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 118
    .line 119
    new-instance p2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    const-string v0, "Cannot create "

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object p2

    .line 135
    .line 136
    .line 137
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 138
    throw p1

    .line 139
    .line 140
    :cond_4
    :goto_1
    new-instance v1, Ljava/io/FileOutputStream;

    .line 141
    .line 142
    .line 143
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 144
    .line 145
    .line 146
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    .line 147
    move-result-wide v2

    .line 148
    .line 149
    const-wide/16 v4, 0x0

    .line 150
    .line 151
    :goto_2
    cmp-long v0, v4, v2

    .line 152
    .line 153
    if-gez v0, :cond_6

    .line 154
    .line 155
    sub-long v6, v2, v4

    .line 156
    .line 157
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode$2;->buf:[B

    .line 158
    array-length v0, v0

    .line 159
    int-to-long v8, v0

    .line 160
    .line 161
    .line 162
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 163
    move-result-wide v6

    .line 164
    long-to-int v0, v6

    .line 165
    .line 166
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode$2;->buf:[B

    .line 167
    const/4 v7, 0x0

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v6, v7, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->read([BII)I

    .line 171
    move-result v0

    .line 172
    const/4 v6, 0x1

    .line 173
    .line 174
    if-lt v0, v6, :cond_5

    .line 175
    int-to-long v8, v0

    .line 176
    add-long/2addr v4, v8

    .line 177
    .line 178
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode$2;->buf:[B

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v6, v7, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 182
    goto :goto_2

    .line 183
    :catchall_0
    move-exception p1

    .line 184
    goto :goto_3

    .line 185
    .line 186
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 187
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    const-string v6, "reached end of entry "

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getName()Ljava/lang/String;

    .line 200
    move-result-object p2

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    const-string p2, " after "

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    const-string p2, " bytes, expected "

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    move-result-object p2

    .line 224
    .line 225
    .line 226
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 227
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    .line 229
    .line 230
    :cond_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 231
    return-void

    .line 232
    :goto_3
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 233
    :catchall_1
    move-exception p2

    .line 234
    .line 235
    .line 236
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 237
    goto :goto_4

    .line 238
    :catchall_2
    move-exception v0

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 242
    :goto_4
    throw p2
.end method
