.class public final Ls7/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt7/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt7/g<",
        "Ls7/a;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChunkBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChunkBuffer.kt\nio/ktor/utils/io/core/internal/ChunkBuffer$Companion$EmptyPool$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,180:1\n1#2:181\n*E\n"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic S(Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ls7/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ls7/a$a;->e(Ls7/a;)V

    .line 6
    return-void
.end method

.method public close()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lt7/g$a;->a(Lt7/g;)V

    .line 4
    return-void
.end method

.method public d()Ls7/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Ls7/a;->Companion:Ls7/a$d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ls7/a$d;->a()Ls7/a;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public e(Ls7/a;)V
    .locals 1
    .param p1    # Ls7/a;
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
    sget-object v0, Ls7/a;->Companion:Ls7/a$d;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ls7/a$d;->a()Ls7/a;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v0, "Only ChunkBuffer.Empty instance could be recycled."

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p1
.end method

.method public bridge synthetic s0()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ls7/a$a;->d()Ls7/a;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public t()V
    .locals 0

    .line 1
    return-void
.end method
