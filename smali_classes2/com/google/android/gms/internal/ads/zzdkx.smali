.class public final Lcom/google/android/gms/internal/ads/zzdkx;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T_WRAPPER::",
        "Lcom/google/android/gms/internal/ads/zzdky<",
        "TT_ENGINE;>;T_ENGINE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final zzhao:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzhap:Lcom/google/android/gms/internal/ads/zzdkx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdkx<",
            "Lcom/google/android/gms/internal/ads/zzdkz;",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzhaq:Lcom/google/android/gms/internal/ads/zzdkx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdkx<",
            "Lcom/google/android/gms/internal/ads/zzdld;",
            "Ljavax/crypto/Mac;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzhar:Lcom/google/android/gms/internal/ads/zzdkx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdkx<",
            "Lcom/google/android/gms/internal/ads/zzdlf;",
            "Ljava/security/Signature;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzhas:Lcom/google/android/gms/internal/ads/zzdkx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdkx<",
            "Lcom/google/android/gms/internal/ads/zzdle;",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzhat:Lcom/google/android/gms/internal/ads/zzdkx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdkx<",
            "Lcom/google/android/gms/internal/ads/zzdla;",
            "Ljavax/crypto/KeyAgreement;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzhau:Lcom/google/android/gms/internal/ads/zzdkx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdkx<",
            "Lcom/google/android/gms/internal/ads/zzdlc;",
            "Ljava/security/KeyPairGenerator;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzhav:Lcom/google/android/gms/internal/ads/zzdkx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdkx<",
            "Lcom/google/android/gms/internal/ads/zzdlb;",
            "Ljava/security/KeyFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzhaw:Lcom/google/android/gms/internal/ads/zzdky;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_WRAPPER;"
        }
    .end annotation
.end field

.field private zzhax:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private zzhay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 17
    const-class v0, Lcom/google/android/gms/internal/ads/zzdkx;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdkx;->logger:Ljava/util/logging/Logger;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdlv;->zzavd()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "GmsCore_OpenSSL"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "AndroidOpenSSL"

    aput-object v4, v1, v3

    .line 21
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    .line 22
    aget-object v6, v1, v5

    .line 23
    invoke-static {v6}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 25
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 26
    :cond_0
    sget-object v7, Lcom/google/android/gms/internal/ads/zzdkx;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v6, v9, v2

    const-string v6, "Provider %s not available"

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "com.google.crypto.tink.subtle.EngineFactory"

    const-string v10, "toProviderList"

    invoke-virtual {v7, v8, v9, v10, v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 29
    :cond_1
    sput-object v4, Lcom/google/android/gms/internal/ads/zzdkx;->zzhao:Ljava/util/List;

    goto :goto_2

    .line 30
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdkx;->zzhao:Ljava/util/List;

    .line 31
    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdkz;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdkz;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkx;-><init>(Lcom/google/android/gms/internal/ads/zzdky;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdkx;->zzhap:Lcom/google/android/gms/internal/ads/zzdkx;

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdld;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdld;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkx;-><init>(Lcom/google/android/gms/internal/ads/zzdky;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdkx;->zzhaq:Lcom/google/android/gms/internal/ads/zzdkx;

    .line 33
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdlf;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdlf;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkx;-><init>(Lcom/google/android/gms/internal/ads/zzdky;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdkx;->zzhar:Lcom/google/android/gms/internal/ads/zzdkx;

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdle;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdle;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkx;-><init>(Lcom/google/android/gms/internal/ads/zzdky;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdkx;->zzhas:Lcom/google/android/gms/internal/ads/zzdkx;

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdla;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdla;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkx;-><init>(Lcom/google/android/gms/internal/ads/zzdky;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdkx;->zzhat:Lcom/google/android/gms/internal/ads/zzdkx;

    .line 36
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdlc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdlc;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkx;-><init>(Lcom/google/android/gms/internal/ads/zzdky;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdkx;->zzhau:Lcom/google/android/gms/internal/ads/zzdkx;

    .line 37
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdlb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdlb;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkx;-><init>(Lcom/google/android/gms/internal/ads/zzdky;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdkx;->zzhav:Lcom/google/android/gms/internal/ads/zzdkx;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdky;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_WRAPPER;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkx;->zzhaw:Lcom/google/android/gms/internal/ads/zzdky;

    .line 3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdkx;->zzhao:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkx;->zzhax:Ljava/util/List;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdkx;->zzhay:Z

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/security/Provider;)Z
    .locals 1

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkx;->zzhaw:Lcom/google/android/gms/internal/ads/zzdky;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdky;->zzb(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdmb;->zzg(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final zzgt(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT_ENGINE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkx;->zzhax:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    .line 7
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdkx;->zza(Ljava/lang/String;Ljava/security/Provider;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkx;->zzhaw:Lcom/google/android/gms/internal/ads/zzdky;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdky;->zzb(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdkx;->zzhay:Z

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkx;->zzhaw:Lcom/google/android/gms/internal/ads/zzdky;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdky;->zzb(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "No good Provider found."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method
