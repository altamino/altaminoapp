.class public abstract Lz4/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static a(Lcom/google/firebase/perf/v1/i;Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p0    # Lcom/google/firebase/perf/v1/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/v1/i;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lz4/e;",
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
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/i;->g()Z

    .line 9
    move-result v1

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Lz4/d;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/i;->i()Lcom/google/firebase/perf/v1/m;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Lz4/d;-><init>(Lcom/google/firebase/perf/v1/m;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/i;->f()Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    new-instance v1, Lz4/c;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/i;->b()Lcom/google/firebase/perf/v1/h;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, v2, p1}, Lz4/c;-><init>(Lcom/google/firebase/perf/v1/h;Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/i;->m()Z

    .line 45
    move-result p1

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    new-instance p1, Lz4/a;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/i;->l()Lcom/google/firebase/perf/v1/c;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, v1}, Lz4/a;-><init>(Lcom/google/firebase/perf/v1/c;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/i;->e()Z

    .line 63
    move-result p1

    .line 64
    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    new-instance p1, Lz4/b;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/i;->c()Lcom/google/firebase/perf/v1/g;

    .line 71
    move-result-object p0

    .line 72
    .line 73
    .line 74
    invoke-direct {p1, p0}, Lz4/b;-><init>(Lcom/google/firebase/perf/v1/g;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_3
    return-object v0
.end method

.method public static b(Lcom/google/firebase/perf/v1/i;Landroid/content/Context;)Z
    .locals 1
    .param p0    # Lcom/google/firebase/perf/v1/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lz4/e;->a(Lcom/google/firebase/perf/v1/i;Landroid/content/Context;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ly4/a;->e()Ly4/a;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    const-string p1, "No validators found for PerfMetric."

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ly4/a;->a(Ljava/lang/String;)V

    .line 21
    return v0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result p1

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    check-cast p1, Lz4/e;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lz4/e;->c()Z

    .line 41
    move-result p1

    .line 42
    .line 43
    if-nez p1, :cond_1

    .line 44
    return v0

    .line 45
    :cond_2
    const/4 p0, 0x1

    .line 46
    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x1

    .line 23
    .line 24
    const/16 v3, 0x28

    .line 25
    .line 26
    if-gt v0, v3, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 30
    move-result p1

    .line 31
    .line 32
    const/16 v0, 0x64

    .line 33
    .line 34
    if-gt p1, v0, :cond_1

    .line 35
    .line 36
    const-string p1, "^(?!(firebase_|google_|ga_))[A-Za-z][A-Za-z_0-9]*"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 40
    move-result p0

    .line 41
    .line 42
    if-eqz p0, :cond_0

    .line 43
    return-void

    .line 44
    .line 45
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    const-string p1, "Attribute key must start with letter, must only contain alphanumeric characters and underscore and must not start with \"firebase_\", \"google_\" and \"ga_"

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p0

    .line 52
    .line 53
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 56
    .line 57
    new-array v2, v2, [Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    aput-object v0, v2, v1

    .line 64
    .line 65
    const-string v0, "Attribute value length must not exceed %d characters"

    .line 66
    .line 67
    .line 68
    invoke-static {p1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    throw p0

    .line 74
    .line 75
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 78
    .line 79
    new-array v0, v2, [Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    move-result-object v2

    .line 84
    .line 85
    aput-object v2, v0, v1

    .line 86
    .line 87
    const-string v1, "Attribute key length must not exceed %d characters"

    .line 88
    .line 89
    .line 90
    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    throw p0

    .line 96
    .line 97
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 98
    .line 99
    const-string p1, "Attribute value must not be null or empty"

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    throw p0

    .line 104
    .line 105
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 106
    .line 107
    const-string p1, "Attribute key must not be null or empty"

    .line 108
    .line 109
    .line 110
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 111
    throw p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    const-string p0, "Metric name must not be null"

    .line 5
    return-object p0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    const/16 v2, 0x64

    .line 13
    .line 14
    if-le v0, v2, :cond_1

    .line 15
    .line 16
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 17
    const/4 v0, 0x1

    .line 18
    .line 19
    new-array v0, v0, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    aput-object v2, v0, v1

    .line 26
    .line 27
    const-string v1, "Metric name must not exceed %d characters"

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    .line 34
    :cond_1
    const-string v0, "_"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 38
    move-result v0

    .line 39
    const/4 v2, 0x0

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/google/firebase/perf/util/b;->values()[Lcom/google/firebase/perf/util/b;

    .line 45
    move-result-object v0

    .line 46
    array-length v3, v0

    .line 47
    .line 48
    :goto_0
    if-ge v1, v3, :cond_3

    .line 49
    .line 50
    aget-object v4, v0, v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Lcom/google/firebase/perf/util/b;->toString()Ljava/lang/String;

    .line 54
    move-result-object v4

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v4

    .line 59
    .line 60
    if-eqz v4, :cond_2

    .line 61
    return-object v2

    .line 62
    .line 63
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_3
    const-string p0, "Metric name must not start with \'_\'"

    .line 67
    return-object p0

    .line 68
    :cond_4
    return-object v2
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    const-string p0, "Trace name must not be null"

    .line 5
    return-object p0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    const/16 v2, 0x64

    .line 13
    .line 14
    if-le v0, v2, :cond_1

    .line 15
    .line 16
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 17
    const/4 v0, 0x1

    .line 18
    .line 19
    new-array v0, v0, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    aput-object v2, v0, v1

    .line 26
    .line 27
    const-string v1, "Trace name must not exceed %d characters"

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    .line 34
    :cond_1
    const-string v0, "_"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 38
    move-result v0

    .line 39
    const/4 v2, 0x0

    .line 40
    .line 41
    if-eqz v0, :cond_5

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/google/firebase/perf/util/c;->values()[Lcom/google/firebase/perf/util/c;

    .line 45
    move-result-object v0

    .line 46
    array-length v3, v0

    .line 47
    .line 48
    :goto_0
    if-ge v1, v3, :cond_3

    .line 49
    .line 50
    aget-object v4, v0, v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Lcom/google/firebase/perf/util/c;->toString()Ljava/lang/String;

    .line 54
    move-result-object v4

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v4

    .line 59
    .line 60
    if-eqz v4, :cond_2

    .line 61
    return-object v2

    .line 62
    .line 63
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_3
    const-string v0, "_st_"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 70
    move-result p0

    .line 71
    .line 72
    if-eqz p0, :cond_4

    .line 73
    return-object v2

    .line 74
    .line 75
    :cond_4
    const-string p0, "Trace name must not start with \'_\'"

    .line 76
    return-object p0

    .line 77
    :cond_5
    return-object v2
.end method


# virtual methods
.method public abstract c()Z
.end method
