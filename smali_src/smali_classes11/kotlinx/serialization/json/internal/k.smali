.class public Lkotlinx/serialization/json/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final writer:Lkotlinx/serialization/json/internal/p0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private writingFirst:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/p0;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/json/internal/p0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "writer"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lkotlinx/serialization/json/internal/k;->writer:Lkotlinx/serialization/json/internal/p0;

    .line 11
    const/4 p1, 0x1

    .line 12
    .line 13
    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/k;->writingFirst:Z

    .line 14
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/k;->writingFirst:Z

    return v0
.end method

.method public b()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/k;->writingFirst:Z

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/k;->writingFirst:Z

    return-void
.end method

.method public d(B)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/k;->writer:Lkotlinx/serialization/json/internal/p0;

    .line 3
    int-to-long v1, p1

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/json/internal/p0;->writeLong(J)V

    .line 7
    return-void
.end method

.method public final e(C)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/k;->writer:Lkotlinx/serialization/json/internal/p0;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/p0;->a(C)V

    .line 6
    return-void
.end method

.method public f(D)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/k;->writer:Lkotlinx/serialization/json/internal/p0;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/p0;->c(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public g(F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/k;->writer:Lkotlinx/serialization/json/internal/p0;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/p0;->c(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public h(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/k;->writer:Lkotlinx/serialization/json/internal/p0;

    .line 3
    int-to-long v1, p1

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/json/internal/p0;->writeLong(J)V

    .line 7
    return-void
.end method

.method public i(J)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/k;->writer:Lkotlinx/serialization/json/internal/p0;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lkotlinx/serialization/json/internal/p0;->writeLong(J)V

    .line 6
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "v"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lkotlinx/serialization/json/internal/k;->writer:Lkotlinx/serialization/json/internal/p0;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/p0;->c(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public k(S)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/k;->writer:Lkotlinx/serialization/json/internal/p0;

    .line 3
    int-to-long v1, p1

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/json/internal/p0;->writeLong(J)V

    .line 7
    return-void
.end method

.method public l(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/k;->writer:Lkotlinx/serialization/json/internal/p0;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/p0;->c(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "value"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lkotlinx/serialization/json/internal/k;->writer:Lkotlinx/serialization/json/internal/p0;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/p0;->b(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method protected final n(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/k;->writingFirst:Z

    return-void
.end method

.method public o()V
    .locals 0

    .line 1
    return-void
.end method

.method public p()V
    .locals 0

    .line 1
    return-void
.end method
