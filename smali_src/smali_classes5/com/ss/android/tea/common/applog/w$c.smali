.class final Lcom/ss/android/tea/common/applog/w$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/tea/common/applog/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    .line 2
    if-eqz p2, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/ss/android/tea/common/applog/w;->a()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-static {}, Lcom/ss/android/tea/common/applog/w;->a()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-static {v1, p1, p2}, Lcom/ss/android/tea/common/applog/k;->f(Landroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    move-result-wide v2

    .line 22
    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const-string v5, "ss_crash-"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, ".log"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    new-instance v3, Ljava/io/File;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/ss/android/tea/common/applog/w;->a()Landroid/content/Context;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 53
    move-result-object v4

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 57
    move-result-object v4

    .line 58
    .line 59
    const-string v5, "ss_crash_logs"

    .line 60
    .line 61
    .line 62
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 66
    move-result v4

    .line 67
    .line 68
    if-nez v4, :cond_0

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    goto :goto_3

    .line 75
    .line 76
    :cond_0
    :goto_0
    new-instance v4, Ljava/io/File;

    .line 77
    .line 78
    .line 79
    invoke-direct {v4, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    .line 81
    new-instance v2, Ljava/io/FileOutputStream;

    .line 82
    .line 83
    .line 84
    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 92
    move-result-object v1

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    .line 100
    .line 101
    :try_start_2
    invoke-static {}, Lcom/ss/android/tea/common/applog/w;->j()Ljava/io/FilenameFilter;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    if-eqz v1, :cond_1

    .line 109
    array-length v2, v1

    .line 110
    const/4 v3, 0x5

    .line 111
    .line 112
    if-le v2, v3, :cond_1

    .line 113
    .line 114
    .line 115
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    .line 116
    move-result-object v2

    .line 117
    .line 118
    .line 119
    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 120
    :goto_1
    array-length v2, v1

    .line 121
    .line 122
    if-ge v3, v2, :cond_1

    .line 123
    .line 124
    aget-object v2, v1, v3

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    .line 129
    add-int/lit8 v3, v3, 0x1

    .line 130
    goto :goto_1

    .line 131
    .line 132
    .line 133
    :catch_0
    :cond_1
    :goto_2
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/io/a;->a(Ljava/io/Closeable;)V

    .line 134
    goto :goto_4

    .line 135
    :catchall_1
    move-exception p1

    .line 136
    move-object v0, v2

    .line 137
    goto :goto_3

    .line 138
    :catch_1
    move-object v0, v2

    .line 139
    goto :goto_2

    .line 140
    .line 141
    .line 142
    :goto_3
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/io/a;->a(Ljava/io/Closeable;)V

    .line 143
    throw p1

    .line 144
    .line 145
    .line 146
    :cond_2
    :goto_4
    invoke-static {}, Lcom/ss/android/tea/common/applog/w;->a()Landroid/content/Context;

    .line 147
    move-result-object v0

    .line 148
    .line 149
    .line 150
    invoke-static {v0}, Lt6/d;->f(Landroid/content/Context;)Z

    .line 151
    move-result v0

    .line 152
    .line 153
    if-eqz v0, :cond_3

    .line 154
    .line 155
    .line 156
    invoke-static {}, Lcom/ss/android/tea/common/applog/w;->m()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    if-eqz v0, :cond_5

    .line 160
    .line 161
    .line 162
    invoke-static {}, Lcom/ss/android/tea/common/applog/w;->m()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 163
    move-result-object v0

    .line 164
    .line 165
    .line 166
    invoke-static {}, Lcom/ss/android/tea/common/applog/w;->o()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 167
    move-result-object v1

    .line 168
    .line 169
    if-eq v0, v1, :cond_5

    .line 170
    .line 171
    .line 172
    invoke-static {}, Lcom/ss/android/tea/common/applog/w;->m()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 173
    move-result-object v0

    .line 174
    .line 175
    .line 176
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 177
    goto :goto_5

    .line 178
    .line 179
    .line 180
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 181
    move-result p1

    .line 182
    .line 183
    if-eqz p1, :cond_4

    .line 184
    .line 185
    const-string p1, "process"

    .line 186
    .line 187
    .line 188
    const-string/jumbo p2, "uncaughtException kill myself"

    .line 189
    .line 190
    .line 191
    invoke-static {p1, p2}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :cond_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 195
    move-result p1

    .line 196
    .line 197
    .line 198
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 199
    :catchall_2
    :cond_5
    :goto_5
    return-void
.end method
