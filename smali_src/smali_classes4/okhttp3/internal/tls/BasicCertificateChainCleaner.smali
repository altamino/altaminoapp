.class public final Lokhttp3/internal/tls/BasicCertificateChainCleaner;
.super Lokhttp3/internal/tls/CertificateChainCleaner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/tls/BasicCertificateChainCleaner$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/internal/tls/BasicCertificateChainCleaner$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MAX_SIGNERS:I = 0x9


# instance fields
.field private final trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/tls/BasicCertificateChainCleaner$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/tls/BasicCertificateChainCleaner$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lokhttp3/internal/tls/BasicCertificateChainCleaner;->Companion:Lokhttp3/internal/tls/BasicCertificateChainCleaner$Companion;

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/tls/TrustRootIndex;)V
    .locals 1
    .param p1    # Lokhttp3/internal/tls/TrustRootIndex;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "trustRootIndex"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lokhttp3/internal/tls/CertificateChainCleaner;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lokhttp3/internal/tls/BasicCertificateChainCleaner;->trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;

    .line 11
    return-void
.end method

.method private final verifySignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    return v1

    .line 17
    .line 18
    .line 19
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    const/4 v1, 0x1

    .line 25
    :catch_0
    return v1
.end method


# virtual methods
.method public clean(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "chain"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "hostname"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance p2, Ljava/util/ArrayDeque;

    .line 13
    .line 14
    check-cast p1, Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, p1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 18
    .line 19
    new-instance p1, Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {p2}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    const-string v1, "queue.removeFirst()"

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    const/4 v0, 0x0

    .line 36
    move v1, v0

    .line 37
    .line 38
    :goto_0
    const/16 v2, 0x9

    .line 39
    .line 40
    if-ge v0, v2, :cond_8

    .line 41
    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 46
    move-result v2

    .line 47
    const/4 v3, 0x1

    .line 48
    sub-int/2addr v2, v3

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 55
    .line 56
    iget-object v4, p0, Lokhttp3/internal/tls/BasicCertificateChainCleaner;->trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;

    .line 57
    .line 58
    .line 59
    invoke-interface {v4, v2}, Lokhttp3/internal/tls/TrustRootIndex;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    .line 60
    move-result-object v4

    .line 61
    .line 62
    if-eqz v4, :cond_3

    .line 63
    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 66
    move-result v1

    .line 67
    .line 68
    if-gt v1, v3, :cond_0

    .line 69
    .line 70
    .line 71
    invoke-static {v2, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    move-result v1

    .line 73
    .line 74
    if-nez v1, :cond_1

    .line 75
    .line 76
    .line 77
    :cond_0
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-direct {p0, v4, v4}, Lokhttp3/internal/tls/BasicCertificateChainCleaner;->verifySignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    .line 81
    move-result v1

    .line 82
    .line 83
    if-eqz v1, :cond_2

    .line 84
    return-object p1

    .line 85
    :cond_2
    move v1, v3

    .line 86
    goto :goto_0

    .line 87
    .line 88
    .line 89
    :cond_3
    invoke-interface {p2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    .line 90
    move-result-object v3

    .line 91
    .line 92
    const-string v4, "queue.iterator()"

    .line 93
    .line 94
    .line 95
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    move-result v4

    .line 100
    .line 101
    if-eqz v4, :cond_6

    .line 102
    .line 103
    .line 104
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    move-result-object v4

    .line 106
    .line 107
    if-eqz v4, :cond_5

    .line 108
    .line 109
    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 110
    .line 111
    .line 112
    invoke-direct {p0, v2, v4}, Lokhttp3/internal/tls/BasicCertificateChainCleaner;->verifySignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    .line 113
    move-result v5

    .line 114
    .line 115
    if-eqz v5, :cond_4

    .line 116
    .line 117
    .line 118
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 119
    .line 120
    .line 121
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    goto :goto_0

    .line 123
    .line 124
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    .line 125
    .line 126
    const-string p2, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    .line 127
    .line 128
    .line 129
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 130
    throw p1

    .line 131
    .line 132
    :cond_6
    if-eqz v1, :cond_7

    .line 133
    return-object p1

    .line 134
    .line 135
    :cond_7
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 136
    .line 137
    const-string p2, "Failed to find a trusted cert that signed "

    .line 138
    .line 139
    .line 140
    invoke-static {p2, v2}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    move-result-object p2

    .line 142
    .line 143
    .line 144
    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 145
    throw p1

    .line 146
    .line 147
    :cond_8
    new-instance p2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 148
    .line 149
    const-string v0, "Certificate chain too long: "

    .line 150
    .line 151
    .line 152
    invoke-static {v0, p1}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 153
    move-result-object p1

    .line 154
    .line 155
    .line 156
    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 157
    throw p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Lokhttp3/internal/tls/BasicCertificateChainCleaner;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast p1, Lokhttp3/internal/tls/BasicCertificateChainCleaner;

    .line 11
    .line 12
    iget-object p1, p1, Lokhttp3/internal/tls/BasicCertificateChainCleaner;->trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;

    .line 13
    .line 14
    iget-object v1, p0, Lokhttp3/internal/tls/BasicCertificateChainCleaner;->trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lokhttp3/internal/tls/BasicCertificateChainCleaner;->trustRootIndex:Lokhttp3/internal/tls/TrustRootIndex;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
