.class final Lio/ktor/utils/io/jvm/nio/a$b;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/jvm/nio/a;->a(Lio/ktor/utils/io/g;Ljava/nio/channels/WritableByteChannel;JLkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Ljava/nio/ByteBuffer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $channel:Ljava/nio/channels/WritableByteChannel;

.field final synthetic $copied:Lkotlin/jvm/internal/o0;

.field final synthetic $limit:J


# direct methods
.method constructor <init>(JLkotlin/jvm/internal/o0;Ljava/nio/channels/WritableByteChannel;)V
    .locals 0

    iput-wide p1, p0, Lio/ktor/utils/io/jvm/nio/a$b;->$limit:J

    iput-object p3, p0, Lio/ktor/utils/io/jvm/nio/a$b;->$copied:Lkotlin/jvm/internal/o0;

    iput-object p4, p0, Lio/ktor/utils/io/jvm/nio/a$b;->$channel:Ljava/nio/channels/WritableByteChannel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "bb"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-wide v0, p0, Lio/ktor/utils/io/jvm/nio/a$b;->$limit:J

    .line 8
    .line 9
    iget-object v2, p0, Lio/ktor/utils/io/jvm/nio/a$b;->$copied:Lkotlin/jvm/internal/o0;

    .line 10
    .line 11
    iget-wide v2, v2, Lkotlin/jvm/internal/o0;->element:J

    .line 12
    sub-long/2addr v0, v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 16
    move-result v2

    .line 17
    int-to-long v2, v2

    .line 18
    .line 19
    cmp-long v2, v0, v2

    .line 20
    .line 21
    if-gez v2, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 25
    move-result v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 29
    move-result v3

    .line 30
    long-to-int v4, v0

    .line 31
    add-int/2addr v3, v4

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 38
    move-result v3

    .line 39
    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    iget-object v3, p0, Lio/ktor/utils/io/jvm/nio/a$b;->$channel:Ljava/nio/channels/WritableByteChannel;

    .line 43
    .line 44
    .line 45
    invoke-interface {v3, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 50
    .line 51
    iget-object p1, p0, Lio/ktor/utils/io/jvm/nio/a$b;->$copied:Lkotlin/jvm/internal/o0;

    .line 52
    .line 53
    iget-wide v2, p1, Lkotlin/jvm/internal/o0;->element:J

    .line 54
    add-long/2addr v2, v0

    .line 55
    .line 56
    iput-wide v2, p1, Lkotlin/jvm/internal/o0;->element:J

    .line 57
    goto :goto_2

    .line 58
    .line 59
    :cond_1
    const-wide/16 v0, 0x0

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 63
    move-result v2

    .line 64
    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    iget-object v2, p0, Lio/ktor/utils/io/jvm/nio/a$b;->$channel:Ljava/nio/channels/WritableByteChannel;

    .line 68
    .line 69
    .line 70
    invoke-interface {v2, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 71
    move-result v2

    .line 72
    int-to-long v2, v2

    .line 73
    add-long/2addr v0, v2

    .line 74
    goto :goto_1

    .line 75
    .line 76
    :cond_2
    iget-object p1, p0, Lio/ktor/utils/io/jvm/nio/a$b;->$copied:Lkotlin/jvm/internal/o0;

    .line 77
    .line 78
    iget-wide v2, p1, Lkotlin/jvm/internal/o0;->element:J

    .line 79
    add-long/2addr v2, v0

    .line 80
    .line 81
    iput-wide v2, p1, Lkotlin/jvm/internal/o0;->element:J

    .line 82
    :goto_2
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/jvm/nio/a$b;->a(Ljava/nio/ByteBuffer;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
