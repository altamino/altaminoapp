.class public Lcom/narvii/util/logging/DetailLogging;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/logging/DetailLogging$DLogger;,
        Lcom/narvii/util/logging/DetailLogging$LogEntry;
    }
.end annotation


# static fields
.field static final BUFFER_SIZE:I = 0x100000

.field static final CHECK_INTERVAL:I = 0x7530

.field static final checkpoint:Ljava/lang/Runnable;

.field static enabled:Z

.field static logger:Lcom/narvii/util/logging/DetailLogging$DLogger;

.field static started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/logging/DetailLogging$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/logging/DetailLogging$1;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/util/logging/DetailLogging;->checkpoint:Ljava/lang/Runnable;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static flush()V
    .locals 11

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/logging/DetailLogging;->logger:Lcom/narvii/util/logging/DetailLogging$DLogger;

    .line 3
    .line 4
    if-eqz v0, :cond_b

    .line 5
    .line 6
    sget-boolean v1, Lcom/narvii/util/logging/DetailLogging;->enabled:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_5

    .line 11
    .line 12
    :cond_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/util/logging/DetailLogging$DLogger;->archive()V

    .line 16
    .line 17
    :cond_1
    const-string v0, "\\d+\\.log"

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    sget-object v1, Lcom/narvii/util/logging/DetailLogging;->logger:Lcom/narvii/util/logging/DetailLogging$DLogger;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/narvii/util/logging/DetailLogging$DLogger;->dir:Ljava/io/File;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    if-eqz v1, :cond_b

    .line 32
    .line 33
    new-instance v2, Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    array-length v3, v1

    .line 38
    const/4 v4, 0x0

    .line 39
    move v5, v4

    .line 40
    .line 41
    :goto_0
    if-ge v5, v3, :cond_3

    .line 42
    .line 43
    aget-object v6, v1, v5

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 47
    move-result-object v7

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 51
    move-result-object v7

    .line 52
    .line 53
    .line 54
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    .line 55
    move-result v7

    .line 56
    .line 57
    if-eqz v7, :cond_2

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :cond_3
    new-instance v0, Lcom/narvii/util/logging/DetailLogging$2;

    .line 66
    .line 67
    .line 68
    invoke-direct {v0}, Lcom/narvii/util/logging/DetailLogging$2;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 75
    move-result v0

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    const-wide/16 v5, 0x0

    .line 82
    move-wide v7, v5

    .line 83
    .line 84
    .line 85
    :goto_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 86
    move-result v1

    .line 87
    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    check-cast v1, Ljava/io/File;

    .line 95
    .line 96
    .line 97
    const-wide/32 v9, 0x100000

    .line 98
    .line 99
    cmp-long v3, v7, v9

    .line 100
    .line 101
    if-ltz v3, :cond_4

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 105
    .line 106
    .line 107
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 108
    goto :goto_1

    .line 109
    .line 110
    .line 111
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 112
    move-result-wide v9

    .line 113
    add-long/2addr v7, v9

    .line 114
    goto :goto_1

    .line 115
    .line 116
    :cond_5
    cmp-long v0, v7, v5

    .line 117
    .line 118
    if-nez v0, :cond_6

    .line 119
    return-void

    .line 120
    .line 121
    :cond_6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 122
    long-to-int v1, v7

    .line 123
    .line 124
    .line 125
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 126
    .line 127
    const/16 v1, 0x1000

    .line 128
    .line 129
    new-array v1, v1, [B

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 133
    move-result-object v3

    .line 134
    .line 135
    .line 136
    :catch_0
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    move-result v5

    .line 138
    .line 139
    if-eqz v5, :cond_8

    .line 140
    .line 141
    .line 142
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    move-result-object v5

    .line 144
    .line 145
    check-cast v5, Ljava/io/File;

    .line 146
    .line 147
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    .line 148
    .line 149
    .line 150
    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 151
    .line 152
    .line 153
    :goto_2
    invoke-virtual {v6, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 154
    move-result v5

    .line 155
    const/4 v7, -0x1

    .line 156
    .line 157
    if-eq v5, v7, :cond_7

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    goto :goto_2

    .line 162
    .line 163
    .line 164
    :cond_8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 165
    move-result-object v0

    .line 166
    array-length v1, v0

    .line 167
    .line 168
    const/high16 v3, 0x100000

    .line 169
    .line 170
    if-le v1, v3, :cond_a

    .line 171
    array-length v1, v0

    .line 172
    move v5, v4

    .line 173
    .line 174
    :goto_3
    if-ge v5, v1, :cond_a

    .line 175
    .line 176
    aget-byte v6, v0, v5

    .line 177
    .line 178
    const/16 v7, 0xa

    .line 179
    .line 180
    if-ne v6, v7, :cond_9

    .line 181
    .line 182
    sub-int v6, v1, v5

    .line 183
    .line 184
    if-gt v6, v3, :cond_9

    .line 185
    .line 186
    new-array v1, v6, [B

    .line 187
    .line 188
    .line 189
    invoke-static {v0, v5, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    move-object v0, v1

    .line 191
    goto :goto_4

    .line 192
    .line 193
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 194
    goto :goto_3

    .line 195
    .line 196
    .line 197
    :cond_a
    :goto_4
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 198
    move-result-object v1

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 202
    move-result-object v1

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->verbose()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 206
    move-result-object v1

    .line 207
    .line 208
    const-string v3, "/device/log"

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 212
    move-result-object v1

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->body([B)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 216
    move-result-object v0

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 220
    move-result-object v0

    .line 221
    .line 222
    .line 223
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 224
    move-result-object v1

    .line 225
    .line 226
    const-string v3, "api"

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, v3}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 230
    move-result-object v1

    .line 231
    .line 232
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 233
    .line 234
    new-instance v3, Lcom/narvii/util/logging/DetailLogging$3;

    .line 235
    .line 236
    const-class v4, Lcom/narvii/model/api/ApiResponse;

    .line 237
    .line 238
    .line 239
    invoke-direct {v3, v4, v2}, Lcom/narvii/util/logging/DetailLogging$3;-><init>(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v0, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 243
    :cond_b
    :goto_5
    return-void
.end method

.method public static init()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/logging/DetailLogging;->reportEnabledFile()Ljava/io/File;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long v0, v0, v2

    .line 13
    .line 14
    if-lez v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-static {v0}, Lcom/narvii/util/logging/DetailLogging;->setReportEnabled(Z)V

    .line 21
    return-void
.end method

.method static reportEnabledFile()Ljava/io/File;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    const-string v2, "dlog.d"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    return-object v0
.end method

.method public static setReportEnabled(Z)V
    .locals 4

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/util/logging/DetailLogging;->enabled:Z

    .line 3
    .line 4
    if-eq p0, v0, :cond_3

    .line 5
    .line 6
    sput-boolean p0, Lcom/narvii/util/logging/DetailLogging;->enabled:Z

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/narvii/util/logging/DetailLogging;->reportEnabledFile()Ljava/io/File;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "1"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->writeToFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {}, Lcom/narvii/util/logging/DetailLogging;->reportEnabledFile()Ljava/io/File;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 26
    .line 27
    :goto_0
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 28
    .line 29
    sget-object v1, Lcom/narvii/util/logging/DetailLogging;->checkpoint:Ljava/lang/Runnable;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    if-nez p0, :cond_1

    .line 35
    .line 36
    sget-object p0, Lcom/narvii/util/logging/DetailLogging;->logger:Lcom/narvii/util/logging/DetailLogging$DLogger;

    .line 37
    .line 38
    if-eqz p0, :cond_3

    .line 39
    .line 40
    sget-object p0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

    .line 41
    .line 42
    sget-object v0, Lcom/narvii/util/logging/DetailLogging;->logger:Lcom/narvii/util/logging/DetailLogging$DLogger;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 46
    .line 47
    sget-object p0, Lcom/narvii/util/logging/DetailLogging;->logger:Lcom/narvii/util/logging/DetailLogging$DLogger;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->dir:Ljava/io/File;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/narvii/util/logging/DetailLogging$DLogger;->dispose()V

    .line 53
    const/4 p0, 0x0

    .line 54
    .line 55
    sput-object p0, Lcom/narvii/util/logging/DetailLogging;->logger:Lcom/narvii/util/logging/DetailLogging$DLogger;

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_1
    sget-object p0, Lcom/narvii/util/logging/DetailLogging;->logger:Lcom/narvii/util/logging/DetailLogging$DLogger;

    .line 62
    .line 63
    if-nez p0, :cond_2

    .line 64
    .line 65
    new-instance p0, Ljava/io/File;

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 69
    move-result-object v2

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    const-string v3, "dlog"

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 82
    .line 83
    new-instance v2, Lcom/narvii/util/logging/DetailLogging$DLogger;

    .line 84
    .line 85
    .line 86
    invoke-direct {v2, p0}, Lcom/narvii/util/logging/DetailLogging$DLogger;-><init>(Ljava/io/File;)V

    .line 87
    .line 88
    sput-object v2, Lcom/narvii/util/logging/DetailLogging;->logger:Lcom/narvii/util/logging/DetailLogging$DLogger;

    .line 89
    .line 90
    sget-object p0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

    .line 91
    .line 92
    sget-object v2, Lcom/narvii/util/logging/DetailLogging;->logger:Lcom/narvii/util/logging/DetailLogging$DLogger;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    sget-object p0, Lcom/narvii/util/logging/DetailLogging;->logger:Lcom/narvii/util/logging/DetailLogging$DLogger;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 101
    .line 102
    :cond_2
    sget-boolean p0, Lcom/narvii/util/logging/DetailLogging;->started:Z

    .line 103
    .line 104
    if-eqz p0, :cond_3

    .line 105
    .line 106
    const-wide/16 v2, 0x7530

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    :cond_3
    :goto_1
    return-void
.end method

.method public static start()V
    .locals 2

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/util/logging/DetailLogging;->started:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    .line 8
    sput-boolean v0, Lcom/narvii/util/logging/DetailLogging;->started:Z

    .line 9
    .line 10
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 11
    .line 12
    sget-object v1, Lcom/narvii/util/logging/DetailLogging;->checkpoint:Ljava/lang/Runnable;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    sget-boolean v0, Lcom/narvii/util/logging/DetailLogging;->enabled:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 23
    :cond_1
    return-void
.end method

.method public static stop()V
    .locals 2

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/util/logging/DetailLogging;->started:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/narvii/util/logging/DetailLogging;->flush()V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    sput-boolean v0, Lcom/narvii/util/logging/DetailLogging;->started:Z

    .line 11
    .line 12
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 13
    .line 14
    sget-object v1, Lcom/narvii/util/logging/DetailLogging;->checkpoint:Ljava/lang/Runnable;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    :cond_0
    return-void
.end method
