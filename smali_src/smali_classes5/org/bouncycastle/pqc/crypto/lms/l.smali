.class public Lorg/bouncycastle/pqc/crypto/lms/l;
.super Lorg/bouncycastle/pqc/crypto/lms/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/lms/l$a;
    }
.end annotation


# static fields
.field private static T1:Lorg/bouncycastle/pqc/crypto/lms/l$a;

.field private static internedKeys:[Lorg/bouncycastle/pqc/crypto/lms/l$a;


# instance fields
.field private final I:[B

.field private final masterSecret:[B

.field private final maxCacheR:I

.field private final maxQ:I

.field private final otsParameters:Lorg/bouncycastle/pqc/crypto/lms/e;

.field private final parameters:Lorg/bouncycastle/pqc/crypto/lms/p;

.field private publicKey:Lorg/bouncycastle/pqc/crypto/lms/m;

.field private q:I

.field private final tCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/pqc/crypto/lms/l$a;",
            "[B>;"
        }
    .end annotation
.end field

.field private final tDigest:Lx8/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/l$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/l$a;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/l;->T1:Lorg/bouncycastle/pqc/crypto/lms/l$a;

    const/16 v2, 0x81

    new-array v2, v2, [Lorg/bouncycastle/pqc/crypto/lms/l$a;

    sput-object v2, Lorg/bouncycastle/pqc/crypto/lms/l;->internedKeys:[Lorg/bouncycastle/pqc/crypto/lms/l$a;

    aput-object v0, v2, v1

    const/4 v0, 0x2

    :goto_0
    sget-object v1, Lorg/bouncycastle/pqc/crypto/lms/l;->internedKeys:[Lorg/bouncycastle/pqc/crypto/lms/l$a;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/lms/l$a;

    invoke-direct {v2, v0}, Lorg/bouncycastle/pqc/crypto/lms/l$a;-><init>(I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/lms/p;Lorg/bouncycastle/pqc/crypto/lms/e;I[BI[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/lms/k;-><init>(Z)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->parameters:Lorg/bouncycastle/pqc/crypto/lms/p;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->otsParameters:Lorg/bouncycastle/pqc/crypto/lms/e;

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->q:I

    invoke-static {p4}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->I:[B

    iput p5, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->maxQ:I

    invoke-static {p6}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->masterSecret:[B

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/lms/p;->c()I

    move-result p2

    add-int/2addr p2, v0

    shl-int p2, v0, p2

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->maxCacheR:I

    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->tCache:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/lms/p;->b()Lorg/bouncycastle/asn1/u;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/lms/b;->a(Lorg/bouncycastle/asn1/u;)Lx8/c;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->tDigest:Lx8/c;

    return-void
.end method

.method private a(I)[B
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/l;->m()Lorg/bouncycastle/pqc/crypto/lms/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/p;->c()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    const/4 v2, 0x0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/l;->e()[B

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->tDigest:Lx8/c;

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/lms/r;->a([BLx8/c;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->tDigest:Lx8/c;

    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/crypto/lms/r;->c(ILx8/c;)V

    const/16 v1, -0x7d7e

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->tDigest:Lx8/c;

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/lms/r;->b(SLx8/c;)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/l;->k()Lorg/bouncycastle/pqc/crypto/lms/e;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/l;->e()[B

    move-result-object v3

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/l;->i()[B

    move-result-object v0

    invoke-static {v1, v3, p1, v0}, Lorg/bouncycastle/pqc/crypto/lms/q;->d(Lorg/bouncycastle/pqc/crypto/lms/e;[BI[B)[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->tDigest:Lx8/c;

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/crypto/lms/r;->a([BLx8/c;)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->tDigest:Lx8/c;

    invoke-interface {p1}, Lx8/c;->e()I

    move-result p1

    new-array p1, p1, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->tDigest:Lx8/c;

    invoke-interface {v0, p1, v2}, Lx8/c;->a([BI)I

    return-object p1

    :cond_0
    mul-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/lms/l;->b(I)[B

    move-result-object v3

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/lms/l;->b(I)[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/l;->e()[B

    move-result-object v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->tDigest:Lx8/c;

    invoke-static {v1, v4}, Lorg/bouncycastle/pqc/crypto/lms/r;->a([BLx8/c;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->tDigest:Lx8/c;

    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/crypto/lms/r;->c(ILx8/c;)V

    const/16 p1, -0x7c7d

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->tDigest:Lx8/c;

    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/crypto/lms/r;->b(SLx8/c;)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->tDigest:Lx8/c;

    invoke-static {v3, p1}, Lorg/bouncycastle/pqc/crypto/lms/r;->a([BLx8/c;)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->tDigest:Lx8/c;

    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/crypto/lms/r;->a([BLx8/c;)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->tDigest:Lx8/c;

    invoke-interface {p1}, Lx8/c;->e()I

    move-result p1

    new-array p1, p1, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->tDigest:Lx8/c;

    invoke-interface {v0, p1, v2}, Lx8/c;->a([BI)I

    return-object p1
.end method

.method private c(Lorg/bouncycastle/pqc/crypto/lms/l$a;)[B
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->tCache:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->tCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/lms/l$a;->a(Lorg/bouncycastle/pqc/crypto/lms/l$a;)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/lms/l;->a(I)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->tCache:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static g(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/l;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/lms/l;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/pqc/crypto/lms/l;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/io/DataInputStream;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/p;->e(I)Lorg/bouncycastle/pqc/crypto/lms/p;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/e;->f(I)Lorg/bouncycastle/pqc/crypto/lms/e;

    move-result-object v3

    const/16 v0, 0x10

    new-array v5, v0, [B

    invoke-virtual {p0, v5}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    if-gt v0, v1, :cond_1

    new-array v7, v0, [B

    invoke-virtual {p0, v7}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance p0, Lorg/bouncycastle/pqc/crypto/lms/l;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/lms/l;-><init>(Lorg/bouncycastle/pqc/crypto/lms/p;Lorg/bouncycastle/pqc/crypto/lms/e;I[BI[B)V

    return-object p0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secret length exceeded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "secret length less than zero"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "expected version 0 lms private key"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    instance-of v0, p0, [B

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    check-cast p0, [B

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/lms/l;->g(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/l;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_5
    throw p0

    :cond_6
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/io/InputStream;

    invoke-static {p0}, Lv9/a;->c(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/l;->g(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/l;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot parse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static h([B[B)Lorg/bouncycastle/pqc/crypto/lms/l;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/l;->g(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/l;

    move-result-object p0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/lms/m;->a(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/m;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->publicKey:Lorg/bouncycastle/pqc/crypto/lms/m;

    return-object p0
.end method


# virtual methods
.method b(I)[B
    .locals 2

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->maxCacheR:I

    if-ge p1, v0, :cond_1

    sget-object v0, Lorg/bouncycastle/pqc/crypto/lms/l;->internedKeys:[Lorg/bouncycastle/pqc/crypto/lms/l$a;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/l$a;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/crypto/lms/l$a;-><init>(I)V

    move-object p1, v0

    :goto_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/lms/l;->c(Lorg/bouncycastle/pqc/crypto/lms/l$a;)[B

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/lms/l;->a(I)[B

    move-result-object p1

    return-object p1
.end method

.method public d()Lorg/bouncycastle/pqc/crypto/lms/j;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/l;->m()Lorg/bouncycastle/pqc/crypto/lms/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/p;->c()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/l;->f()I

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/l;->j()Lorg/bouncycastle/pqc/crypto/lms/f;

    move-result-object v2

    const/4 v3, 0x1

    shl-int v4, v3, v0

    add-int/2addr v4, v1

    new-array v1, v0, [[B

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    shl-int v6, v3, v5

    div-int v6, v4, v6

    xor-int/2addr v6, v3

    invoke-virtual {p0, v6}, Lorg/bouncycastle/pqc/crypto/lms/l;->b(I)[B

    move-result-object v6

    aput-object v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/l;->m()Lorg/bouncycastle/pqc/crypto/lms/p;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/f;->e(Lorg/bouncycastle/pqc/crypto/lms/p;[[B)Lorg/bouncycastle/pqc/crypto/lms/j;

    move-result-object v0

    return-object v0
.end method

.method public e()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->I:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lorg/bouncycastle/pqc/crypto/lms/l;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->q:I

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/lms/l;->q:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->maxQ:I

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/lms/l;->maxQ:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->I:[B

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/lms/l;->I:[B

    invoke-static {v2, v3}, Lorg/bouncycastle/util/a;->a([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->parameters:Lorg/bouncycastle/pqc/crypto/lms/p;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/lms/l;->parameters:Lorg/bouncycastle/pqc/crypto/lms/p;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/lms/l;->parameters:Lorg/bouncycastle/pqc/crypto/lms/p;

    if-eqz v2, :cond_6

    :goto_0
    return v1

    :cond_6
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->otsParameters:Lorg/bouncycastle/pqc/crypto/lms/e;

    if-eqz v2, :cond_7

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/lms/l;->otsParameters:Lorg/bouncycastle/pqc/crypto/lms/e;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_7
    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/lms/l;->otsParameters:Lorg/bouncycastle/pqc/crypto/lms/e;

    if-eqz v2, :cond_8

    :goto_1
    return v1

    :cond_8
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->masterSecret:[B

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/lms/l;->masterSecret:[B

    invoke-static {v2, v3}, Lorg/bouncycastle/util/a;->a([B[B)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    :cond_9
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->publicKey:Lorg/bouncycastle/pqc/crypto/lms/m;

    if-eqz v1, :cond_a

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/lms/l;->publicKey:Lorg/bouncycastle/pqc/crypto/lms/m;

    if-eqz p1, :cond_a

    invoke-virtual {v1, p1}, Lorg/bouncycastle/pqc/crypto/lms/m;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_a
    return v0

    :cond_b
    :goto_2
    return v1
.end method

.method public declared-synchronized f()I
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEncoded()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/a;->f()Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->i(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->parameters:Lorg/bouncycastle/pqc/crypto/lms/p;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/p;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->i(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->otsParameters:Lorg/bouncycastle/pqc/crypto/lms/e;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/e;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->i(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->I:[B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->d([B)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->q:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->i(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->maxQ:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->i(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->masterSecret:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->i(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->masterSecret:[B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->d([B)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/a;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->q:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->I:[B

    invoke-static {v1}, Lorg/bouncycastle/util/a;->m([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->parameters:Lorg/bouncycastle/pqc/crypto/lms/p;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->otsParameters:Lorg/bouncycastle/pqc/crypto/lms/e;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->maxQ:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->masterSecret:[B

    invoke-static {v1}, Lorg/bouncycastle/util/a;->m([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->publicKey:Lorg/bouncycastle/pqc/crypto/lms/m;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/m;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public i()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->masterSecret:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v0

    return-object v0
.end method

.method j()Lorg/bouncycastle/pqc/crypto/lms/f;
    .locals 5

    .line 1
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->q:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->maxQ:I

    if-ge v0, v1, :cond_0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/lms/f;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->otsParameters:Lorg/bouncycastle/pqc/crypto/lms/e;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->I:[B

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->masterSecret:[B

    invoke-direct {v1, v2, v3, v0, v4}, Lorg/bouncycastle/pqc/crypto/lms/f;-><init>(Lorg/bouncycastle/pqc/crypto/lms/e;[BI[B)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/l;->n()V

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Lf9/a;

    const-string v1, "ots private key exhausted"

    invoke-direct {v0, v1}, Lf9/a;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public k()Lorg/bouncycastle/pqc/crypto/lms/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->otsParameters:Lorg/bouncycastle/pqc/crypto/lms/e;

    return-object v0
.end method

.method public l()Lorg/bouncycastle/pqc/crypto/lms/m;
    .locals 5

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->publicKey:Lorg/bouncycastle/pqc/crypto/lms/m;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/m;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->parameters:Lorg/bouncycastle/pqc/crypto/lms/p;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->otsParameters:Lorg/bouncycastle/pqc/crypto/lms/e;

    sget-object v3, Lorg/bouncycastle/pqc/crypto/lms/l;->T1:Lorg/bouncycastle/pqc/crypto/lms/l$a;

    invoke-direct {p0, v3}, Lorg/bouncycastle/pqc/crypto/lms/l;->c(Lorg/bouncycastle/pqc/crypto/lms/l$a;)[B

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->I:[B

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/lms/m;-><init>(Lorg/bouncycastle/pqc/crypto/lms/p;Lorg/bouncycastle/pqc/crypto/lms/e;[B[B)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->publicKey:Lorg/bouncycastle/pqc/crypto/lms/m;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->publicKey:Lorg/bouncycastle/pqc/crypto/lms/m;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public m()Lorg/bouncycastle/pqc/crypto/lms/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->parameters:Lorg/bouncycastle/pqc/crypto/lms/p;

    return-object v0
.end method

.method declared-synchronized n()V
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
