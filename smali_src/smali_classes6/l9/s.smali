.class public final Ll9/s;
.super Ll9/q;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll9/s$b;
    }
.end annotation


# instance fields
.field private volatile bdsState:Ll9/b;

.field private volatile index:J

.field private final params:Ll9/r;

.field private final publicSeed:[B

.field private final root:[B

.field private final secretKeyPRF:[B

.field private final secretKeySeed:[B

.field private volatile used:Z


# direct methods
.method private constructor <init>(Ll9/s$b;)V
    .locals 8

    .line 1
    invoke-static {p1}, Ll9/s$b;->a(Ll9/s$b;)Ll9/r;

    move-result-object v0

    invoke-virtual {v0}, Ll9/r;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ll9/q;-><init>(ZLjava/lang/String;)V

    invoke-static {p1}, Ll9/s$b;->a(Ll9/s$b;)Ll9/r;

    move-result-object v3

    iput-object v3, p0, Ll9/s;->params:Ll9/r;

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ll9/r;->f()I

    move-result v0

    invoke-static {p1}, Ll9/s$b;->b(Ll9/s$b;)[B

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Ll9/s$b;->c(Ll9/s$b;)Ll9/x;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ll9/r;->a()I

    move-result v2

    add-int/lit8 v3, v2, 0x7

    div-int/lit8 v3, v3, 0x8

    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Ll9/a0;->a([BII)J

    move-result-wide v4

    iput-wide v4, p0, Ll9/s;->index:J

    iget-wide v4, p0, Ll9/s;->index:J

    invoke-static {v2, v4, v5}, Ll9/a0;->l(IJ)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, v3, v0}, Ll9/a0;->g([BII)[B

    move-result-object v2

    iput-object v2, p0, Ll9/s;->secretKeySeed:[B

    add-int/2addr v3, v0

    invoke-static {v1, v3, v0}, Ll9/a0;->g([BII)[B

    move-result-object v2

    iput-object v2, p0, Ll9/s;->secretKeyPRF:[B

    add-int/2addr v3, v0

    invoke-static {v1, v3, v0}, Ll9/a0;->g([BII)[B

    move-result-object v2

    iput-object v2, p0, Ll9/s;->publicSeed:[B

    add-int/2addr v3, v0

    invoke-static {v1, v3, v0}, Ll9/a0;->g([BII)[B

    move-result-object v2

    iput-object v2, p0, Ll9/s;->root:[B

    add-int/2addr v3, v0

    array-length v0, v1

    sub-int/2addr v0, v3

    invoke-static {v1, v3, v0}, Ll9/a0;->g([BII)[B

    move-result-object v0

    :try_start_0
    const-class v1, Ll9/b;

    invoke-static {v0, v1}, Ll9/a0;->f([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll9/b;

    invoke-static {p1}, Ll9/s$b;->c(Ll9/s$b;)Ll9/x;

    move-result-object p1

    invoke-virtual {p1}, Ll9/x;->g()Lorg/bouncycastle/asn1/u;

    move-result-object p1

    invoke-virtual {v0, p1}, Ll9/b;->f(Lorg/bouncycastle/asn1/u;)Ll9/b;

    move-result-object p1

    iput-object p1, p0, Ll9/s;->bdsState:Ll9/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index out of bounds"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "xmss == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Ll9/s$b;->d(Ll9/s$b;)J

    move-result-wide v1

    iput-wide v1, p0, Ll9/s;->index:J

    invoke-static {p1}, Ll9/s$b;->e(Ll9/s$b;)[B

    move-result-object v7

    if-eqz v7, :cond_4

    array-length v1, v7

    if-ne v1, v0, :cond_3

    iput-object v7, p0, Ll9/s;->secretKeySeed:[B

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of secretKeySeed needs to be equal size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-array v1, v0, [B

    iput-object v1, p0, Ll9/s;->secretKeySeed:[B

    :goto_2
    invoke-static {p1}, Ll9/s$b;->f(Ll9/s$b;)[B

    move-result-object v1

    if-eqz v1, :cond_6

    array-length v2, v1

    if-ne v2, v0, :cond_5

    iput-object v1, p0, Ll9/s;->secretKeyPRF:[B

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of secretKeyPRF needs to be equal size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-array v1, v0, [B

    iput-object v1, p0, Ll9/s;->secretKeyPRF:[B

    :goto_3
    invoke-static {p1}, Ll9/s$b;->g(Ll9/s$b;)[B

    move-result-object v6

    if-eqz v6, :cond_8

    array-length v1, v6

    if-ne v1, v0, :cond_7

    iput-object v6, p0, Ll9/s;->publicSeed:[B

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of publicSeed needs to be equal size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-array v1, v0, [B

    iput-object v1, p0, Ll9/s;->publicSeed:[B

    :goto_4
    invoke-static {p1}, Ll9/s$b;->h(Ll9/s$b;)[B

    move-result-object v1

    if-eqz v1, :cond_a

    array-length v2, v1

    if-ne v2, v0, :cond_9

    iput-object v1, p0, Ll9/s;->root:[B

    goto :goto_5

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of root needs to be equal size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-array v0, v0, [B

    iput-object v0, p0, Ll9/s;->root:[B

    :goto_5
    invoke-static {p1}, Ll9/s$b;->i(Ll9/s$b;)Ll9/b;

    move-result-object v0

    if-eqz v0, :cond_b

    :goto_6
    iput-object v0, p0, Ll9/s;->bdsState:Ll9/b;

    goto :goto_7

    :cond_b
    invoke-static {p1}, Ll9/s$b;->d(Ll9/s$b;)J

    move-result-wide v0

    invoke-virtual {v3}, Ll9/r;->a()I

    move-result v2

    invoke-static {v2, v0, v1}, Ll9/a0;->l(IJ)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v6, :cond_c

    if-eqz v7, :cond_c

    new-instance v0, Ll9/b;

    invoke-static {p1}, Ll9/s$b;->d(Ll9/s$b;)J

    move-result-wide v4

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Ll9/b;-><init>(Ll9/r;J[B[B)V

    goto :goto_6

    :cond_c
    new-instance v0, Ll9/b;

    invoke-static {p1}, Ll9/s$b;->j(Ll9/s$b;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ll9/b;-><init>(J)V

    goto :goto_6

    :goto_7
    invoke-static {p1}, Ll9/s$b;->j(Ll9/s$b;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_e

    invoke-static {p1}, Ll9/s$b;->j(Ll9/s$b;)J

    move-result-wide v0

    iget-object p1, p0, Ll9/s;->bdsState:Ll9/b;

    invoke-virtual {p1}, Ll9/b;->b()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_d

    goto :goto_8

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxIndex set but not reflected in state"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    :goto_8
    return-void

    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "params == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Ll9/s$b;Ll9/s$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ll9/s;-><init>(Ll9/s$b;)V

    return-void
.end method


# virtual methods
.method public b()Ll9/r;
    .locals 1

    .line 1
    iget-object v0, p0, Ll9/s;->params:Ll9/r;

    return-object v0
.end method

.method public c()[B
    .locals 5

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll9/s;->params:Ll9/r;

    invoke-virtual {v0}, Ll9/r;->f()I

    move-result v0

    iget-object v1, p0, Ll9/s;->params:Ll9/r;

    invoke-virtual {v1}, Ll9/r;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int v2, v1, v0

    add-int/2addr v2, v0

    add-int/2addr v2, v0

    add-int/2addr v2, v0

    new-array v2, v2, [B

    iget-wide v3, p0, Ll9/s;->index:J

    invoke-static {v3, v4, v1}, Ll9/a0;->q(JI)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ll9/a0;->e([B[BI)V

    iget-object v3, p0, Ll9/s;->secretKeySeed:[B

    invoke-static {v2, v3, v1}, Ll9/a0;->e([B[BI)V

    add-int/2addr v1, v0

    iget-object v3, p0, Ll9/s;->secretKeyPRF:[B

    invoke-static {v2, v3, v1}, Ll9/a0;->e([B[BI)V

    add-int/2addr v1, v0

    iget-object v3, p0, Ll9/s;->publicSeed:[B

    invoke-static {v2, v3, v1}, Ll9/a0;->e([B[BI)V

    add-int/2addr v1, v0

    iget-object v0, p0, Ll9/s;->root:[B

    invoke-static {v2, v0, v1}, Ll9/a0;->e([B[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Ll9/s;->bdsState:Ll9/b;

    invoke-static {v0}, Ll9/a0;->p(Ljava/lang/Object;)[B

    move-result-object v0

    invoke-static {v2, v0}, Lorg/bouncycastle/util/a;->i([B[B)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error serializing bds state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ll9/s;->c()[B

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
