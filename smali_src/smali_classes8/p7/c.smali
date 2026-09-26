.class public final Lp7/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp7/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMemoryJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 2 Numbers.kt\nio/ktor/utils/io/core/internal/NumbersKt\n*L\n1#1,230:1\n6#2,2:231\n6#2,2:233\n6#2,2:235\n6#2,2:237\n6#2,2:239\n6#2,2:241\n*S KotlinDebug\n*F\n+ 1 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n*L\n31#1:231,2\n44#1:233,2\n51#1:235,2\n95#1:237,2\n96#1:239,2\n97#1:241,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lp7/c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Empty:Ljava/nio/ByteBuffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lp7/c$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lp7/c$a;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lp7/c;->Companion:Lp7/c$a;

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    const-string v1, "allocate(0).order(ByteOrder.BIG_ENDIAN)"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lp7/c;->b(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    sput-object v0, Lp7/c;->Empty:Ljava/nio/ByteBuffer;

    .line 31
    return-void
.end method

.method public static final synthetic a()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    sget-object v0, Lp7/c;->Empty:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public static b(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "buffer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final c(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V
    .locals 1
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "destination"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/nio/Buffer;->isReadOnly()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/nio/Buffer;->isReadOnly()Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 37
    move-result p0

    .line 38
    add-int/2addr p0, p2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 42
    move-result-object p2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 46
    move-result p1

    .line 47
    add-int/2addr p1, p4

    .line 48
    .line 49
    .line 50
    invoke-static {v0, p0, p2, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    return-void

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 55
    move-result-object p0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 59
    add-int/2addr p2, p3

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 73
    return-void
.end method

.method public static d(Ljava/nio/ByteBuffer;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lp7/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lp7/c;

    invoke-virtual {p1}, Lp7/c;->h()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static e(Ljava/nio/ByteBuffer;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result p0

    return p0
.end method

.method public static final f(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lp7/d;->d(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lp7/c;->b(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static g(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Memory(buffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lp7/c;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, p1}, Lp7/c;->d(Ljava/nio/ByteBuffer;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic h()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lp7/c;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lp7/c;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lp7/c;->e(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lp7/c;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lp7/c;->g(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
