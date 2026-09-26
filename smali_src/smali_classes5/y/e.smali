.class public final Ly/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeyStoreUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeyStoreUtils.kt\nc/f/b/KeyStoreUtils\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,282:1\n37#2,2:283\n13374#3,3:285\n*S KotlinDebug\n*F\n+ 1 KeyStoreUtils.kt\nc/f/b/KeyStoreUtils\n*L\n73#1:283,2\n121#1:285,3\n*E\n"
.end annotation


# static fields
.field public static final a:Ly/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ly/e;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ly/e;-><init>()V

    .line 6
    .line 7
    sput-object v0, Ly/e;->a:Ly/e;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 14
    .line 15
    sput-object v0, Ly/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    sget-object v0, Ly/e$a;->q:Ly/e$a;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    sput-object v0, Ly/e;->c:Lw7/m;

    .line 24
    .line 25
    sget-object v0, Ly/e$b;->q:Ly/e$b;

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    sput-object v0, Ly/e;->d:Lw7/m;

    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private final a([Ljava/security/cert/Certificate;)[Ljava/lang/String;
    .locals 10

    .line 1
    array-length v0, p1

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/String;

    .line 4
    array-length v1, p1

    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    aget-object v4, p1, v2

    .line 11
    .line 12
    add-int/lit8 v5, v3, 0x1

    .line 13
    .line 14
    new-instance v6, Ljava/io/StringWriter;

    .line 15
    .line 16
    .line 17
    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 18
    .line 19
    new-instance v7, Lw9/e;

    .line 20
    .line 21
    .line 22
    invoke-direct {v7, v6}, Lw9/e;-><init>(Ljava/io/Writer;)V

    .line 23
    .line 24
    :try_start_0
    new-instance v8, Lw9/c;

    .line 25
    .line 26
    const-string v9, "CERTIFICATE"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 30
    move-result-object v4

    .line 31
    .line 32
    .line 33
    invoke-direct {v8, v9, v4}, Lw9/c;-><init>(Ljava/lang/String;[B)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v7, v8}, Lw9/e;->b(Lw9/d;)V

    .line 37
    .line 38
    sget-object v4, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    const/4 v4, 0x0

    .line 40
    .line 41
    .line 42
    invoke-static {v7, v4}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 46
    move-result-object v4

    .line 47
    .line 48
    .line 49
    const-string/jumbo v6, "toString(...)"

    .line 50
    .line 51
    .line 52
    invoke-static {v4, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    const/4 v6, 0x1

    .line 54
    .line 55
    .line 56
    invoke-static {v4, v6}, Lkotlin/text/k;->f1(Ljava/lang/String;I)Ljava/lang/String;

    .line 57
    move-result-object v4

    .line 58
    .line 59
    aput-object v4, v0, v3

    .line 60
    .line 61
    add-int/lit8 v2, v2, 0x1

    .line 62
    move v3, v5

    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    :catchall_1
    move-exception v0

    .line 67
    .line 68
    .line 69
    invoke-static {v7, p1}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 70
    throw v0

    .line 71
    :cond_0
    return-object v0
.end method

.method private final b(Landroid/content/Context;Ljava/lang/String;ZLorg/threeten/bp/u;Z)Ljava/security/KeyPair;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ly/e;->h()Lorg/threeten/bp/u;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez p4, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ly/e;->i()Lorg/threeten/bp/u;

    .line 10
    move-result-object p4

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1, v0, p4}, Ly/e;->u(Landroid/content/Context;Lorg/threeten/bp/u;Lorg/threeten/bp/u;)V

    .line 20
    .line 21
    const-string v1, "EC"

    .line 22
    .line 23
    const-string v2, "AndroidKeyStore"

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    const-string v2, "getInstance(...)"

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    new-instance v2, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 35
    const/4 v3, 0x4

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, p2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    .line 41
    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    const-string v5, "CN="

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    .line 60
    invoke-direct {v3, p2}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 64
    .line 65
    const-string p2, "SHA-256"

    .line 66
    .line 67
    .line 68
    filled-new-array {p2}, [Ljava/lang/String;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 73
    .line 74
    sget-object p2, Ly/e;->a:Ly/e;

    .line 75
    .line 76
    .line 77
    invoke-direct {p2, v0}, Ly/e;->s(Lorg/threeten/bp/u;)Ljava/util/Date;

    .line 78
    move-result-object v3

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotBefore(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 82
    .line 83
    .line 84
    invoke-direct {p2, p4}, Ly/e;->s(Lorg/threeten/bp/u;)Ljava/util/Date;

    .line 85
    move-result-object v3

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotAfter(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 89
    .line 90
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 91
    .line 92
    const/16 v4, 0x18

    .line 93
    .line 94
    if-lt v3, v4, :cond_1

    .line 95
    .line 96
    if-nez p3, :cond_1

    .line 97
    .line 98
    .line 99
    invoke-direct {p2, v0}, Ly/e;->s(Lorg/threeten/bp/u;)Ljava/util/Date;

    .line 100
    move-result-object p3

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3}, Ljava/util/Date;->toString()Ljava/lang/String;

    .line 104
    move-result-object p3

    .line 105
    .line 106
    .line 107
    const-string/jumbo v3, "toString(...)"

    .line 108
    .line 109
    .line 110
    invoke-static {p3, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    sget-object v3, Lkotlin/text/d;->UTF_8:Ljava/nio/charset/Charset;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 116
    move-result-object p3

    .line 117
    .line 118
    const-string v3, "getBytes(...)"

    .line 119
    .line 120
    .line 121
    invoke-static {p3, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v2, p3}, Ly/a;->a(Landroid/security/keystore/KeyGenParameterSpec$Builder;[B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 125
    .line 126
    .line 127
    :cond_1
    invoke-direct {p2, v0}, Ly/e;->s(Lorg/threeten/bp/u;)Ljava/util/Date;

    .line 128
    move-result-object p3

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, p3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityStart(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 132
    .line 133
    .line 134
    invoke-direct {p2, p4}, Ly/e;->s(Lorg/threeten/bp/u;)Ljava/util/Date;

    .line 135
    move-result-object p3

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, p3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, p5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 142
    .line 143
    if-eqz p5, :cond_2

    .line 144
    .line 145
    const/16 p3, 0x1e

    .line 146
    .line 147
    .line 148
    invoke-direct {p2, v2, p3}, Ly/e;->p(Landroid/security/keystore/KeyGenParameterSpec$Builder;I)V

    .line 149
    .line 150
    .line 151
    :cond_2
    invoke-direct {p2, p1}, Ly/e;->l(Landroid/content/Context;)Z

    .line 152
    move-result p3

    .line 153
    const/4 p4, 0x1

    .line 154
    .line 155
    if-eqz p3, :cond_3

    .line 156
    .line 157
    .line 158
    invoke-static {v2, p4}, Ly/b;->a(Landroid/security/keystore/KeyGenParameterSpec$Builder;Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 159
    .line 160
    .line 161
    :cond_3
    invoke-direct {p2, p1}, Ly/e;->k(Landroid/content/Context;)Z

    .line 162
    move-result p1

    .line 163
    .line 164
    if-eqz p1, :cond_4

    .line 165
    .line 166
    .line 167
    invoke-static {v2, p4}, Ly/c;->a(Landroid/security/keystore/KeyGenParameterSpec$Builder;Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 168
    .line 169
    .line 170
    :cond_4
    invoke-virtual {v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    .line 171
    move-result-object p1

    .line 172
    .line 173
    .line 174
    const-string/jumbo p2, "run(...)"

    .line 175
    .line 176
    .line 177
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, p1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    .line 184
    move-result-object p1

    .line 185
    return-object p1
.end method

.method public static final c(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "alias"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object v0, Ly/e;->a:Ly/e;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Ly/e;->m(Landroid/content/Context;)V

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x4

    .line 18
    const/4 v6, 0x0

    .line 19
    move-object v1, v0

    .line 20
    move-object v2, p0

    .line 21
    move-object v3, p1

    .line 22
    .line 23
    .line 24
    invoke-static/range {v1 .. v6}, Ly/e;->f(Ly/e;Landroid/content/Context;Ljava/lang/String;Lorg/threeten/bp/u;ILjava/lang/Object;)Ljava/security/KeyPair;

    .line 25
    move-result-object p0

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-direct {v0}, Ly/e;->g()Ljava/security/KeyStore;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    .line 37
    move-result-object p0

    .line 38
    .line 39
    if-nez p0, :cond_1

    .line 40
    return-object v1

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-direct {v0, p0}, Ly/e;->a([Ljava/security/cert/Certificate;)[Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    .line 46
    .line 47
    invoke-static {p0}, Lkotlin/collections/l;->J([Ljava/lang/Object;)Ljava/util/List;

    .line 48
    move-result-object p0

    .line 49
    .line 50
    check-cast p0, Ljava/util/Collection;

    .line 51
    const/4 p1, 0x0

    .line 52
    .line 53
    new-array p1, p1, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 57
    move-result-object p0

    .line 58
    .line 59
    check-cast p0, [Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method static synthetic d(Ly/e;Landroid/content/Context;Ljava/lang/String;ZLorg/threeten/bp/u;ZILjava/lang/Object;)Ljava/security/KeyPair;
    .locals 6

    .line 1
    .line 2
    and-int/lit8 p6, p6, 0x10

    .line 3
    .line 4
    if-eqz p6, :cond_0

    .line 5
    const/4 p5, 0x0

    .line 6
    :cond_0
    move v5, p5

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move v3, p3

    .line 11
    move-object v4, p4

    .line 12
    .line 13
    .line 14
    invoke-direct/range {v0 .. v5}, Ly/e;->b(Landroid/content/Context;Ljava/lang/String;ZLorg/threeten/bp/u;Z)Ljava/security/KeyPair;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method private final e(Landroid/content/Context;Ljava/lang/String;Lorg/threeten/bp/u;)Ljava/security/KeyPair;
    .locals 8

    .line 1
    const/4 v3, 0x0

    .line 2
    const/4 v5, 0x0

    .line 3
    .line 4
    const/16 v6, 0x10

    .line 5
    const/4 v7, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    move-object v4, p3

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-static/range {v0 .. v7}, Ly/e;->d(Ly/e;Landroid/content/Context;Ljava/lang/String;ZLorg/threeten/bp/u;ZILjava/lang/Object;)Ljava/security/KeyPair;

    .line 13
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object p1

    .line 15
    :catch_0
    move-exception p2

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 19
    move-result-object p3

    .line 20
    .line 21
    const-string v0, "ka_kp_gen_with_att_fail"

    .line 22
    .line 23
    .line 24
    const-string/jumbo v1, "true"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, v0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1, p2}, Ly/e;->t(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 31
    const/4 p1, 0x0

    .line 32
    return-object p1
.end method

.method static synthetic f(Ly/e;Landroid/content/Context;Ljava/lang/String;Lorg/threeten/bp/u;ILjava/lang/Object;)Ljava/security/KeyPair;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p4, 0x4

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    const/4 p3, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ly/e;->e(Landroid/content/Context;Ljava/lang/String;Lorg/threeten/bp/u;)Ljava/security/KeyPair;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final g()Ljava/security/KeyStore;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Ly/e;->c:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "getValue(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    check-cast v0, Ljava/security/KeyStore;

    .line 14
    return-object v0
.end method

.method private final h()Lorg/threeten/bp/u;
    .locals 1

    .line 1
    .line 2
    const-string v0, "UTC"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/threeten/bp/r;->q(Ljava/lang/String;)Lorg/threeten/bp/r;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lorg/threeten/bp/u;->G(Lorg/threeten/bp/r;)Lorg/threeten/bp/u;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private final i()Lorg/threeten/bp/u;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ly/e;->h()Lorg/threeten/bp/u;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-wide/16 v1, 0x3

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/u;->N(J)Lorg/threeten/bp/u;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private final j()Ljava/security/Signature;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Ly/e;->d:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "getValue(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    check-cast v0, Ljava/security/Signature;

    .line 14
    return-object v0
.end method

.method private final k(Landroid/content/Context;)Z
    .locals 2

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1f

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string v0, "android.software.device_id_attestation"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 16
    move-result p1

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1
.end method

.method private final l(Landroid/content/Context;)Z
    .locals 2

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1c

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string v0, "android.hardware.strongbox_keystore"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 16
    move-result p1

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1
.end method

.method private final m(Landroid/content/Context;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lu5/a;->a(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public static final n()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Ly/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    return-void
.end method

.method public static final o()Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Ly/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method private final p(Landroid/security/keystore/KeyGenParameterSpec$Builder;I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1e

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    const/4 v0, 0x2

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2, v0}, Ly/d;->a(Landroid/security/keystore/KeyGenParameterSpec$Builder;II)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 15
    :goto_0
    return-void
.end method

.method public static final q([BLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "dataToSign"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "alias"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object v0, Ly/e;->a:Ly/e;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ly/e;->g()Ljava/security/KeyStore;

    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    instance-of v1, p1, Ljava/security/PrivateKey;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    check-cast p1, Ljava/security/PrivateKey;

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object p1, v2

    .line 30
    .line 31
    :goto_0
    if-eqz p1, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v0}, Ly/e;->j()Ljava/security/Signature;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/security/Signature;->update([B)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    .line 45
    move-result-object p0

    .line 46
    .line 47
    if-eqz p0, :cond_1

    .line 48
    const/4 p1, 0x0

    .line 49
    .line 50
    .line 51
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 56
    .line 57
    const-string v1, "\n"

    .line 58
    .line 59
    const-string v2, ""

    .line 60
    const/4 v3, 0x0

    .line 61
    const/4 v4, 0x4

    .line 62
    const/4 v5, 0x0

    .line 63
    .line 64
    .line 65
    invoke-static/range {v0 .. v5}, Lkotlin/text/k;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :cond_1
    return-object v2
.end method

.method public static final r()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Ly/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    return-void
.end method

.method private final s(Lorg/threeten/bp/u;)Ljava/util/Date;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/f;->u()Lorg/threeten/bp/f;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lorg/threeten/bp/c;->a(Lorg/threeten/bp/f;)Ljava/util/Date;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private final t(Landroid/content/Context;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "getInstance(...)"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    const-string v0, "ka_kp_generation_failed"

    .line 12
    .line 13
    .line 14
    const-string/jumbo v1, "true"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const-string v1, "ka_kp_gen_exception"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 40
    move-result v0

    .line 41
    .line 42
    const/16 v1, 0x24

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1}, Lj8/m;->j(II)I

    .line 46
    move-result v0

    .line 47
    const/4 v1, 0x0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    .line 54
    const-string/jumbo v0, "substring(...)"

    .line 55
    .line 56
    .line 57
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    const-string v0, "ka_kp_gen_exception_msg"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    return-void
.end method

.method private final u(Landroid/content/Context;Lorg/threeten/bp/u;Lorg/threeten/bp/u;)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/f;->EPOCH:Lorg/threeten/bp/f;

    .line 3
    .line 4
    const-string v1, "UTC"

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Lorg/threeten/bp/r;->q(Ljava/lang/String;)Lorg/threeten/bp/r;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lorg/threeten/bp/u;->I(Lorg/threeten/bp/f;Lorg/threeten/bp/r;)Lorg/threeten/bp/u;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v0}, Lorg/threeten/bp/chrono/f;->q(Lorg/threeten/bp/chrono/f;)Z

    .line 16
    move-result p2

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, v0}, Lorg/threeten/bp/chrono/f;->q(Lorg/threeten/bp/chrono/f;)Z

    .line 22
    move-result p2

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    const-string p2, "ka_kp_gen_incorrect_date"

    .line 31
    .line 32
    const-string p3, "Device date is wrong"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_1
    return-void
.end method
