.class public Lcom/google/firebase/crashlytics/internal/common/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field private static final EVENT_THREAD_IMPORTANCE:I = 0x4

.field private static final EVENT_TYPE_CRASH:Ljava/lang/String; = "crash"

.field private static final EVENT_TYPE_LOGGED:Ljava/lang/String; = "error"

.field private static final MAX_CHAINED_EXCEPTION_DEPTH:I = 0x8


# instance fields
.field private final dataCapture:Lcom/google/firebase/crashlytics/internal/common/t;

.field private final idManager:Lcom/google/firebase/crashlytics/internal/common/b0;

.field private final logFileManager:Lcom/google/firebase/crashlytics/internal/metadata/e;

.field private final reportMetadata:Lcom/google/firebase/crashlytics/internal/metadata/n;

.field private final reportPersistence:Le4/e;

.field private final reportsSender:Lcom/google/firebase/crashlytics/internal/send/b;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/t;Le4/e;Lcom/google/firebase/crashlytics/internal/send/b;Lcom/google/firebase/crashlytics/internal/metadata/e;Lcom/google/firebase/crashlytics/internal/metadata/n;Lcom/google/firebase/crashlytics/internal/common/b0;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/q0;->dataCapture:Lcom/google/firebase/crashlytics/internal/common/t;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/q0;->reportPersistence:Le4/e;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/q0;->reportsSender:Lcom/google/firebase/crashlytics/internal/send/b;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/q0;->logFileManager:Lcom/google/firebase/crashlytics/internal/metadata/e;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/common/q0;->reportMetadata:Lcom/google/firebase/crashlytics/internal/metadata/n;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/google/firebase/crashlytics/internal/common/q0;->idManager:Lcom/google/firebase/crashlytics/internal/common/b0;

    .line 16
    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/crashlytics/internal/common/q0;Lcom/google/android/gms/tasks/Task;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/q0;->r(Lcom/google/android/gms/tasks/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/google/firebase/crashlytics/internal/model/f0$c;Lcom/google/firebase/crashlytics/internal/model/f0$c;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/q0;->o(Lcom/google/firebase/crashlytics/internal/model/f0$c;Lcom/google/firebase/crashlytics/internal/model/f0$c;)I

    move-result p0

    return p0
.end method

.method private c(Lcom/google/firebase/crashlytics/internal/model/f0$e$d;Lcom/google/firebase/crashlytics/internal/metadata/e;Lcom/google/firebase/crashlytics/internal/metadata/n;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d;->h()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/metadata/e;->c()Ljava/lang/String;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d$a;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d$a;->b(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d$a;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;->d(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$d;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    const-string v1, "No log data to include with this event."

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v1}, Lcom/google/firebase/crashlytics/internal/g;->i(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {p3}, Lcom/google/firebase/crashlytics/internal/metadata/n;->f()Ljava/util/Map;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    .line 42
    invoke-static {p2}, Lcom/google/firebase/crashlytics/internal/common/q0;->m(Ljava/util/Map;)Ljava/util/List;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3}, Lcom/google/firebase/crashlytics/internal/metadata/n;->g()Ljava/util/Map;

    .line 47
    move-result-object p3

    .line 48
    .line 49
    .line 50
    invoke-static {p3}, Lcom/google/firebase/crashlytics/internal/common/q0;->m(Ljava/util/Map;)Ljava/util/List;

    .line 51
    move-result-object p3

    .line 52
    .line 53
    .line 54
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 55
    move-result v1

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    .line 60
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 61
    move-result v1

    .line 62
    .line 63
    if-nez v1, :cond_2

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d;->b()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;->i()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;->e(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p3}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;->g(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;->b(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$a;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;

    .line 87
    .line 88
    .line 89
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d;

    .line 90
    move-result-object p1

    .line 91
    return-object p1
.end method

.method private d(Lcom/google/firebase/crashlytics/internal/model/f0$e$d;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/q0;->logFileManager:Lcom/google/firebase/crashlytics/internal/metadata/e;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/q0;->reportMetadata:Lcom/google/firebase/crashlytics/internal/metadata/n;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/crashlytics/internal/common/q0;->c(Lcom/google/firebase/crashlytics/internal/model/f0$e$d;Lcom/google/firebase/crashlytics/internal/metadata/e;Lcom/google/firebase/crashlytics/internal/metadata/n;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/q0;->reportMetadata:Lcom/google/firebase/crashlytics/internal/metadata/n;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/common/q0;->e(Lcom/google/firebase/crashlytics/internal/model/f0$e$d;Lcom/google/firebase/crashlytics/internal/metadata/n;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method private e(Lcom/google/firebase/crashlytics/internal/model/f0$e$d;Lcom/google/firebase/crashlytics/internal/metadata/n;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/metadata/n;->h()Ljava/util/List;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return-object p1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d;->h()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f$a;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f$a;->b(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f$a;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;->e(Lcom/google/firebase/crashlytics/internal/model/f0$e$d$f;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$e$d$b;->a()Lcom/google/firebase/crashlytics/internal/model/f0$e$d;

    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method private static f(Landroid/app/ApplicationExitInfo;)Lcom/google/firebase/crashlytics/internal/model/f0$a;
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/h0;->a(Landroid/app/ApplicationExitInfo;)Ljava/io/InputStream;

    .line 5
    move-result-object v1

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/q0;->g(Ljava/io/InputStream;)Ljava/lang/String;

    .line 11
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v1

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    const-string v4, "Could not get input trace in application exit info: "

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/i0;->a(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    .line 31
    move-result-object v4

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v4, " Error: "

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v1}, Lcom/google/firebase/crashlytics/internal/g;->k(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    :goto_0
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$a$b;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    .line 56
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/j0;->a(Landroid/app/ApplicationExitInfo;)I

    .line 57
    move-result v2

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$a$b;->c(I)Lcom/google/firebase/crashlytics/internal/model/f0$a$b;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    .line 64
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/k0;->a(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$a$b;->e(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$a$b;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-static {p0}, Landroidx/work/impl/utils/c;->a(Landroid/app/ApplicationExitInfo;)I

    .line 73
    move-result v2

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$a$b;->g(I)Lcom/google/firebase/crashlytics/internal/model/f0$a$b;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-static {p0}, Landroidx/work/impl/utils/d;->a(Landroid/app/ApplicationExitInfo;)J

    .line 81
    move-result-wide v2

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/crashlytics/internal/model/f0$a$b;->i(J)Lcom/google/firebase/crashlytics/internal/model/f0$a$b;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    .line 88
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/l0;->a(Landroid/app/ApplicationExitInfo;)I

    .line 89
    move-result v2

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/model/f0$a$b;->d(I)Lcom/google/firebase/crashlytics/internal/model/f0$a$b;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    .line 96
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/m0;->a(Landroid/app/ApplicationExitInfo;)J

    .line 97
    move-result-wide v2

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/crashlytics/internal/model/f0$a$b;->f(J)Lcom/google/firebase/crashlytics/internal/model/f0$a$b;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    .line 104
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/n0;->a(Landroid/app/ApplicationExitInfo;)J

    .line 105
    move-result-wide v2

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/crashlytics/internal/model/f0$a$b;->h(J)Lcom/google/firebase/crashlytics/internal/model/f0$a$b;

    .line 109
    move-result-object p0

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/internal/model/f0$a$b;->j(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$a$b;

    .line 113
    move-result-object p0

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/f0$a$b;->a()Lcom/google/firebase/crashlytics/internal/model/f0$a;

    .line 117
    move-result-object p0

    .line 118
    return-object p0
.end method

.method public static g(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    .line 7
    const/16 v1, 0x2000

    .line 8
    .line 9
    new-array v1, v1, [B

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 13
    move-result v2

    .line 14
    const/4 v3, -0x1

    .line 15
    .line 16
    if-eq v2, v3, :cond_0

    .line 17
    const/4 v3, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public static h(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/common/b0;Le4/f;Lcom/google/firebase/crashlytics/internal/common/a;Lcom/google/firebase/crashlytics/internal/metadata/e;Lcom/google/firebase/crashlytics/internal/metadata/n;Lf4/d;Lcom/google/firebase/crashlytics/internal/settings/i;Lcom/google/firebase/crashlytics/internal/common/g0;Lcom/google/firebase/crashlytics/internal/common/m;)Lcom/google/firebase/crashlytics/internal/common/q0;
    .locals 9

    .line 1
    .line 2
    move-object/from16 v6, p7

    .line 3
    .line 4
    new-instance v7, Lcom/google/firebase/crashlytics/internal/common/t;

    .line 5
    move-object v0, v7

    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p1

    .line 8
    move-object v3, p3

    .line 9
    move-object v4, p6

    .line 10
    .line 11
    move-object/from16 v5, p7

    .line 12
    .line 13
    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/crashlytics/internal/common/t;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/common/b0;Lcom/google/firebase/crashlytics/internal/common/a;Lf4/d;Lcom/google/firebase/crashlytics/internal/settings/i;)V

    .line 15
    .line 16
    new-instance v2, Le4/e;

    .line 17
    move-object v0, p2

    .line 18
    .line 19
    move-object/from16 v1, p9

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, p2, v6, v1}, Le4/e;-><init>(Le4/f;Lcom/google/firebase/crashlytics/internal/settings/i;Lcom/google/firebase/crashlytics/internal/common/m;)V

    .line 23
    move-object v0, p0

    .line 24
    .line 25
    move-object/from16 v1, p8

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v6, v1}, Lcom/google/firebase/crashlytics/internal/send/b;->b(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/settings/i;Lcom/google/firebase/crashlytics/internal/common/g0;)Lcom/google/firebase/crashlytics/internal/send/b;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    new-instance v8, Lcom/google/firebase/crashlytics/internal/common/q0;

    .line 32
    move-object v0, v8

    .line 33
    move-object v1, v7

    .line 34
    move-object v4, p4

    .line 35
    move-object v5, p5

    .line 36
    move-object v6, p1

    .line 37
    .line 38
    .line 39
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/crashlytics/internal/common/q0;-><init>(Lcom/google/firebase/crashlytics/internal/common/t;Le4/e;Lcom/google/firebase/crashlytics/internal/send/b;Lcom/google/firebase/crashlytics/internal/metadata/e;Lcom/google/firebase/crashlytics/internal/metadata/n;Lcom/google/firebase/crashlytics/internal/common/b0;)V

    .line 40
    return-object v8
.end method

.method private i(Lcom/google/firebase/crashlytics/internal/common/u;)Lcom/google/firebase/crashlytics/internal/common/u;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/u;->b()Lcom/google/firebase/crashlytics/internal/model/f0;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0;->g()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/q0;->idManager:Lcom/google/firebase/crashlytics/internal/common/b0;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/b0;->d()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/u;->b()Lcom/google/firebase/crashlytics/internal/model/f0;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/internal/model/f0;->r(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/u;->d()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/u;->c()Ljava/io/File;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1, p1}, Lcom/google/firebase/crashlytics/internal/common/u;->a(Lcom/google/firebase/crashlytics/internal/model/f0;Ljava/lang/String;Ljava/io/File;)Lcom/google/firebase/crashlytics/internal/common/u;

    .line 36
    move-result-object p1

    .line 37
    :cond_0
    return-object p1
.end method

.method private l(Ljava/lang/String;Ljava/util/List;)Landroid/app/ApplicationExitInfo;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/ApplicationExitInfo;",
            ">;)",
            "Landroid/app/ApplicationExitInfo;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/q0;->reportPersistence:Le4/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Le4/e;->q(Ljava/lang/String;)J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    .line 9
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result p2

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    .line 24
    invoke-static {p2}, Landroidx/work/impl/utils/b;->a(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    invoke-static {p2}, Landroidx/work/impl/utils/d;->a(Landroid/app/ApplicationExitInfo;)J

    .line 29
    move-result-wide v3

    .line 30
    .line 31
    cmp-long v3, v3, v0

    .line 32
    .line 33
    if-gez v3, :cond_0

    .line 34
    return-object v2

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-static {p2}, Landroidx/work/impl/utils/c;->a(Landroid/app/ApplicationExitInfo;)I

    .line 38
    move-result v2

    .line 39
    const/4 v3, 0x6

    .line 40
    .line 41
    if-eq v2, v3, :cond_1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-object p2

    .line 44
    :cond_2
    return-object v2
.end method

.method private static m(Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .param p0    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/model/f0$c;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 9
    move-result v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    check-cast v1, Ljava/util/Map$Entry;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$c;->a()Lcom/google/firebase/crashlytics/internal/model/f0$c$a;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    check-cast v3, Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/internal/model/f0$c$a;->b(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$c$a;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    check-cast v1, Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v1}, Lcom/google/firebase/crashlytics/internal/model/f0$c$a;->c(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/f0$c$a;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/model/f0$c$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$c;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_0
    new-instance p0, Lcom/google/firebase/crashlytics/internal/common/o0;

    .line 67
    .line 68
    .line 69
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/o0;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 76
    move-result-object p0

    .line 77
    return-object p0
.end method

.method private static synthetic o(Lcom/google/firebase/crashlytics/internal/model/f0$c;Lcom/google/firebase/crashlytics/internal/model/f0$c;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/f0$c;->b()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/f0$c;->b()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private r(Lcom/google/android/gms/tasks/Task;)Z
    .locals 3
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/crashlytics/internal/common/u;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/google/firebase/crashlytics/internal/common/u;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    const-string v2, "Crashlytics report successfully enqueued to DataTransport: "

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/u;->d()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/g;->b(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/u;->c()Ljava/io/File;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 48
    move-result v0

    .line 49
    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    const-string v2, "Deleted report file: "

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/g;->b(Ljava/lang/String;)V

    .line 79
    goto :goto_0

    .line 80
    .line 81
    .line 82
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    const-string v2, "Crashlytics could not delete report file: "

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/g;->k(Ljava/lang/String;)V

    .line 108
    :goto_0
    const/4 p1, 0x1

    .line 109
    return p1

    .line 110
    .line 111
    .line 112
    :cond_1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    const-string v1, "Crashlytics report could not be enqueued to DataTransport"

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/internal/g;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    const/4 p1, 0x0

    .line 124
    return p1
.end method

.method private s(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 11
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Thread;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    const-string v1, "crash"

    .line 4
    move-object v5, p4

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v1

    .line 9
    .line 10
    iget-object v2, v0, Lcom/google/firebase/crashlytics/internal/common/q0;->dataCapture:Lcom/google/firebase/crashlytics/internal/common/t;

    .line 11
    const/4 v8, 0x4

    .line 12
    .line 13
    const/16 v9, 0x8

    .line 14
    move-object v3, p1

    .line 15
    move-object v4, p2

    .line 16
    .line 17
    move-wide/from16 v6, p5

    .line 18
    .line 19
    move/from16 v10, p7

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {v2 .. v10}, Lcom/google/firebase/crashlytics/internal/common/t;->d(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;JIIZ)Lcom/google/firebase/crashlytics/internal/model/f0$e$d;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    iget-object v3, v0, Lcom/google/firebase/crashlytics/internal/common/q0;->reportPersistence:Le4/e;

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v2}, Lcom/google/firebase/crashlytics/internal/common/q0;->d(Lcom/google/firebase/crashlytics/internal/model/f0$e$d;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d;

    .line 29
    move-result-object v2

    .line 30
    move-object v4, p3

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2, p3, v1}, Le4/e;->y(Lcom/google/firebase/crashlytics/internal/model/f0$e$d;Ljava/lang/String;Z)V

    .line 34
    return-void
.end method


# virtual methods
.method public j(Ljava/lang/String;Ljava/util/List;Lcom/google/firebase/crashlytics/internal/model/f0$a;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/common/e0;",
            ">;",
            "Lcom/google/firebase/crashlytics/internal/model/f0$a;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "SessionReportingCoordinator#finalizeSessionWithNativeEvent"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/g;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    .line 21
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    check-cast v1, Lcom/google/firebase/crashlytics/internal/common/e0;

    .line 31
    .line 32
    .line 33
    invoke-interface {v1}, Lcom/google/firebase/crashlytics/internal/common/e0;->b()Lcom/google/firebase/crashlytics/internal/model/f0$d$b;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_1
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/q0;->reportPersistence:Le4/e;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/f0$d;->a()Lcom/google/firebase/crashlytics/internal/model/f0$d$a;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/internal/model/f0$d$a;->b(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/f0$d$a;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/f0$d$a;->a()Lcom/google/firebase/crashlytics/internal/model/f0$d;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p1, v0, p3}, Le4/e;->l(Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/model/f0$d;Lcom/google/firebase/crashlytics/internal/model/f0$a;)V

    .line 62
    return-void
.end method

.method public k(JLjava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/q0;->reportPersistence:Le4/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p3, p1, p2}, Le4/e;->k(Ljava/lang/String;J)V

    .line 6
    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/q0;->reportPersistence:Le4/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Le4/e;->r()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public p()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/q0;->reportPersistence:Le4/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Le4/e;->p()Ljava/util/SortedSet;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public q(Ljava/lang/String;J)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/q0;->dataCapture:Lcom/google/firebase/crashlytics/internal/common/t;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/crashlytics/internal/common/t;->e(Ljava/lang/String;J)Lcom/google/firebase/crashlytics/internal/model/f0;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/q0;->reportPersistence:Le4/e;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p1}, Le4/e;->z(Lcom/google/firebase/crashlytics/internal/model/f0;)V

    .line 12
    return-void
.end method

.method public t(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V
    .locals 10
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Thread;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "Persisting fatal event for session "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/g;->i(Ljava/lang/String;)V

    .line 25
    .line 26
    const-string v6, "crash"

    .line 27
    const/4 v9, 0x1

    .line 28
    move-object v2, p0

    .line 29
    move-object v3, p1

    .line 30
    move-object v4, p2

    .line 31
    move-object v5, p3

    .line 32
    move-wide v7, p4

    .line 33
    .line 34
    .line 35
    invoke-direct/range {v2 .. v9}, Lcom/google/firebase/crashlytics/internal/common/q0;->s(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 36
    return-void
.end method

.method public u(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V
    .locals 10
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Thread;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "Persisting non-fatal event for session "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/g;->i(Ljava/lang/String;)V

    .line 25
    .line 26
    const-string v6, "error"

    .line 27
    const/4 v9, 0x0

    .line 28
    move-object v2, p0

    .line 29
    move-object v3, p1

    .line 30
    move-object v4, p2

    .line 31
    move-object v5, p3

    .line 32
    move-wide v7, p4

    .line 33
    .line 34
    .line 35
    invoke-direct/range {v2 .. v9}, Lcom/google/firebase/crashlytics/internal/common/q0;->s(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 36
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/util/List;Lcom/google/firebase/crashlytics/internal/metadata/e;Lcom/google/firebase/crashlytics/internal/metadata/n;)V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/ApplicationExitInfo;",
            ">;",
            "Lcom/google/firebase/crashlytics/internal/metadata/e;",
            "Lcom/google/firebase/crashlytics/internal/metadata/n;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/q0;->l(Ljava/lang/String;Ljava/util/List;)Landroid/app/ApplicationExitInfo;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    new-instance p3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string p4, "No relevant ApplicationExitInfo occurred during session: "

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/internal/g;->i(Ljava/lang/String;)V

    .line 31
    return-void

    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/q0;->dataCapture:Lcom/google/firebase/crashlytics/internal/common/t;

    .line 34
    .line 35
    .line 36
    invoke-static {p2}, Lcom/google/firebase/crashlytics/internal/common/q0;->f(Landroid/app/ApplicationExitInfo;)Lcom/google/firebase/crashlytics/internal/model/f0$a;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p2}, Lcom/google/firebase/crashlytics/internal/common/t;->c(Lcom/google/firebase/crashlytics/internal/model/f0$a;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    const-string v2, "Persisting anr for session "

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/g;->b(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, p2, p3, p4}, Lcom/google/firebase/crashlytics/internal/common/q0;->c(Lcom/google/firebase/crashlytics/internal/model/f0$e$d;Lcom/google/firebase/crashlytics/internal/metadata/e;Lcom/google/firebase/crashlytics/internal/metadata/n;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, p2, p4}, Lcom/google/firebase/crashlytics/internal/common/q0;->e(Lcom/google/firebase/crashlytics/internal/model/f0$e$d;Lcom/google/firebase/crashlytics/internal/metadata/n;)Lcom/google/firebase/crashlytics/internal/model/f0$e$d;

    .line 73
    move-result-object p2

    .line 74
    .line 75
    iget-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/q0;->reportPersistence:Le4/e;

    .line 76
    const/4 p4, 0x1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, p2, p1, p4}, Le4/e;->y(Lcom/google/firebase/crashlytics/internal/model/f0$e$d;Ljava/lang/String;Z)V

    .line 80
    return-void
.end method

.method public w()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/q0;->reportPersistence:Le4/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Le4/e;->i()V

    .line 6
    return-void
.end method

.method public x(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/common/q0;->y(Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public y(Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/q0;->reportPersistence:Le4/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Le4/e;->w()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    .line 21
    if-eqz v2, :cond_3

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    check-cast v2, Lcom/google/firebase/crashlytics/internal/common/u;

    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/internal/common/u;->d()Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v3

    .line 38
    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    :cond_1
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/q0;->reportsSender:Lcom/google/firebase/crashlytics/internal/send/b;

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v2}, Lcom/google/firebase/crashlytics/internal/common/q0;->i(Lcom/google/firebase/crashlytics/internal/common/u;)Lcom/google/firebase/crashlytics/internal/common/u;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    if-eqz p2, :cond_2

    .line 48
    const/4 v4, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const/4 v4, 0x0

    .line 51
    .line 52
    .line 53
    :goto_1
    invoke-virtual {v3, v2, v4}, Lcom/google/firebase/crashlytics/internal/send/b;->c(Lcom/google/firebase/crashlytics/internal/common/u;Z)Lcom/google/android/gms/tasks/Task;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    new-instance v3, Lcom/google/firebase/crashlytics/internal/common/p0;

    .line 57
    .line 58
    .line 59
    invoke-direct {v3, p0}, Lcom/google/firebase/crashlytics/internal/common/p0;-><init>(Lcom/google/firebase/crashlytics/internal/common/q0;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    .line 66
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    goto :goto_0

    .line 68
    .line 69
    .line 70
    :cond_3
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->whenAll(Ljava/util/Collection;)Lcom/google/android/gms/tasks/Task;

    .line 71
    move-result-object p1

    .line 72
    return-object p1
.end method
