.class public final Lr7/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBufferUtilsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferUtilsJvm.kt\nio/ktor/utils/io/core/BufferUtilsJvmKt\n+ 2 MemoryFactoryJvm.kt\nio/ktor/utils/io/bits/MemoryFactoryJvmKt\n+ 3 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 BufferPrimitives.kt\nio/ktor/utils/io/core/BufferPrimitivesKt\n+ 6 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n*L\n1#1,123:1\n36#2:124\n74#3:125\n69#3:149\n1#4:126\n762#5,7:127\n769#5,6:139\n777#5:147\n372#6,5:134\n377#6,2:145\n355#6:148\n372#6,7:150\n390#6,7:157\n*S KotlinDebug\n*F\n+ 1 BufferUtilsJvm.kt\nio/ktor/utils/io/core/BufferUtilsJvmKt\n*L\n12#1:124\n44#1:125\n87#1:149\n73#1:127,7\n73#1:139,6\n73#1:147\n73#1:134,5\n73#1:145,2\n86#1:148\n99#1:150,7\n115#1:157,7\n*E\n"
.end annotation


# direct methods
.method public static final a(Lr7/a;Ljava/nio/ByteBuffer;I)V
    .locals 4
    .param p0    # Lr7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/nio/ByteBuffer;
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
    const-string v0, "dst"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lr7/a;->g()Ljava/nio/ByteBuffer;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lr7/a;->h()I

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lr7/a;->j()I

    .line 22
    move-result v2

    .line 23
    sub-int/2addr v2, v1

    .line 24
    .line 25
    if-lt v2, p2, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 29
    move-result v2

    .line 30
    .line 31
    .line 32
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 33
    move-result v3

    .line 34
    add-int/2addr v3, p2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 38
    .line 39
    .line 40
    invoke-static {v0, p1, v1}, Lp7/d;->a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 44
    .line 45
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p2}, Lr7/a;->c(I)V

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 54
    throw p0

    .line 55
    .line 56
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 57
    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    const-string v0, "Not enough bytes to read a "

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v0, "buffer content"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v0, " of size "

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const/16 p2, 0x2e

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 92
    throw p0
.end method
