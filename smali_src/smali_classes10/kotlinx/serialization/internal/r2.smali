.class public final Lkotlinx/serialization/internal/r2;
.super Lkotlinx/serialization/internal/u1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/serialization/internal/u1<",
        "Lw7/g0;",
        ">;"
    }
.end annotation


# instance fields
.field private buffer:[J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private position:I


# direct methods
.method private constructor <init>([J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lkotlinx/serialization/internal/u1;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/r2;->buffer:[J

    .line 3
    invoke-static {p1}, Lw7/g0;->r([J)I

    move-result p1

    iput p1, p0, Lkotlinx/serialization/internal/r2;->position:I

    const/16 p1, 0xa

    .line 4
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/r2;->b(I)V

    return-void
.end method

.method public synthetic constructor <init>([JLkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/r2;-><init>([J)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/internal/r2;->f()[J

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lw7/g0;->a([J)Lw7/g0;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public b(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/internal/r2;->buffer:[J

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lw7/g0;->r([J)I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-ge v0, p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lkotlinx/serialization/internal/r2;->buffer:[J

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lw7/g0;->r([J)I

    .line 14
    move-result v1

    .line 15
    .line 16
    mul-int/lit8 v1, v1, 0x2

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v1}, Lj8/m;->e(II)I

    .line 20
    move-result p1

    .line 21
    .line 22
    .line 23
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 24
    move-result-object p1

    .line 25
    .line 26
    const-string v0, "copyOf(this, newSize)"

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lw7/g0;->e([J)[J

    .line 33
    move-result-object p1

    .line 34
    .line 35
    iput-object p1, p0, Lkotlinx/serialization/internal/r2;->buffer:[J

    .line 36
    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlinx/serialization/internal/r2;->position:I

    return v0
.end method

.method public final e(J)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v2, v0, v1}, Lkotlinx/serialization/internal/u1;->c(Lkotlinx/serialization/internal/u1;IILjava/lang/Object;)V

    .line 7
    .line 8
    iget-object v0, p0, Lkotlinx/serialization/internal/r2;->buffer:[J

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lkotlinx/serialization/internal/r2;->d()I

    .line 12
    move-result v1

    .line 13
    .line 14
    add-int/lit8 v2, v1, 0x1

    .line 15
    .line 16
    iput v2, p0, Lkotlinx/serialization/internal/r2;->position:I

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, p1, p2}, Lw7/g0;->v([JIJ)V

    .line 20
    return-void
.end method

.method public f()[J
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/internal/r2;->buffer:[J

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lkotlinx/serialization/internal/r2;->d()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "copyOf(this, newSize)"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lw7/g0;->e([J)[J

    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method
