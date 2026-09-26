.class public final Ls7/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEncodeResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EncodeResult.kt\nio/ktor/utils/io/core/internal/EncodeResult\n+ 2 ByteOrder.kt\nio/ktor/utils/io/bits/ByteOrderKt\n*L\n1#1,20:1\n47#2:21\n49#2:22\n*S KotlinDebug\n*F\n+ 1 EncodeResult.kt\nio/ktor/utils/io/core/internal/EncodeResult\n*L\n14#1:21\n15#1:22\n*E\n"
.end annotation


# instance fields
.field private final value:I


# direct methods
.method public static final a(I)S
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Ls7/c;->g(I)S

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final b(I)S
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Ls7/c;->f(I)S

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static c(I)I
    .locals 0

    .line 1
    return p0
.end method

.method public static d(SS)I
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0xffff

    .line 4
    and-int/2addr p0, v0

    .line 5
    .line 6
    shl-int/lit8 p0, p0, 0x10

    .line 7
    and-int/2addr p1, v0

    .line 8
    or-int/2addr p0, p1

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Ls7/c;->c(I)I

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static e(ILjava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ls7/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ls7/c;

    invoke-virtual {p1}, Ls7/c;->j()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final f(I)S
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0xffff

    .line 4
    and-int/2addr p0, v0

    .line 5
    int-to-short p0, p0

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lw7/i0;->b(S)S

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static final g(I)S
    .locals 0

    .line 1
    .line 2
    ushr-int/lit8 p0, p0, 0x10

    .line 3
    int-to-short p0, p0

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lw7/i0;->b(S)S

    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public static h(I)I
    .locals 0

    .line 1
    return p0
.end method

.method public static i(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EncodeResult(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    iget v0, p0, Ls7/c;->value:I

    invoke-static {v0, p1}, Ls7/c;->e(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Ls7/c;->value:I

    invoke-static {v0}, Ls7/c;->h(I)I

    move-result v0

    return v0
.end method

.method public final synthetic j()I
    .locals 1

    .line 1
    iget v0, p0, Ls7/c;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Ls7/c;->value:I

    invoke-static {v0}, Ls7/c;->i(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
