.class public final Lio/ktor/utils/io/internal/e$b;
.super Lt7/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt7/d<",
        "Lio/ktor/utils/io/internal/g$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lt7/d;-><init>(I)V

    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic e(Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lio/ktor/utils/io/internal/g$c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/internal/e$b;->p(Lio/ktor/utils/io/internal/g$c;)V

    .line 6
    return-void
.end method

.method public bridge synthetic k()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/e$b;->q()Lio/ktor/utils/io/internal/g$c;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected p(Lio/ktor/utils/io/internal/g$c;)V
    .locals 1
    .param p1    # Lio/ktor/utils/io/internal/g$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "instance"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lio/ktor/utils/io/internal/e;->d()Lt7/g;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iget-object p1, p1, Lio/ktor/utils/io/internal/g;->backingBuffer:Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1}, Lt7/g;->S(Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method protected q()Lio/ktor/utils/io/internal/g$c;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lio/ktor/utils/io/internal/g$c;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lio/ktor/utils/io/internal/e;->d()Lt7/g;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-interface {v1}, Lt7/g;->s0()Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 13
    const/4 v2, 0x2

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v4, v2, v3}, Lio/ktor/utils/io/internal/g$c;-><init>(Ljava/nio/ByteBuffer;IILkotlin/jvm/internal/k;)V

    .line 19
    return-object v0
.end method
