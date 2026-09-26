.class public Ly4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile instance:Ly4/a;


# instance fields
.field private isLogcatEnabled:Z

.field private final logWrapper:Ly4/c;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Ly4/a;-><init>(Ly4/c;)V

    return-void
.end method

.method public constructor <init>(Ly4/c;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ly4/a;->isLogcatEnabled:Z

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Ly4/c;->c()Ly4/c;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Ly4/a;->logWrapper:Ly4/c;

    return-void
.end method

.method public static e()Ly4/a;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Ly4/a;->instance:Ly4/a;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    const-class v0, Ly4/a;

    .line 7
    monitor-enter v0

    .line 8
    .line 9
    :try_start_0
    sget-object v1, Ly4/a;->instance:Ly4/a;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Ly4/a;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1}, Ly4/a;-><init>()V

    .line 17
    .line 18
    sput-object v1, Ly4/a;->instance:Ly4/a;

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    .line 27
    :cond_1
    :goto_2
    sget-object v0, Ly4/a;->instance:Ly4/a;

    .line 28
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Ly4/a;->isLogcatEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Ly4/a;->logWrapper:Ly4/c;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ly4/c;->a(Ljava/lang/String;)V

    .line 10
    :cond_0
    return-void
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Ly4/a;->isLogcatEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Ly4/a;->logWrapper:Ly4/c;

    .line 7
    .line 8
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 9
    .line 10
    .line 11
    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ly4/c;->a(Ljava/lang/String;)V

    .line 16
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Ly4/a;->isLogcatEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Ly4/a;->logWrapper:Ly4/c;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ly4/c;->b(Ljava/lang/String;)V

    .line 10
    :cond_0
    return-void
.end method

.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Ly4/a;->isLogcatEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Ly4/a;->logWrapper:Ly4/c;

    .line 7
    .line 8
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 9
    .line 10
    .line 11
    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ly4/c;->b(Ljava/lang/String;)V

    .line 16
    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Ly4/a;->isLogcatEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Ly4/a;->logWrapper:Ly4/c;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ly4/c;->d(Ljava/lang/String;)V

    .line 10
    :cond_0
    return-void
.end method

.method public varargs g(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Ly4/a;->isLogcatEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Ly4/a;->logWrapper:Ly4/c;

    .line 7
    .line 8
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 9
    .line 10
    .line 11
    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ly4/c;->d(Ljava/lang/String;)V

    .line 16
    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ly4/a;->isLogcatEnabled:Z

    return v0
.end method

.method public i(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ly4/a;->isLogcatEnabled:Z

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Ly4/a;->isLogcatEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Ly4/a;->logWrapper:Ly4/c;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ly4/c;->e(Ljava/lang/String;)V

    .line 10
    :cond_0
    return-void
.end method

.method public varargs k(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Ly4/a;->isLogcatEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Ly4/a;->logWrapper:Ly4/c;

    .line 7
    .line 8
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 9
    .line 10
    .line 11
    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ly4/c;->e(Ljava/lang/String;)V

    .line 16
    :cond_0
    return-void
.end method
