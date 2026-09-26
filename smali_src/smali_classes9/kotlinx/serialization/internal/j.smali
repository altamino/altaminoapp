.class public final Lkotlinx/serialization/internal/j;
.super Lkotlinx/serialization/internal/u1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/serialization/internal/u1<",
        "[B>;"
    }
.end annotation


# instance fields
.field private buffer:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private position:I


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "bufferWithData"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lkotlinx/serialization/internal/u1;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lkotlinx/serialization/internal/j;->buffer:[B

    .line 11
    array-length p1, p1

    .line 12
    .line 13
    iput p1, p0, Lkotlinx/serialization/internal/j;->position:I

    .line 14
    .line 15
    const/16 p1, 0xa

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/j;->b(I)V

    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/internal/j;->f()[B

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public b(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/internal/j;->buffer:[B

    .line 3
    array-length v1, v0

    .line 4
    .line 5
    if-ge v1, p1, :cond_0

    .line 6
    array-length v1, v0

    .line 7
    .line 8
    mul-int/lit8 v1, v1, 0x2

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v1}, Lj8/m;->e(II)I

    .line 12
    move-result p1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const-string v0, "copyOf(this, newSize)"

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    iput-object p1, p0, Lkotlinx/serialization/internal/j;->buffer:[B

    .line 24
    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlinx/serialization/internal/j;->position:I

    return v0
.end method

.method public final e(B)V
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
    iget-object v0, p0, Lkotlinx/serialization/internal/j;->buffer:[B

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lkotlinx/serialization/internal/j;->d()I

    .line 12
    move-result v1

    .line 13
    .line 14
    add-int/lit8 v2, v1, 0x1

    .line 15
    .line 16
    iput v2, p0, Lkotlinx/serialization/internal/j;->position:I

    .line 17
    .line 18
    aput-byte p1, v0, v1

    .line 19
    return-void
.end method

.method public f()[B
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/serialization/internal/j;->buffer:[B

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lkotlinx/serialization/internal/j;->d()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

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
    return-object v0
.end method
