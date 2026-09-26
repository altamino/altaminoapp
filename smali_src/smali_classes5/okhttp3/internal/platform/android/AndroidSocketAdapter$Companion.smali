.class public final Lokhttp3/internal/platform/android/AndroidSocketAdapter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/platform/android/AndroidSocketAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/internal/platform/android/AndroidSocketAdapter$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$build(Lokhttp3/internal/platform/android/AndroidSocketAdapter$Companion;Ljava/lang/Class;)Lokhttp3/internal/platform/android/AndroidSocketAdapter;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lokhttp3/internal/platform/android/AndroidSocketAdapter$Companion;->build(Ljava/lang/Class;)Lokhttp3/internal/platform/android/AndroidSocketAdapter;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final build(Ljava/lang/Class;)Lokhttp3/internal/platform/android/AndroidSocketAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "-",
            "Ljavax/net/ssl/SSLSocket;",
            ">;)",
            "Lokhttp3/internal/platform/android/AndroidSocketAdapter;"
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    .line 3
    :goto_0
    if-eqz v0, :cond_1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    const-string v2, "OpenSSLSocketImpl"

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 25
    .line 26
    const-string v1, "No OpenSSLSocketImpl superclass of socket of type "

    .line 27
    .line 28
    .line 29
    invoke-static {v1, p1}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 34
    throw v0

    .line 35
    .line 36
    :cond_1
    new-instance p1, Lokhttp3/internal/platform/android/AndroidSocketAdapter;

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v0}, Lokhttp3/internal/platform/android/AndroidSocketAdapter;-><init>(Ljava/lang/Class;)V

    .line 43
    return-object p1
.end method


# virtual methods
.method public final factory(Ljava/lang/String;)Lokhttp3/internal/platform/android/DeferredSocketAdapter$Factory;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "packageName"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lokhttp3/internal/platform/android/AndroidSocketAdapter$Companion$factory$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1}, Lokhttp3/internal/platform/android/AndroidSocketAdapter$Companion$factory$1;-><init>(Ljava/lang/String;)V

    .line 11
    return-object v0
.end method

.method public final getPlayProviderFactory()Lokhttp3/internal/platform/android/DeferredSocketAdapter$Factory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lokhttp3/internal/platform/android/AndroidSocketAdapter;->access$getPlayProviderFactory$cp()Lokhttp3/internal/platform/android/DeferredSocketAdapter$Factory;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
