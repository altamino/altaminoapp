.class public final Lio/ktor/utils/io/internal/g$c;
.super Lio/ktor/utils/io/internal/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final idleState:Lio/ktor/utils/io/internal/g$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final readBuffer:Ljava/nio/ByteBuffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final readingState:Lio/ktor/utils/io/internal/g$d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final readingWritingState:Lio/ktor/utils/io/internal/g$e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final writeBuffer:Ljava/nio/ByteBuffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final writingState:Lio/ktor/utils/io/internal/g$g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "backingBuffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lio/ktor/utils/io/internal/i;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-direct {v0, v1}, Lio/ktor/utils/io/internal/i;-><init>(I)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Lio/ktor/utils/io/internal/g;-><init>(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/i;Lkotlin/jvm/internal/k;)V

    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    const-string v0, "Failed requirement."

    if-nez p2, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p2

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p2

    const-string v0, "backingBuffer.duplicate()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lio/ktor/utils/io/internal/g$c;->writeBuffer:Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/ktor/utils/io/internal/g$c;->readBuffer:Ljava/nio/ByteBuffer;

    .line 7
    new-instance p1, Lio/ktor/utils/io/internal/g$b;

    invoke-direct {p1, p0}, Lio/ktor/utils/io/internal/g$b;-><init>(Lio/ktor/utils/io/internal/g$c;)V

    iput-object p1, p0, Lio/ktor/utils/io/internal/g$c;->idleState:Lio/ktor/utils/io/internal/g$b;

    .line 8
    new-instance p1, Lio/ktor/utils/io/internal/g$d;

    invoke-direct {p1, p0}, Lio/ktor/utils/io/internal/g$d;-><init>(Lio/ktor/utils/io/internal/g$c;)V

    iput-object p1, p0, Lio/ktor/utils/io/internal/g$c;->readingState:Lio/ktor/utils/io/internal/g$d;

    .line 9
    new-instance p1, Lio/ktor/utils/io/internal/g$g;

    invoke-direct {p1, p0}, Lio/ktor/utils/io/internal/g$g;-><init>(Lio/ktor/utils/io/internal/g$c;)V

    iput-object p1, p0, Lio/ktor/utils/io/internal/g$c;->writingState:Lio/ktor/utils/io/internal/g$g;

    .line 10
    new-instance p1, Lio/ktor/utils/io/internal/g$e;

    invoke-direct {p1, p0}, Lio/ktor/utils/io/internal/g$e;-><init>(Lio/ktor/utils/io/internal/g$c;)V

    iput-object p1, p0, Lio/ktor/utils/io/internal/g$c;->readingWritingState:Lio/ktor/utils/io/internal/g$e;

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;IILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0x8

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/internal/g$c;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/internal/g$c;->readBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public b()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/internal/g$c;->writeBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public bridge synthetic c()Lio/ktor/utils/io/internal/g;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/g$c;->k()Lio/ktor/utils/io/internal/g$d;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic d()Lio/ktor/utils/io/internal/g;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/g$c;->l()Lio/ktor/utils/io/internal/g$g;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final g()Lio/ktor/utils/io/internal/g$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/internal/g$c;->idleState:Lio/ktor/utils/io/internal/g$b;

    return-object v0
.end method

.method public final h()Lio/ktor/utils/io/internal/g$d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/internal/g$c;->readingState:Lio/ktor/utils/io/internal/g$d;

    return-object v0
.end method

.method public final i()Lio/ktor/utils/io/internal/g$e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/internal/g$c;->readingWritingState:Lio/ktor/utils/io/internal/g$e;

    return-object v0
.end method

.method public final j()Lio/ktor/utils/io/internal/g$g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/internal/g$c;->writingState:Lio/ktor/utils/io/internal/g$g;

    return-object v0
.end method

.method public k()Lio/ktor/utils/io/internal/g$d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/internal/g$c;->readingState:Lio/ktor/utils/io/internal/g$d;

    return-object v0
.end method

.method public l()Lio/ktor/utils/io/internal/g$g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/internal/g$c;->writingState:Lio/ktor/utils/io/internal/g$g;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "Initial"

    return-object v0
.end method
