.class public Landroidx/profileinstaller/ProfileInstaller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;,
        Landroidx/profileinstaller/ProfileInstaller$ResultCode;,
        Landroidx/profileinstaller/ProfileInstaller$DiagnosticCode;
    }
.end annotation


# static fields
.field public static final DIAGNOSTIC_CURRENT_PROFILE_DOES_NOT_EXIST:I = 0x2

.field public static final DIAGNOSTIC_CURRENT_PROFILE_EXISTS:I = 0x1

.field public static final DIAGNOSTIC_PROFILE_IS_COMPRESSED:I = 0x5

.field public static final DIAGNOSTIC_REF_PROFILE_DOES_NOT_EXIST:I = 0x4

.field public static final DIAGNOSTIC_REF_PROFILE_EXISTS:I = 0x3

.field private static final EMPTY_DIAGNOSTICS:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

.field static final LOG_DIAGNOSTICS:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final PROFILE_BASE_DIR:Ljava/lang/String; = "/data/misc/profiles/cur/0"

.field private static final PROFILE_FILE:Ljava/lang/String; = "primary.prof"

.field private static final PROFILE_INSTALLER_SKIP_FILE_NAME:Ljava/lang/String; = "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

.field private static final PROFILE_META_LOCATION:Ljava/lang/String; = "dexopt/baseline.profm"

.field private static final PROFILE_SOURCE_LOCATION:Ljava/lang/String; = "dexopt/baseline.prof"

.field public static final RESULT_ALREADY_INSTALLED:I = 0x2

.field public static final RESULT_BASELINE_PROFILE_NOT_FOUND:I = 0x6

.field public static final RESULT_BENCHMARK_OPERATION_FAILURE:I = 0xf

.field public static final RESULT_BENCHMARK_OPERATION_SUCCESS:I = 0xe

.field public static final RESULT_BENCHMARK_OPERATION_UNKNOWN:I = 0x10

.field public static final RESULT_DELETE_SKIP_FILE_SUCCESS:I = 0xb

.field public static final RESULT_DESIRED_FORMAT_UNSUPPORTED:I = 0x5

.field public static final RESULT_INSTALL_SKIP_FILE_SUCCESS:I = 0xa

.field public static final RESULT_INSTALL_SUCCESS:I = 0x1

.field public static final RESULT_IO_EXCEPTION:I = 0x7

.field public static final RESULT_META_FILE_REQUIRED_BUT_NOT_FOUND:I = 0x9

.field public static final RESULT_NOT_WRITABLE:I = 0x4

.field public static final RESULT_PARSE_EXCEPTION:I = 0x8

.field public static final RESULT_SAVE_PROFILE_SIGNALLED:I = 0xc

.field public static final RESULT_SAVE_PROFILE_SKIPPED:I = 0xd

.field public static final RESULT_UNSUPPORTED_ART_VERSION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ProfileInstaller"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/profileinstaller/ProfileInstaller$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/profileinstaller/ProfileInstaller$1;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/profileinstaller/ProfileInstaller;->EMPTY_DIAGNOSTICS:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    .line 8
    .line 9
    new-instance v0, Landroidx/profileinstaller/ProfileInstaller$2;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Landroidx/profileinstaller/ProfileInstaller$2;-><init>()V

    .line 13
    .line 14
    sput-object v0, Landroidx/profileinstaller/ProfileInstaller;->LOG_DIAGNOSTICS:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    .line 15
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

.method public static synthetic a(Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/profileinstaller/ProfileInstaller;->e(Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;)V

    return-void
.end method

.method static b(Ljava/io/File;)Z
    .locals 2
    .param p0    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method static c(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Landroidx/profileinstaller/ProfileInstaller;->b(Ljava/io/File;)Z

    .line 8
    .line 9
    const/16 p0, 0xb

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2, p0, v0}, Landroidx/profileinstaller/ProfileInstaller;->g(Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;)V

    .line 14
    return-void
.end method

.method static d(Landroid/content/pm/PackageInfo;Ljava/io/File;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;)Z
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 12
    move-result p1

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    return v1

    .line 17
    .line 18
    :cond_0
    :try_start_0
    new-instance p1, Ljava/io/DataInputStream;

    .line 19
    .line 20
    new-instance v2, Ljava/io/FileInputStream;

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    :try_start_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    .line 30
    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    .line 33
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 34
    .line 35
    iget-wide p0, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 36
    .line 37
    cmp-long p0, v2, p0

    .line 38
    .line 39
    if-nez p0, :cond_1

    .line 40
    const/4 v1, 0x1

    .line 41
    .line 42
    :cond_1
    if-eqz v1, :cond_2

    .line 43
    const/4 p0, 0x2

    .line 44
    const/4 p1, 0x0

    .line 45
    .line 46
    .line 47
    invoke-interface {p2, p0, p1}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->a(ILjava/lang/Object;)V

    .line 48
    :cond_2
    return v1

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    .line 51
    .line 52
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    goto :goto_0

    .line 54
    :catchall_1
    move-exception p1

    .line 55
    .line 56
    .line 57
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 58
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 59
    :catch_0
    return v1
.end method

.method private static synthetic e(Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->a(ILjava/lang/Object;)V

    .line 4
    return-void
.end method

.method static f(Landroid/content/pm/PackageInfo;Ljava/io/File;)V
    .locals 2
    .param p0    # Landroid/content/pm/PackageInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    .line 10
    :try_start_0
    new-instance p1, Ljava/io/DataOutputStream;

    .line 11
    .line 12
    new-instance v1, Ljava/io/FileOutputStream;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    :try_start_1
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 27
    goto :goto_1

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    .line 30
    .line 31
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 32
    goto :goto_0

    .line 33
    :catchall_1
    move-exception p1

    .line 34
    .line 35
    .line 36
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 37
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 38
    :catch_0
    :goto_1
    return-void
.end method

.method static g(Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Landroidx/profileinstaller/c;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p3}, Landroidx/profileinstaller/c;-><init>(Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method private static h(Landroid/content/res/AssetManager;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;)Z
    .locals 8
    .param p0    # Landroid/content/res/AssetManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/pm/PackageInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v7, Ljava/io/File;

    .line 3
    .line 4
    new-instance v0, Ljava/io/File;

    .line 5
    .line 6
    const-string v1, "/data/misc/profiles/cur/0"

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo p1, "primary.prof"

    .line 13
    .line 14
    .line 15
    invoke-direct {v7, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    .line 17
    new-instance p1, Landroidx/profileinstaller/DeviceProfileWriter;

    .line 18
    .line 19
    const-string v5, "dexopt/baseline.prof"

    .line 20
    .line 21
    const-string v6, "dexopt/baseline.profm"

    .line 22
    move-object v0, p1

    .line 23
    move-object v1, p0

    .line 24
    move-object v2, p5

    .line 25
    move-object v3, p6

    .line 26
    move-object v4, p4

    .line 27
    .line 28
    .line 29
    invoke-direct/range {v0 .. v7}, Landroidx/profileinstaller/DeviceProfileWriter;-><init>(Landroid/content/res/AssetManager;Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/profileinstaller/DeviceProfileWriter;->e()Z

    .line 33
    move-result p0

    .line 34
    .line 35
    if-nez p0, :cond_0

    .line 36
    const/4 p0, 0x0

    .line 37
    return p0

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p1}, Landroidx/profileinstaller/DeviceProfileWriter;->i()Landroidx/profileinstaller/DeviceProfileWriter;

    .line 41
    move-result-object p0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/profileinstaller/DeviceProfileWriter;->m()Landroidx/profileinstaller/DeviceProfileWriter;

    .line 45
    move-result-object p0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/profileinstaller/DeviceProfileWriter;->n()Z

    .line 49
    move-result p0

    .line 50
    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-static {p2, p3}, Landroidx/profileinstaller/ProfileInstaller;->f(Landroid/content/pm/PackageInfo;Ljava/io/File;)V

    .line 55
    :cond_1
    return p0
.end method

.method public static i(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/exoplayer/dash/offline/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/media3/exoplayer/dash/offline/a;-><init>()V

    .line 6
    .line 7
    sget-object v1, Landroidx/profileinstaller/ProfileInstaller;->EMPTY_DIAGNOSTICS:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroidx/profileinstaller/ProfileInstaller;->j(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;)V

    .line 11
    return-void
.end method

.method public static j(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1, p2, v0}, Landroidx/profileinstaller/ProfileInstaller;->k(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;Z)V

    .line 5
    return-void
.end method

.method static k(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;Z)V
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    new-instance v3, Ljava/io/File;

    .line 19
    .line 20
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 27
    move-result-object v5

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 31
    move-result-object v1

    .line 32
    const/4 v8, 0x0

    .line 33
    .line 34
    .line 35
    :try_start_0
    invoke-virtual {v1, v2, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 36
    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 40
    move-result-object v4

    .line 41
    .line 42
    const-string v1, "ProfileInstaller"

    .line 43
    .line 44
    if-nez p3, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-static {v3, v4, p2}, Landroidx/profileinstaller/ProfileInstaller;->d(Landroid/content/pm/PackageInfo;Ljava/io/File;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;)Z

    .line 48
    move-result v6

    .line 49
    .line 50
    if-nez v6, :cond_0

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    const-string p2, "Skipping profile installation for "

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    invoke-static {p0, v8}, Landroidx/profileinstaller/ProfileVerifier;->c(Landroid/content/Context;Z)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 79
    goto :goto_1

    .line 80
    .line 81
    :cond_1
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    const-string v7, "Installing profile for "

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 93
    move-result-object v7

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v6

    .line 101
    .line 102
    .line 103
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    move-object v1, v0

    .line 105
    move-object v6, p1

    .line 106
    move-object v7, p2

    .line 107
    .line 108
    .line 109
    invoke-static/range {v1 .. v7}, Landroidx/profileinstaller/ProfileInstaller;->h(Landroid/content/res/AssetManager;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/io/File;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;)Z

    .line 110
    move-result p1

    .line 111
    .line 112
    if-eqz p1, :cond_2

    .line 113
    .line 114
    if-eqz p3, :cond_2

    .line 115
    const/4 v8, 0x1

    .line 116
    .line 117
    .line 118
    :cond_2
    invoke-static {p0, v8}, Landroidx/profileinstaller/ProfileVerifier;->c(Landroid/content/Context;Z)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 119
    :goto_1
    return-void

    .line 120
    :catch_0
    move-exception p1

    .line 121
    const/4 p3, 0x7

    .line 122
    .line 123
    .line 124
    invoke-interface {p2, p3, p1}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->a(ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-static {p0, v8}, Landroidx/profileinstaller/ProfileVerifier;->c(Landroid/content/Context;Z)Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 128
    return-void
.end method

.method static l(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 17
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    .line 24
    invoke-static {v0, p0}, Landroidx/profileinstaller/ProfileInstaller;->f(Landroid/content/pm/PackageInfo;Ljava/io/File;)V

    .line 25
    .line 26
    const/16 p0, 0xa

    .line 27
    const/4 v0, 0x0

    .line 28
    .line 29
    .line 30
    invoke-static {p1, p2, p0, v0}, Landroidx/profileinstaller/ProfileInstaller;->g(Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;)V

    .line 31
    return-void

    .line 32
    :catch_0
    move-exception p0

    .line 33
    const/4 v0, 0x7

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p2, v0, p0}, Landroidx/profileinstaller/ProfileInstaller;->g(Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;)V

    .line 37
    return-void
.end method
