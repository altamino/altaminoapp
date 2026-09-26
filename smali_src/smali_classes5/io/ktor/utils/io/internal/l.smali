.class public final Lio/ktor/utils/io/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private byteBuffer:Ljava/nio/ByteBuffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private current:Lio/ktor/utils/io/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private locked:I

.field private ringBufferCapacity:Lio/ktor/utils/io/internal/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private view:Ls7/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/a;)V
    .locals 1
    .param p1    # Lio/ktor/utils/io/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "channel"

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
    .line 11
    invoke-virtual {p1}, Lio/ktor/utils/io/a;->m0()Lio/ktor/utils/io/a;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iput-object p1, p0, Lio/ktor/utils/io/internal/l;->current:Lio/ktor/utils/io/a;

    .line 15
    .line 16
    sget-object p1, Ls7/a;->Companion:Ls7/a$d;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ls7/a$d;->a()Ls7/a;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lr7/a;->g()Ljava/nio/ByteBuffer;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iput-object v0, p0, Lio/ktor/utils/io/internal/l;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ls7/a$d;->a()Ls7/a;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    iput-object p1, p0, Lio/ktor/utils/io/internal/l;->view:Ls7/a;

    .line 33
    .line 34
    iget-object p1, p0, Lio/ktor/utils/io/internal/l;->current:Lio/ktor/utils/io/a;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lio/ktor/utils/io/a;->K()Lio/ktor/utils/io/internal/g;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    iget-object p1, p1, Lio/ktor/utils/io/internal/g;->capacity:Lio/ktor/utils/io/internal/i;

    .line 41
    .line 42
    iput-object p1, p0, Lio/ktor/utils/io/internal/l;->ringBufferCapacity:Lio/ktor/utils/io/internal/i;

    .line 43
    return-void
.end method
