.class public final Lp7/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMemoryJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemoryJvm.kt\nio/ktor/utils/io/bits/MemoryJvmKt\n+ 2 Numbers.kt\nio/ktor/utils/io/core/internal/NumbersKt\n+ 3 PrimiteArrays.kt\nio/ktor/utils/io/bits/PrimiteArraysKt\n+ 4 MemoryFactoryJvm.kt\nio/ktor/utils/io/bits/MemoryFactoryJvmKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,230:1\n208#1:244\n208#1:245\n200#1:246\n208#1:248\n204#1,5:249\n6#2,2:231\n6#2,2:233\n6#2,2:254\n282#3:235\n283#3,3:240\n17#4,4:236\n1#5:243\n1#5:247\n*S KotlinDebug\n*F\n+ 1 MemoryJvm.kt\nio/ktor/utils/io/bits/MemoryJvmKt\n*L\n200#1:244\n204#1:245\n212#1:246\n212#1:248\n212#1:249,5\n141#1:231,2\n183#1:233,2\n219#1:254,2\n191#1:235\n191#1:240,3\n191#1:236,4\n212#1:247\n*E\n"
.end annotation


# direct methods
.method public static final a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V
    .locals 4
    .param p0    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$copyTo"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "destination"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/nio/Buffer;->isReadOnly()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/nio/Buffer;->isReadOnly()Z

    .line 36
    move-result v1

    .line 37
    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 42
    move-result v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 46
    move-result-object v2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 50
    move-result p0

    .line 51
    add-int/2addr p0, p2

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 55
    move-result-object p2

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 59
    move-result v3

    .line 60
    add-int/2addr v3, v1

    .line 61
    .line 62
    .line 63
    invoke-static {v2, p0, p2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    add-int/2addr v1, v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 68
    return-void

    .line 69
    .line 70
    .line 71
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 72
    move-result-object p0

    .line 73
    add-int/2addr v0, p2

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 83
    return-void
.end method

.method public static final b(Ljava/nio/ByteBuffer;[BIII)V
    .locals 1
    .param p0    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$copyTo"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "destination"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/nio/Buffer;->isReadOnly()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 30
    move-result p0

    .line 31
    add-int/2addr p0, p2

    .line 32
    .line 33
    .line 34
    invoke-static {v0, p0, p1, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    return-void

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 39
    move-result-object p0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1, p4, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 43
    return-void
.end method

.method public static final c(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V
    .locals 3
    .param p0    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$copyTo"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "destination"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/nio/Buffer;->isReadOnly()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 26
    move-result-object v0

    .line 27
    .line 28
    const-string v1, "array()"

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 35
    move-result v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 39
    move-result v2

    .line 40
    add-int/2addr v1, v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 44
    move-result v2

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    const-string v1, "wrap(this, offset, lengt\u2026der(ByteOrder.BIG_ENDIAN)"

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lp7/c;->b(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 67
    move-result-object v0

    .line 68
    const/4 v1, 0x0

    .line 69
    .line 70
    .line 71
    invoke-static {v0, p1, v1, v2, p2}, Lp7/c;->c(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 75
    move-result p1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 79
    return-void

    .line 80
    .line 81
    .line 82
    :cond_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 83
    move-result v0

    .line 84
    .line 85
    .line 86
    invoke-static {p1, p2, v0}, Lp7/d;->d(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 91
    return-void
.end method

.method public static final d(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    const-string v0, "myDuplicate$lambda$1"

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 18
    add-int/2addr p1, p2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    const-string p1, "mySlice$lambda$2"

    .line 28
    .line 29
    .line 30
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    return-object p0
.end method
