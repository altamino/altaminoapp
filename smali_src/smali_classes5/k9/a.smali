.class public Lk9/a;
.super Lorg/bouncycastle/crypto/params/a;
.source "SourceFile"


# static fields
.field public static final SHA3_256:Ljava/lang/String; = "SHA3-256"

.field public static final SHA512_256:Ljava/lang/String; = "SHA-512/256"


# instance fields
.field private final treeDigest:Ljava/lang/String;


# direct methods
.method protected constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/a;-><init>(Z)V

    iput-object p2, p0, Lk9/a;->treeDigest:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk9/a;->treeDigest:Ljava/lang/String;

    return-object v0
.end method
