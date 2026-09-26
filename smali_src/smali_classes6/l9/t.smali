.class public final Ll9/t;
.super Ll9/q;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll9/t$b;
    }
.end annotation


# instance fields
.field private final oid:I

.field private final params:Ll9/r;

.field private final publicSeed:[B

.field private final root:[B


# direct methods
.method private constructor <init>(Ll9/t$b;)V
    .locals 4

    .line 1
    invoke-static {p1}, Ll9/t$b;->a(Ll9/t$b;)Ll9/r;

    move-result-object v0

    invoke-virtual {v0}, Ll9/r;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ll9/q;-><init>(ZLjava/lang/String;)V

    invoke-static {p1}, Ll9/t$b;->a(Ll9/t$b;)Ll9/r;

    move-result-object v0

    iput-object v0, p0, Ll9/t;->params:Ll9/r;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ll9/r;->f()I

    move-result v2

    invoke-static {p1}, Ll9/t$b;->b(Ll9/t$b;)[B

    move-result-object v3

    if-eqz v3, :cond_2

    array-length p1, v3

    add-int v0, v2, v2

    if-ne p1, v0, :cond_0

    iput v1, p0, Ll9/t;->oid:I

    invoke-static {v3, v1, v2}, Ll9/a0;->g([BII)[B

    move-result-object p1

    iput-object p1, p0, Ll9/t;->root:[B

    invoke-static {v3, v2, v2}, Ll9/a0;->g([BII)[B

    move-result-object p1

    iput-object p1, p0, Ll9/t;->publicSeed:[B

    goto :goto_2

    :cond_0
    array-length p1, v3

    add-int/lit8 v0, v2, 0x4

    add-int/2addr v0, v2

    if-ne p1, v0, :cond_1

    invoke-static {v3, v1}, Lorg/bouncycastle/util/f;->a([BI)I

    move-result p1

    iput p1, p0, Ll9/t;->oid:I

    const/4 p1, 0x4

    invoke-static {v3, p1, v2}, Ll9/a0;->g([BII)[B

    move-result-object v0

    iput-object v0, p0, Ll9/t;->root:[B

    add-int/2addr p1, v2

    invoke-static {v3, p1, v2}, Ll9/a0;->g([BII)[B

    move-result-object p1

    iput-object p1, p0, Ll9/t;->publicSeed:[B

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "public key has wrong size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {v0}, Ll9/r;->d()Ll9/w;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ll9/r;->d()Ll9/w;

    move-result-object v0

    invoke-interface {v0}, Ll9/w;->a()I

    move-result v0

    iput v0, p0, Ll9/t;->oid:I

    goto :goto_0

    :cond_3
    iput v1, p0, Ll9/t;->oid:I

    :goto_0
    invoke-static {p1}, Ll9/t$b;->c(Ll9/t$b;)[B

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v1, v0

    if-ne v1, v2, :cond_4

    iput-object v0, p0, Ll9/t;->root:[B

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "length of root must be equal to length of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-array v0, v2, [B

    iput-object v0, p0, Ll9/t;->root:[B

    :goto_1
    invoke-static {p1}, Ll9/t$b;->d(Ll9/t$b;)[B

    move-result-object p1

    if-eqz p1, :cond_7

    array-length v0, p1

    if-ne v0, v2, :cond_6

    iput-object p1, p0, Ll9/t;->publicSeed:[B

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "length of publicSeed must be equal to length of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-array p1, v2, [B

    iput-object p1, p0, Ll9/t;->publicSeed:[B

    :goto_2
    return-void

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "params == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Ll9/t$b;Ll9/t$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ll9/t;-><init>(Ll9/t$b;)V

    return-void
.end method


# virtual methods
.method public b()Ll9/r;
    .locals 1

    .line 1
    iget-object v0, p0, Ll9/t;->params:Ll9/r;

    return-object v0
.end method

.method public c()[B
    .locals 1

    .line 1
    iget-object v0, p0, Ll9/t;->publicSeed:[B

    invoke-static {v0}, Ll9/a0;->c([B)[B

    move-result-object v0

    return-object v0
.end method

.method public d()[B
    .locals 1

    .line 1
    iget-object v0, p0, Ll9/t;->root:[B

    invoke-static {v0}, Ll9/a0;->c([B)[B

    move-result-object v0

    return-object v0
.end method

.method public e()[B
    .locals 4

    .line 1
    iget-object v0, p0, Ll9/t;->params:Ll9/r;

    invoke-virtual {v0}, Ll9/r;->f()I

    move-result v0

    iget v1, p0, Ll9/t;->oid:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    add-int/lit8 v3, v0, 0x4

    add-int/2addr v3, v0

    new-array v3, v3, [B

    invoke-static {v1, v3, v2}, Lorg/bouncycastle/util/f;->c(I[BI)V

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    add-int v1, v0, v0

    new-array v3, v1, [B

    :goto_0
    iget-object v1, p0, Ll9/t;->root:[B

    invoke-static {v3, v1, v2}, Ll9/a0;->e([B[BI)V

    add-int/2addr v2, v0

    iget-object v0, p0, Ll9/t;->publicSeed:[B

    invoke-static {v3, v0, v2}, Ll9/a0;->e([B[BI)V

    return-object v3
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ll9/t;->e()[B

    move-result-object v0

    return-object v0
.end method
