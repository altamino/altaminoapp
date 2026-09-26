.class public interface abstract Ls8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final id_alg_xmss:Lorg/bouncycastle/asn1/u;

.field public static final id_alg_xmssmt:Lorg/bouncycastle/asn1/u;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/u;

    const-string v1, "0.4.0.127.0.15.1.1.13.0"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Ls8/a;->id_alg_xmss:Lorg/bouncycastle/asn1/u;

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const-string v1, "0.4.0.127.0.15.1.1.14.0"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Ls8/a;->id_alg_xmssmt:Lorg/bouncycastle/asn1/u;

    return-void
.end method
