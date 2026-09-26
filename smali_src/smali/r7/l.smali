.class public final Lr7/l;
.super Lt7/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt7/d<",
        "Ls7/a;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBufferFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferFactory.kt\nio/ktor/utils/io/core/DefaultBufferPool\n+ 2 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,93:1\n15#2:94\n15#2:95\n1#3:96\n*S KotlinDebug\n*F\n+ 1 BufferFactory.kt\nio/ktor/utils/io/core/DefaultBufferPool\n*L\n75#1:94\n76#1:95\n*E\n"
.end annotation


# instance fields
.field private final allocator:Lp7/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lr7/l;-><init>(IILp7/a;ILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(IILp7/a;)V
    .locals 1
    .param p3    # Lp7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "allocator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p2}, Lt7/d;-><init>(I)V

    iput p1, p0, Lr7/l;->bufferSize:I

    iput-object p3, p0, Lr7/l;->allocator:Lp7/a;

    return-void
.end method

.method public synthetic constructor <init>(IILp7/a;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/16 p1, 0x1000

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/16 p2, 0x3e8

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 2
    sget-object p3, Lp7/b;->INSTANCE:Lp7/b;

    .line 3
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lr7/l;-><init>(IILp7/a;)V

    return-void
.end method


# virtual methods
.method protected L(Ls7/a;)V
    .locals 4
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
    .line 8
    invoke-super {p0, p1}, Lt7/d;->o(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lr7/a;->g()Ljava/nio/ByteBuffer;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 16
    move-result v0

    .line 17
    int-to-long v0, v0

    .line 18
    .line 19
    iget v2, p0, Lr7/l;->bufferSize:I

    .line 20
    int-to-long v2, v2

    .line 21
    .line 22
    cmp-long v0, v0, v2

    .line 23
    .line 24
    if-nez v0, :cond_5

    .line 25
    .line 26
    sget-object v0, Ls7/a;->Companion:Ls7/a$d;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ls7/a$d;->a()Ls7/a;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-eq p1, v0, :cond_4

    .line 33
    .line 34
    sget-object v0, Lr7/a;->Companion:Lr7/a$a;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lr7/a$a;->a()Lr7/a;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    if-eq p1, v0, :cond_3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ls7/a;->z()I

    .line 44
    move-result v0

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ls7/a;->x()Ls7/a;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ls7/a;->y()Ls7/a;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    if-nez p1, :cond_0

    .line 59
    return-void

    .line 60
    .line 61
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string v0, "Recycled instance shouldn\'t be a view or another buffer."

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p1

    .line 72
    .line 73
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 74
    .line 75
    const-string v0, "Recycled instance shouldn\'t be a part of a chain."

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    .line 82
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 83
    throw p1

    .line 84
    .line 85
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 86
    .line 87
    const-string v0, "Unable to clear buffer: it is still in use."

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    .line 94
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    throw p1

    .line 96
    .line 97
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    const-string v0, "Empty instance couldn\'t be recycled"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    .line 106
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 107
    throw p1

    .line 108
    .line 109
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 110
    .line 111
    const-string v0, "ChunkBuffer.Empty couldn\'t be recycled"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    .line 118
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 119
    throw p1

    .line 120
    .line 121
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    const-string v1, "Buffer size mismatch. Expected: "

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    iget v1, p0, Lr7/l;->bufferSize:I

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v1, ", actual: "

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Lr7/a;->g()Ljava/nio/ByteBuffer;

    .line 143
    move-result-object p1

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 147
    move-result p1

    .line 148
    int-to-long v1, p1

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object p1

    .line 156
    .line 157
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 161
    move-result-object p1

    .line 162
    .line 163
    .line 164
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 165
    throw v0
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ls7/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lr7/l;->p(Ls7/a;)Ls7/a;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public bridge synthetic e(Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ls7/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lr7/l;->q(Ls7/a;)V

    .line 6
    return-void
.end method

.method public bridge synthetic k()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lr7/l;->r()Ls7/a;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic o(Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ls7/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lr7/l;->L(Ls7/a;)V

    .line 6
    return-void
.end method

.method protected p(Ls7/a;)Ls7/a;
    .locals 1
    .param p1    # Ls7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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
    invoke-super {p0, p1}, Lt7/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Ls7/a;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ls7/a;->E()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ls7/a;->q()V

    .line 18
    return-object p1
.end method

.method protected q(Ls7/a;)V
    .locals 2
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
    iget-object v0, p0, Lr7/l;->allocator:Lp7/a;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lr7/a;->g()Ljava/nio/ByteBuffer;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Lp7/a;->a(Ljava/nio/ByteBuffer;)V

    .line 15
    .line 16
    .line 17
    invoke-super {p0, p1}, Lt7/d;->e(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ls7/a;->D()V

    .line 21
    return-void
.end method

.method protected r()Ls7/a;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ls7/a;

    .line 3
    .line 4
    iget-object v1, p0, Lr7/l;->allocator:Lp7/a;

    .line 5
    .line 6
    iget v2, p0, Lr7/l;->bufferSize:I

    .line 7
    .line 8
    .line 9
    invoke-interface {v1, v2}, Lp7/a;->b(I)Ljava/nio/ByteBuffer;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, v2, p0, v2}, Ls7/a;-><init>(Ljava/nio/ByteBuffer;Ls7/a;Lt7/g;Lkotlin/jvm/internal/k;)V

    .line 15
    return-object v0
.end method
