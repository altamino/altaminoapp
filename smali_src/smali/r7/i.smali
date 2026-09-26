.class public final Lr7/i;
.super Lr7/p;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lr7/i;-><init>(Lt7/g;ILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Lt7/g;)V
    .locals 1
    .param p1    # Lt7/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt7/g<",
            "Ls7/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Lr7/p;-><init>(Lt7/g;)V

    return-void
.end method

.method public synthetic constructor <init>(Lt7/g;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 2
    sget-object p1, Ls7/a;->Companion:Ls7/a$d;

    invoke-virtual {p1}, Ls7/a$d;->c()Lt7/g;

    move-result-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lr7/i;-><init>(Lt7/g;)V

    return-void
.end method


# virtual methods
.method public I0(C)Lr7/i;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lr7/p;->i(C)Lr7/p;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "null cannot be cast to non-null type io.ktor.utils.io.core.BytePacketBuilder"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    check-cast p1, Lr7/i;

    .line 12
    return-object p1
.end method

.method public J0(Ljava/lang/CharSequence;)Lr7/i;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lr7/p;->j(Ljava/lang/CharSequence;)Lr7/p;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "null cannot be cast to non-null type io.ktor.utils.io.core.BytePacketBuilder"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    check-cast p1, Lr7/i;

    .line 12
    return-object p1
.end method

.method public K0(Ljava/lang/CharSequence;II)Lr7/i;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lr7/p;->k(Ljava/lang/CharSequence;II)Lr7/p;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string p2, "null cannot be cast to non-null type io.ktor.utils.io.core.BytePacketBuilder"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    check-cast p1, Lr7/i;

    .line 12
    return-object p1
.end method

.method public final L0()Lr7/j;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lr7/i;->M0()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lr7/p;->t0()Ls7/a;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    sget-object v0, Lr7/j;->Companion:Lr7/j$a;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lr7/j$a;->a()Lr7/j;

    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    new-instance v2, Lr7/j;

    .line 20
    int-to-long v3, v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lr7/p;->Q()Lt7/g;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, v1, v3, v4, v0}, Lr7/j;-><init>(Ls7/a;JLt7/g;)V

    .line 28
    move-object v0, v2

    .line 29
    :goto_0
    return-object v0
.end method

.method public final M0()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lr7/p;->g0()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final N0()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lr7/p;->g0()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lr7/i;->I0(C)Lr7/i;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lr7/i;->J0(Ljava/lang/CharSequence;)Lr7/i;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lr7/i;->K0(Ljava/lang/CharSequence;II)Lr7/i;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i(C)Lr7/p;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lr7/i;->I0(C)Lr7/i;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic j(Ljava/lang/CharSequence;)Lr7/p;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lr7/i;->J0(Ljava/lang/CharSequence;)Lr7/i;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic k(Ljava/lang/CharSequence;II)Lr7/p;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lr7/i;->K0(Ljava/lang/CharSequence;II)Lr7/i;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected final q()V
    .locals 0

    .line 1
    return-void
.end method

.method protected final r(Ljava/nio/ByteBuffer;II)V
    .locals 0
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo p2, "source"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "BytePacketBuilder[0x"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const/16 v1, 0x5d

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method
