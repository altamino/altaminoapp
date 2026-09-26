.class public Ll9/q;
.super Lorg/bouncycastle/crypto/params/a;
.source "SourceFile"


# instance fields
.field private final treeDigest:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/a;-><init>(Z)V

    iput-object p2, p0, Ll9/q;->treeDigest:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ll9/q;->treeDigest:Ljava/lang/String;

    return-object v0
.end method
