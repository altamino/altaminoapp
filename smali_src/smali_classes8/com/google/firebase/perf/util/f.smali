.class public final Lcom/google/firebase/perf/util/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Ly4/a;


# instance fields
.field private final bundle:Landroid/os/Bundle;


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
    sput-object v0, Lcom/google/firebase/perf/util/f;->logger:Ly4/a;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/util/f;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Lcom/google/firebase/perf/util/f;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method private d(Ljava/lang/String;)Lcom/google/firebase/perf/util/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/firebase/perf/util/g<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/firebase/perf/util/f;->a(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/google/firebase/perf/util/g;->a()Lcom/google/firebase/perf/util/g;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    .line 13
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/util/f;->bundle:Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/google/firebase/perf/util/g;->b(Ljava/lang/Object;)Lcom/google/firebase/perf/util/g;

    .line 23
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object p1

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .line 27
    sget-object v1, Lcom/google/firebase/perf/util/f;->logger:Ly4/a;

    .line 28
    const/4 v2, 0x2

    .line 29
    .line 30
    new-array v2, v2, [Ljava/lang/Object;

    .line 31
    const/4 v3, 0x0

    .line 32
    .line 33
    aput-object p1, v2, v3

    .line 34
    const/4 p1, 0x1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    aput-object v0, v2, p1

    .line 41
    .line 42
    const-string p1, "Metadata key %s contains type other than int: %s"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1, v2}, Ly4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/google/firebase/perf/util/g;->a()Lcom/google/firebase/perf/util/g;

    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/firebase/perf/util/f;->bundle:Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public b(Ljava/lang/String;)Lcom/google/firebase/perf/util/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/firebase/perf/util/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/firebase/perf/util/f;->a(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/google/firebase/perf/util/g;->a()Lcom/google/firebase/perf/util/g;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    .line 13
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/util/f;->bundle:Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/google/firebase/perf/util/g;->b(Ljava/lang/Object;)Lcom/google/firebase/perf/util/g;

    .line 23
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object p1

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .line 27
    sget-object v1, Lcom/google/firebase/perf/util/f;->logger:Ly4/a;

    .line 28
    const/4 v2, 0x2

    .line 29
    .line 30
    new-array v2, v2, [Ljava/lang/Object;

    .line 31
    const/4 v3, 0x0

    .line 32
    .line 33
    aput-object p1, v2, v3

    .line 34
    const/4 p1, 0x1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    aput-object v0, v2, p1

    .line 41
    .line 42
    const-string p1, "Metadata key %s contains type other than boolean: %s"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1, v2}, Ly4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/google/firebase/perf/util/g;->a()Lcom/google/firebase/perf/util/g;

    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method

.method public c(Ljava/lang/String;)Lcom/google/firebase/perf/util/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/firebase/perf/util/g<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/firebase/perf/util/f;->a(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/google/firebase/perf/util/g;->a()Lcom/google/firebase/perf/util/g;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/util/f;->bundle:Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/google/firebase/perf/util/g;->a()Lcom/google/firebase/perf/util/g;

    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    .line 26
    :cond_1
    instance-of v1, v0, Ljava/lang/Float;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    check-cast v0, Ljava/lang/Float;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Float;->doubleValue()D

    .line 34
    move-result-wide v0

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lcom/google/firebase/perf/util/g;->e(Ljava/lang/Object;)Lcom/google/firebase/perf/util/g;

    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    .line 45
    :cond_2
    instance-of v1, v0, Ljava/lang/Double;

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    check-cast v0, Ljava/lang/Double;

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lcom/google/firebase/perf/util/g;->e(Ljava/lang/Object;)Lcom/google/firebase/perf/util/g;

    .line 53
    move-result-object p1

    .line 54
    return-object p1

    .line 55
    .line 56
    :cond_3
    sget-object v0, Lcom/google/firebase/perf/util/f;->logger:Ly4/a;

    .line 57
    const/4 v1, 0x1

    .line 58
    .line 59
    new-array v1, v1, [Ljava/lang/Object;

    .line 60
    const/4 v2, 0x0

    .line 61
    .line 62
    aput-object p1, v1, v2

    .line 63
    .line 64
    const-string p1, "Metadata key %s contains type other than double: %s"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1, v1}, Ly4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lcom/google/firebase/perf/util/g;->a()Lcom/google/firebase/perf/util/g;

    .line 71
    move-result-object p1

    .line 72
    return-object p1
.end method

.method public e(Ljava/lang/String;)Lcom/google/firebase/perf/util/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/firebase/perf/util/g<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/util/f;->d(Ljava/lang/String;)Lcom/google/firebase/perf/util/g;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/firebase/perf/util/g;->d()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/firebase/perf/util/g;->c()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result p1

    .line 21
    int-to-long v0, p1

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/google/firebase/perf/util/g;->e(Ljava/lang/Object;)Lcom/google/firebase/perf/util/g;

    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-static {}, Lcom/google/firebase/perf/util/g;->a()Lcom/google/firebase/perf/util/g;

    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method
