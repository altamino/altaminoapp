.class public Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;


# static fields
.field public static final AR:Ljava/lang/String; = "ar"

.field public static final ARJ:Ljava/lang/String; = "arj"

.field public static final CPIO:Ljava/lang/String; = "cpio"

.field public static final DUMP:Ljava/lang/String; = "dump"

.field private static final DUMP_SIGNATURE_SIZE:I = 0x20

.field public static final JAR:Ljava/lang/String; = "jar"

.field public static final SEVEN_Z:Ljava/lang/String; = "7z"

.field private static final SIGNATURE_SIZE:I = 0xc

.field private static final SINGLETON:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

.field public static final TAR:Ljava/lang/String; = "tar"

.field private static final TAR_HEADER_SIZE:I = 0x200

.field public static final ZIP:Ljava/lang/String; = "zip"


# instance fields
.field private archiveInputStreamProviders:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;",
            ">;"
        }
    .end annotation
.end field

.field private archiveOutputStreamProviders:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final encoding:Ljava/lang/String;

.field private volatile entryEncoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->SINGLETON:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->encoding:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->SINGLETON:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->findArchiveStreamProviders()Ljava/util/ArrayList;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static detect(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_b

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_a

    .line 9
    .line 10
    const/16 v0, 0xc

    .line 11
    .line 12
    new-array v1, v0, [B

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-static {p0, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 19
    move-result v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->matches([BI)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    const-string p0, "zip"

    .line 31
    return-object p0

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-static {v1, v0}, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;->matches([BI)Z

    .line 35
    move-result v2

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    const-string p0, "jar"

    .line 40
    return-object p0

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-static {v1, v0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->matches([BI)Z

    .line 44
    move-result v2

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    const-string p0, "ar"

    .line 49
    return-object p0

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-static {v1, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->matches([BI)Z

    .line 53
    move-result v2

    .line 54
    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    const-string p0, "cpio"

    .line 58
    return-object p0

    .line 59
    .line 60
    .line 61
    :cond_3
    invoke-static {v1, v0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->matches([BI)Z

    .line 62
    move-result v2

    .line 63
    .line 64
    if-eqz v2, :cond_4

    .line 65
    .line 66
    const-string p0, "arj"

    .line 67
    return-object p0

    .line 68
    .line 69
    .line 70
    :cond_4
    invoke-static {v1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->matches([BI)Z

    .line 71
    move-result v0

    .line 72
    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    const-string p0, "7z"

    .line 76
    return-object p0

    .line 77
    .line 78
    :cond_5
    const/16 v0, 0x20

    .line 79
    .line 80
    new-array v1, v0, [B

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 84
    .line 85
    .line 86
    :try_start_1
    invoke-static {p0, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 87
    move-result v0

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 91
    .line 92
    .line 93
    invoke-static {v1, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->matches([BI)Z

    .line 94
    move-result v0

    .line 95
    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    const-string p0, "dump"

    .line 99
    return-object p0

    .line 100
    .line 101
    :cond_6
    const/16 v0, 0x200

    .line 102
    .line 103
    new-array v1, v0, [B

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 107
    .line 108
    .line 109
    :try_start_2
    invoke-static {p0, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 110
    move-result v2

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 114
    .line 115
    .line 116
    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->matches([BI)Z

    .line 117
    move-result p0

    .line 118
    .line 119
    const-string v3, "tar"

    .line 120
    .line 121
    if-eqz p0, :cond_7

    .line 122
    return-object v3

    .line 123
    .line 124
    :cond_7
    if-lt v2, v0, :cond_9

    .line 125
    const/4 p0, 0x0

    .line 126
    .line 127
    :try_start_3
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    .line 128
    .line 129
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 130
    .line 131
    .line 132
    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 133
    .line 134
    .line 135
    invoke-direct {v0, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 136
    .line 137
    .line 138
    :try_start_4
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextTarEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 139
    move-result-object p0

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isCheckSumOK()Z

    .line 143
    move-result p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 144
    .line 145
    if-eqz p0, :cond_8

    .line 146
    .line 147
    .line 148
    invoke-static {v0}, Lorg/apache/commons/compress/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 149
    return-object v3

    .line 150
    .line 151
    .line 152
    :cond_8
    invoke-static {v0}, Lorg/apache/commons/compress/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 153
    goto :goto_2

    .line 154
    :catchall_0
    move-exception p0

    .line 155
    goto :goto_0

    .line 156
    :catch_0
    move-object p0, v0

    .line 157
    goto :goto_1

    .line 158
    :catchall_1
    move-exception v0

    .line 159
    move-object v4, v0

    .line 160
    move-object v0, p0

    .line 161
    move-object p0, v4

    .line 162
    .line 163
    .line 164
    :goto_0
    invoke-static {v0}, Lorg/apache/commons/compress/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 165
    throw p0

    .line 166
    .line 167
    .line 168
    :catch_1
    :goto_1
    invoke-static {p0}, Lorg/apache/commons/compress/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 169
    .line 170
    :cond_9
    :goto_2
    new-instance p0, Lorg/apache/commons/compress/archivers/ArchiveException;

    .line 171
    .line 172
    const-string v0, "No Archiver found for the stream signature"

    .line 173
    .line 174
    .line 175
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    .line 176
    throw p0

    .line 177
    :catch_2
    move-exception p0

    .line 178
    .line 179
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveException;

    .line 180
    .line 181
    const-string v1, "IOException while reading tar signature"

    .line 182
    .line 183
    .line 184
    invoke-direct {v0, v1, p0}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 185
    throw v0

    .line 186
    :catch_3
    move-exception p0

    .line 187
    .line 188
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveException;

    .line 189
    .line 190
    const-string v1, "IOException while reading dump signature"

    .line 191
    .line 192
    .line 193
    invoke-direct {v0, v1, p0}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 194
    throw v0

    .line 195
    :catch_4
    move-exception p0

    .line 196
    .line 197
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveException;

    .line 198
    .line 199
    const-string v1, "IOException while reading signature."

    .line 200
    .line 201
    .line 202
    invoke-direct {v0, v1, p0}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 203
    throw v0

    .line 204
    .line 205
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 206
    .line 207
    const-string v0, "Mark is not supported."

    .line 208
    .line 209
    .line 210
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 211
    throw p0

    .line 212
    .line 213
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 214
    .line 215
    const-string v0, "Stream must not be null."

    .line 216
    .line 217
    .line 218
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 219
    throw p0
.end method

.method private static findArchiveStreamProviders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->serviceLoaderIterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/commons/compress/utils/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static findAvailableArchiveInputStreamProviders()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory$1;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Ljava/util/SortedMap;

    .line 12
    return-object v0
.end method

.method public static findAvailableArchiveOutputStreamProviders()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory$2;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory$2;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Ljava/util/SortedMap;

    .line 12
    return-object v0
.end method

.method static putAll(Ljava/util/Set;Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;Ljava/util/TreeMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->toKey(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method private static serviceLoaderIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lorg/apache/commons/compress/utils/ServiceLoaderIterator;

    .line 3
    .line 4
    const-class v1, Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/utils/ServiceLoaderIterator;-><init>(Ljava/lang/Class;)V

    .line 8
    return-object v0
.end method

.method private static toKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public createArchiveInputStream(Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 29
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->detect(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object p1

    return-object p1
.end method

.method public createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object p1

    return-object p1
.end method

.method public createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    if-eqz p1, :cond_10

    if-eqz p2, :cond_f

    const-string v0, "ar"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1

    :cond_0
    const-string v0, "arj"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    .line 5
    new-instance p1, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p1

    .line 6
    :cond_1
    new-instance p1, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1

    :cond_2
    const-string v0, "zip"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p3, :cond_3

    .line 8
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p1

    .line 9
    :cond_3
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1

    :cond_4
    const-string v0, "tar"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p3, :cond_5

    .line 11
    new-instance p1, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p1

    .line 12
    :cond_5
    new-instance p1, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1

    :cond_6
    const-string v0, "jar"

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p3, :cond_7

    .line 14
    new-instance p1, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p1

    .line 15
    :cond_7
    new-instance p1, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1

    :cond_8
    const-string v0, "cpio"

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p3, :cond_9

    .line 17
    new-instance p1, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p1

    .line 18
    :cond_9
    new-instance p1, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1

    :cond_a
    const-string v0, "dump"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p3, :cond_b

    .line 20
    new-instance p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p1

    .line 21
    :cond_b
    new-instance p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1

    :cond_c
    const-string v0, "7z"

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 23
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->getArchiveInputStreamProviders()Ljava/util/SortedMap;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;

    if-eqz v0, :cond_d

    .line 24
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;->createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object p1

    return-object p1

    .line 25
    :cond_d
    new-instance p2, Lorg/apache/commons/compress/archivers/ArchiveException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Archiver: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 26
    :cond_e
    new-instance p1, Lorg/apache/commons/compress/archivers/StreamingNotSupportedException;

    invoke-direct {p1, v0}, Lorg/apache/commons/compress/archivers/StreamingNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "InputStream must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Archivername must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createArchiveOutputStream(Ljava/lang/String;Ljava/io/OutputStream;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveOutputStream(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    move-result-object p1

    return-object p1
.end method

.method public createArchiveOutputStream(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    if-eqz p1, :cond_c

    if-eqz p2, :cond_b

    const-string v0, "ar"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p1

    :cond_0
    const-string v0, "zip"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    if-eqz p3, :cond_1

    .line 6
    invoke-virtual {p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->setEncoding(Ljava/lang/String;)V

    :cond_1
    return-object p1

    :cond_2
    const-string v0, "tar"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p3, :cond_3

    .line 8
    new-instance p1, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object p1

    .line 9
    :cond_3
    new-instance p1, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p1

    :cond_4
    const-string v0, "jar"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p3, :cond_5

    .line 11
    new-instance p1, Lorg/apache/commons/compress/archivers/jar/JarArchiveOutputStream;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/compress/archivers/jar/JarArchiveOutputStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object p1

    .line 12
    :cond_5
    new-instance p1, Lorg/apache/commons/compress/archivers/jar/JarArchiveOutputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/jar/JarArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p1

    :cond_6
    const-string v0, "cpio"

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p3, :cond_7

    .line 14
    new-instance p1, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object p1

    .line 15
    :cond_7
    new-instance p1, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p1

    :cond_8
    const-string v0, "7z"

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 17
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->getArchiveOutputStreamProviders()Ljava/util/SortedMap;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;

    if-eqz v0, :cond_9

    .line 18
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;->createArchiveOutputStream(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    move-result-object p1

    return-object p1

    .line 19
    :cond_9
    new-instance p2, Lorg/apache/commons/compress/archivers/ArchiveException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Archiver: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 20
    :cond_a
    new-instance p1, Lorg/apache/commons/compress/archivers/StreamingNotSupportedException;

    invoke-direct {p1, v0}, Lorg/apache/commons/compress/archivers/StreamingNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "OutputStream must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Archivername must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getArchiveInputStreamProviders()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->archiveInputStreamProviders:Ljava/util/SortedMap;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->findAvailableArchiveInputStreamProviders()Ljava/util/SortedMap;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->archiveInputStreamProviders:Ljava/util/SortedMap;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->archiveInputStreamProviders:Ljava/util/SortedMap;

    .line 17
    return-object v0
.end method

.method public getArchiveOutputStreamProviders()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->archiveOutputStreamProviders:Ljava/util/SortedMap;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->findAvailableArchiveOutputStreamProviders()Ljava/util/SortedMap;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->archiveOutputStreamProviders:Ljava/util/SortedMap;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->archiveOutputStreamProviders:Ljava/util/SortedMap;

    .line 17
    return-object v0
.end method

.method public getEntryEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStreamArchiveNames()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "ar"

    .line 3
    .line 4
    const-string v1, "arj"

    .line 5
    .line 6
    const-string v2, "zip"

    .line 7
    .line 8
    const-string v3, "tar"

    .line 9
    .line 10
    const-string v4, "jar"

    .line 11
    .line 12
    const-string v5, "cpio"

    .line 13
    .line 14
    const-string v6, "dump"

    .line 15
    .line 16
    const-string v7, "7z"

    .line 17
    .line 18
    .line 19
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lorg/apache/commons/compress/utils/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public getOutputStreamArchiveNames()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "ar"

    .line 3
    .line 4
    const-string v1, "zip"

    .line 5
    .line 6
    const-string v2, "tar"

    .line 7
    .line 8
    const-string v3, "jar"

    .line 9
    .line 10
    const-string v4, "cpio"

    .line 11
    .line 12
    const-string v5, "7z"

    .line 13
    .line 14
    .line 15
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lorg/apache/commons/compress/utils/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public setEntryEncoding(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->encoding:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v0, "Cannot overide encoding set by the constructor"

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p1
.end method
