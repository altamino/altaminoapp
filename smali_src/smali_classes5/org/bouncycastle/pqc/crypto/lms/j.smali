.class public Lorg/bouncycastle/pqc/crypto/lms/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx8/c;


# instance fields
.field private final C:[B

.field private volatile digest:Lx8/c;

.field private final key:Lorg/bouncycastle/pqc/crypto/lms/f;

.field private final path:[[B

.field private final publicKey:Lorg/bouncycastle/pqc/crypto/lms/g;

.field private final sigParams:Lorg/bouncycastle/pqc/crypto/lms/p;

.field private final signature:Ljava/lang/Object;

.field private signedPubKeys:[Lorg/bouncycastle/pqc/crypto/lms/o;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/lms/f;Lorg/bouncycastle/pqc/crypto/lms/p;Lx8/c;[B[[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/j;->key:Lorg/bouncycastle/pqc/crypto/lms/f;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/j;->sigParams:Lorg/bouncycastle/pqc/crypto/lms/p;

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/lms/j;->digest:Lx8/c;

    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/lms/j;->C:[B

    iput-object p5, p0, Lorg/bouncycastle/pqc/crypto/lms/j;->path:[[B

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/j;->publicKey:Lorg/bouncycastle/pqc/crypto/lms/g;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/j;->signature:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/lms/g;Ljava/lang/Object;Lx8/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/j;->publicKey:Lorg/bouncycastle/pqc/crypto/lms/g;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/j;->signature:Ljava/lang/Object;

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/lms/j;->digest:Lx8/c;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/j;->C:[B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/j;->key:Lorg/bouncycastle/pqc/crypto/lms/f;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/j;->sigParams:Lorg/bouncycastle/pqc/crypto/lms/p;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/j;->path:[[B

    return-void
.end method


# virtual methods
.method public a([BI)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/j;->digest:Lx8/c;

    invoke-interface {v0, p1, p2}, Lx8/c;->a([BI)I

    move-result p1

    return p1
.end method

.method public c(B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/j;->digest:Lx8/c;

    invoke-interface {v0, p1}, Lx8/c;->c(B)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/j;->digest:Lx8/c;

    invoke-interface {v0}, Lx8/c;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/j;->digest:Lx8/c;

    invoke-interface {v0}, Lx8/c;->e()I

    move-result v0

    return v0
.end method

.method f()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/j;->C:[B

    return-object v0
.end method

.method g()[[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/j;->path:[[B

    return-object v0
.end method

.method h()Lorg/bouncycastle/pqc/crypto/lms/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/j;->key:Lorg/bouncycastle/pqc/crypto/lms/f;

    return-object v0
.end method

.method i()[B
    .locals 3

    .line 1
    const/16 v0, 0x22

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/j;->digest:Lx8/c;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lx8/c;->a([BI)I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/j;->digest:Lx8/c;

    return-object v0
.end method

.method j()Lorg/bouncycastle/pqc/crypto/lms/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/j;->sigParams:Lorg/bouncycastle/pqc/crypto/lms/p;

    return-object v0
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/j;->digest:Lx8/c;

    invoke-interface {v0, p1, p2, p3}, Lx8/c;->update([BII)V

    return-void
.end method
