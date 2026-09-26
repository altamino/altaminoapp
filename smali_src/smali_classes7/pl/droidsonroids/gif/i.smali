.class Lpl/droidsonroids/gif/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COPY_BUFFER_SIZE:I = 0x2000

.field private static final LIB_DIR:Ljava/lang/String; = "lib"

.field private static final MAPPED_BASE_LIB_NAME:Ljava/lang/String;

.field private static final MAX_TRIES:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "pl_droidsonroids_gif"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lpl/droidsonroids/gif/i;->MAPPED_BASE_LIB_NAME:Ljava/lang/String;

    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lpl/droidsonroids/gif/i;->MAPPED_BASE_LIB_NAME:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/io/File;Ljava/io/FilenameFilter;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    array-length p1, p0

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    :goto_0
    if-ge v0, p1, :cond_0

    .line 15
    .line 16
    aget-object v1, p0, v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private static c(Ljava/io/Closeable;)V
    .locals 0

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    :cond_0
    return-void
.end method

.method private static d(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x2000

    .line 3
    .line 4
    new-array v0, v0, [B

    .line 5
    .line 6
    .line 7
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 8
    move-result v1

    .line 9
    const/4 v2, -0x1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 17
    goto :goto_0
.end method

.method private static e(Ljava/util/zip/ZipFile;)Ljava/util/zip/ZipEntry;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lpl/droidsonroids/gif/i;->g()[Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    aget-object v3, v0, v2

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v3}, Lpl/droidsonroids/gif/i;->f(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    return-object v3

    .line 18
    .line 19
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method private static f(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "lib/"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p1, "/"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    sget-object p1, Lpl/droidsonroids/gif/i;->MAPPED_BASE_LIB_NAME:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method private static g()[Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method static h(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnsafeDynamicallyLoadedCode"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Lpl/droidsonroids/gif/i;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p0}, Lpl/droidsonroids/gif/i;->k(Landroid/content/Context;)Ljava/io/File;

    .line 7
    move-result-object p0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method private static i(Ljava/io/File;)Ljava/util/zip/ZipFile;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 4
    const/4 v2, 0x5

    .line 5
    .line 6
    if-ge v0, v2, :cond_0

    .line 7
    .line 8
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_1

    .line 14
    :catch_0
    move v0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    .line 18
    :goto_1
    if-eqz v0, :cond_1

    .line 19
    return-object v0

    .line 20
    .line 21
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const-string v2, "Could not open APK file: "

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    throw v0
.end method

.method private static j(Ljava/io/File;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetWorldReadable"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/io/File;->setWritable(Z)Z

    .line 12
    return-void
.end method

.method private static k(Landroid/content/Context;)Ljava/io/File;
    .locals 8

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    sget-object v1, Lpl/droidsonroids/gif/i;->MAPPED_BASE_LIB_NAME:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "1.2.15"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    new-instance v1, Ljava/io/File;

    .line 22
    .line 23
    const-string v2, "lib"

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 35
    move-result v2

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    return-object v1

    .line 39
    .line 40
    :cond_0
    new-instance v2, Ljava/io/File;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 44
    move-result-object v4

    .line 45
    .line 46
    .line 47
    invoke-direct {v2, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    .line 51
    move-result v0

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    return-object v2

    .line 55
    .line 56
    :cond_1
    const-string v0, "pl_droidsonroids_gif_surface"

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    new-instance v4, Lpl/droidsonroids/gif/i$a;

    .line 63
    .line 64
    .line 65
    invoke-direct {v4, v0}, Lpl/droidsonroids/gif/i$a;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v4}, Lpl/droidsonroids/gif/i;->b(Ljava/io/File;Ljava/io/FilenameFilter;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v2, v4}, Lpl/droidsonroids/gif/i;->b(Ljava/io/File;Ljava/io/FilenameFilter;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 75
    move-result-object p0

    .line 76
    .line 77
    new-instance v0, Ljava/io/File;

    .line 78
    .line 79
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    const/4 p0, 0x0

    .line 84
    .line 85
    .line 86
    :try_start_0
    invoke-static {v0}, Lpl/droidsonroids/gif/i;->i(Ljava/io/File;)Ljava/util/zip/ZipFile;

    .line 87
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 88
    .line 89
    :goto_0
    add-int/lit8 v4, v3, 0x1

    .line 90
    const/4 v5, 0x5

    .line 91
    .line 92
    if-ge v3, v5, :cond_4

    .line 93
    .line 94
    .line 95
    :try_start_1
    invoke-static {v0}, Lpl/droidsonroids/gif/i;->e(Ljava/util/zip/ZipFile;)Ljava/util/zip/ZipEntry;

    .line 96
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .line 98
    if-eqz v3, :cond_3

    .line 99
    .line 100
    .line 101
    :try_start_2
    invoke-virtual {v0, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 102
    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 103
    .line 104
    :try_start_3
    new-instance v5, Ljava/io/FileOutputStream;

    .line 105
    .line 106
    .line 107
    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 108
    .line 109
    .line 110
    :try_start_4
    invoke-static {v3, v5}, Lpl/droidsonroids/gif/i;->d(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 111
    .line 112
    .line 113
    :try_start_5
    invoke-static {v3}, Lpl/droidsonroids/gif/i;->c(Ljava/io/Closeable;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v5}, Lpl/droidsonroids/gif/i;->c(Ljava/io/Closeable;)V

    .line 117
    .line 118
    .line 119
    invoke-static {v1}, Lpl/droidsonroids/gif/i;->j(Ljava/io/File;)V

    .line 120
    goto :goto_4

    .line 121
    :catchall_0
    move-exception p0

    .line 122
    goto :goto_5

    .line 123
    :catchall_1
    move-exception p0

    .line 124
    goto :goto_2

    .line 125
    :catchall_2
    move-exception v1

    .line 126
    move-object v5, p0

    .line 127
    :goto_1
    move-object p0, v1

    .line 128
    goto :goto_2

    .line 129
    :catch_0
    move-object v5, p0

    .line 130
    goto :goto_3

    .line 131
    :catchall_3
    move-exception v1

    .line 132
    move-object v3, p0

    .line 133
    move-object v5, v3

    .line 134
    goto :goto_1

    .line 135
    .line 136
    .line 137
    :goto_2
    invoke-static {v3}, Lpl/droidsonroids/gif/i;->c(Ljava/io/Closeable;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v5}, Lpl/droidsonroids/gif/i;->c(Ljava/io/Closeable;)V

    .line 141
    throw p0

    .line 142
    :catch_1
    move-object v3, p0

    .line 143
    move-object v5, v3

    .line 144
    :catch_2
    :goto_3
    const/4 v6, 0x2

    .line 145
    .line 146
    if-le v4, v6, :cond_2

    .line 147
    move-object v1, v2

    .line 148
    .line 149
    .line 150
    :cond_2
    invoke-static {v3}, Lpl/droidsonroids/gif/i;->c(Ljava/io/Closeable;)V

    .line 151
    .line 152
    .line 153
    invoke-static {v5}, Lpl/droidsonroids/gif/i;->c(Ljava/io/Closeable;)V

    .line 154
    move v3, v4

    .line 155
    goto :goto_0

    .line 156
    .line 157
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 158
    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    const-string v2, "Library "

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    sget-object v2, Lpl/droidsonroids/gif/i;->MAPPED_BASE_LIB_NAME:Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string v2, " for supported ABIs not found in APK file"

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object v1

    .line 182
    .line 183
    .line 184
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 185
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 186
    .line 187
    :cond_4
    :goto_4
    if-eqz v0, :cond_5

    .line 188
    .line 189
    .line 190
    :try_start_6
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 191
    :catch_3
    :cond_5
    return-object v1

    .line 192
    :catchall_4
    move-exception v0

    .line 193
    move-object v7, v0

    .line 194
    move-object v0, p0

    .line 195
    move-object p0, v7

    .line 196
    .line 197
    :goto_5
    if-eqz v0, :cond_6

    .line 198
    .line 199
    .line 200
    :try_start_7
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 201
    :catch_4
    :cond_6
    throw p0
.end method
