.class public Lorg/bouncycastle/pqc/crypto/util/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/util/c$b;,
        Lorg/bouncycastle/pqc/crypto/util/c$c;,
        Lorg/bouncycastle/pqc/crypto/util/c$d;,
        Lorg/bouncycastle/pqc/crypto/util/c$e;,
        Lorg/bouncycastle/pqc/crypto/util/c$f;,
        Lorg/bouncycastle/pqc/crypto/util/c$g;,
        Lorg/bouncycastle/pqc/crypto/util/c$h;,
        Lorg/bouncycastle/pqc/crypto/util/c$i;
    }
.end annotation


# static fields
.field private static converters:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/util/c;->converters:Ljava/util/Map;

    sget-object v1, Le9/e;->qTESLA_p_I:Lorg/bouncycastle/asn1/u;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/c$e;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/c$e;-><init>(Lorg/bouncycastle/pqc/crypto/util/c$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/c;->converters:Ljava/util/Map;

    sget-object v1, Le9/e;->qTESLA_p_III:Lorg/bouncycastle/asn1/u;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/c$e;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/c$e;-><init>(Lorg/bouncycastle/pqc/crypto/util/c$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/c;->converters:Ljava/util/Map;

    sget-object v1, Le9/e;->sphincs256:Lorg/bouncycastle/asn1/u;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/c$f;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/c$f;-><init>(Lorg/bouncycastle/pqc/crypto/util/c$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/c;->converters:Ljava/util/Map;

    sget-object v1, Le9/e;->newHope:Lorg/bouncycastle/asn1/u;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/c$d;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/c$d;-><init>(Lorg/bouncycastle/pqc/crypto/util/c$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/c;->converters:Ljava/util/Map;

    sget-object v1, Le9/e;->xmss:Lorg/bouncycastle/asn1/u;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/c$h;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/c$h;-><init>(Lorg/bouncycastle/pqc/crypto/util/c$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/c;->converters:Ljava/util/Map;

    sget-object v1, Le9/e;->xmss_mt:Lorg/bouncycastle/asn1/u;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/c$i;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/c$i;-><init>(Lorg/bouncycastle/pqc/crypto/util/c$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/c;->converters:Ljava/util/Map;

    sget-object v1, Ls8/a;->id_alg_xmss:Lorg/bouncycastle/asn1/u;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/c$h;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/c$h;-><init>(Lorg/bouncycastle/pqc/crypto/util/c$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/c;->converters:Ljava/util/Map;

    sget-object v1, Ls8/a;->id_alg_xmssmt:Lorg/bouncycastle/asn1/u;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/c$i;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/c$i;-><init>(Lorg/bouncycastle/pqc/crypto/util/c$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/c;->converters:Ljava/util/Map;

    sget-object v1, Lv8/a;->id_alg_hss_lms_hashsig:Lorg/bouncycastle/asn1/u;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/c$b;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/c$b;-><init>(Lorg/bouncycastle/pqc/crypto/util/c$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/c;->converters:Ljava/util/Map;

    sget-object v1, Le9/e;->mcElieceCca2:Lorg/bouncycastle/asn1/u;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/c$c;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/util/c$c;-><init>(Lorg/bouncycastle/pqc/crypto/util/c$a;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lw8/b;)Lorg/bouncycastle/crypto/params/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/crypto/util/c;->b(Lw8/b;Ljava/lang/Object;)Lorg/bouncycastle/crypto/params/a;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lw8/b;Ljava/lang/Object;)Lorg/bouncycastle/crypto/params/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lw8/b;->j()Lw8/a;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/pqc/crypto/util/c;->converters:Ljava/util/Map;

    invoke-virtual {v0}, Lw8/a;->j()Lorg/bouncycastle/asn1/u;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/util/c$g;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0, p1}, Lorg/bouncycastle/pqc/crypto/util/c$g;->a(Lw8/b;Ljava/lang/Object;)Lorg/bouncycastle/crypto/params/a;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "algorithm identifier in public key not recognised: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lw8/a;->j()Lorg/bouncycastle/asn1/u;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
