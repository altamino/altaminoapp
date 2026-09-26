.class public Lr7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr7/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 2 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n*L\n1#1,472:1\n69#1:475\n69#1:476\n74#1:477\n74#1:478\n74#1:479\n69#1:480\n69#1,6:491\n59#1:497\n21#2:473\n21#2:474\n26#2:483\n26#2:485\n26#2:487\n37#2,2:489\n1#3:481\n84#4:482\n84#4:484\n84#4:486\n99#4:488\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n86#1:475\n81#1:476\n94#1:477\n106#1:478\n113#1:479\n122#1:480\n333#1:491,6\n333#1:497\n53#1:473\n64#1:474\n277#1:483\n291#1:485\n307#1:487\n319#1:489,2\n277#1:482\n291#1:484\n307#1:486\n319#1:488\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lr7/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ReservedSize:I = 0x8


# instance fields
.field private final capacity:I

.field private limit:I

.field private final memory:Ljava/nio/ByteBuffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private readPosition:I

.field private startGap:I

.field private writePosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lr7/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr7/a$a;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lr7/a;->Companion:Lr7/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    const-string v0, "memory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr7/a;->memory:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iput v0, p0, Lr7/a;->limit:I

    .line 4
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    iput p1, p0, Lr7/a;->capacity:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lr7/a;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lr7/a;->writePosition:I

    .line 3
    add-int/2addr v0, p1

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    iget v1, p0, Lr7/a;->limit:I

    .line 8
    .line 9
    if-gt v0, v1, :cond_0

    .line 10
    .line 11
    iput v0, p0, Lr7/a;->writePosition:I

    .line 12
    return-void

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lr7/a;->f()I

    .line 16
    move-result v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lr7/a;->j()I

    .line 20
    move-result v1

    .line 21
    sub-int/2addr v0, v1

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v0}, Lr7/d;->a(II)Ljava/lang/Void;

    .line 25
    .line 26
    new-instance p1, Lw7/i;

    .line 27
    .line 28
    .line 29
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 30
    throw p1
.end method

.method public final b(I)Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lr7/a;->limit:I

    .line 3
    .line 4
    iget v1, p0, Lr7/a;->writePosition:I

    .line 5
    .line 6
    if-lt p1, v1, :cond_2

    .line 7
    .line 8
    if-lt p1, v0, :cond_1

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iput p1, p0, Lr7/a;->writePosition:I

    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_0
    sub-int/2addr p1, v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lr7/a;->f()I

    .line 19
    move-result v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lr7/a;->j()I

    .line 23
    move-result v1

    .line 24
    sub-int/2addr v0, v1

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lr7/d;->a(II)Ljava/lang/Void;

    .line 28
    .line 29
    new-instance p1, Lw7/i;

    .line 30
    .line 31
    .line 32
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 33
    throw p1

    .line 34
    .line 35
    :cond_1
    iput p1, p0, Lr7/a;->writePosition:I

    .line 36
    const/4 p1, 0x1

    .line 37
    return p1

    .line 38
    :cond_2
    sub-int/2addr p1, v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lr7/a;->f()I

    .line 42
    move-result v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lr7/a;->j()I

    .line 46
    move-result v1

    .line 47
    sub-int/2addr v0, v1

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v0}, Lr7/d;->a(II)Ljava/lang/Void;

    .line 51
    .line 52
    new-instance p1, Lw7/i;

    .line 53
    .line 54
    .line 55
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 56
    throw p1
.end method

.method public final c(I)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget v0, p0, Lr7/a;->readPosition:I

    .line 6
    add-int/2addr v0, p1

    .line 7
    .line 8
    if-ltz p1, :cond_1

    .line 9
    .line 10
    iget v1, p0, Lr7/a;->writePosition:I

    .line 11
    .line 12
    if-gt v0, v1, :cond_1

    .line 13
    .line 14
    iput v0, p0, Lr7/a;->readPosition:I

    .line 15
    return-void

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-virtual {p0}, Lr7/a;->j()I

    .line 19
    move-result v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lr7/a;->h()I

    .line 23
    move-result v1

    .line 24
    sub-int/2addr v0, v1

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lr7/d;->b(II)Ljava/lang/Void;

    .line 28
    .line 29
    new-instance p1, Lw7/i;

    .line 30
    .line 31
    .line 32
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 33
    throw p1
.end method

.method public final d(I)V
    .locals 2

    .line 1
    .line 2
    if-ltz p1, :cond_1

    .line 3
    .line 4
    iget v0, p0, Lr7/a;->writePosition:I

    .line 5
    .line 6
    if-gt p1, v0, :cond_1

    .line 7
    .line 8
    iget v0, p0, Lr7/a;->readPosition:I

    .line 9
    .line 10
    if-eq v0, p1, :cond_0

    .line 11
    .line 12
    iput p1, p0, Lr7/a;->readPosition:I

    .line 13
    :cond_0
    return-void

    .line 14
    .line 15
    :cond_1
    iget v0, p0, Lr7/a;->readPosition:I

    .line 16
    sub-int/2addr p1, v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lr7/a;->j()I

    .line 20
    move-result v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lr7/a;->h()I

    .line 24
    move-result v1

    .line 25
    sub-int/2addr v0, v1

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Lr7/d;->b(II)Ljava/lang/Void;

    .line 29
    .line 30
    new-instance p1, Lw7/i;

    .line 31
    .line 32
    .line 33
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 34
    throw p1
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lr7/a;->capacity:I

    return v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lr7/a;->limit:I

    return v0
.end method

.method public final g()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lr7/a;->memory:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Lr7/a;->readPosition:I

    return v0
.end method

.method public final i()I
    .locals 1

    .line 1
    iget v0, p0, Lr7/a;->startGap:I

    return v0
.end method

.method public final j()I
    .locals 1

    .line 1
    iget v0, p0, Lr7/a;->writePosition:I

    return v0
.end method

.method public final k()B
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lr7/a;->readPosition:I

    .line 3
    .line 4
    iget v1, p0, Lr7/a;->writePosition:I

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    add-int/lit8 v1, v0, 0x1

    .line 9
    .line 10
    iput v1, p0, Lr7/a;->readPosition:I

    .line 11
    .line 12
    iget-object v1, p0, Lr7/a;->memory:Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    .line 19
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    .line 20
    .line 21
    const-string v1, "No readable bytes available."

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 25
    throw v0
.end method

.method public final l()V
    .locals 1

    .line 1
    iget v0, p0, Lr7/a;->capacity:I

    iput v0, p0, Lr7/a;->limit:I

    return-void
.end method

.method public final m()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lr7/a;->n(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lr7/a;->l()V

    .line 8
    return-void
.end method

.method public final n(I)V
    .locals 2

    .line 1
    .line 2
    if-ltz p1, :cond_2

    .line 3
    .line 4
    iget v0, p0, Lr7/a;->readPosition:I

    .line 5
    .line 6
    if-gt p1, v0, :cond_1

    .line 7
    .line 8
    iput p1, p0, Lr7/a;->readPosition:I

    .line 9
    .line 10
    iget v0, p0, Lr7/a;->startGap:I

    .line 11
    .line 12
    if-le v0, p1, :cond_0

    .line 13
    .line 14
    iput p1, p0, Lr7/a;->startGap:I

    .line 15
    :cond_0
    return-void

    .line 16
    .line 17
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    const-string v1, "newReadPosition shouldn\'t be ahead of the read position: "

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string p1, " > "

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    iget p1, p0, Lr7/a;->readPosition:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    throw v0

    .line 53
    .line 54
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    const-string v1, "newReadPosition shouldn\'t be negative: "

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    throw v0
.end method

.method public final o(I)V
    .locals 3

    .line 1
    .line 2
    if-ltz p1, :cond_4

    .line 3
    .line 4
    iget v0, p0, Lr7/a;->capacity:I

    .line 5
    sub-int/2addr v0, p1

    .line 6
    .line 7
    iget v1, p0, Lr7/a;->writePosition:I

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    iput v0, p0, Lr7/a;->limit:I

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    if-gez v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1}, Lr7/d;->c(Lr7/a;I)V

    .line 18
    .line 19
    :cond_1
    iget v1, p0, Lr7/a;->startGap:I

    .line 20
    .line 21
    if-ge v0, v1, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1}, Lr7/d;->e(Lr7/a;I)V

    .line 25
    .line 26
    :cond_2
    iget v1, p0, Lr7/a;->readPosition:I

    .line 27
    .line 28
    iget v2, p0, Lr7/a;->writePosition:I

    .line 29
    .line 30
    if-ne v1, v2, :cond_3

    .line 31
    .line 32
    iput v0, p0, Lr7/a;->limit:I

    .line 33
    .line 34
    iput v0, p0, Lr7/a;->readPosition:I

    .line 35
    .line 36
    iput v0, p0, Lr7/a;->writePosition:I

    .line 37
    return-void

    .line 38
    .line 39
    .line 40
    :cond_3
    invoke-static {p0, p1}, Lr7/d;->d(Lr7/a;I)V

    .line 41
    return-void

    .line 42
    .line 43
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    const-string v1, "endGap shouldn\'t be negative: "

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    throw v0
.end method

.method public final p(I)V
    .locals 2

    .line 1
    .line 2
    if-ltz p1, :cond_3

    .line 3
    .line 4
    iget v0, p0, Lr7/a;->readPosition:I

    .line 5
    .line 6
    if-lt v0, p1, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lr7/a;->startGap:I

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget v1, p0, Lr7/a;->writePosition:I

    .line 12
    .line 13
    if-ne v0, v1, :cond_2

    .line 14
    .line 15
    iget v0, p0, Lr7/a;->limit:I

    .line 16
    .line 17
    if-gt p1, v0, :cond_1

    .line 18
    .line 19
    iput p1, p0, Lr7/a;->writePosition:I

    .line 20
    .line 21
    iput p1, p0, Lr7/a;->readPosition:I

    .line 22
    .line 23
    iput p1, p0, Lr7/a;->startGap:I

    .line 24
    return-void

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-static {p0, p1}, Lr7/d;->h(Lr7/a;I)Ljava/lang/Void;

    .line 28
    .line 29
    new-instance p1, Lw7/i;

    .line 30
    .line 31
    .line 32
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 33
    throw p1

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-static {p0, p1}, Lr7/d;->g(Lr7/a;I)Ljava/lang/Void;

    .line 37
    .line 38
    new-instance p1, Lw7/i;

    .line 39
    .line 40
    .line 41
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 42
    throw p1

    .line 43
    .line 44
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    const-string/jumbo v1, "startGap shouldn\'t be negative: "

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    throw v0
.end method

.method public q()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lr7/a;->m()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lr7/a;->r()V

    .line 7
    return-void
.end method

.method public final r()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lr7/a;->capacity:I

    .line 3
    .line 4
    iget v1, p0, Lr7/a;->startGap:I

    .line 5
    sub-int/2addr v0, v1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lr7/a;->s(I)V

    .line 9
    return-void
.end method

.method public final s(I)V
    .locals 1

    .line 1
    iget v0, p0, Lr7/a;->startGap:I

    iput v0, p0, Lr7/a;->readPosition:I

    iput v0, p0, Lr7/a;->writePosition:I

    iput p1, p0, Lr7/a;->limit:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Buffer[0x"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 14
    move-result v1

    .line 15
    .line 16
    const/16 v2, 0x10

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Lkotlin/text/a;->a(I)I

    .line 20
    move-result v2

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    const-string/jumbo v2, "toString(this, checkRadix(radix))"

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, "]("

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lr7/a;->j()I

    .line 41
    move-result v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lr7/a;->h()I

    .line 45
    move-result v2

    .line 46
    sub-int/2addr v1, v2

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v1, " used, "

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lr7/a;->f()I

    .line 58
    move-result v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lr7/a;->j()I

    .line 62
    move-result v2

    .line 63
    sub-int/2addr v1, v2

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v1, " free, "

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    iget v1, p0, Lr7/a;->startGap:I

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lr7/a;->e()I

    .line 77
    move-result v2

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lr7/a;->f()I

    .line 81
    move-result v3

    .line 82
    sub-int/2addr v2, v3

    .line 83
    add-int/2addr v1, v2

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v1, " reserved of "

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    iget v1, p0, Lr7/a;->capacity:I

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const/16 v1, 0x29

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v0

    .line 106
    return-object v0
.end method
