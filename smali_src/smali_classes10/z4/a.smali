.class public Lz4/a;
.super Lz4/e;
.source "SourceFile"


# static fields
.field private static final logger:Ly4/a;


# instance fields
.field private final applicationInfo:Lcom/google/firebase/perf/v1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ly4/a;->e()Ly4/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sput-object v0, Lz4/a;->logger:Ly4/a;

    .line 7
    return-void
.end method

.method constructor <init>(Lcom/google/firebase/perf/v1/c;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lz4/e;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lz4/a;->applicationInfo:Lcom/google/firebase/perf/v1/c;

    .line 6
    return-void
.end method

.method private g()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lz4/a;->applicationInfo:Lcom/google/firebase/perf/v1/c;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lz4/a;->logger:Ly4/a;

    .line 8
    .line 9
    const-string v2, "ApplicationInfo is null"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ly4/a;->j(Ljava/lang/String;)V

    .line 13
    return v1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/c;->s()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    sget-object v0, Lz4/a;->logger:Ly4/a;

    .line 22
    .line 23
    const-string v2, "GoogleAppId is null"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ly4/a;->j(Ljava/lang/String;)V

    .line 27
    return v1

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lz4/a;->applicationInfo:Lcom/google/firebase/perf/v1/c;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/c;->q()Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    sget-object v0, Lz4/a;->logger:Ly4/a;

    .line 38
    .line 39
    const-string v2, "AppInstanceId is null"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ly4/a;->j(Ljava/lang/String;)V

    .line 43
    return v1

    .line 44
    .line 45
    :cond_2
    iget-object v0, p0, Lz4/a;->applicationInfo:Lcom/google/firebase/perf/v1/c;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/c;->r()Z

    .line 49
    move-result v0

    .line 50
    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    sget-object v0, Lz4/a;->logger:Ly4/a;

    .line 54
    .line 55
    const-string v2, "ApplicationProcessState is null"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ly4/a;->j(Ljava/lang/String;)V

    .line 59
    return v1

    .line 60
    .line 61
    :cond_3
    iget-object v0, p0, Lz4/a;->applicationInfo:Lcom/google/firebase/perf/v1/c;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/c;->p()Z

    .line 65
    move-result v0

    .line 66
    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    iget-object v0, p0, Lz4/a;->applicationInfo:Lcom/google/firebase/perf/v1/c;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/c;->m()Lcom/google/firebase/perf/v1/a;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/a;->l()Z

    .line 77
    move-result v0

    .line 78
    .line 79
    if-nez v0, :cond_4

    .line 80
    .line 81
    sget-object v0, Lz4/a;->logger:Ly4/a;

    .line 82
    .line 83
    const-string v2, "AndroidAppInfo.packageName is null"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ly4/a;->j(Ljava/lang/String;)V

    .line 87
    return v1

    .line 88
    .line 89
    :cond_4
    iget-object v0, p0, Lz4/a;->applicationInfo:Lcom/google/firebase/perf/v1/c;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/c;->m()Lcom/google/firebase/perf/v1/a;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/a;->m()Z

    .line 97
    move-result v0

    .line 98
    .line 99
    if-nez v0, :cond_5

    .line 100
    .line 101
    sget-object v0, Lz4/a;->logger:Ly4/a;

    .line 102
    .line 103
    const-string v2, "AndroidAppInfo.sdkVersion is null"

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v2}, Ly4/a;->j(Ljava/lang/String;)V

    .line 107
    return v1

    .line 108
    :cond_5
    const/4 v0, 0x1

    .line 109
    return v0
.end method


# virtual methods
.method public c()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lz4/a;->g()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lz4/a;->logger:Ly4/a;

    .line 9
    .line 10
    const-string v1, "ApplicationInfo is invalid"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ly4/a;->j(Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    return v0
.end method
