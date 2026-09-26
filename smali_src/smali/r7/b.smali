.class public final Lr7/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBufferAppend.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferAppend.kt\nio/ktor/utils/io/core/BufferAppendKt\n+ 2 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 3 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n*L\n1#1,59:1\n69#2:60\n74#2:61\n69#2:76\n74#2:77\n59#2:78\n390#3,5:62\n372#3,7:67\n395#3,2:74\n*S KotlinDebug\n*F\n+ 1 BufferAppend.kt\nio/ktor/utils/io/core/BufferAppendKt\n*L\n10#1:60\n12#1:61\n32#1:76\n49#1:77\n49#1:78\n16#1:62,5\n17#1:67,7\n16#1:74,2\n*E\n"
.end annotation


# direct methods
.method public static final a(Lr7/a;Lr7/a;I)I
    .locals 4
    .param p0    # Lr7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lr7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "other"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lr7/a;->j()I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lr7/a;->h()I

    .line 18
    move-result v1

    .line 19
    sub-int/2addr v0, v1

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 23
    move-result p2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lr7/a;->f()I

    .line 27
    move-result v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lr7/a;->j()I

    .line 31
    move-result v1

    .line 32
    sub-int/2addr v0, v1

    .line 33
    .line 34
    if-gt v0, p2, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-static {p0, p2}, Lr7/b;->b(Lr7/a;I)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0}, Lr7/a;->g()Ljava/nio/ByteBuffer;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lr7/a;->j()I

    .line 45
    move-result v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lr7/a;->f()I

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lr7/a;->g()Ljava/nio/ByteBuffer;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lr7/a;->h()I

    .line 56
    move-result v3

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lr7/a;->j()I

    .line 60
    .line 61
    .line 62
    invoke-static {v2, v0, v3, p2, v1}, Lp7/c;->c(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Lr7/a;->c(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p2}, Lr7/a;->a(I)V

    .line 69
    return p2
.end method

.method private static final b(Lr7/a;I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lr7/a;->f()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lr7/a;->j()I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lr7/a;->e()I

    .line 13
    move-result v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lr7/a;->f()I

    .line 17
    move-result v2

    .line 18
    sub-int/2addr v1, v2

    .line 19
    add-int/2addr v0, v1

    .line 20
    .line 21
    if-lt v0, p1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lr7/a;->j()I

    .line 25
    move-result v0

    .line 26
    add-int/2addr v0, p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lr7/a;->f()I

    .line 30
    move-result p1

    .line 31
    sub-int/2addr v0, p1

    .line 32
    .line 33
    if-lez v0, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lr7/a;->l()V

    .line 37
    :cond_0
    return-void

    .line 38
    .line 39
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    const-string p1, "Can\'t append buffer: not enough free space at the end"

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p0
.end method

.method public static final c(Lr7/a;Lr7/a;)I
    .locals 5
    .param p0    # Lr7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lr7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "other"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lr7/a;->j()I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lr7/a;->h()I

    .line 18
    move-result v1

    .line 19
    sub-int/2addr v0, v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lr7/a;->h()I

    .line 23
    move-result v1

    .line 24
    .line 25
    if-lt v1, v0, :cond_0

    .line 26
    sub-int/2addr v1, v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lr7/a;->g()Ljava/nio/ByteBuffer;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lr7/a;->g()Ljava/nio/ByteBuffer;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lr7/a;->h()I

    .line 38
    move-result v4

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v3, v4, v0, v1}, Lp7/c;->c(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lr7/a;->c(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1}, Lr7/a;->n(I)V

    .line 48
    return v0

    .line 49
    .line 50
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    const-string p1, "Not enough space in the beginning to prepend bytes"

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    throw p0
.end method
