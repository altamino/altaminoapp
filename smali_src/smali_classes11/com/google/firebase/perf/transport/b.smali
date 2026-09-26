.class final Lcom/google/firebase/perf/transport/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Ly4/a;


# instance fields
.field private flgTransport:Lf2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf2/f<",
            "Lcom/google/firebase/perf/v1/i;",
            ">;"
        }
    .end annotation
.end field

.field private final flgTransportFactoryProvider:Lo4/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo4/b<",
            "Lf2/g;",
            ">;"
        }
    .end annotation
.end field

.field private final logSourceName:Ljava/lang/String;


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
    sput-object v0, Lcom/google/firebase/perf/transport/b;->logger:Ly4/a;

    .line 7
    return-void
.end method

.method constructor <init>(Lo4/b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo4/b<",
            "Lf2/g;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p2, p0, Lcom/google/firebase/perf/transport/b;->logSourceName:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/firebase/perf/transport/b;->flgTransportFactoryProvider:Lo4/b;

    .line 8
    return-void
.end method

.method private a()Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/transport/b;->flgTransport:Lf2/f;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/perf/transport/b;->flgTransportFactoryProvider:Lo4/b;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Lo4/b;->get()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lf2/g;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/firebase/perf/transport/b;->logSourceName:Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, "proto"

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Lf2/b;->b(Ljava/lang/String;)Lf2/b;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    new-instance v3, Lcom/google/firebase/perf/transport/a;

    .line 25
    .line 26
    .line 27
    invoke-direct {v3}, Lcom/google/firebase/perf/transport/a;-><init>()V

    .line 28
    .line 29
    const-class v4, Lcom/google/firebase/perf/v1/i;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1, v4, v2, v3}, Lf2/g;->a(Ljava/lang/String;Ljava/lang/Class;Lf2/b;Lf2/e;)Lf2/f;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    iput-object v0, p0, Lcom/google/firebase/perf/transport/b;->flgTransport:Lf2/f;

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    sget-object v0, Lcom/google/firebase/perf/transport/b;->logger:Ly4/a;

    .line 39
    .line 40
    const-string v1, "Flg TransportFactory is not available at the moment"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ly4/a;->j(Ljava/lang/String;)V

    .line 44
    .line 45
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/perf/transport/b;->flgTransport:Lf2/f;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    const/4 v0, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const/4 v0, 0x0

    .line 51
    :goto_1
    return v0
.end method


# virtual methods
.method public b(Lcom/google/firebase/perf/v1/i;)V
    .locals 1
    .param p1    # Lcom/google/firebase/perf/v1/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/perf/transport/b;->a()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object p1, Lcom/google/firebase/perf/transport/b;->logger:Ly4/a;

    .line 9
    .line 10
    const-string v0, "Unable to dispatch event because Flg Transport is not available"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ly4/a;->j(Ljava/lang/String;)V

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/transport/b;->flgTransport:Lf2/f;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lf2/c;->d(Ljava/lang/Object;)Lf2/c;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p1}, Lf2/f;->b(Lf2/c;)V

    .line 24
    return-void
.end method
