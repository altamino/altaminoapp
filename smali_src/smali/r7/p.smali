.class public abstract Lr7/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOutput.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Output.kt\nio/ktor/utils/io/core/Output\n+ 2 Buffers.kt\nio/ktor/utils/io/core/BuffersKt\n+ 3 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Numbers.kt\nio/ktor/utils/io/core/internal/NumbersKt\n+ 6 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n+ 7 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 8 UTF8.kt\nio/ktor/utils/io/core/internal/UTF8Kt\n+ 9 Input.kt\nio/ktor/utils/io/core/Input\n+ 10 PacketDirect.kt\nio/ktor/utils/io/core/PacketDirectKt\n*L\n1#1,576:1\n371#1,3:622\n374#1:653\n376#1,3:655\n55#1:708\n35#2,6:577\n41#2,3:584\n69#3:583\n69#3:588\n69#3:658\n69#3:659\n59#3:660\n74#3:661\n74#3:662\n59#3:663\n1#4:587\n1#4:654\n6#5,2:589\n99#6:591\n99#6:603\n99#6:634\n37#7,2:592\n37#7,2:597\n37#7,2:628\n319#8,3:594\n322#8,4:599\n326#8,18:604\n319#8,3:625\n322#8,4:630\n326#8,18:635\n77#9:664\n77#9:686\n8#10,21:665\n8#10,21:687\n*S KotlinDebug\n*F\n+ 1 Output.kt\nio/ktor/utils/io/core/Output\n*L\n176#1:622,3\n176#1:653\n176#1:655,3\n355#1:708\n65#1:577,6\n65#1:584,3\n66#1:583\n100#1:588\n237#1:658\n238#1:659\n242#1:660\n242#1:661\n260#1:662\n260#1:663\n176#1:654\n100#1:589,2\n137#1:591\n166#1:603\n177#1:634\n137#1:592,2\n166#1:597,2\n177#1:628,2\n166#1:594,3\n166#1:599,4\n166#1:604,18\n177#1:625,3\n177#1:630,4\n177#1:635,18\n308#1:664\n328#1:686\n313#1:665,21\n333#1:687,21\n*E\n"
.end annotation


# instance fields
.field private _head:Ls7/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _tail:Ls7/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private chainedSize:I

.field private final pool:Lt7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt7/g<",
            "Ls7/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tailEndExclusive:I

.field private tailInitialPosition:I

.field private tailMemory:Ljava/nio/ByteBuffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tailPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    sget-object v0, Ls7/a;->Companion:Ls7/a$d;

    invoke-virtual {v0}, Ls7/a$d;->c()Lt7/g;

    move-result-object v0

    invoke-direct {p0, v0}, Lr7/p;-><init>(Lt7/g;)V

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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr7/p;->pool:Lt7/g;

    .line 2
    sget-object p1, Lp7/c;->Companion:Lp7/c$a;

    invoke-virtual {p1}, Lp7/c$a;->a()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lr7/p;->tailMemory:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final G0(Ls7/a;Ls7/a;Lt7/g;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls7/a;",
            "Ls7/a;",
            "Lt7/g<",
            "Ls7/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lr7/p;->tailPosition:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lr7/a;->b(I)Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lr7/a;->j()I

    .line 9
    move-result v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lr7/a;->h()I

    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lr7/a;->j()I

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lr7/a;->h()I

    .line 22
    move-result v2

    .line 23
    sub-int/2addr v1, v2

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lr7/r;->a()I

    .line 27
    move-result v2

    .line 28
    const/4 v3, -0x1

    .line 29
    .line 30
    if-ge v1, v2, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lr7/a;->e()I

    .line 34
    move-result v4

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lr7/a;->f()I

    .line 38
    move-result v5

    .line 39
    sub-int/2addr v4, v5

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lr7/a;->f()I

    .line 43
    move-result v5

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lr7/a;->j()I

    .line 47
    move-result v6

    .line 48
    sub-int/2addr v5, v6

    .line 49
    add-int/2addr v4, v5

    .line 50
    .line 51
    if-gt v1, v4, :cond_0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move v1, v3

    .line 54
    .line 55
    :goto_0
    if-ge v0, v2, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Lr7/a;->i()I

    .line 59
    move-result v2

    .line 60
    .line 61
    if-gt v0, v2, :cond_1

    .line 62
    .line 63
    .line 64
    invoke-static {p2}, Ls7/b;->a(Ls7/a;)Z

    .line 65
    move-result v2

    .line 66
    .line 67
    if-eqz v2, :cond_1

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    move v0, v3

    .line 70
    .line 71
    :goto_1
    if-ne v1, v3, :cond_2

    .line 72
    .line 73
    if-ne v0, v3, :cond_2

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p2}, Lr7/p;->l(Ls7/a;)V

    .line 77
    goto :goto_4

    .line 78
    .line 79
    :cond_2
    if-eq v0, v3, :cond_6

    .line 80
    .line 81
    if-gt v1, v0, :cond_3

    .line 82
    goto :goto_3

    .line 83
    .line 84
    :cond_3
    if-eq v1, v3, :cond_5

    .line 85
    .line 86
    if-ge v0, v1, :cond_4

    .line 87
    goto :goto_2

    .line 88
    .line 89
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 90
    .line 91
    new-instance p2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    const-string p3, "prep = "

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string p3, ", app = "

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object p2

    .line 115
    .line 116
    .line 117
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 118
    throw p1

    .line 119
    .line 120
    .line 121
    :cond_5
    :goto_2
    invoke-direct {p0, p2, p1}, Lr7/p;->H0(Ls7/a;Ls7/a;)V

    .line 122
    goto :goto_4

    .line 123
    .line 124
    .line 125
    :cond_6
    :goto_3
    invoke-virtual {p1}, Lr7/a;->f()I

    .line 126
    move-result v0

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Lr7/a;->j()I

    .line 130
    move-result v1

    .line 131
    sub-int/2addr v0, v1

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Lr7/a;->e()I

    .line 135
    move-result v1

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Lr7/a;->f()I

    .line 139
    move-result v2

    .line 140
    sub-int/2addr v1, v2

    .line 141
    add-int/2addr v0, v1

    .line 142
    .line 143
    .line 144
    invoke-static {p1, p2, v0}, Lr7/b;->a(Lr7/a;Lr7/a;I)I

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lr7/p;->h()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Ls7/a;->w()Ls7/a;

    .line 151
    move-result-object p1

    .line 152
    .line 153
    if-eqz p1, :cond_7

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, p1}, Lr7/p;->l(Ls7/a;)V

    .line 157
    .line 158
    .line 159
    :cond_7
    invoke-virtual {p2, p3}, Ls7/a;->A(Lt7/g;)V

    .line 160
    :goto_4
    return-void
.end method

.method private final H0(Ls7/a;Ls7/a;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Lr7/b;->c(Lr7/a;Lr7/a;)I

    .line 4
    .line 5
    iget-object v0, p0, Lr7/p;->_head:Ls7/a;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    if-ne v0, p2, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lr7/p;->_head:Ls7/a;

    .line 12
    goto :goto_1

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ls7/a;->x()Ls7/a;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 20
    .line 21
    if-eq v1, p2, :cond_1

    .line 22
    move-object v0, v1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {v0, p1}, Ls7/a;->C(Ls7/a;)V

    .line 27
    .line 28
    :goto_1
    iget-object v0, p0, Lr7/p;->pool:Lt7/g;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v0}, Ls7/a;->A(Lt7/g;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lr7/h;->a(Ls7/a;)Ls7/a;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iput-object p1, p0, Lr7/p;->_tail:Ls7/a;

    .line 38
    return-void

    .line 39
    .line 40
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string p2, "head should\'t be null since it is already handled in the fast-path"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p1
.end method

.method private final L()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lr7/p;->t0()Ls7/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    move-object v1, v0

    .line 9
    .line 10
    .line 11
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lr7/a;->g()Ljava/nio/ByteBuffer;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lr7/a;->h()I

    .line 16
    move-result v3

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lr7/a;->j()I

    .line 20
    move-result v4

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lr7/a;->h()I

    .line 24
    move-result v5

    .line 25
    sub-int/2addr v4, v5

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v2, v3, v4}, Lr7/p;->r(Ljava/nio/ByteBuffer;II)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ls7/a;->x()Ls7/a;

    .line 32
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lr7/p;->pool:Lt7/g;

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Lr7/h;->b(Ls7/a;Lt7/g;)V

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    .line 43
    iget-object v2, p0, Lr7/p;->pool:Lt7/g;

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v2}, Lr7/h;->b(Ls7/a;Lt7/g;)V

    .line 47
    throw v1
.end method

.method private final m(Ls7/a;Ls7/a;I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lr7/p;->_tail:Ls7/a;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lr7/p;->_head:Ls7/a;

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    iput p1, p0, Lr7/p;->chainedSize:I

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0, p1}, Ls7/a;->C(Ls7/a;)V

    .line 14
    .line 15
    iget p1, p0, Lr7/p;->tailPosition:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lr7/a;->b(I)Z

    .line 19
    .line 20
    iget v0, p0, Lr7/p;->chainedSize:I

    .line 21
    .line 22
    iget v1, p0, Lr7/p;->tailInitialPosition:I

    .line 23
    sub-int/2addr p1, v1

    .line 24
    add-int/2addr v0, p1

    .line 25
    .line 26
    iput v0, p0, Lr7/p;->chainedSize:I

    .line 27
    .line 28
    :goto_0
    iput-object p2, p0, Lr7/p;->_tail:Ls7/a;

    .line 29
    .line 30
    iget p1, p0, Lr7/p;->chainedSize:I

    .line 31
    add-int/2addr p1, p3

    .line 32
    .line 33
    iput p1, p0, Lr7/p;->chainedSize:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lr7/a;->g()Ljava/nio/ByteBuffer;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iput-object p1, p0, Lr7/p;->tailMemory:Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Lr7/a;->j()I

    .line 43
    move-result p1

    .line 44
    .line 45
    iput p1, p0, Lr7/p;->tailPosition:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Lr7/a;->h()I

    .line 49
    move-result p1

    .line 50
    .line 51
    iput p1, p0, Lr7/p;->tailInitialPosition:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Lr7/a;->f()I

    .line 55
    move-result p1

    .line 56
    .line 57
    iput p1, p0, Lr7/p;->tailEndExclusive:I

    .line 58
    return-void
.end method

.method private final n(C)V
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lr7/p;->k0(I)Ls7/a;

    .line 5
    move-result-object v1

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v1}, Lr7/a;->g()Ljava/nio/ByteBuffer;

    .line 9
    move-result-object v2

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lr7/a;->j()I

    .line 13
    move-result v3

    .line 14
    const/4 v4, 0x1

    .line 15
    .line 16
    const/16 v5, 0x80

    .line 17
    .line 18
    if-ltz p1, :cond_0

    .line 19
    .line 20
    if-ge p1, v5, :cond_0

    .line 21
    int-to-byte p1, p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 25
    move v0, v4

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :cond_0
    const/16 v6, 0x800

    .line 33
    const/4 v7, 0x2

    .line 34
    .line 35
    if-gt v5, p1, :cond_1

    .line 36
    .line 37
    if-ge p1, v6, :cond_1

    .line 38
    .line 39
    shr-int/lit8 v0, p1, 0x6

    .line 40
    .line 41
    and-int/lit8 v0, v0, 0x1f

    .line 42
    .line 43
    or-int/lit16 v0, v0, 0xc0

    .line 44
    int-to-byte v0, v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 48
    add-int/2addr v3, v4

    .line 49
    .line 50
    and-int/lit8 p1, p1, 0x3f

    .line 51
    or-int/2addr p1, v5

    .line 52
    int-to-byte p1, p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 56
    move v0, v7

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_1
    const/high16 v4, 0x10000

    .line 60
    .line 61
    if-gt v6, p1, :cond_2

    .line 62
    .line 63
    if-ge p1, v4, :cond_2

    .line 64
    .line 65
    shr-int/lit8 v4, p1, 0xc

    .line 66
    .line 67
    and-int/lit8 v4, v4, 0xf

    .line 68
    .line 69
    or-int/lit16 v4, v4, 0xe0

    .line 70
    int-to-byte v4, v4

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 74
    .line 75
    add-int/lit8 v4, v3, 0x1

    .line 76
    .line 77
    shr-int/lit8 v6, p1, 0x6

    .line 78
    .line 79
    and-int/lit8 v6, v6, 0x3f

    .line 80
    or-int/2addr v6, v5

    .line 81
    int-to-byte v6, v6

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 85
    add-int/2addr v3, v7

    .line 86
    .line 87
    and-int/lit8 p1, p1, 0x3f

    .line 88
    or-int/2addr p1, v5

    .line 89
    int-to-byte p1, p1

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v3, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 93
    goto :goto_0

    .line 94
    .line 95
    :cond_2
    if-gt v4, p1, :cond_4

    .line 96
    .line 97
    const/high16 v4, 0x110000

    .line 98
    .line 99
    if-ge p1, v4, :cond_4

    .line 100
    .line 101
    shr-int/lit8 v4, p1, 0x12

    .line 102
    .line 103
    and-int/lit8 v4, v4, 0x7

    .line 104
    .line 105
    or-int/lit16 v4, v4, 0xf0

    .line 106
    int-to-byte v4, v4

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 110
    .line 111
    add-int/lit8 v4, v3, 0x1

    .line 112
    .line 113
    shr-int/lit8 v6, p1, 0xc

    .line 114
    .line 115
    and-int/lit8 v6, v6, 0x3f

    .line 116
    or-int/2addr v6, v5

    .line 117
    int-to-byte v6, v6

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 121
    .line 122
    add-int/lit8 v4, v3, 0x2

    .line 123
    .line 124
    shr-int/lit8 v6, p1, 0x6

    .line 125
    .line 126
    and-int/lit8 v6, v6, 0x3f

    .line 127
    or-int/2addr v6, v5

    .line 128
    int-to-byte v6, v6

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 132
    add-int/2addr v3, v0

    .line 133
    .line 134
    and-int/lit8 p1, p1, 0x3f

    .line 135
    or-int/2addr p1, v5

    .line 136
    int-to-byte p1, p1

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v3, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 140
    const/4 v0, 0x4

    .line 141
    .line 142
    .line 143
    :goto_0
    invoke-virtual {v1, v0}, Lr7/a;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .line 145
    if-ltz v0, :cond_3

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lr7/p;->h()V

    .line 149
    return-void

    .line 150
    .line 151
    :cond_3
    :try_start_1
    const-string p1, "The returned value shouldn\'t be negative"

    .line 152
    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 157
    move-result-object p1

    .line 158
    .line 159
    .line 160
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 161
    throw v0

    .line 162
    .line 163
    .line 164
    :cond_4
    invoke-static {p1}, Ls7/f;->j(I)Ljava/lang/Void;

    .line 165
    .line 166
    new-instance p1, Lw7/i;

    .line 167
    .line 168
    .line 169
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 170
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    .line 172
    .line 173
    :goto_1
    invoke-virtual {p0}, Lr7/p;->h()V

    .line 174
    throw p1
.end method

.method private final o()Ls7/a;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lr7/p;->pool:Lt7/g;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lt7/g;->s0()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ls7/a;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lr7/a;->o(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lr7/p;->p(Ls7/a;)V

    .line 17
    return-object v0
.end method


# virtual methods
.method public final E0(Lr7/j;)V
    .locals 2
    .param p1    # Lr7/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "packet"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lr7/m;->X0()Ls7/a;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lr7/m;->release()V

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lr7/p;->_tail:Ls7/a;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lr7/p;->l(Ls7/a;)V

    .line 23
    return-void

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p1}, Lr7/m;->F0()Lt7/g;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v1, v0, p1}, Lr7/p;->G0(Ls7/a;Ls7/a;Lt7/g;)V

    .line 31
    return-void
.end method

.method public final F0(Lr7/j;J)V
    .locals 4
    .param p1    # Lr7/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "Buffer\'s position shouldn\'t be rewinded"

    .line 3
    .line 4
    const-string v1, "p"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    :goto_0
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    cmp-long v1, p2, v1

    .line 12
    .line 13
    if-lez v1, :cond_7

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lr7/m;->t0()I

    .line 17
    move-result v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lr7/m;->E0()I

    .line 21
    move-result v2

    .line 22
    sub-int/2addr v1, v2

    .line 23
    int-to-long v1, v1

    .line 24
    .line 25
    cmp-long v3, v1, p2

    .line 26
    .line 27
    if-gtz v3, :cond_1

    .line 28
    sub-long/2addr p2, v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lr7/m;->W0()Ls7/a;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Lr7/p;->p(Ls7/a;)V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 41
    .line 42
    const-string p2, "Unexpected end of packet"

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p1

    .line 47
    :cond_1
    const/4 v1, 0x1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1}, Lr7/m;->L0(I)Ls7/a;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    if-eqz v2, :cond_6

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Lr7/a;->h()I

    .line 57
    move-result v1

    .line 58
    long-to-int p2, p2

    .line 59
    .line 60
    .line 61
    :try_start_0
    invoke-static {p0, v2, p2}, Lr7/q;->a(Lr7/p;Lr7/a;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Lr7/a;->h()I

    .line 65
    move-result p2

    .line 66
    .line 67
    if-lt p2, v1, :cond_3

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Lr7/a;->j()I

    .line 71
    move-result p3

    .line 72
    .line 73
    if-ne p2, p3, :cond_2

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v2}, Lr7/m;->p(Ls7/a;)Ls7/a;

    .line 77
    goto :goto_2

    .line 78
    .line 79
    .line 80
    :cond_2
    invoke-virtual {p1, p2}, Lr7/m;->T0(I)V

    .line 81
    goto :goto_2

    .line 82
    .line 83
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    .line 86
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    throw p1

    .line 88
    :catchall_0
    move-exception p2

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Lr7/a;->h()I

    .line 92
    move-result p3

    .line 93
    .line 94
    if-lt p3, v1, :cond_5

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Lr7/a;->j()I

    .line 98
    move-result v0

    .line 99
    .line 100
    if-ne p3, v0, :cond_4

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v2}, Lr7/m;->p(Ls7/a;)Ls7/a;

    .line 104
    goto :goto_1

    .line 105
    .line 106
    .line 107
    :cond_4
    invoke-virtual {p1, p3}, Lr7/m;->T0(I)V

    .line 108
    :goto_1
    throw p2

    .line 109
    .line 110
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 111
    .line 112
    .line 113
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 114
    throw p1

    .line 115
    .line 116
    .line 117
    :cond_6
    invoke-static {v1}, Lr7/s;->a(I)Ljava/lang/Void;

    .line 118
    .line 119
    new-instance p1, Lw7/i;

    .line 120
    .line 121
    .line 122
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 123
    throw p1

    .line 124
    :cond_7
    :goto_2
    return-void
.end method

.method public final O()Ls7/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lr7/p;->_head:Ls7/a;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Ls7/a;->Companion:Ls7/a$d;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ls7/a$d;->a()Ls7/a;

    .line 10
    move-result-object v0

    .line 11
    :cond_0
    return-object v0
.end method

.method protected final Q()Lt7/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt7/g<",
            "Ls7/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lr7/p;->pool:Lt7/g;

    return-object v0
.end method

.method public final U()I
    .locals 1

    .line 1
    iget v0, p0, Lr7/p;->tailEndExclusive:I

    return v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lr7/p;->i(C)Lr7/p;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lr7/p;->j(Ljava/lang/CharSequence;)Lr7/p;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lr7/p;->k(Ljava/lang/CharSequence;II)Lr7/p;

    move-result-object p1

    return-object p1
.end method

.method public final b0()I
    .locals 1

    .line 1
    iget v0, p0, Lr7/p;->tailPosition:I

    return v0
.end method

.method public final close()V
    .locals 1

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lr7/p;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lr7/p;->q()V

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lr7/p;->q()V

    .line 12
    throw v0
.end method

.method public final d()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lr7/p;->O()Ls7/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Ls7/a;->Companion:Ls7/a$d;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ls7/a$d;->a()Ls7/a;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ls7/a;->x()Ls7/a;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lr7/a;->r()V

    .line 22
    .line 23
    const/16 v1, 0x8

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lr7/a;->o(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lr7/a;->j()I

    .line 30
    move-result v1

    .line 31
    .line 32
    iput v1, p0, Lr7/p;->tailPosition:I

    .line 33
    .line 34
    iput v1, p0, Lr7/p;->tailInitialPosition:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lr7/a;->f()I

    .line 38
    move-result v0

    .line 39
    .line 40
    iput v0, p0, Lr7/p;->tailEndExclusive:I

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string v1, "Check failed."

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    throw v0

    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lr7/p;->L()V

    .line 4
    return-void
.end method

.method protected final g0()I
    .locals 3

    .line 1
    iget v0, p0, Lr7/p;->chainedSize:I

    iget v1, p0, Lr7/p;->tailPosition:I

    iget v2, p0, Lr7/p;->tailInitialPosition:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public final h()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lr7/p;->_tail:Ls7/a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lr7/a;->j()I

    .line 8
    move-result v0

    .line 9
    .line 10
    iput v0, p0, Lr7/p;->tailPosition:I

    .line 11
    :cond_0
    return-void
.end method

.method public i(C)Lr7/p;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lr7/p;->tailPosition:I

    .line 3
    .line 4
    iget v1, p0, Lr7/p;->tailEndExclusive:I

    .line 5
    sub-int/2addr v1, v0

    .line 6
    const/4 v2, 0x3

    .line 7
    .line 8
    if-lt v1, v2, :cond_4

    .line 9
    .line 10
    iget-object v1, p0, Lr7/p;->tailMemory:Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    const/16 v3, 0x80

    .line 13
    .line 14
    if-ltz p1, :cond_0

    .line 15
    .line 16
    if-ge p1, v3, :cond_0

    .line 17
    int-to-byte p1, p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 21
    const/4 v2, 0x1

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    const/16 v4, 0x800

    .line 25
    .line 26
    if-gt v3, p1, :cond_1

    .line 27
    .line 28
    if-ge p1, v4, :cond_1

    .line 29
    .line 30
    shr-int/lit8 v2, p1, 0x6

    .line 31
    .line 32
    and-int/lit8 v2, v2, 0x1f

    .line 33
    .line 34
    or-int/lit16 v2, v2, 0xc0

    .line 35
    int-to-byte v2, v2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    add-int/lit8 v2, v0, 0x1

    .line 41
    .line 42
    and-int/lit8 p1, p1, 0x3f

    .line 43
    or-int/2addr p1, v3

    .line 44
    int-to-byte p1, p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 48
    const/4 v2, 0x2

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_1
    const/high16 v5, 0x10000

    .line 52
    .line 53
    if-gt v4, p1, :cond_2

    .line 54
    .line 55
    if-ge p1, v5, :cond_2

    .line 56
    .line 57
    shr-int/lit8 v4, p1, 0xc

    .line 58
    .line 59
    and-int/lit8 v4, v4, 0xf

    .line 60
    .line 61
    or-int/lit16 v4, v4, 0xe0

    .line 62
    int-to-byte v4, v4

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v0, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 66
    .line 67
    add-int/lit8 v4, v0, 0x1

    .line 68
    .line 69
    shr-int/lit8 v5, p1, 0x6

    .line 70
    .line 71
    and-int/lit8 v5, v5, 0x3f

    .line 72
    or-int/2addr v5, v3

    .line 73
    int-to-byte v5, v5

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v4, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 77
    .line 78
    add-int/lit8 v4, v0, 0x2

    .line 79
    .line 80
    and-int/lit8 p1, p1, 0x3f

    .line 81
    or-int/2addr p1, v3

    .line 82
    int-to-byte p1, p1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v4, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 86
    goto :goto_0

    .line 87
    .line 88
    :cond_2
    if-gt v5, p1, :cond_3

    .line 89
    .line 90
    const/high16 v2, 0x110000

    .line 91
    .line 92
    if-ge p1, v2, :cond_3

    .line 93
    .line 94
    shr-int/lit8 v2, p1, 0x12

    .line 95
    .line 96
    and-int/lit8 v2, v2, 0x7

    .line 97
    .line 98
    or-int/lit16 v2, v2, 0xf0

    .line 99
    int-to-byte v2, v2

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v0, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 103
    .line 104
    add-int/lit8 v2, v0, 0x1

    .line 105
    .line 106
    shr-int/lit8 v4, p1, 0xc

    .line 107
    .line 108
    and-int/lit8 v4, v4, 0x3f

    .line 109
    or-int/2addr v4, v3

    .line 110
    int-to-byte v4, v4

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 114
    .line 115
    add-int/lit8 v2, v0, 0x2

    .line 116
    .line 117
    shr-int/lit8 v4, p1, 0x6

    .line 118
    .line 119
    and-int/lit8 v4, v4, 0x3f

    .line 120
    or-int/2addr v4, v3

    .line 121
    int-to-byte v4, v4

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v2, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 125
    .line 126
    add-int/lit8 v2, v0, 0x3

    .line 127
    .line 128
    and-int/lit8 p1, p1, 0x3f

    .line 129
    or-int/2addr p1, v3

    .line 130
    int-to-byte p1, p1

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v2, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 134
    const/4 v2, 0x4

    .line 135
    :goto_0
    add-int/2addr v0, v2

    .line 136
    .line 137
    iput v0, p0, Lr7/p;->tailPosition:I

    .line 138
    return-object p0

    .line 139
    .line 140
    .line 141
    :cond_3
    invoke-static {p1}, Ls7/f;->j(I)Ljava/lang/Void;

    .line 142
    .line 143
    new-instance p1, Lw7/i;

    .line 144
    .line 145
    .line 146
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 147
    throw p1

    .line 148
    .line 149
    .line 150
    :cond_4
    invoke-direct {p0, p1}, Lr7/p;->n(C)V

    .line 151
    return-object p0
.end method

.method public j(Ljava/lang/CharSequence;)Lr7/p;
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p1, "null"

    .line 6
    const/4 v1, 0x4

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, v0, v1}, Lr7/p;->k(Ljava/lang/CharSequence;II)Lr7/p;

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, v0, v1}, Lr7/p;->k(Ljava/lang/CharSequence;II)Lr7/p;

    .line 18
    :goto_0
    return-object p0
.end method

.method public k(Ljava/lang/CharSequence;II)Lr7/p;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    const-string p1, "null"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lr7/p;->k(Ljava/lang/CharSequence;II)Lr7/p;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lkotlin/text/d;->UTF_8:Ljava/nio/charset/Charset;

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p1, p2, p3, v0}, Lr7/s;->h(Lr7/p;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;)V

    .line 15
    return-object p0
.end method

.method public final k0(I)Ls7/a;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lr7/p;->U()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lr7/p;->b0()I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    .line 11
    if-lt v0, p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lr7/p;->_tail:Ls7/a;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget v0, p0, Lr7/p;->tailPosition:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lr7/a;->b(I)Z

    .line 21
    return-object p1

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-direct {p0}, Lr7/p;->o()Ls7/a;

    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public final l(Ls7/a;)V
    .locals 5
    .param p1    # Ls7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "head"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lr7/h;->a(Ls7/a;)Ls7/a;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lr7/h;->c(Ls7/a;)J

    .line 13
    move-result-wide v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lr7/a;->j()I

    .line 17
    move-result v3

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lr7/a;->h()I

    .line 21
    move-result v4

    .line 22
    sub-int/2addr v3, v4

    .line 23
    int-to-long v3, v3

    .line 24
    sub-long/2addr v1, v3

    .line 25
    .line 26
    .line 27
    const-wide/32 v3, 0x7fffffff

    .line 28
    .line 29
    cmp-long v3, v1, v3

    .line 30
    .line 31
    if-gez v3, :cond_0

    .line 32
    long-to-int v1, v1

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p1, v0, v1}, Lr7/p;->m(Ls7/a;Ls7/a;I)V

    .line 36
    return-void

    .line 37
    .line 38
    :cond_0
    const-string/jumbo p1, "total size increase"

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v2, p1}, Ls7/e;->a(JLjava/lang/String;)Ljava/lang/Void;

    .line 42
    .line 43
    new-instance p1, Lw7/i;

    .line 44
    .line 45
    .line 46
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 47
    throw p1
.end method

.method public final p(Ls7/a;)V
    .locals 1
    .param p1    # Ls7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "buffer"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ls7/a;->x()Ls7/a;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, p1, v0}, Lr7/p;->m(Ls7/a;Ls7/a;I)V

    .line 16
    return-void

    .line 17
    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "It should be a single buffer chunk."

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p1
.end method

.method protected abstract q()V
.end method

.method protected abstract r(Ljava/nio/ByteBuffer;II)V
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final release()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lr7/p;->close()V

    .line 4
    return-void
.end method

.method public final t0()Ls7/a;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lr7/p;->_head:Ls7/a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    .line 8
    :cond_0
    iget-object v2, p0, Lr7/p;->_tail:Ls7/a;

    .line 9
    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    iget v3, p0, Lr7/p;->tailPosition:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v3}, Lr7/a;->b(I)Z

    .line 16
    .line 17
    :cond_1
    iput-object v1, p0, Lr7/p;->_head:Ls7/a;

    .line 18
    .line 19
    iput-object v1, p0, Lr7/p;->_tail:Ls7/a;

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    iput v1, p0, Lr7/p;->tailPosition:I

    .line 23
    .line 24
    iput v1, p0, Lr7/p;->tailEndExclusive:I

    .line 25
    .line 26
    iput v1, p0, Lr7/p;->tailInitialPosition:I

    .line 27
    .line 28
    iput v1, p0, Lr7/p;->chainedSize:I

    .line 29
    .line 30
    sget-object v1, Lp7/c;->Companion:Lp7/c$a;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lp7/c$a;->a()Ljava/nio/ByteBuffer;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    iput-object v1, p0, Lr7/p;->tailMemory:Ljava/nio/ByteBuffer;

    .line 37
    return-object v0
.end method

.method public final y0(Ls7/a;)V
    .locals 2
    .param p1    # Ls7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "chunkBuffer"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lr7/p;->_tail:Ls7/a;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lr7/p;->l(Ls7/a;)V

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lr7/p;->pool:Lt7/g;

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0, p1, v1}, Lr7/p;->G0(Ls7/a;Ls7/a;Lt7/g;)V

    .line 19
    return-void
.end method
