.class public final La0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileUtils.kt\nc/f/b/e/FileUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,50:1\n1#2:51\n*E\n"
.end annotation


# static fields
.field public static final a:La0/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, La0/c;

    invoke-direct {v0}, La0/c;-><init>()V

    sput-object v0, La0/c;->a:La0/c;

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


# virtual methods
.method public final a(Ljava/io/File;)[B
    .locals 5
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 4
    .line 5
    .line 6
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    :try_start_1
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    .line 12
    move-result v2

    .line 13
    .line 14
    const/16 v3, 0x40

    .line 15
    .line 16
    .line 17
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 18
    move-result v2

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 22
    .line 23
    const/16 v2, 0x1000

    .line 24
    .line 25
    new-array v2, v2, [B

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 29
    move-result v3

    .line 30
    const/4 v4, -0x1

    .line 31
    .line 32
    if-eq v3, v4, :cond_0

    .line 33
    const/4 v4, 0x0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_1

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 46
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    :try_start_2
    invoke-static {v1, v0}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 50
    move-object v0, p1

    .line 51
    goto :goto_2

    .line 52
    :goto_1
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    :catchall_1
    move-exception v2

    .line 54
    .line 55
    .line 56
    :try_start_4
    invoke-static {v1, p1}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 57
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 58
    :catch_0
    :goto_2
    return-object v0
.end method

.method public final b(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, La0/c;->a(Ljava/io/File;)[B

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    sget-object v0, La0/a;->b:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    const-string v1, "UTF_8"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    new-instance v1, Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 21
    move-object p1, v1

    .line 22
    :goto_0
    return-object p1
.end method

.method public final c(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "str"

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    sget-object v0, La0/a;->b:Ljava/nio/charset/Charset;

    .line 9
    .line 10
    const-string v1, "UTF_8"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 17
    move-result-object p2

    .line 18
    .line 19
    const-string v0, "getBytes(...)"

    .line 20
    .line 21
    .line 22
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, p2}, La0/c;->d(Ljava/io/File;[B)Z

    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public final d(Ljava/io/File;[B)Z
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, v0}, La0/c;->e(Ljava/io/File;[BZ)Z

    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public final e(Ljava/io/File;[BZ)Z
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    :try_start_0
    new-instance p3, Ljava/io/FileOutputStream;

    .line 3
    .line 4
    .line 5
    invoke-direct {p3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :try_start_1
    invoke-virtual {p3, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    :try_start_2
    invoke-static {p3, p2}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_1

    .line 15
    :catch_0
    move-exception p2

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p2

    .line 18
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 19
    :catchall_1
    move-exception v0

    .line 20
    .line 21
    .line 22
    :try_start_4
    invoke-static {p3, p2}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 23
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 24
    .line 25
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    const-string v0, "fail to write "

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    const-string p3, "file-write"

    .line 43
    .line 44
    .line 45
    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    const/4 p1, 0x0

    .line 47
    :goto_1
    return p1
.end method
