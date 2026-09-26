.class public final Lio/ktor/utils/io/internal/g$g;
.super Lio/ktor/utils/io/internal/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field private final initial:Lio/ktor/utils/io/internal/g$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/internal/g$c;)V
    .locals 3
    .param p1    # Lio/ktor/utils/io/internal/g$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "initial"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p1, Lio/ktor/utils/io/internal/g;->backingBuffer:Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    iget-object v1, p1, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0, v1, v2}, Lio/ktor/utils/io/internal/g;-><init>(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/i;Lkotlin/jvm/internal/k;)V

    .line 14
    .line 15
    iput-object p1, p0, Lio/ktor/utils/io/internal/g$g;->initial:Lio/ktor/utils/io/internal/g$c;

    .line 16
    return-void
.end method


# virtual methods
.method public b()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/utils/io/internal/g$g;->initial:Lio/ktor/utils/io/internal/g$c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/g$c;->b()Ljava/nio/ByteBuffer;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public bridge synthetic c()Lio/ktor/utils/io/internal/g;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/g$g;->g()Lio/ktor/utils/io/internal/g$e;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic f()Lio/ktor/utils/io/internal/g;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/g$g;->h()Lio/ktor/utils/io/internal/g$b;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public g()Lio/ktor/utils/io/internal/g$e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/utils/io/internal/g$g;->initial:Lio/ktor/utils/io/internal/g$c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/g$c;->i()Lio/ktor/utils/io/internal/g$e;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public h()Lio/ktor/utils/io/internal/g$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/utils/io/internal/g$g;->initial:Lio/ktor/utils/io/internal/g$c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/g$c;->g()Lio/ktor/utils/io/internal/g$b;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "Writing"

    return-object v0
.end method
